I have a preliminary idea on how to save a video in 8KB. First, change the camera's operation and its construction. Second, record multiple streams/formats of resolutions simultaneously. Third, and most importantly, it must be recorded and retrieved by the camera's eye or some kind of biometric sensor, SIMILAR TO THE MIDI file format or another more sophisticated standard for data, but closely integrated with this biometric camera, which, like a musical instrumentalist, extracts successive notes on a MIDI keyboard with a few essential parameters, C0 and A1 being just two saved notes, and with the help of a sound sample, for example, record how it sounds, such as a tom-tom or snare drum.

8 Kibibytes = 65536 Bits

60 seconds = ~1000 Bits per second (because audio must be recorded) ~1000 Bits per second should be incremental frame changes for 30 fps, which is 33 bits for only what's new in the next frame compared to the previous one. 33 bits, i.e., 0 or 1, are for a large format like 4K, but it's not possible to manage such a pool in just 33 bits unless we write a kind of "fractional input for code" on the decompressor side, which, after reading these 33 bits, would determine which fraction of the code to apply, e.g., 10 goes left, 01 goes right, etc. In this way, for 32 bits, you can nest 16 steps like a pyramid. If that's not enough, you can divide 32 by 8, multiplying by each other fraction, e.g., 4 = 01 10, 4 = 10 10, and so on. This results in 4x4x4x4x4x4x4x4, which is approximately 64,000 fractions. For 4K, i.e., 8,000,000 pixels, changes in pixel increments between frames need to be noticed and then assigned to a specific fraction of this code. Each fraction contains the pixel's address and its new state.

In another way, with 33 bits, you can encode 2^33 numeric values, which equals 8,589,934,592. And each of these positions for 4K, i.e., 8,000,000 pixels, can be addressed for the pixel at approximately >>>>1000 versions per pixel<<< as changing increments from frame to frame. However, the checksum is too large because supposedly 10 bits are enough, which potentially can store 4K x 100 frames = 33 bits = 3s, 33 frames of 4K = 1000 bits = 100s, 33 frames of 4K = 65500 bits = 100s x 65.5 = 65500s, 33 frames of 4K = 1.8 <2h 33 frames of 4K, and there are more than 8,000,000,000 possibilities, i.e., unique patterns. Therefore, even with reading a single value, we get one of 8,000,000,000 combinations, and the required combinations are at most 64,000,000,000,000. So, the maximum incremental change weight from frame to frame must be maintained in a pool 8,000 times smaller. Thus, in 8 billion patterns, we accommodate 8 million pixels with the attributes constant, change in place, or vector attribute for a new pixel address or multiple addresses x, y, e.g., 1000x2500 (+ 0, -1) x (4 degrees) of direction and/or attribute gamma (rgb) constant/target, which adds 4 attributes, each with 2 properties. For direction, there are 4 additional properties. This can ultimately be encoded in 12 bit positions, 8 million x stripped/compressed to 10 = 80 million. An additional 100 times for error correction and more, 1000 PIXEL STATES ALWAYS NEED A TABLE OF POSSIBLE COMBINATIONS FOR THEIR ATTRIBUTES, WHICH WOULD BE THE CARRIER FOR THIS PIXEL IN LIMITED-ADDRESS RANGE DIRECTIONS AND REPEATED EVERY 1000 AND SO ON FROM 1 TO 1000 UP TO 8 MILLION PIXELS AND 8 BILLION COMBINATIONS.

A new idea is instead of permanently storing such a vast number of patterns, it could be significantly simplified so that these combinations are stored in the code of the program generating the necessary patterns ad hoc.

So, ideally, one minute is 60s x 30fps = a capacity of 1800 notations that need to be compressed.

The compression ratio for zstd is about 2.877. It might be a representation like this: "Compressor name Ratio zstd 1.1.3-1 Compression 2.877 Decompress. 430 MB/s zlib 1.2.8-1 1110 MB/s 2.743 110 MB/s brotli 0.5.2- 400 400 MB/s 2.708 400 MB/s quicklz 1.5.0-1 430 MB/s 2.238 550 MB/s Izo1x 2.09-1 710 MB/s 2.108 Iz4 1.7.5 650 MB/s 830 MB/s 2.101 720 MB/s snappy 1.1.3 3600 MB/s 2.091 Izf 3.6-1 3.6 500 MB/s 1650 MB/s 2.077 400 MB/s 860 MB/s". This indicates that it's impossible to achieve this with standard semiconductor data storage, but it might be possible with a hologram. The best approach could be to use the longest non-existent alphabet in the real world.

The term "hologram" should be taken in quotes because there are proven methods for transmitting and storing data. You can transmit these patterns in the hologram's structure as we have barcodes or QR codes on product labels. These would have the extensive alphabet preserved.

For example, if the transmission channel in TV has a bandwidth of 8 MHz, 8 x 1024 Hz = enough for this example after zstd compression. For 8 TV channels, but my example gives 60 times as many channels because it was calculated for 60 seconds. So, instead of the current 8 channels, you can transmit 480 stations on one multiplex. In that case, this extensive alphabet, hertz by hertz, would have a different notation.

