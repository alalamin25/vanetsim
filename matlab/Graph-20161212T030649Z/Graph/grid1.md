%!PS-Adobe-3.0 EPSF-3.0
%%Creator: Mayura Draw, Version 4.3
%%Title: grid1.md
%%CreationDate: Fri Mar 20 16:54:02 2009
%%BoundingBox: 83 221 530 580
%%DocumentFonts: ArialMT
%%Orientation: Portrait
%%EndComments
%%BeginProlog
%%BeginResource: procset MayuraDraw_ops
%%Version: 4.3
%%Copyright: (c) 1993-2003 Mayura Software
/PDXDict 100 dict def
PDXDict begin
% width height matrix proc key cache
% definepattern -\> font
/definepattern { %def
  7 dict begin
    /FontDict 9 dict def
    FontDict begin
      /cache exch def
      /key exch def
      /proc exch cvx def
      /mtx exch matrix invertmatrix def
      /height exch def
      /width exch def
      /ctm matrix currentmatrix def
      /ptm matrix identmatrix def
      /str
      (xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx)
      def
    end
    /FontBBox [ %def
      0 0 FontDict /width get
      FontDict /height get
    ] def
    /FontMatrix FontDict /mtx get def
    /Encoding StandardEncoding def
    /FontType 3 def
    /BuildChar { %def
      pop begin
      FontDict begin
        width 0 cache { %ifelse
          0 0 width height setcachedevice
        }{ %else
          setcharwidth
        } ifelse
        0 0 moveto width 0 lineto
        width height lineto 0 height lineto
        closepath clip newpath
        gsave proc grestore
      end end
    } def
    FontDict /key get currentdict definefont
  end
} bind def

% dict patternpath -
% dict matrix patternpath -
/patternpath { %def
  dup type /dicttype eq { %ifelse
    begin FontDict /ctm get setmatrix
  }{ %else
    exch begin FontDict /ctm get setmatrix
    concat
  } ifelse
  currentdict setfont
  FontDict begin
    FontMatrix concat
    width 0 dtransform
    round width div exch round width div exch
    0 height dtransform
    round height div exch
    round height div exch
    0 0 transform round exch round exch
    ptm astore setmatrix

    pathbbox
    height div ceiling height mul 4 1 roll
    width div ceiling width mul 4 1 roll
    height div floor height mul 4 1 roll
    width div floor width mul 4 1 roll

    2 index sub height div ceiling cvi exch
    3 index sub width div ceiling cvi exch
    4 2 roll moveto

    FontMatrix ptm invertmatrix pop
    { %repeat
      gsave
        ptm concat
        dup str length idiv { %repeat
          str show
        } repeat
        dup str length mod str exch
        0 exch getinterval show
      grestore
      0 height rmoveto
    } repeat
    pop
  end end
} bind def

% dict patternfill -
% dict matrix patternfill -
/patternfill { %def
  gsave
    eoclip patternpath
  grestore
  newpath
} bind def

/img { %def
  gsave
  /imgh exch def
  /imgw exch def
  concat
  imgw imgh 8
  [imgw 0 0 imgh neg 0 imgh]
  /colorstr 768 string def
  /colorimage where {
    pop
    { currentfile colorstr readhexstring pop }
    false 3 colorimage
  }{
    /graystr 256 string def
    {
      currentfile colorstr readhexstring pop
      length 3 idiv
      dup 1 sub 0 1 3 -1 roll
      {
        graystr exch
        colorstr 1 index 3 mul get 30 mul
        colorstr 2 index 3 mul 1 add get 59 mul
        colorstr 3 index 3 mul 2 add get 11 mul
        add add 100 idiv
        put
      } for
      graystr 0 3 -1 roll getinterval
    } image
  } ifelse
  grestore
} bind def

