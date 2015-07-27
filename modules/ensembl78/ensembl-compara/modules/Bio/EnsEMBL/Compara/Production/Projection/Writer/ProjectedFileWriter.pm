=head1 LICENSE

Copyright [1999-2014] Wellcome Trust Sanger Institute and the EMBL-European Bioinformatics Institute

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=cut


=pod

=head1 NAME

Bio::EnsEMBL::Compara::Production::Projection::Writer::ProjectedFileWriter

=head1 DESCRIPTION

This class writes out to a file location given at construction time using
Text::CSV. If this is not present this class will not work.

=head1 AUTHOR

Andy Yates (ayatesatebiacuk)

=head1 CONTACT

This modules is part of the EnsEMBL project (http://www.ensembl.org)

Questions can be posted to the dev mailing list: http://lists.ensembl.org/mailman/listinfo/dev

=cut

package Bio::EnsEMBL::Compara::Production::Projection::Writer::ProjectedFileWriter;

use strict;
use warnings;
use Bio::EnsEMBL::Utils::Argument qw(rearrange);
use Bio::EnsEMBL::Utils::Scalar qw(assert_ref);
use Bio::EnsEMBL::Utils::Exception qw(throw);

use File::Copy;
use IO::Handle;
use IO::File;

use base qw(Bio::EnsEMBL::Compara::Production::Projection::Writer::BaseWriter);

=head2 new()

  Arg[-file] : required if file_handle is not given;
  Arg[-file_handle] : required if file is not given; 
  Description : New method used for a new instance of the given object. 
                Required fields are indicated accordingly. Fields are specified
                using the Arguments syntax (case insensitive).

=cut

sub new {
  my ( $class, @args ) = @_;
  my $self = $class->SUPER::new(@args);
  my ( $file, $file_handle ) = rearrange( [qw(file file_handle)], @args );

  confess(
'The attribute file or file_handle must be specified during construction or provide a builder subroutine'
  ) if !defined $file && ! defined $file_handle;
  $self->{file} = $file if defined $file;
  $self->{file_handle} = $file_handle if defined $file_handle;

  return $self;
}

=head2 write_projection()

Writes the projection data to configured file handle or to the given 
file location. The output is a CSV of the following columns:

=over 8

=item DBEntry accession

=item Source's stable ID i.e. the object the transferred accession was originally attached to

=item Target's stable ID i.e. the end point for this transfer

=item Source's % identity

=item Target's % identity

=item Type of homology

=back

=cut

sub write_projection {
  my ($self, $p) = @_;
  my $csv = $self->_csv_writer();
  my $fh = $self->file_handle();
  $csv->combine(@{
    $self->_projection_to_array($p)
  }) or throw('Could not create line '.Text::CSV->error_input());
  my $str = $csv->string();
  $fh->print($str, "\n");
  return;
}

sub _projection_to_array {
  my ($self, $p) = @_;
  return [
    $p->entry()->primary_id(),
    $p->from()->stable_id(),
    $p->from_identity(),
    $p->to()->stable_id(),
    $p->to_identity(),
    $p->type()
  ];
}

=head2 file()

  Description : Getter for the file name 

=cut

sub file {
  my ($self) = @_;
  return $self->{file};
}

=head2 file_handle()

  Description : Getter for the file handle 

=cut

sub file_handle {
  my ($self, $file_handle) = @_;
  if(! defined $self->{file_handle}) {
    $self->{file_handle} = $self->_build_file_handle();
    $self->{_self_generated_file_handle} = 1;
  }
  return $self->{file_handle};
}

sub _build_file_handle {
  my ($self) = @_;
  my $f = $self->file();
  # - means go to STDOUT
  if($f eq '-') {
    return IO::Handle->new_from_fd(fileno(STDOUT), 'w');
  }
  else {
    if( -f $f ) {
      warn("The file $f already exists; moving out of the way to ${f}.old");
      move($f, $f.'.old');
    }
    return IO::File->new($f, 'w');
  }
}

=head2 close()

Used to close down the underlying file handle

=cut

sub close {
  my ($self) = @_;
  close $self->file_handle();
}

sub _csv_writer {
  my ($self, $_csv_writer) = @_;
  if(! defined $self->{_csv_writer}) {
    eval 'require Text::CSV';
    throw('Cannot bring in Text::CSV : '.$@) if $@;
    my $csv = Text::CSV->new() or throw('Cannot use CSV: '.Text::CSV->error_diag());
    $self->{_csv_writer} = $csv;
  }
  return $self->{_csv_writer};
}


=head2 DESTROY 

Destroys the file handle generated by this object if we were not given 
one during construction

=cut

sub DESTROY {
  my ($self) = @_;
  if($self->{_self_generated_file_handle} && $self->file_handle()->opened()) {
    $self->file_handle()->close();
  }
  return;
}
 
1;