Correction, 8 megahertz = 8 x 1024 x 1024 Hz, which is 1000 x 480 = 480,000 TV stations. The alphabet table sitting on the receiver's or transmitter's side and not being transmitted, for example, for the 4K format = 8,000,000 pixels x RGB (3 = 9 combinations from 0-8), so the table can be 8 megabytes for one hologram (1 Hz/s), and the number of combinations, i.e., the bandwidth for 8 MHz, is also 8,000,000 = 64,000,000,000,000 = 64 trillion.

64 trillion = about 64 terabytes.

1 TB = 1,099,511,627,776 bytes.

So, the decoder would need a disk of about 64 terabytes in capacity for the alphabet in order to watch 480,000 stations instead of the current 8 stations. I'm not sure if I calculated this correctly; maybe an 8-megabyte table will be sufficient.

Oh, 64 terabytes per second equals the current weight of those 480,000 stations per second, approximately 12.5 megabits per second for 4K x 480,000 stations = 64,000,000,000,000 bytes.

A new idea is that instead of permanently storing such a vast number of patterns, it could be significantly simplified so that these combinations are stored in the code of the program generating the necessary patterns ad hoc.

>>>>>>>this replace 8 channels HD on 480 000 channels in 400k in one mux dvb-t2<<<<<<<< also
>>>>>>>
 1,8<1,9h 33kl 4K in >8KB<
 
"KARGUL A TERA PLACZ JAKO I JA PLACZE"
 
<img width="964" alt="8KB" src="https://github.com/stpf99/VED_CODE4CODEC4SCALE/blob/badcb3d1c6b43fa84402d36186cf9cb9733cc93e/10545603020505958987.jpg">
https://www.youtube.com/watch?v=33Ij_IOQlx4
mam wstepny pomysł na to jak zapisac film  w 8KB
po pierwsze zmiana dzialania kamery i tego jak jest zbudowana
po drugie kilka na raz zapisywanych strumieni/formatow rozdzielczosci
po trzecie a zarazem najwazniejsze musi to byc zapisywane i pobierane przez oko kamery lub jakiegos rodzaju sensor biometryczny PODBNIE JAK STANDARD PLIKÓW MIDI lub inny bardziej wyrafinowany podobny standard dla danych z tym ze scisle wspolparcujacy z ta biometryczna kamera ktora niczym muzyk instrumentalista wyciska kolejne nuty na keyboardzie midi z kilkoma najpotrzebniejszymi parametrami C0 i A1 to tylko dwie zapisane nuty a mogą przy pomocy próbki dżwiękowej np zapisać to jak brzmi raz tomtom raz werbel

8 Kibibytes = 65536 Bitów

8 Kibibytes = 65536 Bitów


60sek = ~1000 Bitów na sekunde (bo audio musi byc zapisane)
~1000 Bitów na sekunde to powiiny byc zmiany przyrostowe poklatkowe dla 30 kl obrazu czyli 33 bity dla jedynie tego co nowe w klatce nastepnej wzgledem poprzedniej a 33 bity czyli 0 lub 1 to dla tak duzego formatu jak 4k ale nie mozliwe aby ogarnac taka pule w nawet tylko 33bit chyba ze napiszemy rodzaj "frakcyjnego wsadu dla kodu" po stronie dekompresora ktory po odczy cie tych 33 bit wjedzialby ktora frakcje z kodu zastosowac np 10 idziemy w lewy zbior 01 w prawy itd w tem sposob dla 32 bit da sie zagniezdizic 16 schodow taka piramide a gdy by to bylo malo mozna podzielic 32 /8 pomnazalnych przez siebie frakcji 4 = 01 10, 4= 10 10 itd co dje razem 4x4x4x4x4x4x4x4 ok 64 000 frakcji w ktorych dla  4k czyli 8 000 000 px musi  beda zauwazane zmiany przyrostow pixeli z klatki na klatke ktore powinny byc potem przypisywane do konkretnej frakcji tego kodu a kazda z fracji zawierajaca w sobie adres pixela i jego nowy stan

