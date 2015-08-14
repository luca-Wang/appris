                                                                                                                                                                                                                                                                                                                table hg19APPRISspade
"APPRIS - Presence of functional protein residues"
(
  string 			chrom;			"Reference sequence chromosome"
  uint    			chromStart;		"Start position of feature on chromosome"
  uint    			chromEnd;		"End position of feature on chromosome"
  string  			name;			"Ensembl transcript ID"
  uint    			score;			"Score from 0-1000"
  char[1]			strand;			"+ or - for strand"
  uint   			thickStart;		"Coding region start"
  uint				thickEnd;		"Coding region end"
  uint				reserved;       "RGB value (use R,G,B string in input file)"
  int				blockCount;     "Number of blocks"
  int[blockCount]	blockSizes;     "Comma separated list of block sizes"
  int[blockCount]	chromStarts;    "Start positions relative to chromStart"
  string			prediction;     "Functional residues"
)
                                                                                                         ���x                          chr1     =C�chr10   �chr11   4	chr12   �j�chr13   VZ�chr14   $fchr15   @�chr16   A�bchr17   ���chr18	   @]�chr19
   �<�chr2    ��~chr20   p��chr21   gg�chr22   v�chr3    ��chr4    d�dchr5    <��
chr6    ;3
chr7    gC|	chr8    vV�chr9    ��jchrM    �@  chrX    �=A	chrY    ����x      