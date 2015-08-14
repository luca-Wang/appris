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
                                                                                                         ���x                          chr1     ��chr10   .��chr11   Bchr12   ���chr13   ��chr14   �[achr15   Cchr16   )tbchr17   ah�chr18	   %f�chr19
   o~chr2    y�ochr20   W�chr21   ߼�chr22   �mchr3    ��chr4    �qVchr5    ��
chr6    �J.
chr7    5m	chr8    ̣�chr9    ]�?chrM    �@  chrX    ��L	chrY    �8i�v      