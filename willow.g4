// work in progress
grammar willow;

@header:
  | package name;

Whitespace:
  | [ \t]+ -> skip;

LineComment:
  | ';;' ~[\r\n]* -> skip;