inna droga idac
W 33 bitach można zapisać 2 do potęgi 33 wartości numerycznych, co wynosi 8 589 934 592. i kazda z tych pozycji dla 4k czyli 8 000 000 px mozna zadresowac dla pixela po ok dla 1 pixela od 1-1000 dla 2 pixela od 1001 -2000 itd az do puli ok 8 589 934 592 (8 000 000 px 4k) kazda z rtych puli od np 1-1000 dla p1erwszego pixela ma zawierac informacje koloru rgb 255,255,255 i ta i nforamcja powinna sie zmiescic pw puli 1000 poniewaz 3x256 =768 a to jest mniej niz 1000 mozliwosci tylko mzapis musi byc rozbity na 3 czesci wczesniej i musi byc sprytnie ustrukturyzowany z nie kolejna nastepujaca wartoscia tylko trzeba jakims rownaiem strukturyzujacym dlqa rgb czyli trzech wartosci  utworzyc tabele dla swobodnego odczytu z od 1 do 768 tak aby kod odczytywujacy zawsze w konkretny parametr rgb trafil nie mylac go dla pozycji rgb , nie spotkalem takiego rownainia matematycznego ale polegaloby ono na prawdopodobie na presunieciu wartosi i raz malejaco a raz rosnaco i dalej malejaco, lub tabela kompletnie generowana wedlug funkcji random dopuki az nie zawiedzie czyli nie pomyli adrersacji dla rgb..........  jako zmianiajaca sie z klatki na klatke sume kontrolna to az za duzo bo podobno wystarcza 10-bit czyli potencjalnie w tej sumie kontrolnej mozna zapisac 4k x 100kl = 33bit =3s 33kl 4k = 1000bit =100s 33kl 4k= 65500bit = 100sx65,5 =65500s 33kl 4k = 1,8<2h 33kl 4K
i tych >8 000 000 000 mozliwosci czyli unikalnych paternow naprawde jest i tylko w ten sposob ze mimo odczytu jednej wartosci otrzymujemy adres jednej z 8 000 000 000 kombinacji przemiszan a potrebnych jest max przemieszan 64 000 000 000 000 cyli max przyrostowa waga zmian z klatki na klatke musi utrzymac sie w puli  8 000 razy mniejszej , to moze w  8 mld paternow zawzec 8 mln pix w strukturze atrybut constant lub atrybut zmiana w miejscu lub atrybut wektor nowy adres pixela lub wiele adresow x,y np 1000x2500 (+ 0, - 1 )x (4 stopniowania) kierunku lub / i atrybut gamma (rgb) constant / docelowa co daje dodatykowych  4 atrybute kazdy po 2 wlasciwosci i dla kierunku 4 wlasciwosci dodatkowe mozna to zapisac w ostatecznie 12 pozycji bit  8mln x stripped/copressed to 10 80mln a 100 x tyle przeznaczyc na korekcje bledow i inne , 1000 STANOW PIXELA W TYLU NALEZY ZAWSZEC TABLICE MOZLIWYCH KOMBINACJI DLA JEGO ATRYBUTOW KTORA BEDZIE NOSNA TEGO PIXELA W KIERUNKCH OGRANICZONEJ ROZPIETOSCI ADRESOW NOWYCH WARTOSCIACH I POWTAZALNA CO 1000 I TAK OD 1 DO 1000 AZ DO 8 MLN PIXELI A 8 MLD KOMBINACJI

nowy pomysl to zamiast na stale przechowywac tak ogromna ilosc patternow mozna bylo by to zanaczaco uproscic aby te kombinacje byly przechowywane w kodzie programu generujacego adhoc potrzebne patterny



czyli najlepiej minuta to 60s 30kl = pojemnosc 1800 notacji ktore potrzba skompresowac

wspolczynnik kompresji dla zstd ok 2,877
Może być zdjęciem przedstawiającym tekst „Compressor name Ratio zstd 1.1.3-1 Compression 2.877 Decompress. 430 MB/s zlib 1.2.8-1 1110 MB/s 2.743 110 MB/s brotli 0.5.2- 400 400 MB/s 2.708 400 MB/s quicklz 1.5.0-1 430 MB/s 2.238 550 MB/s Izo1x 2.09-1 710 MB/s 2.108 Iz4 1.7.5 650 MB/s 830 MB/s 2.101 720 MB/s snappy 1.1.3 3600 MB/s 2.091 Izf 3.6-1 3.6 500 MB/s 1650 MB/s 2.077 400 MB/s 860 MB/s”

wynika z tego ze jest to niemozliwe przy uzyciu standardowego polprzewodnikowego zapisu danych ale mozlwe by bylo na hologramie

i najlepiej za pomoca najdluzszego nieistniejacego w realnym swiecie alfabetu

hologram nalezy traktowac w cudzyslowiu dla tego ze sa sprawdzone metody przesylania i utrwalania danych

wystarczy w strukturze hologramu je przesylac za pomoca tak jak mamy na naklejkach produktów kody kreskowe czy kwadracików które mialyby utrwalony ten bardzo rozlegly alfabet

i np gdy kanal przesylania w tw ma rozpietosc 8 mhz

8x 1024 hz = wystarczjaco dla tego przykladu po kompresji zstd

dla a 8 kanalow tv ale moj przyklad daje 60 razy tyle kanlow bo byl policzony dla 60 sekund

czyli zamiast obecnych 8 kanlow da sie przesylac na jednym muxie 480 stacji

wtedy ten rozlegly alfabet hertz po hertzu mialby inna notacje

pomylka ,,, 8megahertz = 8 x 1024 x 1024 hz

czyli 1000 x 480 = 480 000 stacji tv

tablica alfabetu ktora siedzi sobie po stronie odbiornika lub nadajnika i nie jest przesylana to np dla formatu 4k = 8 000 000 pixeli razy rgb (3=9 kombinacji od 0-8) czyli tablica moze byc o rozmiarze 8 megabajtowym dla jednego hologramu (1hz/s) a ilosc kombinacji czyli pula dla pasma 8mhz wynosi= tez 8 000 000 = 64 000 000 000 000 = 64 biliony

64 bilony = ok 64 terabajty

1TB = 1,099,511,627,776 bajtów