/arrowhead {
  gsave
    [] 0 setdash
    strokeC strokeM strokeY strokeK setcmykcolor
    2 copy moveto
    4 2 roll exch 4 -1 roll exch
    sub 3 1 roll sub
    exch atan rotate dup scale
    arrowtype
    dup 0 eq {
      -1 2 rlineto 7 -2 rlineto -7 -2 rlineto
      closepath fill
    } if
    dup 1 eq {
      0 3 rlineto 9 -3 rlineto -9 -3 rlineto
      closepath fill
    } if
    dup 2 eq {
      -6 -6 rmoveto 6 6 rlineto -6 6 rlineto
      -1.4142 -1.4142 rlineto 4.5858 -4.5858 rlineto
      -4.5858 -4.5858 rlineto closepath fill
    } if
    dup 3 eq {
      -6 0 rmoveto -1 2 rlineto 7 -2 rlineto -7 -2 rlineto
      closepath fill
    } if
    dup 4 eq {
      -9 0 rmoveto 0 3 rlineto 9 -3 rlineto -9 -3 rlineto
      closepath fill
    } if
    dup 5 eq {
      currentpoint newpath 3 0 360 arc
      closepath fill
    } if
    dup 6 eq {
      2.5 2.5 rmoveto 0 -5 rlineto -5 0 rlineto 0 5 rlineto
      closepath fill
    } if
    pop
  grestore
} bind def

/setcmykcolor where { %ifelse
  pop
}{ %else
  /setcmykcolor {
     /black exch def /yellow exch def
     /magenta exch def /cyan exch def
     cyan black add dup 1 gt { pop 1 } if 1 exch sub
     magenta black add dup 1 gt { pop 1 } if 1 exch sub
     yellow black add dup 1 gt { pop 1 } if 1 exch sub
     setrgbcolor
  } bind def
} ifelse

/RE { %def
  findfont begin
  currentdict dup length dict begin
    { %forall
      1 index /FID ne { def } { pop pop } ifelse
    } forall
    /FontName exch def dup length 0 ne { %if
      /Encoding Encoding 256 array copy def
      0 exch { %forall
        dup type /nametype eq { %ifelse
          Encoding 2 index 2 index put
          pop 1 add
        }{ %else
          exch pop
        } ifelse
      } forall
    } if pop
  currentdict dup end end
  /FontName get exch definefont pop
} bind def

/spacecount { %def
  0 exch
  ( ) { %loop
    search { %ifelse
      pop 3 -1 roll 1 add 3 1 roll
    }{ pop exit } ifelse
  } loop
} bind def

/WinAnsiEncoding [
  39/quotesingle 96/grave 130/quotesinglbase/florin/quotedblbase
  /ellipsis/dagger/daggerdbl/circumflex/perthousand
  /Scaron/guilsinglleft/OE 145/quoteleft/quoteright
  /quotedblleft/quotedblright/bullet/endash/emdash
  /tilde/trademark/scaron/guilsinglright/oe/dotlessi
  159/Ydieresis 164/currency 166/brokenbar 168/dieresis/copyright
  /ordfeminine 172/logicalnot 174/registered/macron/ring
  177/plusminus/twosuperior/threesuperior/acute/mu
  183/periodcentered/cedilla/onesuperior/ordmasculine
  188/onequarter/onehalf/threequarters 192/Agrave/Aacute
  /Acircumflex/Atilde/Adieresis/Aring/AE/Ccedilla
  /Egrave/Eacute/Ecircumflex/Edieresis/Igrave/Iacute
  /Icircumflex/Idieresis/Eth/Ntilde/Ograve/Oacute
  /Ocircumflex/Otilde/Odieresis/multiply/Oslash
  /Ugrave/Uacute/Ucircumflex/Udieresis/Yacute/Thorn
  /germandbls/agrave/aacute/acircumflex/atilde/adieresis
  /aring/ae/ccedilla/egrave/eacute/ecircumflex
  /edieresis/igrave/iacute/icircumflex/idieresis
  /eth/ntilde/ograve/oacute/ocircumflex/otilde
  /odieresis/divide/oslash/ugrave/uacute/ucircumflex
  /udieresis/yacute/thorn/ydieresis
] def

