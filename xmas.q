z: 0b;

tree:{[n]
  s:01b!(("\\   /";"  \033[33m*\033[0m  ");("  |  ";"- \033[33m*\033[0m -")); / Two different stars.
  r:{("\\   ";(1?" ox*"),"\\  ";(2?" ox*"),"\\ ";(2?" ox*"),"_\\")};
  l:{[x]k:reverse each x;ssr[; "\\"; "/"] each k}[r[]];
  t:raze {[x;l;r;n]w:4#enlist div[(-1+(1+2*n)-x);2]#" ";w,'l[],'(x cut (x*4)?"o*x",5#" "),'r[],'w}[;l;r;n] each 1+2*til n;
  str:2#enlist(-1+n+2)#" ";
  o:t,(str,'(" || ";" || "));
  o:ssr[;"x";"\033[31mx\033[0m"] each o;
  o:ssr[;"o";"\033[33mo\033[0m"] each o;
  o:ssr[;"_";"\033[32m_\033[0m"] each o;
  o:ssr[;"/";"\033[32m/\033[0m"] each o;
  o:ssr[;"\\";"\033[32m\\\033[0m"] each o;
  "\n" sv o;
  z::not z;
  enlist["\033[H\033[J"],(str,'s[z],'str),o
  }

.z.ts: {
  -1 tree[5];
  }

system "t 500"
