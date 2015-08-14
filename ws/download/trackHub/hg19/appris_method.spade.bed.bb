��   �      �      �        0      R       @  z                                                                                                                                                                                                                                                      table hg19APPRISspade
"APPRIS - Presence of whole protein domains and damaged domains"
(
  string 			chrom;			"Reference sequence chromosome"
  uint    			chromStart;		"Start position of feature on chromosome"
  uint    			chromEnd;		"End position of feature on chromosome"
  string			name;    		"Pfam domain name"
  uint    			score;			"Score from 0-1000"
  char[1]			strand;			"+ or - for strand"
  uint   			thickStart;		"Coding region start"
  uint				thickEnd;		"Coding region end"
  uint				reserved;       "RGB value (use R,G,B string in input file)"
  int				blockCount;     "Number of blocks"
  int[blockCount]	blockSizes;     "Comma separated list of block sizes"
  int[blockCount]	chromStarts;    "Start positions relative to chromStart"
  string  			prediction;		"Ensembl transcript ID"
)
                                         @                                                               ���x                                   �h$                           �             ��