/SymbolEncoding [
  32/space/exclam/universal/numbersign/existential/percent
  /ampersand/suchthat/parenleft/parenright/asteriskmath/plus
  /comma/minus/period/slash/zero/one/two/three/four/five/six
  /seven/eight/nine/colon/semicolon/less/equal/greater/question
  /congruent/Alpha/Beta/Chi/Delta/Epsilon/Phi/Gamma/Eta/Iota
  /theta1/Kappa/Lambda/Mu/Nu/Omicron/Pi/Theta/Rho/Sigma/Tau
  /Upsilon/sigma1/Omega/Xi/Psi/Zeta/bracketleft/therefore
  /bracketright/perpendicular/underscore/radicalex/alpha
  /beta/chi/delta/epsilon/phi/gamma/eta/iota/phi1/kappa/lambda
  /mu/nu/omicron/pi/theta/rho/sigma/tau/upsilon/omega1/omega
  /xi/psi/zeta/braceleft/bar/braceright/similar
  161/Upsilon1/minute/lessequal/fraction/infinity/florin/club
  /diamond/heart/spade/arrowboth/arrowleft/arrowup/arrowright
  /arrowdown/degree/plusminus/second/greaterequal/multiply
  /proportional/partialdiff/bullet/divide/notequal/equivalence
  /approxequal/ellipsis/arrowvertex/arrowhorizex/carriagereturn
  /aleph/Ifraktur/Rfraktur/weierstrass/circlemultiply
  /circleplus/emptyset/intersection/union/propersuperset
  /reflexsuperset/notsubset/propersubset/reflexsubset/element
  /notelement/angle/gradient/registerserif/copyrightserif
  /trademarkserif/product/radical/dotmath/logicalnot/logicaland
  /logicalor/arrowdblboth/arrowdblleft/arrowdblup/arrowdblright
  /arrowdbldown/lozenge/angleleft/registersans/copyrightsans
  /trademarksans/summation/parenlefttp/parenleftex/parenleftbt
  /bracketlefttp/bracketleftex/bracketleftbt/bracelefttp
  /braceleftmid/braceleftbt/braceex
  241/angleright/integral/integraltp/integralex/integralbt
  /parenrighttp/parenrightex/parenrightbt/bracketrighttp
  /bracketrightex/bracketrightbt/bracerighttp/bracerightmid
  /bracerightbt
] def

/patarray [
/leftdiagonal /rightdiagonal /crossdiagonal /horizontal
/vertical /crosshatch /fishscale /wave /brick
] def
/arrowtype 0 def
/fillC 0 def /fillM 0 def /fillY 0 def /fillK 0 def
/strokeC 0 def /strokeM 0 def /strokeY 0 def /strokeK 1 def
/pattern -1 def
/mat matrix def
/mat2 matrix def
/nesting 0 def
/deferred /N def
/c /curveto load def
/c2 { pop pop c } bind def
/C /curveto load def
/C2 { pop pop C } bind def
/e { gsave concat 0 0 moveto } bind def
/F {
  nesting 0 eq { %ifelse
    pattern -1 eq { %ifelse
      fillC fillM fillY fillK setcmykcolor eofill
    }{ %else
      gsave fillC fillM fillY fillK setcmykcolor eofill grestore
      0 0 0 1 setcmykcolor
      patarray pattern get findfont patternfill
    } ifelse
  }{ %else
    /deferred /F def
  } ifelse
} bind def
/f { closepath F } bind def
/K { /strokeK exch def /strokeY exch def
     /strokeM exch def /strokeC exch def } bind def
/k { /fillK exch def /fillY exch def
     /fillM exch def /fillC exch def } bind def
/opc { pop } bind def
/Opc { pop } bind def
/L /lineto load def
/L2 { pop pop L } bind def
/m /moveto load def
/m2 { pop pop m } bind def
/n /newpath load def
/N {
  nesting 0 eq { %ifelse
    newpath
  }{ %else
    /deferred /N def
  } ifelse
} def
/S {
  nesting 0 eq { %ifelse
    strokeC strokeM strokeY strokeK setcmykcolor stroke
  }{ %else
    /deferred /S def
  } ifelse
} bind def
/s { closepath S } bind def
/Tx { fillC fillM fillY fillK setcmykcolor show
      0 leading neg translate 0 0 moveto } bind def