czyli dekoder musialby miec dysk ok 64terabjty pojemnosci na alfabet aby zamiast <<<<<8 stacji>>>>>> tv jak obecnie aby ogladac >>>>>>>480 000 stacji<<<<<<<
nie wiem czy dobrze to policzylem moze tablca 8 megabajtowa bedzie wystarczajaca

aha 64 terabajty /sekunde wynosi obecna waga tych 480 000 stacji / sekunde ok 12.5mbit/sekunde dla 4k x 480 000 stacji = 64 000 000 000 0000 bytes


nowy pomysl to zamiast na stale przechowywac tak ogromna ilosc patternow mozna bylo by to zanaczaco uproscic aby te kombinacje byly przechowywane w kodzie programu generujacego adhoc potrzebne patterny


EN

My idea for an artificial method of improving the image or video quality would be that the image frame would be processed from simple pixels in a plus system and seen as a honeycomb, i.e. from a plus to one honeycomb cell, or from a parallel equilateral octagon - such as a stop sign from those obtained information, it will be much easier to scale 2x or 4x, you can first scale 2x and then repeat the processing but attention,

In this way, there would be distortions in the adjacent slices, so when combining them together, the average color spectrum must be obtained and returned to the top ones, i.e. those external adjoining fields (which would not be original anymore because the image was previously doubled) but this is not it looks logical on the example of a plus, also this sample would have to be such a double-pointed plus before the mathematical process of making these triangles resulting from the sum of the visible light spectrum of neighboring blocks / pixels And probably it would be better to scale the image first without algorithms, i.e. by doubling everything or times a number, and then only apply that's all. dividing the image into plus fields with a connecting element and summarizing the colors in the fields, I figured out that this is not exactly what the honeycomb looks like, the structure of which I wanted to get with a plus, it would be enough to add a half-arm connector that would eventually also become one with two arms As you can see in this simplest example, the image will be 60% enlarged because 4 triangles of a half square = 2 fields + 2 halves of a square = 1 field total 3 and originally plus consisted of 5 fields together gives 8 fields and this is 8 to 5, i.e. 16 to 10 = 1.6 times the size of the image, i.e. 1920 x 1.6 = 3072 pixels widh 1728 height 3072x1728 for example, the resolution of 3k is 2880x1620. add to this good postprocessing I would suggest based on smoothing with the help of the brightness factor in order to obtain the appropriate depth and hide visible imperfections. and from the fullhd picture you get a nice picture for a 4K screen 6 times the size of the image, i.e. 1920 x 1.6 = 3072 pixels. Widh 1728 height 3072x1728, for example, the resolution of 3k is 2880x1620. add to this good postprocessing I would suggest based on smoothing with the help of the brightness factor in order to obtain the appropriate depth and hide visible imperfections. and from the fullhd picture you get a nice picture for a 4K screen 6 times the size of the image, i.e. 1920 x 1.6 = 3072 pixels. Widh 1728 height 3072x1728, for example, the resolution of 3k is 2880x1620. add to this good postprocessing I would suggest based on smoothing with the help of the brightness factor in order to obtain the appropriate depth and hide visible imperfections. and from the fullhd picture you get a nice picture for a 4K screen

https://github.com/devegoo/VED_CODE4CODEC4SCALE/blob/main/resample_01.gif here are shown upscaling algorithms for x2 which gives twice the surface but whether the quality is appropriate, my method, the one I showed some time ago, has a factor of x1.6 in one pass, not doubling, and how would I see pushing up if my algorithm precedes the action like here, i.e. first doubling, for example, with the Lanczos IrfanView algorithm and then pushing or vice versa, it depends on what will be better in visual tests, the magnification factor will be x2 x1.6 or x3.2 and my algorithm in two runs 1x1.6x1.6 = 2.56 and such scaling with my algorithm of material with SD resolution in 2 passes, ie 720x480, for example: 720x2.56 = 1843.2 | 480x2.56 = 1228.8 (1920 x1080 is FHD).

PL

Mój pomysł na sztuczną metode podnoszenia jakości obrazu lub wideo polegałby na tym że klatka obrazu byłaby przetwarzana z prostych pikseli w układzie plus i widziana jak plaster miodu czyli z plusa na jedną komórkę plastra miodu cz też ośmiooboku równobocznego równoległego - taki jak znak stop a z tych otrzymanych informacji już bedzie znacznie łatwiej skalować 2x czy 4x, można najpierw skalować 2x a pożniej powtórzyć przetwarzanie ale uwaga , 

