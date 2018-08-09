;PROJECT	: Ruang Kelas E305 Gedung E ITERA
;AUTHOR	  : RIFQI IKHWANUDDIN, S.T., M.T.
;DATE     : 30 Juli 2018

ABS Kaca <20 10 8 6 4 2>
ABS Lantai <1 1  2 2 2 2>
ABS Langit <20 15 10 8 4 2> ; PLASTER10 Lawrence
ABS Pintu <15 12 10 7 6 7>
ABS Tiang <1 1 2 2 2 2>
ABS Tembok <42 21 10 8 6 6 >

GLOBAL u	= 0.65
GLOBAL h	= 2.8
GLOBAL a = 0.15
GLOBAL pintu = 1.9
GLOBAL vent = 0.5

CORNERS
;LANTAI
1	  0	    0	      0
2   9.5*u 0       0
3   9.5*u 0.7*u   0
4   10.5*u  y(3)   0
5   10.5*u  0       0
6   20*u  0       0
7   20*u    11.8*u  0
8   19.5*u  11.8*u  0
9   16.9*u  11.8*u  0
10  16.4*u  11.8*u  0
11  16.4*u  13*u    0
12  x(4)  y(11) 0
13  x(4)  y(11)-0.7*u 0
14  x(3)  y(13) 0
15  x(3)  y(11) 0
16  0       13*u    0

17 x(1) y(1) a
18 x(2) y(2) a
19 x(3) y(3) a
20 x(4) y(4) a
21 x(5) y(5) a
22 x(6) y(6) a
23 x(7) y(7) h
24 x(8) y(8) pintu+vent
25 x(9) y(9) pintu+vent
26 x(10) y(10) h
27 x(11) y(11) h
28 x(12) y(12) h
29 x(13) y(13) h
30 x(14) y(14) h
31 x(15) y(15) h
32 x(16) y(16) h

33 x(2) y(2) h
34 x(3) y(3) h
35 x(4) y(4) h
36 x(5) y(5) h
37 x(6) y(6) h
38 x(9) y(9) pintu
39 x(8) y(8) pintu
40 x(1) y(1) h

PLANES
[1 Lantai / 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16/ Lantai]
[2 Dinding bawah jendela \ 1 2 18 17 \ Tembok]
[3 Tiang / 3 2 18 33 34 / Tiang]
[4 Tiang / 4 3 34 35 / Tiang]
[5 Tiang / 5 4 35 36 21 / Tiang]
[6 Dinding bawah jendela / 6 5 21 22 / Tembok]
[7 Tembok / 7 6 22 37 23 / Tembok]
[8 Tembok / 8 7 23 26 10 9 38 25 24 39 / Tembok]
[9 Pintu / 9 8 39 38 / Pintu]
[10 Ventilasi / 38 39 24 25 / Kaca]
[11 / 11 10 26 27 / Tembok]
[12 / 12 11 27 28 / Tembok]
[13 / 14 13 29 30 / Tembok]
[14 / 15 14 30 31 / Tembok]
[15 / 16 15 31 32 / Tembok]
[16 / 1 16 32 40 17 / Tembok]

[17 Langit-langit \ 40 33 34 35 36 37 23 26 27 28 29 30 31 32 \ Langit]
[18 Jendela Kaca / 17 40 33 18 / Kaca]
[19 Jendela Kaca / 22 21 36 37 / Kaca]
[20 Tiang / 13 12 28 29 / Tiang]
