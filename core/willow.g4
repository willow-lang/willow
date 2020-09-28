// work in progress
grammar willow;

@header:
  | package name;

// skipspace
Whitespace:
  | [ \t]+ -> skip;

LineComment:
  | ';;' ~[\r\n]* -> skip;

MultiLineComment:
  | '/**/' // to be copntinued
  