tym sposobem doszło by do przekłamań w sąsiadujących plastrach dla tego podczas łaczenia ich w całość musi dojść do uzyskiwania średniej widma koloru i oddania go spowrotem do  wierzchołkowych czyli tych zewnetrznych stykających się pól (które już nie byłyby oryginalnymi bo obraz był wcześniej podwojony) ale to nie logicznie wygląda na przykładzie plusa takżę ta próbka musiałaby byc takim podwójnoramiennym  plusem przed procesem matematycznym dorabiania tych trójkątów powstałych z sumy widma światła widzialnego sąsiednich bloków/pikseli 
I chyba jednak najpierw by było lepiej przeskalować obraz bez algorytmów czyli podwajając wszystko lub razy ileśtam a pożniej dopiero zastosować to wszystko.
podział obrazu na pola plusowe z elementem łączącym i sumaryzacja kolorów w polach, kapnołem się że tak nie dokładnie wygląda plaster miodu ktorego struktore chcialem uzyskac z plusa to wystrczy taki pol ramienny łącznik dorobic ktory ostatecznie tez z dwuch ramion stanie sie jednym
Jak widać na tym najprostszym przykładzie obraz bedzie o   60% powiększony bo 4 trojkąty połowki kwadratu = 2 pola + 2 połówki kwadratu = 1 pole razem 3 a pierwotnie plus skladał sie z 5 pól razem daje 8 pól a to 8 do 5 czyli 16 do 10 = 1,6 razy większy rozmiar obrazu czyli 1920 x 1.6 = 3072 pixeli widh 1728 height
3072x1728 dla przykładu rozdzielczość 3k wynosi 2880x1620.
dodać do tego dobry postprocessing ja bym proponował bazujący na wygładzaniu przy pomocy  współczynnika jasnośći aby otrzymać odpowidnią głebie i ukryć dostrzegalne niedoskonałości. i z obrazu fullhd otrzymuje sie ładny obraz dl ekranu 4K

https://github.com/devegoo/VED_CODE4CODEC4SCALE/blob/main/resample_01.gif
tu są pokazane algorytmy upscalingu dla x2 co daje dwa razy większą powierzchnie ale czy jakość jest przy tym odpowiednia, mój sposób ten który pokazałem jakiś czas temu ma wsþółczynnik x1.6 w jednym przebiegu nie podwajania a jakbym to powidział rozpychania się , jeśli mój algorytm poprzedzi tak akcja jak tu czyli najpierw podwojenie np algorytmem Lanczos IrfanView a następnie rozpychanie lub odwrotnie zależy co lepiej wypadnie w testach wizualnych to współczynnik powiększenia wyniesie ąż x2 x1.6 czyli x3.2 a samym moim algorytmem w dwuch przebiegach 1x1.6x1.6=2.56 
i takie sklaowanie moim algorytmem materiału o rozdzielczości  SD w 2 przebiegach czyli 720x480 na przykład: 720x2.56=1843.2 | 480x2.56=1228.8 (1920 x1080 to FHD). Można powiedzieć że to idealne rozwiązanie a za razem najmniej skomplikowane a przy tym najbardziej dokładne z pośród dotychczas dostępnych aby otrzymać z rozdzielczości większości kanałów SD w DVB-T/S rozdzielczość prawie FullHD bo 1843.2x1228.8 jest też opcja PAL w Europie i Polsce SD 768x576i = po przemianach 1966.08 x 1474.56 .


https://github.com/devegoo/VED_CODE4CODEC4SCALE/blob/main/upraszczanie%20na%20porcjach%20danych.jpg
mamy tu w sumie 8 pozycji 12342413 a po jednoprzbiegowej kompresji w tym przypadku pozostało operant i pzycje kolejno : +1,+2,-5,1 wartość wejsciowa to pierwsza z puli do przebiegu kompresji mogłaby być oznaczona przedrostkiem 0 pozniej kolejno pozycje 1wartość,2wartosc,3wartosc,4wartosc a operant powtórzenia wartosci pozycji moglby byc zapisywany tam gdzie wystepuje jako podwójna komórka czyli bez przecinka zrobiloby sie poprostu 2 bity w ciągu co by było z automatu rozpoznawane, moc obliczeniowa potrzebna do tego bedzie zalezała od ilośći danych i ilorazu powtórzenia przebiegów , moze to byc uzyte w kompresji i dekompresji RealTime na bardzo słabym obliczeniowo cpu czyli na wszystkim co przychodzi na myśl


(01 -) (10 + )(00 przedrostek wejsciowy)
a wiem jeszcze lepiej jak to ułożyć aby były spójniejsze szeregi danych
(01 bylby -)
(10 bylby +)
(00 poczatkowe dane)
(11 pozycja powtarzająca sie)
czyli wstepnie ciag po pierwszym przbiegu z 1234,(2413) do (+1,+2-5) 1 byłby widziany (10 1), (10 2) (01 5) (11 1)
Decimal to Binary converter skonwertuje te wartości do ciągu (10 1 10 10 01 101 11 1)
przy czym co druga wartość byłaby binarnie zapisana
i program do konpresji i dekompresji dzialalby w trybie mieszanym czyli pierwsza i kążda po-nastepna to znana wartość operanta a druga i każda po-następna to wartość binarna
12342413 - 101111000101010010001101
10 (1) 10 (10) 01 (101) 11 (1) -xx1xx10xx101xx1-1101011
24 ciąg zredukowalem do 6 czyli ratio uzyskałem 4 do 1 bezstratnie

to ma sens poniewaz chyba lepiej zapisac cos ze sie powtarza tylko dwoma pozycjami (binary "red")(11)(19)  np kolor czerwony o danym spektrum rgb jesli wystapil w ciagu danych a kompresor wykryl ze jest on taki sam np 19 razy po uwzglednieniu uchybien nie dostrzegalnych w badaniach porownywalnosci obrazu wejsciowego  z rozkompresowanym

de-compresja barw za pomoca funkcji trygometrycznych F(x)znanych w matematyce.png