/T { grestore } bind def
/TX { pop } bind def
/Ts { pop } bind def
/tal { pop } bind def
/tld { pop } bind def
/tbx { pop exch pop sub /jwidth exch def } def
/tpt { %def
  fillC fillM fillY fillK setcmykcolor
  moveto show
} bind def
/tpj { %def
  fillC fillM fillY fillK setcmykcolor
  moveto
  dup stringwidth pop
  3 -1 roll
  exch sub
  1 index spacecount
  dup 0 eq { %ifelse
    pop pop show
  }{ %else
    div 0 8#040 4 -1 roll widthshow
  } ifelse
} bind def
/u {} def
/U {} def
/*u { /nesting nesting 1 add def } def
/*U {
  /nesting nesting 1 sub def
  nesting 0 eq {
    deferred cvx exec
  } if
} def
/w /setlinewidth load def
/d /setdash load def
/B {
  nesting 0 eq { %ifelse
    gsave F grestore S
  }{ %else
    /deferred /B def
  } ifelse
} bind def
/b { closepath B } bind def
/z { /align exch def pop /leading exch def exch findfont
     exch scalefont setfont } bind def
/tfn { exch findfont
     exch scalefont setfont } bind def
/Pat { /pattern exch def } bind def
/cm { 6 array astore concat } bind def
/q { mat2 currentmatrix pop } bind def
/Q { mat2 setmatrix } bind def
/Ah {
  pop /arrowtype exch def
  currentlinewidth 5 1 roll arrowhead
} bind def
/Arc {
  mat currentmatrix pop
    translate scale 0 0 1 5 -2 roll arc
  mat setmatrix
} bind def
/Arc2 { pop pop Arc } bind def
/Bx {
  mat currentmatrix pop
    concat /y1 exch def /x1 exch def /y2 exch def /x2 exch def
    x1 y1 moveto x1 y2 lineto x2 y2 lineto x2 y1 lineto
  mat setmatrix
} bind def
/Rr {
  mat currentmatrix pop
    concat /yrad exch def /xrad exch def
    2 copy gt { exch } if /x2 exch def /x1 exch def
    2 copy gt { exch } if /y2 exch def /y1 exch def
    x1 xrad add y2 moveto
    matrix currentmatrix x1 xrad add y2 yrad sub translate xrad yrad scale
    0 0 1 90 -180 arc setmatrix
    matrix currentmatrix x1 xrad add y1 yrad add translate xrad yrad scale
    0 0 1 180 270 arc setmatrix
    matrix currentmatrix x2 xrad sub y1 yrad add translate xrad yrad scale
    0 0 1 270 0 arc setmatrix
    matrix currentmatrix x2 xrad sub y2 yrad sub translate xrad yrad scale
    0 0 1 0 90 arc setmatrix
    closepath
  mat setmatrix
} bind def
/Ov {
  mat currentmatrix pop
    concat translate scale 1 0 moveto 0 0 1 0 360 arc closepath
  mat setmatrix
} bind def
end
%%EndResource
%%EndProlog
%%BeginSetup
%PDX g 5 5 1 1
%%IncludeFont: ArialMT
PDXDict begin
%%EndSetup
%%Page: 1 1
%%BeginPageSetup
/_PDX_savepage save def

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  7.5 0 moveto 15 7.5 lineto
  0 7.5 moveto 7.5 15 lineto
  2 setlinewidth stroke
} bind
/rightdiagonal true definepattern pop

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  7.5 0 moveto 0 7.5 lineto
  15 7.5 moveto 7.5 15 lineto
  2 setlinewidth stroke
} bind
/leftdiagonal true definepattern pop

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  0 7.5 moveto 15 7.5 lineto
  2 setlinewidth stroke
} bind
/horizontal true definepattern pop

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  7.5 0 moveto 7.5 15 lineto
  2 setlinewidth stroke
} bind
/vertical true definepattern pop

15 15 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  0 7.5 moveto 15 7.5 lineto
  7.5 0 moveto 7.5 15 lineto
  2 setlinewidth stroke
} bind
/crosshatch true definepattern pop

30 30 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 setlinecap
  0 7.5 moveto 30 7.5 lineto
  0 22.5 moveto 30 22.5 lineto
  7.5 0 moveto 7.5 7.5 lineto
  7.5 22.5 moveto 7.5 30 lineto
  22.5 7.5 moveto 22.5 22.5 lineto
  1 setlinewidth stroke
} bind
/brick true definepattern pop

30 30 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 2 scale
  2 setlinecap
  7.5 0 moveto 15 7.5 lineto
  0 7.5 moveto 7.5 15 lineto
  7.5 0 moveto 0 7.5 lineto
  15 7.5 moveto 7.5 15 lineto
  0.5 setlinewidth stroke
} bind
/crossdiagonal true definepattern pop

30 30 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  2 2 scale
  1 setlinecap
  0 7.5 moveto 0 15 7.5 270 360 arc
  7.5 15 moveto 15 15 7.5 180 270 arc
  0 7.5 moveto 7.5 7.5 7.5 180 360 arc
  0.5 setlinewidth stroke
} bind
/fishscale true definepattern pop

30 30 [300 72 div 0 0 300 72 div 0 0]
{ %definepattern
  1 setlinecap 0.5 setlinewidth
  7.5 0 10.6 135 45 arcn
  22.5 15 10.6 225 315 arc
  stroke
  7.5 15 10.6 135 45 arcn
  22.5 30 10.6 225 315 arc
  stroke
} bind
/wave true definepattern pop

WinAnsiEncoding /_ArialMT /ArialMT RE

newpath 2 setlinecap 0 setlinejoin 2 setmiterlimit
[] 0 setdash
83 221 moveto 83 580 lineto 530 580 lineto 530 221 lineto closepath clip
newpath
%%EndPageSetup
1 w
413.036 405.895 30 712.145 [0.8 0 0 0.8 114.6 -54.7] Bx
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 138.1 -128.6] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 137.3 -71.15] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 194.1 -71.35] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 194 -125.7] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 251.6 -127] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 251.6 -72.3] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 307.6 -71.15] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 307.4 -126.2] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 139.8 -238.2] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 139.1 -182] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 194.4 -182.2] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 195.6 -237.4] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 253 -238] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 253 -180.2] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 307.7 -182] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 309 -237.2] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 365.6 -123.8] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 365.6 -69.93] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 365.1 -237.7] Ov
s
48.0884 47.0599 51 684 [0.8 0 0 0.8 365.1 -181.5] Ov
s
q
0.8 0 0 0.8 129.2 -65.7 cm
75 725 m
75.1818 419.645 L
Q
S
q
0.8 0 0 0.8 120.4 -74.38 cm
25 675 m
403.75 677.5 L
Q
S
q
0.8 0 0 0.8 121.1 -65.7 cm
149.5 725.875 m
149.464 419.645 L
Q
S
q
0.8 0 0 0.8 119.7 -78.16 cm
25 600 m
403.75 602.5 L
Q
S
q
0.8 0 0 0.8 108.8 -65.7 cm
225 725 m
223.745 419.645 L
Q
S
q
0.8 0 0 0.8 116.1 -65.7 cm
275 725 m
274.464 419.645 L
Q
S
q
0.8 0 0 0.8 100.9 -65.7 cm
350 725 m
348.745 419.645 L
Q
S
q
0.8 0 0 0.8 119.7 -79.45 cm
25 550 m
406.656 553.748 L
Q
S
q
0.8 0 0 0.8 120.4 -65.7 cm
24.5 475.875 m
403.75 477.5 L
Q
S
q
1 0 0 1 61.86 -178.7 cm
80 425 m
215 425 L
Q
S
q
1 0 0 1 60.29 -178.7 cm
265 425 m
380 425 L
Q
S
[1 0 0 1 63.43 -178.7] e
265 412.66 230 435 tbx
0 tal
22 tld
1 1 1 0 k
/_ArialMT 20 tfn
(a) 230 416.9 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
1 0 0 1 63.43 -178.7 cm
75 425 m
95 415 L
Q
S
q
1 0 0 1 63.43 -178.7 cm
75 425 m
95 435 L
Q
S
q
1 0 0 1 60.29 -178.7 cm
365 435 m
385 425 L
Q
S
q
1 0 0 1 60.29 -178.7 cm
365 410 m
385 425 L
Q
S
[1 0 0 1 63.43 -178.7] e
60 562.66 35 585 tbx
0 tal
22 tld
1 1 1 0 k
/_ArialMT 20 tfn
(b) 35 566.9 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
1 0 0 1 63.43 -178.7 cm
40 555 m
40 450 L
Q
S
q
1 0 0 1 63.43 -178.7 cm
40 595 m
40 695 L
Q
S
q
1 0 0 1 63.43 -185 cm
40 455 m
30 480 L
Q
S
q
1 0 0 1 63.43 -186.6 cm
40 455 m
50 480 L
Q
S
q
1 0 0 1 63.43 -178.7 cm
40 695 m
30 670 L
Q
S
q
1 0 0 1 63.43 -178.7 cm
40 695 m
50 670 L
Q
S
q
1 0 0 1 60.29 -185 cm
395 650 m
440 650 L
Q
S
q
1 0 0 1 55.58 -285.5 cm
400 700 m
445 700 L
Q
S
[1 0 0 1 65 -185] e
455 666.596 405 680 tbx
0 tal
13 tld
1 1 1 0 k
/_ArialMT 12 tfn
() 405 669.14 tpt
T
[1 0 0 1 434 -135.8] e
66.014 562.66 35 585 tbx
0 tal
22 tld
/_ArialMT 20 tfn
(Sy) 35 566.9 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
1 0 0 1 66.57 -236.8 cm
410 755 m
410 705 L
Q
S
q
1 0 0 1 65 -185 cm
400 675 m
410 650 L
Q
S
q
1 0 0 1 66.57 -185 cm
410 650 m
423.429 675 L
Q
S
q
1 0 0 1 66.86 -340.2 cm
410 755 m
410 705 L
Q
S
q
1 0 0 1 66.57 -185 cm
410 600 m
400 575 L
Q
S
q
1 0 0 1 63.43 -185 cm
415 600 m
425 570 L
Q
S
[1 0 0 1 168.8 -35] e
66.014 562.66 35 585 tbx
0 tal
22 tld
1 1 1 0 k
/_ArialMT 20 tfn
(Sx) 35 566.9 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
q
1 0 0 1 65 -185 cm
125 710 m
125 755 L
Q
S
q
1 0 0 1 65 -183.4 cm
175 710 m
175 753.429 L
Q
S
q
1 0 0 1 68.14 -181.9 cm
75 725 m
120 725 L
Q
S
q
1 0 0 1 164.3 -181.6 cm
75 725 m
120 725 L
Q
S
q
1 0 0 1 65 -183.4 cm
125 725 m
105 740 L
Q
S
q
1 0 0 1 63.43 -185 cm
125 725 m
105 715 L
Q
S
q
1 0 0 1 63.43 -181.9 cm
175 725 m
196.571 736.858 L
Q
S
q
1 0 0 1 65 -185 cm
175 725 m
195 715 L
Q
S
2 w
q
1 0 0 1 65 -185 cm
125 500 m
275 500 L
Q
S
5 w
q
1 0 0 1 65 -185 cm
125 500 m
270 500 L
Q
S
4 w
q
1 0 0 1 61.38 -185 cm
275 500 m
275 650 L
Q
S
[1 0 0 1 137.6 -270.6] e
66.014 562.66 35 585 tbx
0 tal
22 tld
1 1 1 0 k
/_ArialMT 20 tfn
(S) 35 566.9 tpt
T
[1 0 0 1 303.1 -95.98] e
66.014 562.66 35 585 tbx
0 tal
22 tld
/_ArialMT 20 tfn
(D) 35 566.9 tpt
T
[1 0 0 1 302.7 -270.1] e
66.014 560.426 35 585 tbx
0 tal
24 tld
/_ArialMT 22 tfn
(I) 35 565.09 tpt
T
-1.42109e-016 -1.42109e-016 -1.42109e-016 0 k
0.5 w
q
1 0 0 1 1.571 -1.571 cm
138.429 293.745 m
443.429 293.745 L
Q
S
q
1 0 0 1 1.858 43.07 cm
138.142 296.933 m
443.142 297.585 L
Q
S
q
1 0 0 1 7.145 82.36 cm
130.996 297.567 m
437.855 303.364 L
Q
S
1 w
q
0.8 0 0 0.8 121.5 -37.08 cm
23.0831 599.164 m
403.75 602.5 L
Q
S
q
0.8 0 0 0.8 124.1 10.58 cm
19.8545 599.277 m
401.105 599.277 L
Q
S
q
0.8 0 0 0.8 121.5 -59.62 cm
23.0831 599.164 m
403.75 602.5 L
Q
S
q
0.8 0 0 0.8 102.3 -64.32 cm
75 725 m
75.1818 419.645 L
Q
S
q
0.8 0 0 0.8 98.59 -65.77 cm
149.5 725.875 m
149.464 419.645 L
Q
S
q
0.8 0 0 0.8 147.1 -65.05 cm
149.5 725.875 m
149.464 419.645 L
Q
S
q
0.8 0 0 0.8 191.3 -65.84 cm
149.5 725.875 m
149.464 419.645 L
Q
S
q
0.8 0 0 0.8 79.04 -65.05 cm
350 725 m
348.745 419.645 L
Q
S
q
0.8 0 0 0.8 123.2 -65.05 cm
350 725 m
348.745 419.645 L
Q
S
q
0.8 0 0 0.8 144.9 -65.12 cm
350 725 m
348.745 419.645 L
Q
S
%%PageTrailer
_PDX_savepage restore
%%Trailer
end
showpage
%%EOF