curves identification and dump to 2 max 3 point variables.png




1 > 0 < 1 > 0 < 1 < 2 > 1 < 8 > 6 (>) > 0 > 0 > 1 > 6
AI Image processing" według mojego pomysłu na który wpadłem przed chwilą wyglądałby na coś w ten deseń że. dla wartości opisujących każdego pixela i sąsiadujące z nim w czterech kierunkach pixeli "+" można by było na tej wartości z pixela głownego i sąsiednich wypisać ciąg danych np 3(pixel głowny) - 2( pixel wrzedzie poprzedni) +1 (pixel w rzedzie kolejnym) -,- 4 (pixel w rzędzie poprzednim nad pixelem głownym) +,+6( pixel wrzedzie kolejnym pod pixelem głownym), Wtedy mamy taki ciąg danych:
 ,a3,b2,c1,d4,e6
i z takim ciągiem można robic co sie żywnie podoba stosując różne znane algorytmy matematyczne wg uznania , można zastosówać  wykrywanie w którym kierunku mając już kilka opisanych w zasobie np 32x32 px jest wzrost wartości rgb typu red green blue i ntej podstawie opisywać wektory potrzebne dla różnych filtrów które były by stosowane w rożnych celach np: w inteligentym podnoszeniu jakości zdjęć/grafik lub video , zbiór takich danych mógłby się przydać w AI paintingu processingu foto/video lub w wykrywać którym kierunku coś się porusza





Najprostsza porcja danych to będzie = zero (piksel nie podświetlony - czerń)
Najbardziej skomplikowana to kolor zapisany w 12 bit po dekompresji z 12 bit (kompresja zerowa)
Później stopień 75% 9 bit , 50% 6 bit i 25% 3 bit
Dla obrazu fullhd 1920x1080 pikseli = 2,073,600 pix , x 33,333 klatki /sekundę x 12 bit daje przy 100hz , 2073600x33,33,3x12= 829,431,706 cyferek 0/1 co wynosi /8 = 103,678,963 bajtów dalej / 1024 kilobajty = 101,248.987 kB / mb = 98.8759639 mb dla 100 klatek nieskompresowanych lub ok 25 mb dla 25 kl nieskompresowanych na sekundę full HD 25 % 6,25 50% 12,5 mb 75% 18,75 mb i 50% dla 1080i czyli 3,125mb (25%) - 9,375mb dla 75% kompresji max 12,50 mb

Wyniki X4 dla 4k , x16 dla 8k.
Czyli w najlepszym wypadku 8k 25% inerlaced = ok 50 Mbit/s do 200 Mbit nieskompresowany.
4k 25% intelaced = 12,5 Mbit/s
Dac miał kompresję zapisu stanu diody pomiedzy 0 , 3 bit a 12 bit a tu codec ma 4 bit np jak w tym przykładzie wynik 0 Hex 00 W tamtym przykładzie dla 33 klatek 100hz Dla obrazu fullhd 1920x1080 pikseli = 2,073,600 pix , x 33,333 klatki /sekundę x 4 bit daje 276477235,2 /8/1024/1024= 32,95 100% ok 4,11 Mbit/s 1080i 25% Czyli wg mojego kodeka obraz fullhd 1080i da się przesyłać na łączu 4-8 Mbit wynik dac musi miec przepustowosc dla 4k 25% intelaced = 12,5 Mbit/s a codec dla 4k i 16mbit/s 25(%) comp ratio dac 0,25 x x 32mb (4k 100%) =8 mb (przy comp 25x25) / interlaced 4 Mb = od 4-16 mb interlaced 4k lub 8 - 32mbit 4k progressive 4k da sie ogladac przy 12 mbit/sekunde ... To 1,5mb na dysku/d 60s 90 mb 1h = 540mb (4k interlaced ~75%comp) aha jeszcze zapomnialem o o algorytmie... constant/print  


UPDATE 2022/11/2

myslalem przed chwila wlasnie o nowej metodzie kompresji AI ale narazie dla ogolnego zastosowania ktora tez ma cechy AI jak ponizej w tym codec-u audio opublikowanym przez Meta EnCodec (facebook) i po dluzszych przemysleniach nad swoimi wczesniejszymi opracowywaniami w tej dziedzinie wymyslilem cos lepszego co by bylo zarowno i proste w implementacji i proste do zrozumienia . w tym nowym kodeku nie byloby tzw padow dla porcji danych bo odpowiednio podzielone porcje danych bylyby oczywiste dla dekompresora przez co porcja danych zmiejszy sie juz o ok 1/3 (haha) najzwyczajniej dekompresor rozpozna ze jest to ciag danych binarnych nalezacych do danej funkcji po strukturze tych danych czyli policzeniu ich , i jesli bedzie to wideo 16:9 to chyba jedyna informacja jaka mu bedzie potrzebna do odgadniecia to jest to gdzie konczy sie dajmy na to 1 sekunda (30 lub 60kl) dla pixela a to bedzie mogl odgadnac dekompresor z samego bitrate/sek z transmitowanego wideo, ale to jest jeszcze nie ten element AI , elementem AI w tym kodzie/prymitywie bedzie to ze beda tzw AI-unprisoned-flares-for-pull-off-pixels/data(0/1)-in-vectors-and-time (lava lamp)

o-x.jpg
Najprostszy przyklad/cwiczenie dla algorytmu kompresji AI o ktorej mowilem bedzie opracowanie jak najmniejszego a zarazem najszybszego kodu dla zakodowania a poznioej odkodowania toku rozgrywnki tej o to prostej gry kolko krzyzyk ale dowolnej tego typu rozgrywki czyli kod mosialby rozpoznac x / o i jakie sa kolejne pola wystepowania x / o i zapisac ten dowolny tok wystepowania jaknajszybciej i jak najmiej danych uzywajac ///kod nalezy opracowac obiektowo ,jesli uda sie takowy kod jaknajlepiej opracowac to bedzie on bardzo przydatny w wielu etapach /stage-ach, wykorzystamy to do  jedankowych wystapien na roznych poziomach kodu tego kompresora
czyli gdyby to byla jedna sekunda wideo (5-klatek wideo o res 3x3)
i bylby to nawet nie czarno bialy obraz tylko kwadraty czarne i biale
tok postepowania dla 1 sekundy:
0.wykryc bitrate do czasu jednej sekundy i jesli jest on o jakiejs wielkosci stalej dla zdefiniowanych typow rozdzielczosci - proporcji zastosowac odpowiedni wariant algorytmu / preset
1.pule danych-T-Data(1s-Time) podzielic przez 5 (klatki-frames)
2.pol-Poles mamy =9 tak wiec =9 adresow -P-Adress dla kazdej klatki
3.pod kazdym z adresow P-Adress(1-9) kod wypisuje =0 dla pola bialego lub =1 dla pola czarnego np
 100000000, 100100000, 100100100, 110100100, 111100100
4. nastepnie dla kazdego z adresow wylicza jak zminial sie klatka po klatce
czyli 11111,00011,00001,01111,00000,00000,00010,00000,00000 ale to nam prawie nic nie jedynie jak mozna zauwazyc pojawilo sie  4 razy 000000 a wczesniej nie bylo takiego ujednolicenia/co wcale w realnym swiecie nie musi sie zdazyc
5. i tu tak naprawde tkwi sedno bo mamy w polu 9 polowym 81 kombinacji rozmieszczen czyli od 0-80 a w czasie czyli tych 9 polach w pieciu klatkach 81x5 = 405 kobinacji dla 5 klatek 
hahaha i mamy to ,
 czyli jak widzicie za pomoca jednego predefiniowanego patterna /zaadresowanej kombinacji dajmy na to 234 na przyklad adresu da sie wszystko z tych 9 pol i 5 klatek ogarnac do jedengo zapisu/adresu puli danych=234 gdzie kod programu dokladnie wie co rozpakowac klatka po klatce w tym przedziale czasu dla tych danych dla 5 klatek 
i wcale tych 5 klatek nie potrzeba potengowac do kwadratu bo to jest dalej rozpatrywane jako 81 tylko z klatki 1 na klatke 5 zsumowana rzeczywistosc w czasie tych wariantow wynosi 405 a dla tego rozpatrywac mozna to w czasie gdyz jaki to obecnie problem wczytac do pamieci ram iles nawet tysiecy paternow dla jeszcze bardziej zkomplikowanych  presetow chyba 64x64 =4096 x 60 klatek/s = 245760 ,ciag 245~ kilobitow= 30Kbajt dla 60 klatek a dla 30kl 122 kb 
obecnie hevc dla 1080/30kl to ok 4Mbit / s 
policzmy dla mojego przykladu: 1080x1920x30kl 2073600 = ~1000x1000x2(x30) /
1000x1000 byloby podstawa dla makrobloka czyli 1000000 kombinacji x 2 x 30 = 60 000 000 kombianacji = 1sek full hd 30 kl/s=  60 000 kbitow/s = /8 (bajt) = >>>>>>>5,250 mbajt<<<<<<<<<<<< 1 sek (30 kl fhd) co daje dobra podstawe do reszty aplikacji
czyli 1h fhd 30 kl/s = x 3600 === 1890mbajt 
a jest jeszcze cos takiego jak transmsja 1080i i wtedy dzieli sie wynik przez 2 = 2.625 mbit/s = 900 mb(1h)
dalsze mozliwe zabiegi polegalyby na skopresowaniu samych paternow a wlasciwie kazdego z pojedyncza jakims zgrabnym algorytmem na przykladzie sortowania tych dluzszych paternow ta sama metoda czyli 999999 czyli co da 60pol xyz(3x2x10- bo od 0 do 9 = 6z [z=0-9])(a,b,c,d,e,f,-0-9) kombinacji[  i te kmbinacje zapisac na nizszym podrecznym poziomie i z nich bezposrednio po pomocnym dekodowaniu wyluskywac wlasciwe dane
a jesli brac pod uwage ze transmisja nie jest na zywo tylko retransmitowana a odbiornik ma cache do buforowania np 5 sek opznienia to te 5 sekund mozna juz kompresowac jakimkolwiek compresorem real-time
w informatyce jest tak ze jak cos swietnie dziala na skeletonie/prymitywie to nie ma problemu aby dawalo rade w realiach
i jesli to sie uda zrobic to nastepnie mozna myslec juz o wiekszych i zarazem bardziej oblozonych strukturach danych

ubdate 13.11.2022

1_0-adressing.jpg

01-adressing from packaeges (pool of data) for compression
 when  for 1 where is less adresses than  0 
occured in package or
when for 0  where is less adresses  than 1
if "weight a" < "weight b" compress "a"
if "weight b" < "weight a" compress "b"

żonglowanie kolorami i ich dedukcja 
"sprawdż czy to ci sie sprawdza"
ktos moze sie sprzeczac ze tak wyszlo po rowno bo na krzyz suma dzielona na 4 to tez 5 ale ja to tylko na przykladzie najprostszych cyferek przedstawilem, realnie bylby to w gorszej jakosci obrazu porównywany pixel a raczej jego np z 16bitowej palety zapis lub wg zapisu rgb/itp i znając już nawet ten pojedynczy pixel/jego unikalna wartosc wg reverse enginering czyli kodowanie wstecznego mozna opracowac model lingwistyczny jak to sie ma gdy ten sam obraz jest fotografowany aparatem vga porownojac to z aparatem 2xVga i wtedy to matematyczne stwierdzenie uwzglednic w ty zapisie kodu reverse-enginering i wtedy znajac wartosc pixela i kod/model lingwistyczny dla danej przestrzeni barw to sie sprawdzi a tym modelem lingwistycznym jest wlasnie to co tu zapisałem
<<
>>
na prawej zilustrowanej informacji sa braki do niedootworzenia realistycznie z informacji dostarczanych,
      ostatnio kodujac wizualizacje waveform zaprogramowalem slupki dla czestotliwosci aby po osiagnieciu wartosci dla slupkow szczytowych byly podbijane i zanikaly co dalo "smooth effect"
moze do kodu tego kodeka zaimplementowac funkcje typu gdy mamy ciagi np a,b,c gdzie a = 3, b = 2, c = 4 to d = (c=4) + (c-[(b+a)/2]  wtedy d = dla tego przypadku 4 + [4- (5/2)] = 4 + 1.5 =5.5
wtedy jest 3,2,4,(5.5)
(tu mamy do czynienia z malym zejsciem z watosci prawie koncowych do wartosci polowicznych a nastepnie wejsciem z impetem na sam szczyt i odleceniem ze szczytu ku niebu)
a dla np gdy nie ostatnia wartosc jest najwyzsza
a=1,b=4,c=2 wzor bedzie d = c + (c-[(b+a)/2] = 2+[2-(4+1)/2]=2+ (-0.5)=1,5 
(tu mamy do czynienia z duzym podejsciem i srednim zejciem tak wiec konczym w polowie bo nam sie to spodobalo i czcemy jeszcze raz tylko minimalnie krucej)
>>

User
d = c + [c - {(a + b)/2}]
ChatGPT
Dzięki za sprostowanie wzoru. Teraz, gdy masz poprawiony wzór:
d = c + [c - {(a + b)/2}]
Możemy obliczyć wartość d, używając podanych wartości a, b i c:
a = 1
b = 4
c = 2
d = 2 + [2 - {(1 + 4)/2}]
Teraz obliczmy te wartości:
d = 2 + [2 - {5/2}]
Teraz obliczmy wartość w klamrach:
d = 2 + [2 - 2.5]
Teraz odejmujemy 2.5 od 2:
d = 2 + [-0.5]
Teraz możemy dodać 2 do -0.5:
d = 1.5
Więc, obliczając wartość d zgodnie z poprawionym wzorem i podstawiając wartości a = 1, b = 4 i c = 2, otrzymujemy d = 1.5.
User
wzor ten sluzy do odgadniecia wartosci barwy d nastepnych po a b  c
ChatGPT
Dziękuję za dodatkowe wyjaśnienie. Teraz zrozumiałem, że wzór d = c + [c - {(a + b)/2}] służy do obliczenia wartości barwy d na podstawie wartości a, b i c, gdzie a, b i c to wartości barwy wcześniejszych punktów w sekwencji, a d to wartość barwy następnego punktu w sekwencji.
W takim przypadku, po obliczeniach z poprawionym wzorem, wartość barwy d wynosi 1.5 na podstawie wartości a = 1, b = 4 i c = 2. Ta wartość d jest średnią arytmetyczną barw a i b, a następnie jest przesunięta o różnicę między c a średnią arytmetyczną a i b.



ta metoda kompletnie nie nadaje sie do innego typu danych data gdzie nastepna wartosc zawsze jest nie do odgadniecia

chyba ze genotyp danych jest podobny
dla innych typow danych gdzie operuje sie na ciagach fizyczno-operatywnych w podobny sposob mozna na faktycznym modelu opracowac wzory do uzupelniania brakow dla wzorow uproszczonych

czyli pula 1:1 A jest osiagna w przyblizeniu wtedy ~= gdy pula ~1:1 A ..... ~1:1A zawiera ~1:1A = ~1:1A + (1:1A - ~1:1A) ,to jest wzor do potwierdzenia czy opracowy wzor dla danego przypadku bedzie dzialal

