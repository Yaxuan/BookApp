ë
=C:\Code\Prototype\BookApp\BookApp.Tests\BookControllerTest.cs
	namespace 	
BookApp
 
. 
Tests 
{ 
[ 
	TestClass 
] 
public 

class 
BookControllerTest #
{ 
[ 	

TestMethod	 
] 
public 
async 
Task 1
%GetBook_ShouldReturnProductWithSameID ?
(? @
)@ A
{ 	
} 	
private!! 
static!! 
Book!! 
GetDemoBook!! '
(!!' (
)!!( )
{"" 	
return## 
new## 
Book## 
(## 
)## 
;## 
}$$ 	
}%% 
}&& Ì
BC:\Code\Prototype\BookApp\BookApp.Tests\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str (
)( )
]) *
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str *
)* +
]+ ,
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *r
pC:\Code\Prototype\BookApp\BookApp.Tests\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.csr
pC:\Code\Prototype\BookApp\BookApp.Tests\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.csr
pC:\Code\Prototype\BookApp\BookApp.Tests\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cst
rC:\Code\Prototype\BookApp\BookApp.Tests\obj\Release\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.cst
rC:\Code\Prototype\BookApp\BookApp.Tests\obj\Release\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.cst
rC:\Code\Prototype\BookApp\BookApp.Tests\obj\Release\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csµ	
<C:\Code\Prototype\BookApp\BookApp\App_Start\SwaggerConfig.cs
[ 
assembly 	
:	 
%
PreApplicationStartMethod $
($ %
typeof% +
(+ ,
SwaggerConfig, 9
)9 :
,: ;
$str< F
)F G
]G H
	namespace 	
BookApp
 
{		 
public

 

class

 
SwaggerConfig

 
{ 
public 
static 
void 
Register #
(# $
)$ %
{ 	
var 
thisAssembly 
= 
typeof %
(% &
SwaggerConfig& 3
)3 4
.4 5
Assembly5 =
;= >
GlobalConfiguration 
.  
Configuration  -
. 
EnableSwagger 
( 
c  
=>! #
c$ %
.% &
SingleApiVersion& 6
(6 7
$str7 ;
,; <
$str= F
)F G
)G H
. 
EnableSwaggerUi  
(  !
)! "
;" #
} 	
} 
} Ç
:C:\Code\Prototype\BookApp\BookApp\App_Start\UnityConfig.cs
	namespace 	
BookApp
 
. 
	App_Start 
{ 
public 

class 
UnityConfig 
{ 
private 
static 
Lazy 
< 
IUnityContainer +
>+ ,
	container- 6
=7 8
new9 <
Lazy= A
<A B
IUnityContainerB Q
>Q R
(R S
(S T
)T U
=>V X
{ 	
var 
	container 
= 
new 
UnityContainer  .
(. /
)/ 0
;0 1
RegisterTypes 
( 
	container #
)# $
;$ %
return 
	container 
; 
} 	
)	 

;
 
public 
static 
IUnityContainer %"
GetConfiguredContainer& <
(< =
)= >
{ 	
return 
	container 
. 
Value "
;" #
} 	
public## 
static## 
void## 
RegisterTypes## (
(##( )
IUnityContainer##) 8
	container##9 B
)##B C
{$$ 	
	container)) 
.)) 
RegisterType)) "
<))" #
IBookRepository))# 2
,))2 3
BookRepository))4 B
>))B C
())C D
)))D E
;))E F
	container** 
.** 
RegisterType** "
<**" #
IContext**# +
,**+ ,

UnitOfWork**- 7
>**7 8
(**8 9
)**9 :
;**: ;
}++ 	
},, 
}-- Ë
CC:\Code\Prototype\BookApp\BookApp\App_Start\UnityWebApiActivator.cs
[ 
assembly 	
:	 

WebActivatorEx 
. %
PreApplicationStartMethod 3
(3 4
typeof4 :
(: ;
BookApp; B
.B C
	App_StartC L
.L M 
UnityWebApiActivatorM a
)a b
,b c
$strd k
)k l
]l m
[ 
assembly 	
:	 

WebActivatorEx 
. %
ApplicationShutdownMethod 3
(3 4
typeof4 :
(: ;
BookApp; B
.B C
	App_StartC L
.L M 
UnityWebApiActivatorM a
)a b
,b c
$strd n
)n o
]o p
	namespace 	
BookApp
 
. 
	App_Start 
{ 
public

 

static

 
class

  
UnityWebApiActivator

 ,
{ 
public 
static 
void 
Start  
(  !
)! "
{ 	
var 
resolver 
= 
new #
UnityDependencyResolver 6
(6 7
UnityConfig7 B
.B C"
GetConfiguredContainerC Y
(Y Z
)Z [
)[ \
;\ ]
GlobalConfiguration 
.  
Configuration  -
.- .
DependencyResolver. @
=A B
resolverC K
;K L
} 	
public 
static 
void 
Shutdown #
(# $
)$ %
{ 	
var 
	container 
= 
UnityConfig '
.' ("
GetConfiguredContainer( >
(> ?
)? @
;@ A
	container 
. 
Dispose 
( 
) 
;  
} 	
} 
} ô
;C:\Code\Prototype\BookApp\BookApp\App_Start\WebApiConfig.cs
	namespace		 	
BookApp		
 
{

 
public 

static 
class 
WebApiConfig $
{ 
public 
static 
void 
Register #
(# $
HttpConfiguration$ 5
config6 <
)< =
{ 	
config 
. "
MapHttpAttributeRoutes )
() *
)* +
;+ ,
config 
. 
Routes 
. 
MapHttpRoute &
(& '
name 
: 
$str "
," #
routeTemplate 
: 
$str 6
,6 7
defaults 
: 
new 
{ 
id  "
=# $
RouteParameter% 3
.3 4
Optional4 <
}= >
) 
; 
config 
. 

Formatters 
. 
JsonFormatter +
.+ ,
SupportedMediaTypes, ?
.? @
Add@ C
(C D
newD G 
MediaTypeHeaderValueH \
(\ ]
$str] h
)h i
)i j
;j k
config 
. 

Formatters 
. 
JsonFormatter +
.+ ,
SerializerSettings, >
.> ?&
PreserveReferencesHandling? Y
= &
PreserveReferencesHandling -
.- .
Objects. 5
;5 6
config 
. 

Formatters 
. 
JsonFormatter +
.+ ,
SerializerSettings, >
.> ?!
ReferenceLoopHandling? T
=U V!
ReferenceLoopHandlingW l
.l m
Ignorem s
;s t
}%% 	
}&& 
}'' „?
@C:\Code\Prototype\BookApp\BookApp\Controllers\BooksController.cs
	namespace

 	
BookApp


 
.

 
Controllers

 
{ 
public 

class 
BooksController  
:! "
ApiController# 0
{ 
private 
readonly 
IContext !
_context" *
;* +
public 
BooksController 
( 
IContext '
context( /
)/ 0
{ 	
_context 
= 
context 
; 
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str .
). /
]/ 0
[ 	
ResponseType	 
( 
typeof 
( 
Book !
)! "
)" #
]# $
public 
async 
Task 
< 
IHttpActionResult +
>+ ,
SearchBookAsync- <
(< =
string= C

searchTextD N
)N O
{ 	
try 
{ 
var 
books 
= 
await 
_context "
." #
Books# (
.( )
SearchBooksAsync) 9
(9 :

searchText: D
)D E
.E F
ConfigureAwaitF T
(T U
falseU Z
)Z [
;[ \
await 
Task 
. 
Run 
( 
(  
)  !
=>" $
{   
foreach!! 
(!! 
var!!  
book!!! %
in!!& (
books!!) .
)!!. /
{"" 
book## 
.## 
Item## !
=##" #
_context##$ ,
.##, -
Items##- 2
.##2 3 
GetItemIncludeStatus##3 G
(##G H
book##H L
.##L M
Item_id##M T
)##T U
;##U V
}$$ 
}%% 
)%% 
.%% 
ConfigureAwait%% !
(%%! "
false%%" '
)%%' (
;%%( )
if(( 
((( 
!(( 
books(( 
.(( 
Any(( 
((( 
)((  
)((  !
{)) 
return** 
NotFound** #
(**# $
)**$ %
;**% &
}++ 
return-- 
Ok-- 
(-- 
books-- 
)--  
;--  !
}.. 
catch// 
(// 
	Exception// 
e// 
)// 
{00 
return11 
Content11 
(11 
HttpStatusCode11 -
.11- .
InternalServerError11. A
,11A B
e11C D
.11D E
Message11E L
)11L M
;11M N
}22 
}33 	
[66 	
HttpGet66	 
]66 
[77 	
Route77	 
(77 
$str77 
)77 
]77 
[88 	
ResponseType88	 
(88 
typeof88 
(88 
Book88 !
)88! "
)88" #
]88# $
public99 
async99 
Task99 
<99 
IHttpActionResult99 +
>99+ ,
GetBooksAsync99- :
(99: ;
)99; <
{:: 	
try;; 
{<< 
var== 
books== 
=== 
await== !
_context==" *
.==* +
Books==+ 0
.==0 1
GetAllAsync==1 <
(==< =
)=== >
.==> ?
ConfigureAwait==? M
(==M N
false==N S
)==S T
;==T U
if?? 
(?? 
books?? 
==?? 
null?? !
)??! "
{@@ 
returnAA 
NotFoundAA #
(AA# $
)AA$ %
;AA% &
}BB 
returnDD 
OkDD 
(DD 
booksDD 
)DD  
;DD  !
}EE 
catchFF 
(FF 
	ExceptionFF 
eFF 
)FF 
{GG 
returnHH 
ContentHH 
(HH 
HttpStatusCodeHH -
.HH- .
InternalServerErrorHH. A
,HHA B
eHHC D
.HHD E
MessageHHE L
)HHL M
;HHM N
}II 
}JJ 	
[MM 	
HttpGetMM	 
]MM 
[NN 	
RouteNN	 
(NN 
$strNN (
)NN( )
]NN) *
[OO 	
ResponseTypeOO	 
(OO 
typeofOO 
(OO 
BookStatusViewOO +
)OO+ ,
)OO, -
]OO- .
publicPP 
asyncPP 
TaskPP 
<PP 
IHttpActionResultPP +
>PP+ ,
GetBookStatusAsyncPP- ?
(PP? @
stringPP@ F
isbnPPG K
)PPK L
{QQ 	
tryRR 
{SS 
BookStatusViewTT 

bookStatusTT )
=TT* +
awaitTT, 1
_contextTT2 :
.TT: ;
BooksTT; @
.TT@ A
GetBookStatusAsyncTTA S
(TTS T
isbnTTT X
)TTX Y
.TTY Z
ConfigureAwaitTTZ h
(TTh i
falseTTi n
)TTn o
;TTo p
ifVV 
(VV 

bookStatusVV 
==VV !
nullVV" &
)VV& '
{WW 
returnXX 
NotFoundXX #
(XX# $
)XX$ %
;XX% &
}YY 
return[[ 
Ok[[ 
([[ 

bookStatus[[ $
)[[$ %
;[[% &
}\\ 
catch]] 
(]] 
	Exception]] 
e]] 
)]] 
{^^ 
return__ 
Content__ 
(__ 
HttpStatusCode__ -
.__- .
InternalServerError__. A
,__A B
e__C D
.__D E
Message__E L
)__L M
;__M N
}`` 
}aa 	
[dd 	
ResponseTypedd	 
(dd 
typeofdd 
(dd 
Bookdd !
)dd! "
)dd" #
]dd# $
publicee 
asyncee 
Taskee 
<ee 
IHttpActionResultee +
>ee+ ,
GetAsyncee- 5
(ee5 6
intee6 9
idee: <
)ee< =
{ff 	
trygg 
{hh 
Bookii 
bookii 
=ii 
awaitii !
_contextii" *
.ii* +
Booksii+ 0
.ii0 1
GetAsyncii1 9
(ii9 :
idii: <
)ii< =
.ii= >
ConfigureAwaitii> L
(iiL M
falseiiM R
)iiR S
;iiS T
ifjj 
(jj 
bookjj 
==jj 
nulljj  
)jj  !
{kk 
returnll 
NotFoundll #
(ll# $
)ll$ %
;ll% &
}mm 
returnoo 
Okoo 
(oo 
bookoo 
)oo 
;oo  
}pp 
catchqq 
(qq 
	Exceptionqq 
eqq 
)qq 
{rr 
returnss 
Contentss 
(ss 
HttpStatusCodess -
.ss- .
InternalServerErrorss. A
,ssA B
essC D
.ssD E
MessagessE L
)ssL M
;ssM N
}tt 
}uu 	
publicxx 
voidxx 
Postxx 
(xx 
[xx 
FromBodyxx "
]xx" #
stringxx# )
valuexx* /
)xx/ 0
{yy 	
}zz 	
public}} 
void}} 
Put}} 
(}} 
int}} 
id}} 
,}} 
[}}  !
FromBody}}! )
]}}) *
string}}* 0
value}}1 6
)}}6 7
{~~ 	
} 	
public
ÇÇ 
void
ÇÇ 
Delete
ÇÇ 
(
ÇÇ 
int
ÇÇ 
id
ÇÇ !
)
ÇÇ! "
{
ÉÉ 	
}
ÑÑ 	
}
ÖÖ 
}ÜÜ í
?C:\Code\Prototype\BookApp\BookApp\Controllers\ItemController.cs
	namespace		 	
BookApp		
 
.		 
Controllers		 
{

 
public 

class 
ItemController 
:  !
ApiController" /
{ 
private 
readonly 
IContext !
_context" *
;* +
public 
ItemController 
( 
IContext &
context' .
). /
{ 	
_context 
= 
context 
; 
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str (
)( )
]) *
[ 	
ResponseType	 
( 
typeof 
( 
Item !
)! "
)" #
]# $
public 
async 
Task 
< 
IHttpActionResult +
>+ ,
SearchItemAsync- <
(< =
string= C
isbnD H
)H I
{ 	
try 
{ 
Item 
item 
= 
null  
;  !
var 
book 
= 
await  
_context! )
.) *
Books* /
./ 0 
SingleOrDefaultAsync0 D
(D E
bE F
=>G I
bJ K
.K L
IsbnL P
==Q S
isbnT X
)X Y
.Y Z
ConfigureAwaitZ h
(h i
falsei n
)n o
;o p
if 
( 
book 
? 
. 
Item_id !
!=" $
null$ (
)( )
{   
item!! 
=!! 
await!!  
_context!!! )
.!!) *
Items!!* /
.!!/ 0%
GetItemIncludeStatusAsync!!0 I
(!!I J
book!!J N
.!!N O
Item_id!!O V
)!!V W
.!!W X
ConfigureAwait!!X f
(!!f g
false!!g l
)!!l m
;!!m n
}"" 
if$$ 
($$ 
item$$ 
!=$$ 
null$$  
)$$  !
{%% 
return&& 
Content&& "
(&&" #
HttpStatusCode&&# 1
.&&1 2
Found&&2 7
,&&7 8
item&&9 =
)&&= >
;&&> ?
}'' 
return)) 
NotFound)) 
())  
)))  !
;))! "
}++ 
catch,, 
(,, 
	Exception,, 
e,, 
),, 
{-- 
return.. 
Content.. 
(.. 
HttpStatusCode.. -
...- .
InternalServerError... A
,..A B
e..C D
...D E
Message..E L
)..L M
;..M N
}// 
}00 	
public33 
void33 
Post33 
(33 
[33 
FromBody33 "
]33" #
string33# )
value33* /
)33/ 0
{44 	
}55 	
public88 
void88 
Put88 
(88 
int88 
id88 
,88 
[88  !
FromBody88! )
]88) *
string88* 0
value881 6
)886 7
{99 	
}:: 	
};; 
}<< –L
?C:\Code\Prototype\BookApp\BookApp\Controllers\LoanController.cs
	namespace 	
BookApp
 
. 
Controllers 
{ 
public 

class 
LoanController 
:  !
ApiController" /
{ 
private 
readonly 
IContext !
_context" *
;* +
public 
LoanController 
( 
IContext &
context' .
). /
{ 	
_context 
= 
context 
; 
} 	
[ 	
HttpPost	 
] 
[ 	
Route	 
( 
$str  
)  !
]! "
[ 	
ResponseType	 
( 
typeof 
( 
ReservationResult .
). /
)/ 0
]0 1
public 
async 
Task 
< 
IHttpActionResult +
>+ ,
LoanBookAsync- :
(: ;
LoanRequirement; J
loanRequirementK Z
)Z [
{ 	
try 
{ 
if   
(   
!   

ModelState   
.    
IsValid    '
||  ( *
loanRequirement  + :
.  : ;

CopyNumber  ; E
<=  F H
$num  I J
)  J K
{!! 
return"" 

BadRequest"" %
(""% &

ModelState""& 0
)""0 1
;""1 2
}## 
var%% 
member%% 
=%% 
await%% "
_context%%# +
.%%+ ,
Members%%, 3
.%%3 4!
GetLibraryMemberAsync%%4 I
(%%I J
loanRequirement%%J Y
.%%Y Z
MemberId%%Z b
)%%b c
.&& 
ConfigureAwait&& #
(&&# $
false&&$ )
)&&) *
;&&* +
if(( 
((( 
member(( 
==(( 
null(( "
)((" #
{)) 
throw** 
new** #
MemberNotFoundException** 5
(**5 6
$str**6 H
)**H I
;**I J
}++ 
using-- 
(-- 
var--  
dbContextTransaction-- /
=--0 1
_context--2 :
.--: ;
BeginTransaction--; K
(--K L
)--L M
)--M N
{.. 
var00 

availItems00 "
=00# $
await00% *
_context00+ 3
.003 4
Items004 9
.009 :(
GetAvailableSerialItemsAsync00: V
(00V W
loanRequirement00W f
.00f g

CopyNumber00g q
,00q r
loanRequirement11 '
.11' (
Isbn11( ,
)11, -
.11- .
ConfigureAwait11. <
(11< =
false11= B
)11B C
;11C D
if33 
(33 

availItems33 "
?33" #
.33# $
Count33$ )
>=33* ,
loanRequirement33- <
.33< =

CopyNumber33= G
)33G H
{44 
var55 
memberReservedBooks55 /
=550 1
await66 !
_context66" *
.66* +
Items66+ 0
.660 1!
GetReservedBooksAsync661 F
(66F G
loanRequirement66G V
.66V W
MemberId66W _
)66_ `
.66` a
ConfigureAwait66a o
(66o p
false66p u
)66u v
;66v w
if88 
(88 
member88 "
.88" #
	Loan_Rule88# ,
.88, -
Max_loan_book88- :
!=88; =
null88> B
&&88C E
member99 "
.99" #
	Loan_Rule99# ,
.99, -
Max_loan_book99- :
<99; <
memberReservedBooks99= P
+99Q R
loanRequirement99S b
.99b c

CopyNumber99c m
)99m n
{:: 
throw;; !
new;;" %$
ExceedLoanLimitException;;& >
(;;> ?
$str;;? Y
);;Y Z
;;;Z [
}<< 
int>> 
batchId>> #
=>>$ %
Convert?? #
.??# $
ToInt32??$ +
(??+ ,
await??, 1
_context??2 :
.??: ;
Items??; @
.??@ A
GetSequenceNoAsync??A S
(??S T
$str??T a
)??a b
.??b c
ConfigureAwait??c q
(??q r
false??r w
)??w x
)??x y
;??y z
ListAA 
<AA 
ReservationAA (
>AA( )
reservationsAA* 6
=AA7 8
newAA9 <
ListAA= A
<AAA B
ReservationAAB M
>AAM N
(AAN O
)AAO P
;AAP Q
ListBB 
<BB 

SerialItemBB '
>BB' (
serialItemsBB) 4
=BB5 6
newBB7 :
ListBB; ?
<BB? @

SerialItemBB@ J
>BBJ K
(BBK L
)BBL M
;BBM N
forDD 
(DD 
intDD  
iDD! "
=DD# $
$numDD% &
;DD& '
iDD( )
<DD* +
loanRequirementDD, ;
.DD; <

CopyNumberDD< F
;DDF G
iDDH I
++DDI K
)DDK L
{EE 
ReservationFF '
reservationFF( 3
=FF4 5
newFF6 9
ReservationFF: E
{GG 
InsideReservationII  1
=II2 3
newJJ$ '
InsideReservationJJ( 9
{KK$ %
Serial_item_idLL( 6
=LL7 8

availItemsLL9 C
[LLC D
iLLD E
]LLE F
.LLF G
Serial_item_idLLG U
,LLU V
Batch_idMM( 0
=MM1 2
batchIdMM3 :
}NN$ %
,NN% &
Batch_idOO  (
=OO) *
ConvertOO+ 2
.OO2 3
ToInt32OO3 :
(OO: ;
batchIdOO; B
)OOB C
,OOC D
	Member_idPP  )
=PP* +
memberPP, 2
.PP2 3
	Member_idPP3 <
,PP< =
Reserve_timeQQ  ,
=QQ- .
DateTimeQQ/ 7
.QQ7 8
NowQQ8 ;
,QQ; <
Pickup_methodRR  -
=RR. /
$numRR0 1
,RR1 2
StatusSS  &
=SS' (
$numSS) *
,SS* + 
Expected_return_dateTT  4
=TT5 6
memberUU$ *
.UU* +
	Loan_RuleUU+ 4
.UU4 5
Max_loan_dayUU5 A
==UUB D
nullUUE I
?VV( )
(VV* +
DateTimeVV+ 3
?VV3 4
)VV4 5
nullVV6 :
:WW( )
DateTimeWW* 2
.WW2 3
NowWW3 6
.WW6 7
DateWW7 ;
.WW; <
AddDaysWW< C
(WWC D
memberWWD J
.WWJ K
	Loan_RuleWWK T
.WWT U
Max_loan_dayWWU a
.WWa b
ValueWWb g
)WWg h
}XX 
;XX 
reservationsZZ (
.ZZ( )
AddZZ) ,
(ZZ, -
reservationZZ- 8
)ZZ8 9
;ZZ9 :

availItems\\ &
[\\& '
i\\' (
]\\( )
.\\) *
Library_status\\* 8
=\\9 :
$num\\; <
;\\< =
serialItems]] '
.]]' (
Add]]( +
(]]+ ,

availItems]], 6
[]]6 7
i]]7 8
]]]8 9
)]]9 :
;]]: ;
}^^ 
_context``  
.``  !
Reservations``! -
.``- .
AddRange``. 6
(``6 7
reservations``7 C
)``C D
;``D E
_contextbb  
.bb  !
SerialItemsbb! ,
.bb, -
	SaveRangebb- 6
(bb6 7
serialItemsbb7 B
)bbB C
;bbC D 
dbContextTransactiondd ,
.dd, -
Commitdd- 3
(dd3 4
)dd4 5
;dd5 6
varff 
resultff "
=ff# $
newff% (
ReservationResultff) :
{gg 
ReservationBatchIdhh .
=hh/ 0
batchIdhh1 8
,hh8 9
ReservedItemIdsii +
=ii, -
serialItemsii. 9
.ii9 :
Selectii: @
(ii@ A
siiA B
=>iiC E
siiF G
.iiG H
Serial_item_idiiH V
)iiV W
.iiW X
ToArrayiiX _
(ii_ `
)ii` a
}jj 
;jj 
returnll 
Okll !
(ll! "
resultll" (
)ll( )
;ll) *
}mm 
elsenn 
{oo 
throwpp 
newpp !%
BookNotAvailableExceptionpp" ;
(pp; <
$strpp< W
)ppW X
;ppX Y
}qq 
}ss 
}tt 
catchuu 
(uu #
MemberNotFoundExceptionuu *
euu+ ,
)uu, -
{vv 
returnww 
Contentww 
(ww 
HttpStatusCodeww -
.ww- .'
NonAuthoritativeInformationww. I
,wwI J
ewwK L
.wwL M
MessagewwM T
)wwT U
;wwU V
}xx 
catchyy 
(yy (
DbUpdateConcurrencyExceptionyy /
)yy/ 0
{zz 
return{{ 
Content{{ 
({{ 
HttpStatusCode{{ -
.{{- .
Conflict{{. 6
,{{6 7
$str{{8 [
){{[ \
;{{\ ]
}|| 
catch}} 
(}} 
	Exception}} 
e}} 
)}} 
{~~ 
return 
Content 
( 
HttpStatusCode -
.- .
InternalServerError. A
,A B
eC D
.D E
MessageE L
)L M
;M N
}
ÄÄ 
}
ÅÅ 	
}
ÇÇ 
}ÉÉ Ä7
AC:\Code\Prototype\BookApp\BookApp\Controllers\MemberController.cs
	namespace		 	
BookApp		
 
.		 
Controllers		 
{

 
public 

class 
MemberController !
:" #
ApiController$ 1
{ 
private 
readonly 
IContext !
_context" *
;* +
public 
MemberController 
(  
IContext  (
context) 0
)0 1
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IHttpActionResult +
>+ ,
GetMembersAsync- <
(< =
)= >
{ 	
var 
members 
= 
await 
_context  (
.( )
Members) 0
.0 1
GetAllAsync1 <
(< =
)= >
;> ?
if 
( 
members 
== 
null 
)  
{ 
return 
NotFound 
(  
)  !
;! "
} 
return 
Ok 
( 
members 
) 
; 
}   	
["" 	
ResponseType""	 
("" 
typeof"" 
("" 
Member"" #
)""# $
)""$ %
]""% &
public## 
async## 
Task## 
<## 
IHttpActionResult## +
>##+ ,
GetAsync##- 5
(##5 6
int##6 9
id##: <
)##< =
{$$ 	
Member%% 
member%% 
=%% 
await%% !
GetMemberAsync%%" 0
(%%0 1
id%%1 3
)%%3 4
;%%4 5
if&& 
(&& 
member&& 
==&& 
null&& 
)&& 
{'' 
return(( 
NotFound(( 
(((  
)((  !
;((! "
})) 
return++ 
Ok++ 
(++ 
member++ 
)++ 
;++ 
},, 	
[// 	
ResponseType//	 
(// 
typeof// 
(// 
Member// #
)//# $
)//$ %
]//% &
public00 
async00 
Task00 
<00 
IHttpActionResult00 +
>00+ ,
Post00- 1
(001 2
Member002 8
member009 ?
)00? @
{11 	
if22 
(22 
!22 

ModelState22 
.22 
IsValid22 #
)22# $
{33 
return44 

BadRequest44 !
(44! "

ModelState44" ,
)44, -
;44- .
}55 
try77 
{88 
await99 
_context99 
.99 
Members99 &
.99& '
AddAsync99' /
(99/ 0
member990 6
)996 7
;997 8
}:: 
catch;; 
(;; 
	Exception;; 
e;; 
);; 
{<< 
return== 
InternalServerError== *
(==* +
)==+ ,
;==, -
}>> 
return@@ 
CreatedAtRoute@@ !
(@@! "
$str@@" .
,@@. /
new@@0 3
{@@4 5
id@@6 8
=@@9 :
member@@; A
.@@A B
	Member_id@@B K
}@@L M
,@@M N
member@@O U
)@@U V
;@@V W
}AA 	
publicDD 
asyncDD 
TaskDD 
<DD 
IHttpActionResultDD +
>DD+ ,
PutDD- 0
(DD0 1
intDD1 4
idDD5 7
,DD7 8
MemberDD9 ?
memberDD@ F
)DDF G
{EE 	
ifFF 
(FF 
!FF 

ModelStateFF 
.FF 
IsValidFF #
)FF# $
{GG 
returnHH 

BadRequestHH !
(HH! "

ModelStateHH" ,
)HH, -
;HH- .
}II 
ifKK 
(KK 
idKK 
!=KK 
memberKK 
.KK 
	Member_idKK &
)KK& '
{LL 
returnMM 

BadRequestMM !
(MM! "
)MM" #
;MM# $
}NN 
tryPP 
{QQ 
awaitRR 
_contextRR 
.RR 
MembersRR &
.RR& '
	SaveAsyncRR' 0
(RR0 1
memberRR1 7
)RR7 8
;RR8 9
}SS 
catchTT 
(TT (
DbUpdateConcurrencyExceptionTT /
)TT/ 0
{UU 
ifVV 
(VV 
awaitVV 
GetMemberAsyncVV (
(VV( )
idVV) +
)VV+ ,
==VV- /
nullVV0 4
)VV4 5
{WW 
returnXX 
NotFoundXX #
(XX# $
)XX$ %
;XX% &
}YY 
return[[ 
Conflict[[ 
([[  
)[[  !
;[[! "
}\\ 
catch]] 
(]] 
	Exception]] 
e]] 
)]] 
{^^ 
return__ 
InternalServerError__ *
(__* +
)__+ ,
;__, -
}`` 
returnbb 
Okbb 
(bb 
)bb 
;bb 
}cc 	
publicff 
asyncff 
Taskff 
<ff 
IHttpActionResultff +
>ff+ ,
DeleteAsyncff- 8
(ff8 9
intff9 <
idff= ?
)ff? @
{gg 	
Memberhh 
memberhh 
=hh 
awaithh !
GetMemberAsynchh" 0
(hh0 1
idhh1 3
)hh3 4
;hh4 5
ifii 
(ii 
memberii 
==ii 
nullii 
)ii 
{jj 
returnkk 
NotFoundkk 
(kk  
)kk  !
;kk! "
}ll 
trynn 
{oo 
awaitpp 
_contextpp 
.pp 
Memberspp &
.pp& '
RemoveAsyncpp' 2
(pp2 3
memberpp3 9
)pp9 :
;pp: ;
}qq 
catchrr 
(rr 
	Exceptionrr 
err 
)rr 
{ss 
returntt 
InternalServerErrortt *
(tt* +
)tt+ ,
;tt, -
}uu 
returnww 
Okww 
(ww 
)ww 
;ww 
}xx 	
private{{ 
async{{ 
Task{{ 
<{{ 
Member{{ !
>{{! "
GetMemberAsync{{# 1
({{1 2
int{{2 5
id{{6 8
){{8 9
{|| 	
return}} 
await}} 
_context}} !
.}}! "
Members}}" )
.}}) *
GetAsync}}* 2
(}}2 3
id}}3 5
)}}5 6
;}}6 7
}~~ 	
} 
}ÄÄ §D
GC:\Code\Prototype\BookApp\BookApp\Controllers\NormalMemberController.cs
	namespace		 	
BookApp		
 
.		 
Controllers		 
{

 
public 

class "
NormalMemberController '
:( )
ApiController* 7
{ 
private 
readonly 
IContext !
_context" *
;* +
public "
NormalMemberController %
(% &
IContext& .
context/ 6
)6 7
{ 	
_context 
= 
context 
; 
} 	
[ 	
ResponseType	 
( 
typeof 
( 
NormalMember )
)) *
)* +
]+ ,
public 
async 
Task 
< 
IHttpActionResult +
>+ ,!
GetNormalMembersAsync- B
(B C
)C D
{ 	
var 
users 
= 
await 
_context &
.& '
NormalMembers' 4
.4 5
GetAllAsync5 @
(@ A
)A B
;B C
if 
( 
users 
== 
null 
) 
{ 
return 
NotFound 
(  
)  !
;! "
} 
return   
Ok   
(   
users   
)   
;   
}!! 	
[$$ 	
ResponseType$$	 
($$ 
typeof$$ 
($$ 
NormalMember$$ )
)$$) *
)$$* +
]$$+ ,
public%% 
async%% 
Task%% 
<%% 
IHttpActionResult%% +
>%%+ ,
GetAsync%%- 5
(%%5 6
int%%6 9
id%%: <
)%%< =
{&& 	
NormalMember'' 
normalMember'' %
=''& '
await''( - 
GetNormalMemberAsync''. B
(''B C
id''C E
)''E F
;''F G
if(( 
((( 
normalMember(( 
==(( 
null((  $
)(($ %
{)) 
return** 
NotFound** 
(**  
)**  !
;**! "
}++ 
return-- 
Ok-- 
(-- 
normalMember-- "
)--" #
;--# $
}.. 	
[00 	
HttpGet00	 
]00 
[11 	
Route11	 
(11 
$str11 2
)112 3
]113 4
[22 	
ResponseType22	 
(22 
typeof22 
(22 
NormalMember22 )
)22) *
)22* +
]22+ ,
public33 
async33 
Task33 
<33 
IHttpActionResult33 +
>33+ ,(
GetNormalMemberByUserIdAsync33- I
(33I J
int33J M
userId33N T
)33T U
{44 	
NormalMember55 
normalMember55 %
=55& '
await55( -
_context55. 6
.556 7
NormalMembers557 D
.55D E(
GetNormalMemberByUserIdAsync55E a
(55a b
userId55b h
)55h i
.55i j
ConfigureAwait55j x
(55x y
false55y ~
)55~ 
;	55 Ä
if66 
(66 
normalMember66 
==66 
null66  $
)66$ %
{77 
return88 
NotFound88 
(88  
)88  !
;88! "
}99 
return;; 
Ok;; 
(;; 
normalMember;; "
);;" #
;;;# $
}<< 	
[?? 	
ResponseType??	 
(?? 
typeof?? 
(?? 
NormalMember?? )
)??) *
)??* +
]??+ ,
public@@ 
async@@ 
Task@@ 
<@@ 
IHttpActionResult@@ +
>@@+ ,
Post@@- 1
(@@1 2
NormalMember@@2 >
normalMember@@? K
)@@K L
{AA 	
ifBB 
(BB 
!BB 

ModelStateBB 
.BB 
IsValidBB #
)BB# $
{CC 
returnDD 

BadRequestDD !
(DD! "

ModelStateDD" ,
)DD, -
;DD- .
}EE 
tryGG 
{HH 
awaitII 
_contextII 
.II 
NormalMembersII ,
.II, -
AddAsyncII- 5
(II5 6
normalMemberII6 B
)IIB C
;IIC D
}JJ 
catchKK 
(KK 
	ExceptionKK 
eKK 
)KK 
{LL 
returnMM 
InternalServerErrorMM *
(MM* +
)MM+ ,
;MM, -
}NN 
returnPP 
CreatedAtRoutePP !
(PP! "
$strPP" .
,PP. /
newPP0 3
{PP4 5
idPP6 8
=PP9 :
normalMemberPP; G
.PPG H
	Member_idPPH Q
}PPR S
,PPS T
normalMemberPPU a
)PPa b
;PPb c
}QQ 	
publicTT 
asyncTT 
TaskTT 
<TT 
IHttpActionResultTT +
>TT+ ,
PutTT- 0
(TT0 1
intTT1 4
idTT5 7
,TT7 8
NormalMemberTT9 E
normalMemberTTF R
)TTR S
{UU 	
ifVV 
(VV 
!VV 

ModelStateVV 
.VV 
IsValidVV #
)VV# $
{WW 
returnXX 

BadRequestXX !
(XX! "

ModelStateXX" ,
)XX, -
;XX- .
}YY 
if[[ 
([[ 
id[[ 
!=[[ 
normalMember[[ "
.[[" #
	Member_id[[# ,
)[[, -
{\\ 
return]] 

BadRequest]] !
(]]! "
)]]" #
;]]# $
}^^ 
try`` 
{aa 
awaitbb 
_contextbb 
.bb 
NormalMembersbb ,
.bb, -
	SaveAsyncbb- 6
(bb6 7
normalMemberbb7 C
)bbC D
;bbD E
}cc 
catchdd 
(dd (
DbUpdateConcurrencyExceptiondd /
)dd/ 0
{ee 
ifff 
(ff 
awaitff  
GetNormalMemberAsyncff .
(ff. /
idff/ 1
)ff1 2
==ff3 5
nullff6 :
)ff: ;
{gg 
returnhh 
NotFoundhh #
(hh# $
)hh$ %
;hh% &
}ii 
returnkk 
Conflictkk 
(kk  
)kk  !
;kk! "
}ll 
catchmm 
(mm 
	Exceptionmm 
emm 
)mm 
{nn 
returnoo 
InternalServerErroroo *
(oo* +
)oo+ ,
;oo, -
}pp 
returnrr 
Okrr 
(rr 
)rr 
;rr 
}ss 	
publicvv 
asyncvv 
Taskvv 
<vv 
IHttpActionResultvv +
>vv+ ,
DeleteAsyncvv- 8
(vv8 9
intvv9 <
idvv= ?
)vv? @
{ww 	
NormalMemberxx 
userxx 
=xx 
awaitxx  % 
GetNormalMemberAsyncxx& :
(xx: ;
idxx; =
)xx= >
;xx> ?
ifyy 
(yy 
useryy 
==yy 
nullyy 
)yy 
{zz 
return{{ 
NotFound{{ 
({{  
){{  !
;{{! "
}|| 
try~~ 
{ 
await
ÄÄ 
_context
ÄÄ 
.
ÄÄ 
NormalMembers
ÄÄ ,
.
ÄÄ, -
RemoveAsync
ÄÄ- 8
(
ÄÄ8 9
user
ÄÄ9 =
)
ÄÄ= >
;
ÄÄ> ?
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ 
	Exception
ÇÇ 
e
ÇÇ 
)
ÇÇ 
{
ÉÉ 
return
ÑÑ !
InternalServerError
ÑÑ *
(
ÑÑ* +
)
ÑÑ+ ,
;
ÑÑ, -
}
ÖÖ 
return
áá 
Ok
áá 
(
áá 
)
áá 
;
áá 
}
àà 	
private
°° 
async
°° 
Task
°° 
<
°° 
NormalMember
°° '
>
°°' ("
GetNormalMemberAsync
°°) =
(
°°= >
int
°°> A
id
°°B D
)
°°D E
{
¢¢ 	
return
££ 
await
££ 
_context
££ !
.
££! "
NormalMembers
££" /
.
££/ 0
GetAsync
££0 8
(
££8 9
id
££9 ;
)
££; <
;
££< =
}
§§ 	
}
•• 
}¶¶ ÃI
EC:\Code\Prototype\BookApp\BookApp\Controllers\PermissionController.cs
	namespace 	
BookApp
 
. 
Controllers 
{ 
public 

class  
PermissionController %
:& '
ApiController( 5
{ 
private 
readonly 
IContext !
_context" *
;* +
public  
PermissionController #
(# $
IContext$ ,
context- 4
)4 5
{ 	
_context 
= 
context 
; 
} 	
[ 	
ResponseType	 
( 
typeof 
( 

Permission '
)' (
)( )
]) *
public 
async 
Task 
< 
IHttpActionResult +
>+ ,
GetPermissionsAsync- @
(@ A
)A B
{ 	
var 
users 
= 
await 
_context &
.& '
Permissions' 2
.2 3
GetAllAsync3 >
(> ?
)? @
;@ A
if 
( 
users 
== 
null 
) 
{ 
return   
NotFound   
(    
)    !
;  ! "
}"" 
return$$ 
Ok$$ 
($$ 
users$$ 
)$$ 
;$$ 
}%% 	
[(( 	
ResponseType((	 
((( 
typeof(( 
((( 

Permission(( '
)((' (
)((( )
](() *
public)) 
async)) 
Task)) 
<)) 
IHttpActionResult)) +
>))+ ,
GetAsync))- 5
())5 6
int))6 9
id)): <
)))< =
{** 	

Permission++ 

permission++ !
=++" #
await++$ )
GetPermissionAsync++* <
(++< =
id++= ?
)++? @
;++@ A
if,, 
(,, 

permission,, 
==,, 
null,, "
),," #
{-- 
return.. 
NotFound.. 
(..  
)..  !
;..! "
}// 
return11 
Ok11 
(11 

permission11  
)11  !
;11! "
}22 	
[55 	
HttpGet55	 
]55 
[66 	
ResponseType66	 
(66 
typeof66 
(66 

Permission66 '
)66' (
)66( )
]66) *
[77 	
Route77	 
(77 
$str77 1
)771 2
]772 3
public88 
async88 
Task88 
<88 
IHttpActionResult88 +
>88+ ,(
GetUserGroupPermissionsAsync88- I
(88I J
int88J M
id88N P
)88P Q
{99 	
try:: 
{;; 
var<< 
permissions<< 
=<<  !
(<<" #
await<<# (
_context<<) 1
.<<1 2
Permissions<<2 =
.<<= >
	FindAsync<<> G
(<<G H
p<<H I
=><<J L
p<<M N
.<<N O

UserGroups<<O Y
.<<Y Z
Any<<Z ]
(<<] ^
g<<^ _
=><<` b
g<<c d
.<<d e
User_group_id<<e r
==<<s u
id<<v x
)<<x y
)<<y z
)<<z {
.<<{ |
ToList	<<| Ç
(
<<Ç É
)
<<É Ñ
;
<<Ñ Ö
if>> 
(>> 
!>> 
permissions>>  
.>>  !
Any>>! $
(>>$ %
)>>% &
)>>& '
{?? 
return@@ 
NotFound@@ #
(@@# $
)@@$ %
;@@% &
}AA 
returnCC 
OkCC 
(CC 
permissionsCC %
)CC% &
;CC& '
}DD 
catchEE 
(EE 
	ExceptionEE 
eEE 
)EE 
{FF 
returnGG 
ContentGG 
(GG 
HttpStatusCodeGG -
.GG- .
InternalServerErrorGG. A
,GGA B
eGGC D
.GGD E
MessageGGE L
)GGL M
;GGM N
}HH 
}JJ 	
[NN 	
ResponseTypeNN	 
(NN 
typeofNN 
(NN 

PermissionNN '
)NN' (
)NN( )
]NN) *
publicOO 
asyncOO 
TaskOO 
<OO 
IHttpActionResultOO +
>OO+ ,
PostOO- 1
(OO1 2

PermissionOO2 <

permissionOO= G
)OOG H
{PP 	
ifQQ 
(QQ 
!QQ 

ModelStateQQ 
.QQ 
IsValidQQ #
)QQ# $
{RR 
returnSS 

BadRequestSS !
(SS! "

ModelStateSS" ,
)SS, -
;SS- .
}TT 
tryVV 
{WW 
awaitXX 
_contextXX 
.XX 
PermissionsXX *
.XX* +
AddAsyncXX+ 3
(XX3 4

permissionXX4 >
)XX> ?
;XX? @
}YY 
catchZZ 
(ZZ 
	ExceptionZZ 
eZZ 
)ZZ 
{[[ 
return\\ 
InternalServerError\\ *
(\\* +
)\\+ ,
;\\, -
}]] 
return__ 
CreatedAtRoute__ !
(__! "
$str__" .
,__. /
new__0 3
{__4 5
id__6 8
=__9 :

permission__; E
.__E F
Permision_id__F R
}__S T
,__T U

permission__V `
)__` a
;__a b
}`` 	
publiccc 
asynccc 
Taskcc 
<cc 
IHttpActionResultcc +
>cc+ ,
Putcc- 0
(cc0 1
intcc1 4
idcc5 7
,cc7 8

Permissioncc9 C

permissionccD N
)ccN O
{dd 	
ifee 
(ee 
!ee 

ModelStateee 
.ee 
IsValidee #
)ee# $
{ff 
returngg 

BadRequestgg !
(gg! "

ModelStategg" ,
)gg, -
;gg- .
}hh 
ifjj 
(jj 
idjj 
!=jj 

permissionjj  
.jj  !
Permision_idjj! -
)jj- .
{kk 
returnll 

BadRequestll !
(ll! "
)ll" #
;ll# $
}mm 
tryoo 
{pp 
awaitqq 
_contextqq 
.qq 
Permissionsqq *
.qq* +
	SaveAsyncqq+ 4
(qq4 5

permissionqq5 ?
)qq? @
;qq@ A
}rr 
catchss 
(ss (
DbUpdateConcurrencyExceptionss /
)ss/ 0
{tt 
ifuu 
(uu 
awaituu 
GetPermissionAsyncuu ,
(uu, -
iduu- /
)uu/ 0
==uu1 3
nulluu4 8
)uu8 9
{vv 
returnww 
NotFoundww #
(ww# $
)ww$ %
;ww% &
}xx 
returnzz 
Conflictzz 
(zz  
)zz  !
;zz! "
}{{ 
catch|| 
(|| 
	Exception|| 
e|| 
)|| 
{}} 
return~~ 
InternalServerError~~ *
(~~* +
)~~+ ,
;~~, -
} 
return
ÅÅ 
Ok
ÅÅ 
(
ÅÅ 
)
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
public
ÖÖ 
async
ÖÖ 
Task
ÖÖ 
<
ÖÖ 
IHttpActionResult
ÖÖ +
>
ÖÖ+ ,
DeleteAsync
ÖÖ- 8
(
ÖÖ8 9
int
ÖÖ9 <
id
ÖÖ= ?
)
ÖÖ? @
{
ÜÜ 	

Permission
áá 
user
áá 
=
áá 
await
áá # 
GetPermissionAsync
áá$ 6
(
áá6 7
id
áá7 9
)
áá9 :
;
áá: ;
if
àà 
(
àà 
user
àà 
==
àà 
null
àà 
)
àà 
{
ââ 
return
ää 
NotFound
ää 
(
ää  
)
ää  !
;
ää! "
}
ãã 
try
çç 
{
éé 
await
èè 
_context
èè 
.
èè 
Permissions
èè *
.
èè* +
RemoveAsync
èè+ 6
(
èè6 7
user
èè7 ;
)
èè; <
;
èè< =
}
êê 
catch
ëë 
(
ëë 
	Exception
ëë 
e
ëë 
)
ëë 
{
íí 
return
ìì !
InternalServerError
ìì *
(
ìì* +
)
ìì+ ,
;
ìì, -
}
îî 
return
ññ 
Ok
ññ 
(
ññ 
)
ññ 
;
ññ 
}
óó 	
private
öö 
async
öö 
Task
öö 
<
öö 

Permission
öö %
>
öö% & 
GetPermissionAsync
öö' 9
(
öö9 :
int
öö: =
id
öö> @
)
öö@ A
{
õõ 	
return
úú 
await
úú 
_context
úú !
.
úú! "
Permissions
úú" -
.
úú- .
GetAsync
úú. 6
(
úú6 7
id
úú7 9
)
úú9 :
;
úú: ;
}
ùù 	
}
ûû 
}üü âF
DC:\Code\Prototype\BookApp\BookApp\Controllers\UserGroupController.cs
	namespace 	
BookApp
 
. 
Controllers 
{ 
public 

class $
UserGroupGroupController )
:* +
ApiController, 9
{ 
private 
readonly 
IContext !
_context" *
;* +
public $
UserGroupGroupController '
(' (
IContext( 0
context1 8
)8 9
{ 	
_context 
= 
context 
; 
} 	
[ 	
ResponseType	 
( 
typeof 
( 
	UserGroup &
)& '
)' (
]( )
public 
async 
Task 
< 
IHttpActionResult +
>+ ,
GetUserGroupsAsync- ?
(? @
)@ A
{ 	
var 
users 
= 
await 
_context &
.& '

UserGroups' 1
.1 2
GetAllAsync2 =
(= >
)> ?
;? @
if 
( 
users 
== 
null 
) 
{ 
return   
NotFound   
(    
)    !
;  ! "
}"" 
return$$ 
Ok$$ 
($$ 
users$$ 
)$$ 
;$$ 
}%% 	
[(( 	
ResponseType((	 
((( 
typeof(( 
((( 
	UserGroup(( &
)((& '
)((' (
]((( )
public)) 
async)) 
Task)) 
<)) 
IHttpActionResult)) +
>))+ ,
GetAsync))- 5
())5 6
int))6 9
id)): <
)))< =
{** 	
	UserGroup++ 
user++ 
=++ 
await++ "
GetUserGroupAsync++# 4
(++4 5
id++5 7
)++7 8
;++8 9
if,, 
(,, 
user,, 
==,, 
null,, 
),, 
{-- 
return.. 
NotFound.. 
(..  
)..  !
;..! "
}// 
return11 
Ok11 
(11 
user11 
)11 
;11 
}22 	
[55 	
ResponseType55	 
(55 
typeof55 
(55 
	UserGroup55 &
)55& '
)55' (
]55( )
public66 
async66 
Task66 
<66 
IHttpActionResult66 +
>66+ ,
Post66- 1
(661 2
	UserGroup662 ;
	userGroup66< E
)66E F
{77 	
if88 
(88 
!88 

ModelState88 
.88 
IsValid88 #
)88# $
{99 
return:: 

BadRequest:: !
(::! "

ModelState::" ,
)::, -
;::- .
};; 
try== 
{>> 
await?? 
_context?? 
.?? 

UserGroups?? )
.??) *
AddAsync??* 2
(??2 3
	userGroup??3 <
)??< =
;??= >
}@@ 
catchAA 
(AA 
	ExceptionAA 
eAA 
)AA 
{BB 
returnCC 
InternalServerErrorCC *
(CC* +
)CC+ ,
;CC, -
}DD 
returnFF 
CreatedAtRouteFF !
(FF! "
$strFF" .
,FF. /
newFF0 3
{FF4 5
idFF6 8
=FF9 :
	userGroupFF; D
.FFD E
User_group_idFFE R
}FFS T
,FFT U
	userGroupFFV _
)FF_ `
;FF` a
}GG 	
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IHttpActionResultJJ +
>JJ+ ,
PutJJ- 0
(JJ0 1
intJJ1 4
idJJ5 7
,JJ7 8
	UserGroupJJ9 B
	userGroupJJC L
)JJL M
{KK 	
ifLL 
(LL 
!LL 

ModelStateLL 
.LL 
IsValidLL #
)LL# $
{MM 
returnNN 

BadRequestNN !
(NN! "

ModelStateNN" ,
)NN, -
;NN- .
}OO 
ifQQ 
(QQ 
idQQ 
!=QQ 
	userGroupQQ 
.QQ  
User_group_idQQ  -
)QQ- .
{RR 
returnSS 

BadRequestSS !
(SS! "
)SS" #
;SS# $
}TT 
tryVV 
{WW 
awaitXX 
_contextXX 
.XX 

UserGroupsXX )
.XX) *
	SaveAsyncXX* 3
(XX3 4
	userGroupXX4 =
)XX= >
;XX> ?
}YY 
catchZZ 
(ZZ (
DbUpdateConcurrencyExceptionZZ /
)ZZ/ 0
{[[ 
if\\ 
(\\ 
await\\ 
GetUserGroupAsync\\ +
(\\+ ,
id\\, .
)\\. /
==\\0 2
null\\3 7
)\\7 8
{]] 
return^^ 
NotFound^^ #
(^^# $
)^^$ %
;^^% &
}__ 
returnaa 
Conflictaa 
(aa  
)aa  !
;aa! "
}bb 
catchcc 
(cc 
	Exceptioncc 
ecc 
)cc 
{dd 
returnee 
InternalServerErroree *
(ee* +
)ee+ ,
;ee, -
}ff 
returnhh 
Okhh 
(hh 
)hh 
;hh 
}ii 	
publicll 
asyncll 
Taskll 
<ll 
IHttpActionResultll +
>ll+ ,
DeleteAsyncll- 8
(ll8 9
intll9 <
idll= ?
)ll? @
{mm 	
	UserGroupnn 
usernn 
=nn 
awaitnn "
GetUserGroupAsyncnn# 4
(nn4 5
idnn5 7
)nn7 8
;nn8 9
ifoo 
(oo 
useroo 
==oo 
nulloo 
)oo 
{pp 
returnqq 
NotFoundqq 
(qq  
)qq  !
;qq! "
}rr 
trytt 
{uu 
awaitvv 
_contextvv 
.vv 

UserGroupsvv )
.vv) *
RemoveAsyncvv* 5
(vv5 6
uservv6 :
)vv: ;
;vv; <
}ww 
catchxx 
(xx 
	Exceptionxx 
exx 
)xx 
{yy 
returnzz 
InternalServerErrorzz *
(zz* +
)zz+ ,
;zz, -
}{{ 
return}} 
Ok}} 
(}} 
)}} 
;}} 
}~~ 	
[
ÄÄ 	
HttpGet
ÄÄ	 
]
ÄÄ 
[
ÅÅ 	
Route
ÅÅ	 
(
ÅÅ 
$str
ÅÅ 6
)
ÅÅ6 7
]
ÅÅ7 8
public
ÇÇ 
async
ÇÇ 
Task
ÇÇ 
<
ÇÇ 
IHttpActionResult
ÇÇ +
>
ÇÇ+ ,
UserGroupExist
ÇÇ- ;
(
ÇÇ; <
string
ÇÇ< B
userGroupName
ÇÇC P
)
ÇÇP Q
{
ÉÉ 	
try
ÑÑ 
{
ÖÖ 
var
ÜÜ 

userGroups
ÜÜ 
=
ÜÜ  
await
ÜÜ! &
_context
ÜÜ' /
.
ÜÜ/ 0

UserGroups
ÜÜ0 :
.
ÜÜ: ;
	FindAsync
ÜÜ; D
(
ÜÜD E
group
ÜÜE J
=>
ÜÜK M
group
ÜÜN S
.
ÜÜS T

Group_name
ÜÜT ^
==
ÜÜ_ a
userGroupName
ÜÜb o
)
ÜÜo p
;
ÜÜp q
if
àà 
(
àà 

userGroups
àà 
.
àà 
Any
àà "
(
àà" #
)
àà# $
)
àà$ %
{
ââ 
return
ää 

StatusCode
ää %
(
ää% &
HttpStatusCode
ää& 4
.
ää4 5
Found
ää5 :
)
ää: ;
;
ää; <
}
ãã 
return
çç 
NotFound
çç 
(
çç  
)
çç  !
;
çç! "
}
éé 
catch
èè 
(
èè 
	Exception
èè 
e
èè 
)
èè 
{
êê 
Console
ëë 
.
ëë 
	WriteLine
ëë !
(
ëë! "
e
ëë" #
)
ëë# $
;
ëë$ %
throw
íí 
;
íí 
}
ìì 
}
îî 	
private
óó 
async
óó 
Task
óó 
<
óó 
	UserGroup
óó $
>
óó$ %
GetUserGroupAsync
óó& 7
(
óó7 8
int
óó8 ;
id
óó< >
)
óó> ?
{
òò 	
return
ôô 
await
ôô 
_context
ôô !
.
ôô! "

UserGroups
ôô" ,
.
ôô, -
GetAsync
ôô- 5
(
ôô5 6
id
ôô6 8
)
ôô8 9
;
ôô9 :
}
öö 	
}
õõ 
}úú Èq
@C:\Code\Prototype\BookApp\BookApp\Controllers\UsersController.cs
	namespace 	
BookApp
 
. 
Controllers 
{ 
public 

class 
UsersController  
:! "
ApiController# 0
{ 
private 
readonly 
IContext !
_context" *
;* +
public 
UsersController 
( 
IContext '
context( /
)/ 0
{ 	
_context 
= 
context 
; 
} 	
[ 	
HttpGet	 
] 
[ 	
Route	 
( 
$str 
) 
] 
[ 	
ResponseType	 
( 
typeof 
( 
User !
)! "
)" #
]# $
public 
async 
Task 
< 
IHttpActionResult +
>+ ,
GetUsersAsync- :
(: ;
); <
{ 	
try 
{ 
var 
users 
= 
await !
_context" *
.* +
Users+ 0
.0 1
GetAllAsync1 <
(< =
)= >
;> ?
if   
(   
users   
==   
null   !
)  ! "
{!! 
return"" 
NotFound"" #
(""# $
)""$ %
;""% &
}$$ 
return&& 
Ok&& 
(&& 
users&& 
)&&  
;&&  !
}'' 
catch(( 
((( 
	Exception(( 
e(( 
)(( 
{)) 
return** 
Content** 
(** 
HttpStatusCode** -
.**- .
InternalServerError**. A
,**A B
e**C D
.**D E
Message**E L
)**L M
;**M N
}++ 
},, 	
[// 	
ResponseType//	 
(// 
typeof// 
(// 
User// !
)//! "
)//" #
]//# $
public00 
async00 
Task00 
<00 
IHttpActionResult00 +
>00+ ,
GetAsync00- 5
(005 6
int006 9
id00: <
)00< =
{11 	
try22 
{33 
User44 
user44 
=44 
await44 !
GetUserAsync44" .
(44. /
id44/ 1
)441 2
;442 3
if55 
(55 
user55 
==55 
null55  
)55  !
{66 
return77 
NotFound77 #
(77# $
)77$ %
;77% &
}88 
return:: 
Ok:: 
(:: 
user:: 
):: 
;::  
};; 
catch<< 
(<< 
	Exception<< 
e<< 
)<< 
{== 
return>> 
Content>> 
(>> 
HttpStatusCode>> -
.>>- .
InternalServerError>>. A
,>>A B
e>>C D
.>>D E
Message>>E L
)>>L M
;>>M N
}?? 
}@@ 	
[CC 	
ResponseTypeCC	 
(CC 
typeofCC 
(CC 
UserCC !
)CC! "
)CC" #
]CC# $
[DD 	
RouteDD	 
(DD 
$strDD 
)DD 
]DD 
publicEE 
asyncEE 
TaskEE 
<EE 
IHttpActionResultEE +
>EE+ ,
PostEE- 1
(EE1 2
UserEE2 6
userEE7 ;
)EE; <
{FF 	
ifGG 
(GG 
!GG 

ModelStateGG 
.GG 
IsValidGG #
)GG# $
{HH 
returnII 

BadRequestII !
(II! "

ModelStateII" ,
)II, -
;II- .
}JJ 
tryLL 
{MM 
userNN 
.NN 
Create_timeNN  
=NN! "
DateTimeNN# +
.NN+ ,
NowNN, /
;NN/ 0
varPP 
usersPP 
=PP 
awaitPP !
_contextPP" *
.PP* +
UsersPP+ 0
.PP0 1
	FindAsyncPP1 :
(PP: ;
uPP; <
=>PP= ?
uPP@ A
.PPA B
	User_namePPB K
==PPL N
userPPO S
.PPS T
	User_namePPT ]
)PP] ^
;PP^ _
ifRR 
(RR 
usersRR 
.RR 
AnyRR 
(RR 
)RR 
)RR  
{SS 
returnTT 
ContentTT "
(TT" #
HttpStatusCodeTT# 1
.TT1 2
ConflictTT2 :
,TT: ;
$strTT< O
)TTO P
;TTP Q
}UU 
awaitWW 
_contextWW 
.WW 
UsersWW $
.WW$ %
AddAsyncWW% -
(WW- .
userWW. 2
)WW2 3
;WW3 4
}XX 
catchYY 
(YY 
	ExceptionYY 
eYY 
)YY 
{ZZ 
return[[ 
Content[[ 
([[ 
HttpStatusCode[[ -
.[[- .
InternalServerError[[. A
,[[A B
e[[C D
.[[D E
Message[[E L
)[[L M
;[[M N
}\\ 
return^^ 
CreatedAtRoute^^ !
(^^! "
$str^^" .
,^^. /
new^^0 3
{^^4 5
id^^6 8
=^^9 :
user^^; ?
.^^? @
User_id^^@ G
}^^H I
,^^I J
user^^K O
)^^O P
;^^P Q
}__ 	
publicbb 
asyncbb 
Taskbb 
<bb 
IHttpActionResultbb +
>bb+ ,
Putbb- 0
(bb0 1
intbb1 4
idbb5 7
,bb7 8
Userbb9 =
userbb> B
)bbB C
{cc 	
ifdd 
(dd 
!dd 

ModelStatedd 
.dd 
IsValiddd #
)dd# $
{ee 
returnff 

BadRequestff !
(ff! "

ModelStateff" ,
)ff, -
;ff- .
}gg 
ifii 
(ii 
idii 
!=ii 
userii 
.ii 
User_idii "
)ii" #
{jj 
returnkk 

BadRequestkk !
(kk! "
)kk" #
;kk# $
}ll 
trynn 
{oo 
awaitpp 
_contextpp 
.pp 
Userspp $
.pp$ %
	SaveAsyncpp% .
(pp. /
userpp/ 3
)pp3 4
;pp4 5
}qq 
catchrr 
(rr (
DbUpdateConcurrencyExceptionrr /
)rr/ 0
{ss 
iftt 
(tt 
awaittt 
GetUserAsynctt &
(tt& '
idtt' )
)tt) *
==tt+ -
nulltt. 2
)tt2 3
{uu 
returnvv 
NotFoundvv #
(vv# $
)vv$ %
;vv% &
}ww 
returnyy 
Conflictyy 
(yy  
)yy  !
;yy! "
}zz 
catch{{ 
({{ 
	Exception{{ 
e{{ 
){{ 
{|| 
return}} 
Content}} 
(}} 
HttpStatusCode}} -
.}}- .
InternalServerError}}. A
,}}A B
e}}C D
.}}D E
Message}}E L
)}}L M
;}}M N
}~~ 
return
ÄÄ 
Ok
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
public
ÑÑ 
async
ÑÑ 
Task
ÑÑ 
<
ÑÑ 
IHttpActionResult
ÑÑ +
>
ÑÑ+ ,
DeleteAsync
ÑÑ- 8
(
ÑÑ8 9
int
ÑÑ9 <
id
ÑÑ= ?
)
ÑÑ? @
{
ÖÖ 	
User
ÜÜ 
user
ÜÜ 
=
ÜÜ 
await
ÜÜ 
GetUserAsync
ÜÜ *
(
ÜÜ* +
id
ÜÜ+ -
)
ÜÜ- .
;
ÜÜ. /
if
áá 
(
áá 
user
áá 
==
áá 
null
áá 
)
áá 
{
àà 
return
ââ 
NotFound
ââ 
(
ââ  
)
ââ  !
;
ââ! "
}
ää 
try
åå 
{
çç 
await
éé 
_context
éé 
.
éé 
Users
éé $
.
éé$ %
RemoveAsync
éé% 0
(
éé0 1
user
éé1 5
)
éé5 6
;
éé6 7
}
èè 
catch
êê 
(
êê 
	Exception
êê 
e
êê 
)
êê 
{
ëë 
return
íí 
Content
íí 
(
íí 
HttpStatusCode
íí -
.
íí- .!
InternalServerError
íí. A
,
ííA B
e
ííC D
.
ííD E
Message
ííE L
)
ííL M
;
ííM N
}
ìì 
return
ïï 
Ok
ïï 
(
ïï 
)
ïï 
;
ïï 
}
ññ 	
[
òò 	
HttpGet
òò	 
]
òò 
[
ôô 	
Route
ôô	 
(
ôô 
$str
ôô ,
)
ôô, -
]
ôô- .
public
öö 
async
öö 
Task
öö 
<
öö 
IHttpActionResult
öö +
>
öö+ ,
	UserExist
öö- 6
(
öö6 7
string
öö7 =
username
öö> F
)
ööF G
{
õõ 	
try
úú 
{
ùù 
var
ûû 
users
ûû 
=
ûû 
await
ûû !
_context
ûû" *
.
ûû* +
Users
ûû+ 0
.
ûû0 1
	FindAsync
ûû1 :
(
ûû: ;
user
ûû; ?
=>
ûû@ B
user
ûûC G
.
ûûG H
	User_name
ûûH Q
==
ûûR T
username
ûûU ]
)
ûû] ^
;
ûû^ _
if
†† 
(
†† 
users
†† 
.
†† 
Any
†† 
(
†† 
)
†† 
)
††  
{
°° 
return
¢¢ 

StatusCode
¢¢ %
(
¢¢% &
HttpStatusCode
¢¢& 4
.
¢¢4 5
Found
¢¢5 :
)
¢¢: ;
;
¢¢; <
}
££ 
return
•• 
NotFound
•• 
(
••  
)
••  !
;
••! "
}
¶¶ 
catch
ßß 
(
ßß 
	Exception
ßß 
e
ßß 
)
ßß 
{
®® 
return
©© 
Content
©© 
(
©© 
HttpStatusCode
©© -
.
©©- .!
InternalServerError
©©. A
,
©©A B
e
©©C D
.
©©D E
Message
©©E L
)
©©L M
;
©©M N
}
™™ 
}
´´ 	
[
≠≠ 	
HttpPost
≠≠	 
]
≠≠ 
[
ÆÆ 	
Route
ÆÆ	 
(
ÆÆ 
$str
ÆÆ  
)
ÆÆ  !
]
ÆÆ! "
[
ØØ 	
ResponseType
ØØ	 
(
ØØ 
typeof
ØØ 
(
ØØ 
User
ØØ !
)
ØØ! "
)
ØØ" #
]
ØØ# $
public
∞∞ 
async
∞∞ 
Task
∞∞ 
<
∞∞ 
IHttpActionResult
∞∞ +
>
∞∞+ ,
	UserExist
∞∞- 6
(
∞∞6 7
User
∞∞7 ;
user
∞∞< @
)
∞∞@ A
{
±± 	
if
≤≤ 
(
≤≤ 
string
≤≤ 
.
≤≤ 
IsNullOrEmpty
≤≤ $
(
≤≤$ %
user
≤≤% )
.
≤≤) *
	User_name
≤≤* 3
)
≤≤3 4
||
≤≤5 7
string
≤≤8 >
.
≤≤> ?
IsNullOrEmpty
≤≤? L
(
≤≤L M
user
≤≤M Q
.
≤≤Q R
Password
≤≤R Z
)
≤≤Z [
)
≤≤[ \
{
≥≥ 
return
¥¥ 

BadRequest
¥¥ !
(
¥¥! "

ModelState
¥¥" ,
)
¥¥, -
;
¥¥- .
}
µµ 
try
∑∑ 
{
∏∏ 
var
ππ 
users
ππ 
=
ππ 
(
ππ 
await
ππ "
_context
ππ# +
.
ππ+ ,
Users
ππ, 1
.
ππ1 2
	FindAsync
ππ2 ;
(
ππ; <
u
ππ< =
=>
ππ> @
u
ππA B
.
ππB C
	User_name
ππC L
==
ππM O
user
ππP T
.
ππT U
	User_name
ππU ^
&&
ππ_ a
user
ππb f
.
ππf g
Password
ππg o
==
ππp r
u
ππs t
.
ππt u
Password
ππu }
)
ππ} ~
)
ππ~ 
.ππ Ä
ToListππÄ Ü
(ππÜ á
)ππá à
;ππà â
if
ªª 
(
ªª 
users
ªª 
.
ªª 
Count
ªª 
==
ªª  "
$num
ªª# $
)
ªª$ %
{
ºº 
return
ΩΩ 
Content
ΩΩ "
(
ΩΩ" #
HttpStatusCode
ΩΩ# 1
.
ΩΩ1 2
Found
ΩΩ2 7
,
ΩΩ7 8
users
ΩΩ9 >
.
ΩΩ> ?
First
ΩΩ? D
(
ΩΩD E
)
ΩΩE F
)
ΩΩF G
;
ΩΩG H
}
ææ 
else
øø 
if
øø 
(
øø 
users
øø 
.
øø 
Count
øø $
==
øø% '
$num
øø( )
)
øø) *
{
¿¿ 
return
¡¡ 
NotFound
¡¡ #
(
¡¡# $
)
¡¡$ %
;
¡¡% &
}
¬¬ 
else
√√ 
{
ƒƒ 
return
≈≈ 
Content
≈≈ "
(
≈≈" #
HttpStatusCode
≈≈# 1
.
≈≈1 2
	Ambiguous
≈≈2 ;
,
≈≈; <
$str
≈≈= Z
)
≈≈Z [
;
≈≈[ \
}
∆∆ 
}
«« 
catch
»» 
(
»» 
	Exception
»» 
e
»» 
)
»» 
{
…… 
return
   
Content
   
(
   
HttpStatusCode
   -
.
  - .!
InternalServerError
  . A
,
  A B
e
  C D
.
  D E
Message
  E L
)
  L M
;
  M N
}
ÀÀ 
}
ÃÃ 	
private
œœ 
async
œœ 
Task
œœ 
<
œœ 
User
œœ 
>
œœ  
GetUserAsync
œœ! -
(
œœ- .
int
œœ. 1
id
œœ2 4
)
œœ4 5
{
–– 	
return
—— 
await
—— 
_context
—— !
.
——! "
Users
——" '
.
——' (
GetAsync
——( 0
(
——0 1
id
——1 3
)
——3 4
;
——4 5
}
““ 	
}
”” 
}‘‘ À
NC:\Code\Prototype\BookApp\BookApp\CustomException\BookNotAvailableException.cs
	namespace 	
BookApp
 
. 
CustomException !
{ 
public 

class %
BookNotAvailableException *
:+ ,
	Exception- 6
{ 
public 
override 
string 
Message &
{' (
get) ,
;, -
}. /
public		 %
BookNotAvailableException		 (
(		( )
string		) /
message		0 7
)		7 8
{

 	
Message 
= 
message 
; 
} 	
} 
} »
MC:\Code\Prototype\BookApp\BookApp\CustomException\ExceedLoanLimitException.cs
	namespace 	
BookApp
 
. 
CustomException !
{ 
public 

class $
ExceedLoanLimitException )
:* +
	Exception, 5
{ 
public 
override 
string 
Message &
{' (
get) ,
;, -
}. /
public		 $
ExceedLoanLimitException		 '
(		' (
string		( .
message		/ 6
)		6 7
{

 	
Message 
= 
message 
; 
} 	
} 
} ≈
LC:\Code\Prototype\BookApp\BookApp\CustomException\MemberNotFoundException.cs
	namespace 	
BookApp
 
. 
CustomException !
{ 
public 

class #
MemberNotFoundException (
:) *
	Exception+ 4
{ 
public 
override 
string 
Message &
{' (
get) ,
;, -
}. /
public		 #
MemberNotFoundException		 &
(		& '
string		' -
message		. 5
)		5 6
{

 	
Message 
= 
message 
; 
} 	
} 
} ¬
IC:\Code\Prototype\BookApp\BookApp\DataAccess\Interface\IBookRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 
	Interface &
{ 
public 

	interface 
IBookRepository $
:% &
IRepository' 2
<2 3
Book3 7
>7 8
{		 
Task

 
<

 
List

 
<

 
Book

 
>

 
>

 
SearchBooksAsync

 )
(

) *
string

* 0

searchText

1 ;
)

; <
;

< =
Task 
< 
BookStatusView 
> 
GetBookStatusAsync /
(/ 0
string0 6
isbn7 ;
); <
;< =
} 
} ê
BC:\Code\Prototype\BookApp\BookApp\DataAccess\Interface\IContext.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 
	Interface &
{ 
public 

	interface 
IContext 
{ 
IBookRepository 
Books 
{ 
get  #
;# $
}% &
IUserRepository 
Users 
{ 
get  #
;# $
}% &
IMemberRepository		 
Members		 !
{		" #
get		$ '
;		' (
}		) * 
IUserGroupRepository

 

UserGroups

 '
{

( )
get

* -
;

- .
}

/ 0!
IPermissionRepository 
Permissions )
{* +
get, /
;/ 0
}1 2#
INormalMemberRepository 
NormalMembers  -
{. /
get0 3
;3 4
}5 6!
IItemStatusRepository 

ItemStatus (
{) *
get+ .
;. /
}0 1
IItemRepository 
Items 
{ 
get  #
;# $
}% &!
ISerialItemRepository 
SerialItems )
{* +
get, /
;/ 0
}1 2"
IReservationRepository 
Reservations +
{, -
get. 1
;1 2
}3 4
int 
Complete 
( 
) 
;  
DbContextTransaction 
BeginTransaction -
(- .
). /
;/ 0
} 
} »	
IC:\Code\Prototype\BookApp\BookApp\DataAccess\Interface\IItemRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 
	Interface &
{ 
public 

	interface 
IItemRepository $
:% &
IRepository' 2
<2 3
Item3 7
>7 8
{ 
Task		 
<		 
Item		 
>		 %
GetItemIncludeStatusAsync		 ,
(		, -
int		- 0
itemId		1 7
)		7 8
;		8 9
Task 
< 
List 
< 

SerialItem 
> 
> (
GetAvailableSerialItemsAsync ;
(; <
int< ?
qty@ C
,C D
stringE K
isbnL P
)P Q
;Q R
Item  
GetItemIncludeStatus !
(! "
int" %
itemId& ,
), -
;- .
Task 
< 
int 
> !
GetReservedBooksAsync '
(' (
int( +#
loanRequirementMemberId, C
)C D
;D E
} 
} ´
OC:\Code\Prototype\BookApp\BookApp\DataAccess\Interface\IItemStatusRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 
	Interface &
{ 
public 

	interface !
IItemStatusRepository *
:* +
IRepository, 7
<7 8
	ItemStatu8 A
>A B
{ 
} 
}		 ‹
KC:\Code\Prototype\BookApp\BookApp\DataAccess\Interface\IMemberRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 
	Interface &
{ 
public 

	interface 
IMemberRepository &
:' (
IRepository) 4
<4 5
Member5 ;
>; <
{ 
Task		 
<		 
Member		 
>		 !
GetLibraryMemberAsync		 *
(		* +
int		+ .
	libraryId		/ 8
)		8 9
;		9 :
}

 
} ¯
QC:\Code\Prototype\BookApp\BookApp\DataAccess\Interface\INormalMemberRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 
	Interface &
{ 
public 

	interface #
INormalMemberRepository ,
:- .
IRepository/ :
<: ;
NormalMember; G
>G H
{ 
Task 
< 
NormalMember 
> (
GetNormalMemberByUserIdAsync 7
(7 8
int8 ;
userId< B
)B C
;C D
}		 
}

 ¨
OC:\Code\Prototype\BookApp\BookApp\DataAccess\Interface\IPermissionRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 
	Interface &
{ 
public 

	interface !
IPermissionRepository *
:+ ,
IRepository- 8
<8 9

Permission9 C
>C D
{ 
} 
}		 ‰
EC:\Code\Prototype\BookApp\BookApp\DataAccess\Interface\IRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 
	Interface &
{ 
public 

	interface 
IRepository  
<  !
TEntity! (
>( )
where* /
TEntity0 7
:7 8
class9 >
{		 
Task

 
<

 
TEntity

 
>

 
GetAsync

 
(

 
int

 "
id

# %
)

% &
;

& '
Task 
< 
TEntity 
> 
GetAsync 
( 
string %
id& (
)( )
;) *
Task 
< 
IEnumerable 
< 
TEntity  
>  !
>! "
GetAllAsync# .
(. /
)/ 0
;0 1
Task 
< 
IEnumerable 
< 
TEntity  
>  !
>! "
	FindAsync# ,
(, -

Expression- 7
<7 8
Func8 <
<< =
TEntity= D
,D E
boolF J
>J K
>K L
	predicateM V
)V W
;W X
Task 
< 
TEntity 
>  
SingleOrDefaultAsync *
(* +

Expression+ 5
<5 6
Func6 :
<: ;
TEntity; B
,B C
boolD H
>H I
>I J
	predicateK T
)T U
;U V
Task 
AddAsync 
( 
TEntity 
entity $
)$ %
;% &
Task 
AddRangeAsync 
( 
IEnumerable &
<& '
TEntity' .
>. /
entities0 8
)8 9
;9 :
void 
AddRange 
( 
IEnumerable !
<! "
TEntity" )
>) *
entities+ 3
)3 4
;4 5
Task 
RemoveAsync 
( 
TEntity  
entity! '
)' (
;( )
Task 
RemoveRangeAsync 
( 
IEnumerable )
<) *
TEntity* 1
>1 2
entities3 ;
); <
;< =
Task 
	SaveAsync 
( 
TEntity 
entity %
)% &
;& '
void   
Save   
(   
TEntity   
entity    
)    !
;  ! "
Task"" 
SaveRangeAsync"" 
("" 
IEnumerable"" '
<""' (
TEntity""( /
>""/ 0
entities""1 9
)""9 :
;"": ;
void$$ 
	SaveRange$$ 
($$ 
IEnumerable$$ "
<$$" #
TEntity$$# *
>$$* +
entities$$, 4
)$$4 5
;$$5 6
Task&& 
<&& 
long&& 
>&& 
GetSequenceNoAsync&& %
(&&% &
string&&& ,
sequenceName&&- 9
)&&9 :
;&&: ;
}(( 
})) Ø
PC:\Code\Prototype\BookApp\BookApp\DataAccess\Interface\IReservationRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 
	Interface &
{ 
public 

	interface "
IReservationRepository +
:, -
IRepository. 9
<9 :
Reservation: E
>E F
{ 
} 
}		 ¨
OC:\Code\Prototype\BookApp\BookApp\DataAccess\Interface\ISerialItemRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 
	Interface &
{ 
public 

	interface !
ISerialItemRepository *
:+ ,
IRepository- 8
<8 9

SerialItem9 C
>C D
{ 
} 
}		 ©
NC:\Code\Prototype\BookApp\BookApp\DataAccess\Interface\IUserGroupRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 
	Interface &
{ 
public 

	interface  
IUserGroupRepository )
:* +
IRepository, 7
<7 8
	UserGroup8 A
>A B
{ 
} 
}		 ö
IC:\Code\Prototype\BookApp\BookApp\DataAccess\Interface\IUserRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 
	Interface &
{ 
public 

	interface 
IUserRepository $
:% &
IRepository' 2
<2 3
User3 7
>7 8
{ 
} 
}		 †
IC:\Code\Prototype\BookApp\BookApp\DataAccess\Repository\BookRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 

Repository '
{		 
public

 

class

 
BookRepository

 
:

  !

Repository

" ,
<

, -
Book

- 1
>

1 2
,

2 3
IBookRepository

4 C
{ 
private 
readonly 
DataContext $
_context% -
;- .
public 
BookRepository 
( 
DataContext )
context* 1
)1 2
:3 4
base5 9
(9 :
context: A
)A B
{ 	
_context 
= 
context 
; 
} 	
public 
Task 
< 
List 
< 
Book 
> 
> 
SearchBooksAsync  0
(0 1
string1 7

searchText8 B
)B C
{ 	
return 
Task 
. 
Run 
( 
( 
) 
=> !
{ 
return 
_context 
.  
Books  %
.% &
Where& +
(+ ,
b, -
=>. 0
b 
. 
Isbn 
. 
Contains '
(' (

searchText( 2
)2 3
||4 6
b7 8
.8 9
Title9 >
.> ?
Contains? G
(G H

searchTextH R
)R S
||T V
b 
. 
	Publisher #
.# $
Contains$ ,
(, -

searchText- 7
)7 8
||9 ;
b 
. 
Authors !
.! "
Any" %
(% &
a& '
=>( *
a+ ,
., -

First_name- 7
.7 8
Contains8 @
(@ A

searchTextA K
)K L
||M O
aP Q
.Q R
	Last_nameR [
.[ \
Contains\ d
(d e

searchTexte o
)o p
)p q
)q r
.r s
Includes z
(z {
b{ |
=>} 
b
Ä Å
.
Å Ç
Authors
Ç â
)
â ä
.
ä ã
ToList
ã ë
(
ë í
)
í ì
;
ì î
} 
) 
; 
} 	
public   
Task   
<   
BookStatusView   "
>  " #
GetBookStatusAsync  $ 6
(  6 7
string  7 =
isbn  > B
)  B C
{!! 	
return"" 
Task"" 
."" 
Run"" 
("" 
("" 
)"" 
=>"" !
{## 
return$$ 
_context$$ 
.$$  

BookStatus$$  *
.$$* +
FirstOrDefault$$+ 9
($$9 :
b$$: ;
=>$$< >
b$$? @
.$$@ A
Isbn$$A E
==$$F H
isbn$$I M
)$$M N
;$$N O
}&& 
)&& 
;&& 
}'' 	
}(( 
})) ∞
FC:\Code\Prototype\BookApp\BookApp\DataAccess\Repository\DataContext.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 

Repository '
{ 
public 

class 
DataContext 
: 
	DbContext (
{		 
public

 
DataContext

 
(

 
)

 
: 
base 
( 
$str %
)% &
{ 	
Configuration 
. 
LazyLoadingEnabled ,
=- .
false/ 4
;4 5
Configuration 
.  
ProxyCreationEnabled .
=/ 0
false1 6
;6 7
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
DbModelBuilder0 >
modelBuilder? K
)K L
{ 	
throw 
new +
UnintentionalCodeFirstException 5
(5 6
)6 7
;7 8
} 	
public 
virtual 
DbSet 
< 
Book !
>! "
Books# (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
virtual 
DbSet 
< 
User !
>! "
Users# (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
virtual 
DbSet 
< 
Member #
># $
Members% ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
virtual 
DbSet 
< 
	UserGroup &
>& '

UserGroups( 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
virtual 
DbSet 
< 
NormalMember )
>) *
NormalMembers+ 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
public 
virtual 
DbSet 
< 

Permission '
>' (
Permissions) 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
virtual 
DbSet 
< 
Item !
>! "
Items# (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
virtual 
DbSet 
< 
Author #
># $
Authors% ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
virtual 
DbSet 
< 
BookStatusView +
>+ ,

BookStatus- 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
virtual 
DbSet 
< 
	ItemStatu &
>& '

ItemStatus( 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public!! 
virtual!! 
DbSet!! 
<!! 
Reservation!! (
>!!( )
Reservations!!* 6
{!!7 8
get!!9 <
;!!< =
set!!> A
;!!A B
}!!C D
}"" 
}## ˝-
IC:\Code\Prototype\BookApp\BookApp\DataAccess\Repository\ItemRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 

Repository '
{		 
public

 

class

 
ItemRepository

 
:

  !

Repository

" ,
<

, -
Item

- 1
>

1 2
,

2 3
IItemRepository

4 C
{ 
private 
readonly 
DataContext $
_context% -
;- .
public 
ItemRepository 
( 
DataContext )
context* 1
)1 2
:3 4
base5 9
(9 :
context: A
)A B
{ 	
_context 
= 
context 
; 
} 	
public 
Task 
< 
Item 
> %
GetItemIncludeStatusAsync 3
(3 4
int4 7
itemId8 >
)> ?
{ 	
return 
Task 
. 
Run 
( 
( 
) 
=> !
{ 
return 
_context 
.  
Items  %
.% &
Where& +
(+ ,
i, -
=>. 0
i1 2
.2 3
Item_id3 :
==; =
itemId> D
)D E
?E F
.F G
IncludeG N
(N O
iO P
=>Q S
iT U
.U V
	ItemStatuV _
)_ `
.` a
Includea h
(h i
ii j
=>k m
in o
.o p
SerialItemsp {
){ |
.| }
FirstOrDefault	} ã
(
ã å
)
å ç
;
ç é
} 
) 
; 
} 	
public 
Item  
GetItemIncludeStatus (
(( )
int) ,
itemId- 3
)3 4
{ 	
return 
_context 
. 
Items !
.! "
Where" '
(' (
i( )
=>* ,
i- .
.. /
Item_id/ 6
==7 9
itemId: @
)@ A
?A B
.B C
IncludeC J
(J K
iK L
=>M O
iP Q
.Q R
	ItemStatuR [
)[ \
.\ ]
Include] d
(d e
ie f
=>g i
ij k
.k l
SerialItemsl w
)w x
.x y
FirstOrDefault	y á
(
á à
)
à â
;
â ä
} 	
public!! 
Task!! 
<!! 
int!! 
>!! !
GetReservedBooksAsync!! .
(!!. /
int!!/ 2#
loanRequirementMemberId!!3 J
)!!J K
{"" 	
return## 
Task## 
.## 
Run## 
(## 
(## 
)## 
=>## !
{$$ 
return%% 
_context%% 
.%%  
Reservations%%  ,
.%%, -
Count%%- 2
(%%2 3
r%%3 4
=>%%5 7
r%%8 9
.%%9 :
Member%%: @
.%%@ A
	Member_id%%A J
==%%K M#
loanRequirementMemberId%%N e
&&%%f h
(%%i j
r%%j k
.%%k l
Status%%l r
==%%s u
$num%%v w
||%%x z
r%%{ |
.%%| }
Status	%%} É
==
%%Ñ Ü
$num
%%á à
)
%%à â
)
%%â ä
;
%%ä ã
}&& 
)&& 
;&& 
}'' 	
public)) 
Task)) 
<)) 
List)) 
<)) 

SerialItem)) #
>))# $
>))$ %(
GetAvailableSerialItemsAsync))& B
())B C
int))C F
qty))G J
,))J K
string))L R
isbn))S W
)))W X
{** 	
return++ 
Task++ 
.++ 
Run++ 
(++ 
(++ 
)++ 
=>++ !
{,, 
var-- 
item-- 
=-- 
_context.. 
... 
Items.. "
..." #
Where..# (
(..( )
i..) *
=>..+ -
_context... 6
...6 7
Books..7 <
...< =
Any..= @
(..@ A
b..A B
=>..C E
b..F G
...G H
Isbn..H L
==..M O
isbn..P T
&&..U W
i..X Y
...Y Z
Item_id..Z a
==..b d
b..e f
...f g
Item_id..g n
)..n o
&&..p r
_context..s {
...{ |

ItemStatus	..| Ü
.
..Ü á
Any
..á ä
(
..ä ã
s
..ã å
=>
..ç è
s
..ê ë
.
..ë í
Can_loan_out
..í û
&&
..ü °
s
..¢ £
.
..£ §
Item_id
..§ ´
==
..¨ Æ
i
..Ø ∞
.
..∞ ±
Item_id
..± ∏
)
..∏ π
)
..π ∫
.// 
Include//  
(//  !
i//! "
=>//# %
i//& '
.//' (
SerialItems//( 3
)//3 4
.00 
FirstOrDefault00 '
(00' (
)00( )
;00) *
return22 
item22 
?22 
.22 
SerialItems22 (
?22( )
.22) *
Where22* /
(22/ 0
i220 1
=>222 4
i225 6
.226 7
Library_status227 E
==22F H
$num22I J
)22J K
.22K L
ToList22L R
(22R S
)22S T
;22T U
}33 
)33 
;33 
}44 	
}55 
}66 Ã
OC:\Code\Prototype\BookApp\BookApp\DataAccess\Repository\ItemStatusRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 

Repository '
{ 
public 

class  
ItemStatusRepository %
:& '

Repository( 2
<2 3
	ItemStatu3 <
>< =
,= >!
IItemStatusRepository? T
{ 
public  
ItemStatusRepository #
(# $
DataContext$ /
context0 7
)7 8
:9 :
base; ?
(? @
context@ G
)G H
{		 	
}

 	
} 
} Ä
KC:\Code\Prototype\BookApp\BookApp\DataAccess\Repository\MemberRepository.cs
	namespace

 	
BookApp


 
.

 

DataAccess

 
.

 

Repository

 '
{ 
public 

class 
MemberRepository !
:" #

Repository$ .
<. /
Member/ 5
>5 6
,6 7
IMemberRepository8 I
{ 
private 
readonly 
DataContext $
_context% -
;- .
public 
MemberRepository 
(  
DataContext  +
context, 3
)3 4
:5 6
base7 ;
(; <
context< C
)C D
{ 	
_context 
= 
context 
; 
} 	
public 
Task 
< 
Member 
> !
GetLibraryMemberAsync 1
(1 2
int2 5
	libraryId6 ?
)? @
{ 	
return 
Task 
. 
Run 
( 
( 
) 
=> !
{ 
return 
_context 
. 
Members $
.$ %
Where% *
(* +
m+ ,
=>- /
m0 1
.1 2
	Member_id2 ;
==< >
	libraryId? H
)H I
. 
Include  
(  !
m! "
=># %
m& '
.' (
	Loan_Rule( 1
)1 2
. 
FirstOrDefault '
(' (
)( )
;) *
} 
) 
; 
} 	
} 
}   ”
QC:\Code\Prototype\BookApp\BookApp\DataAccess\Repository\NormalMemberRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 

Repository '
{ 
public		 

class		 "
NormalMemberRepository		 '
:		( )

Repository		* 4
<		4 5
NormalMember		5 A
>		A B
,		B C#
INormalMemberRepository		D [
{

 
private 
readonly 
DataContext $
_context% -
;- .
public "
NormalMemberRepository %
(% &
DataContext& 1
context2 9
)9 :
:; <
base= A
(A B
contextB I
)I J
{ 	
_context 
= 
context 
; 
} 	
public 
Task 
< 
NormalMember  
>  !(
GetNormalMemberByUserIdAsync" >
(> ?
int? B
userIdC I
)I J
{ 	
return 
Task 
. 
Run 
( 
( 
) 
=> !
{ 
return 
_context 
.  
NormalMembers  -
.- .
FirstOrDefault. <
(< =
m= >
=>? A
mB C
.C D
User_idD K
==L N
userIdO U
)U V
;V W
} 
) 
; 
} 	
} 
} À
OC:\Code\Prototype\BookApp\BookApp\DataAccess\Repository\PermissionRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 

Repository '
{ 
public 

class  
PermissionRepository %
:& '

Repository( 2
<2 3

Permission3 =
>= >
,> ?!
IPermissionRepository@ U
{ 
public		  
PermissionRepository		 #
(		# $
	DbContext		$ -
context		. 5
)		5 6
:		7 8
base		9 =
(		= >
context		> E
)		E F
{

 	
} 	
} 
} ÔW
EC:\Code\Prototype\BookApp\BookApp\DataAccess\Repository\Repository.cs
	namespace

 	
BookApp


 
.

 

DataAccess

 
.

 

Repository

 '
{ 
public 

class 

Repository 
< 
TEntity #
># $
:% &
IRepository' 2
<2 3
TEntity3 :
>: ;
where< A
TEntityB I
:J K
classL Q
{ 
	protected 
readonly 
	DbContext $
Context% ,
;, -
public 

Repository 
( 
	DbContext #
context$ +
)+ ,
{ 	
Context 
= 
context 
; 
} 	
public 
virtual 
DbQuery 
< 
TEntity &
>& '
Include( /
(/ 0
string0 6
path7 ;
); <
{ 	
return 
Context 
. 
Set 
< 
TEntity &
>& '
(' (
)( )
.) *
Include* 1
(1 2
path2 6
)6 7
;7 8
} 	
public 
Task 
< 
TEntity 
> 
GetAsync %
(% &
int& )
id* ,
), -
{ 	
return 
Task 
. 
Run 
( 
( 
) 
=> !
Context" )
.) *
Set* -
<- .
TEntity. 5
>5 6
(6 7
)7 8
.8 9
Find9 =
(= >
id> @
)@ A
)A B
;B C
} 	
public!! 
async!! 
Task!! 
<!! 
TEntity!! !
>!!! "
GetAsync!!# +
(!!+ ,
string!!, 2
id!!3 5
)!!5 6
{"" 	
return%% 
await%% 
Context%%  
.%%  !
Set%%! $
<%%$ %
TEntity%%% ,
>%%, -
(%%- .
)%%. /
.%%/ 0
	FindAsync%%0 9
(%%9 :
id%%: <
)%%< =
.%%= >
ConfigureAwait%%> L
(%%L M
false%%M R
)%%R S
;%%S T
}&& 	
public(( 
async(( 
Task(( 
<(( 
IEnumerable(( %
<((% &
TEntity((& -
>((- .
>((. /
GetAllAsync((0 ;
(((; <
)((< =
{)) 	
return** 
await** 
Context** !
.**! "
Set**" %
<**% &
TEntity**& -
>**- .
(**. /
)**/ 0
.**0 1
ToListAsync**1 <
(**< =
)**= >
.**> ?
ConfigureAwait**? M
(**M N
false**N S
)**S T
;**T U
}++ 	
public-- 
Task-- 
<-- 
IEnumerable-- 
<--  
TEntity--  '
>--' (
>--( )
	FindAsync--* 3
(--3 4

Expression--4 >
<--> ?
Func--? C
<--C D
TEntity--D K
,--K L
bool--M Q
>--Q R
>--R S
	predicate--T ]
)--] ^
{.. 	
return// 
Task// 
.// 
Run// 
(// 
(// 
)// 
=>// !
Context//" )
.//) *
Set//* -
<//- .
TEntity//. 5
>//5 6
(//6 7
)//7 8
.//8 9
Where//9 >
(//> ?
	predicate//? H
)//H I
.//I J
AsEnumerable//J V
(//V W
)//W X
)//X Y
;//Y Z
}00 	
public22 
Task22 
<22 
TEntity22 
>22  
SingleOrDefaultAsync22 1
(221 2

Expression222 <
<22< =
Func22= A
<22A B
TEntity22B I
,22I J
bool22K O
>22O P
>22P Q
	predicate22R [
)22[ \
{33 	
return44 
Task44 
.44 
Run44 
(44 
(44 
)44 
=>44 !
Context44" )
.44) *
Set44* -
<44- .
TEntity44. 5
>445 6
(446 7
)447 8
.448 9
SingleOrDefault449 H
(44H I
	predicate44I R
)44R S
)44S T
;44T U
}55 	
public77 
async77 
Task77 
AddAsync77 "
(77" #
TEntity77# *
entity77+ 1
)771 2
{88 	
Context99 
.99 
Set99 
<99 
TEntity99 
>99  
(99  !
)99! "
.99" #
Add99# &
(99& '
entity99' -
)99- .
;99. /
await:: 
Context:: 
.:: 
SaveChangesAsync:: *
(::* +
)::+ ,
.::, -
ConfigureAwait::- ;
(::; <
false::< A
)::A B
;::B C
};; 	
public== 
Task== 
AddRangeAsync== !
(==! "
IEnumerable==" -
<==- .
TEntity==. 5
>==5 6
entities==7 ?
)==? @
{>> 	
return?? 
Task?? 
.?? 
Run?? 
(?? 
(?? 
)?? 
=>?? !
{@@ 
AddRangeAA 
(AA 
entitiesAA !
)AA! "
;AA" #
}BB 
)BB 
;BB 
}CC 	
publicEE 
voidEE 
AddRangeEE 
(EE 
IEnumerableEE (
<EE( )
TEntityEE) 0
>EE0 1
entitiesEE2 :
)EE: ;
{FF 	
ContextGG 
.GG 
SetGG 
<GG 
TEntityGG 
>GG  
(GG  !
)GG! "
.GG" #
AddRangeGG# +
(GG+ ,
entitiesGG, 4
)GG4 5
;GG5 6
ContextHH 
.HH 
SaveChangesHH 
(HH  
)HH  !
;HH! "
}II 	
publicKK 
asyncKK 
TaskKK 
RemoveAsyncKK %
(KK% &
TEntityKK& -
entityKK. 4
)KK4 5
{LL 	
ContextMM 
.MM 
SetMM 
<MM 
TEntityMM 
>MM  
(MM  !
)MM! "
.MM" #
RemoveMM# )
(MM) *
entityMM* 0
)MM0 1
;MM1 2
awaitNN 
ContextNN 
.NN 
SaveChangesAsyncNN *
(NN* +
)NN+ ,
.NN, -
ConfigureAwaitNN- ;
(NN; <
falseNN< A
)NNA B
;NNB C
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
RemoveRangeAsyncQQ *
(QQ* +
IEnumerableQQ+ 6
<QQ6 7
TEntityQQ7 >
>QQ> ?
entitiesQQ@ H
)QQH I
{RR 	
ContextSS 
.SS 
SetSS 
<SS 
TEntitySS 
>SS  
(SS  !
)SS! "
.SS" #
RemoveRangeSS# .
(SS. /
entitiesSS/ 7
)SS7 8
;SS8 9
awaitTT 
ContextTT 
.TT 
SaveChangesAsyncTT *
(TT* +
)TT+ ,
.TT, -
ConfigureAwaitTT- ;
(TT; <
falseTT< A
)TTA B
;TTB C
}UU 	
publicWW 
TaskWW 
	SaveAsyncWW 
(WW 
TEntityWW %
entityWW& ,
)WW, -
{XX 	
returnYY 
TaskYY 
.YY 
RunYY 
(YY 
(YY 
)YY 
=>YY !
{ZZ 
Save[[ 
([[ 
entity[[ 
)[[ 
;[[ 
}\\ 
)\\ 
;\\ 
}]] 	
public__ 
void__ 
Save__ 
(__ 
TEntity__  
entity__! '
)__' (
{`` 	
Contextaa 
.aa 
Setaa 
<aa 
TEntityaa 
>aa  
(aa  !
)aa! "
.aa" #
Attachaa# )
(aa) *
entityaa* 0
)aa0 1
;aa1 2
Contextbb 
.bb 
Entrybb 
(bb 
entitybb  
)bb  !
.bb! "
Statebb" '
=bb( )
EntityStatebb* 5
.bb5 6
Modifiedbb6 >
;bb> ?
Contextcc 
.cc 
SaveChangescc 
(cc  
)cc  !
;cc! "
}dd 	
publicff 
Taskff 
SaveRangeAsyncff "
(ff" #
IEnumerableff# .
<ff. /
TEntityff/ 6
>ff6 7
entitiesff8 @
)ff@ A
{gg 	
returnhh 
Taskhh 
.hh 
Runhh 
(hh 
(hh 
)hh 
=>hh !
{ii 
	SaveRangejj 
(jj 
entitiesjj "
)jj" #
;jj# $
}kk 
)kk 
;kk 
}ll 	
publicnn 
voidnn 
	SaveRangenn 
(nn 
IEnumerablenn )
<nn) *
TEntitynn* 1
>nn1 2
entitiesnn3 ;
)nn; <
{oo 	
foreachpp 
(pp 
varpp 
entitypp 
inpp  "
entitiespp# +
)pp+ ,
{qq 
Contextrr 
.rr 
Setrr 
<rr 
TEntityrr #
>rr# $
(rr$ %
)rr% &
.rr& '
Attachrr' -
(rr- .
entityrr. 4
)rr4 5
;rr5 6
Contextss 
.ss 
Entryss 
(ss 
entityss $
)ss$ %
.ss% &
Statess& +
=ss, -
EntityStatess. 9
.ss9 :
Modifiedss: B
;ssB C
}tt 
Contextuu 
.uu 
SaveChangesuu 
(uu  
)uu  !
;uu! "
}vv 	
publicxx 
asyncxx 
Taskxx 
<xx 
longxx 
>xx 
GetSequenceNoAsyncxx  2
(xx2 3
stringxx3 9
sequenceNamexx: F
)xxF G
{yy 	
DbRawSqlQueryzz 
<zz 
longzz 
>zz 
rawQueryzz  (
=zz) *
Contextzz+ 2
.zz2 3
Databasezz3 ;
.zz; <
SqlQueryzz< D
<zzD E
longzzE I
>zzI J
(zzJ K
$strzzK g
+zzh i
sequenceNamezzj v
+zzw x
$strzzy |
)zz| }
;zz} ~
return{{ 
await{{ 
rawQuery{{ !
.{{! "
SingleAsync{{" -
({{- .
){{. /
.{{/ 0
ConfigureAwait{{0 >
({{> ?
false{{? D
){{D E
;{{E F
}|| 	
}}} 
}~~ –
PC:\Code\Prototype\BookApp\BookApp\DataAccess\Repository\ReservationRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 

Repository '
{ 
public 

class !
ReservationRepository &
:' (

Repository) 3
<3 4
Reservation4 ?
>? @
,@ A"
IReservationRepositoryB X
{ 
public		 !
ReservationRepository		 $
(		$ %
	DbContext		% .
context		/ 6
)		6 7
:		8 9
base		: >
(		> ?
context		? F
)		F G
{

 	
} 	
} 
} Õ
OC:\Code\Prototype\BookApp\BookApp\DataAccess\Repository\SerialItemRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 

Repository '
{ 
public 

class  
SerialItemRepository %
:& '

Repository( 2
<2 3

SerialItem3 =
>= >
,> ?!
ISerialItemRepository@ U
{ 
public  
SerialItemRepository #
(# $
DataContext$ /
context0 7
)7 8
:9 :
base; ?
(? @
context@ G
)G H
{		 	
}

 	
} 
} ∏&
EC:\Code\Prototype\BookApp\BookApp\DataAccess\Repository\UnitOfWork.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 

Repository '
{ 
public 

class 

UnitOfWork 
: 
IContext &
,& '
IDisposable( 3
{ 
private		 
readonly		 
DataContext		 $
_context		% -
;		- .
public 

UnitOfWork 
( 
DataContext %
context& -
)- .
{ 	
_context 
= 
context 
; 
Books 
= 
new 
BookRepository &
(& '
_context' /
)/ 0
;0 1
Users 
= 
new 
UserRepository &
(& '
_context' /
)/ 0
;0 1
Members 
= 
new 
MemberRepository *
(* +
_context+ 3
)3 4
;4 5

UserGroups 
= 
new 
UserGroupRepository 0
(0 1
_context1 9
)9 :
;: ;
Permissions 
= 
new  
PermissionRepository 2
(2 3
_context3 ;
); <
;< =
NormalMembers 
= 
new "
NormalMemberRepository  6
(6 7
_context7 ?
)? @
;@ A

ItemStatus 
= 
new  
ItemStatusRepository 1
(1 2
_context2 :
): ;
;; <
Items 
= 
new 
ItemRepository &
(& '
_context' /
)/ 0
;0 1
SerialItems 
= 
new  
SerialItemRepository 2
(2 3
_context3 ;
); <
;< =
Reservations 
= 
new !
ReservationRepository 4
(4 5
_context5 =
)= >
;> ?
} 	
public 
IBookRepository 
Books $
{% &
get' *
;* +
}, -
public 
IUserRepository 
Users $
{% &
get' *
;* +
}, -
public 
IMemberRepository  
Members! (
{) *
get+ .
;. /
}0 1
public  
IUserGroupRepository #

UserGroups$ .
{/ 0
get1 4
;4 5
}6 7
public !
IPermissionRepository $
Permissions% 0
{1 2
get3 6
;6 7
}8 9
public #
INormalMemberRepository &
NormalMembers' 4
{5 6
get7 :
;: ;
}< =
public   !
IItemStatusRepository   $

ItemStatus  % /
{  0 1
get  2 5
;  5 6
}  7 8
public!! 
IItemRepository!! 
Items!! $
{!!% &
get!!' *
;!!* +
}!!, -
public"" !
ISerialItemRepository"" $
SerialItems""% 0
{""1 2
get""3 6
;""6 7
}""8 9
public$$ "
IReservationRepository$$ %
Reservations$$& 2
{$$3 4
get$$5 8
;$$8 9
}$$: ;
public&& 
int&& 
Complete&& 
(&& 
)&& 
{'' 	
return(( 
_context(( 
.(( 
SaveChanges(( '
(((' (
)((( )
;(() *
})) 	
public++ 
void++ 
Dispose++ 
(++ 
)++ 
{,, 	
Dispose-- 
(-- 
true-- 
)-- 
;-- 
GC.. 
... 
SuppressFinalize.. 
(..  
this..  $
)..$ %
;..% &
}// 	
	protected11 
virtual11 
void11 
Dispose11 &
(11& '
bool11' +
	disposing11, 5
)115 6
{22 	
if33 
(33 
	disposing33 
)33 
{44 
_context55 
?55 
.55 
Dispose55 !
(55! "
)55" #
;55# $
}66 
}77 	
public99  
DbContextTransaction99 #
BeginTransaction99$ 4
(994 5
)995 6
{:: 	
return;; 
_context;; 
.;; 
Database;; $
.;;$ %
BeginTransaction;;% 5
(;;5 6
);;6 7
;;;7 8
}<< 	
}== 
}?? ∆
NC:\Code\Prototype\BookApp\BookApp\DataAccess\Repository\UserGroupRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 

Repository '
{ 
public 

class 
UserGroupRepository $
:% &

Repository' 1
<1 2
	UserGroup2 ;
>; <
,< = 
IUserGroupRepository> R
{ 
public		 
UserGroupRepository		 "
(		" #
	DbContext		# ,
context		- 4
)		4 5
:		6 7
base		8 <
(		< =
context		= D
)		D E
{

 	
} 	
} 
} ≠
IC:\Code\Prototype\BookApp\BookApp\DataAccess\Repository\UserRepository.cs
	namespace 	
BookApp
 
. 

DataAccess 
. 

Repository '
{ 
public 

class 
UserRepository 
:  !

Repository" ,
<, -
User- 1
>1 2
,2 3
IUserRepository4 C
{ 
public		 
UserRepository		 
(		 
	DbContext		 '
context		( /
)		/ 0
:		1 2
base		3 7
(		7 8
context		8 ?
)		? @
{

 	
} 	
} 
} Ä
0C:\Code\Prototype\BookApp\BookApp\Global.asax.cs
	namespace 	
BookApp
 
{		 
public

 

class

 
WebApiApplication

 "
:

# $
System

% +
.

+ ,
Web

, /
.

/ 0
HttpApplication

0 ?
{ 
	protected 
void 
Application_Start (
(( )
)) *
{ 	
GlobalConfiguration 
.  
	Configure  )
() *
WebApiConfig* 6
.6 7
Register7 ?
)? @
;@ A
} 	
} 
} Á
<C:\Code\Prototype\BookApp\BookApp\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str "
)" #
]# $
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str $
)$ %
]% &
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *Á
DC:\Code\Prototype\BookApp\BookClient.Tests\Controllers\LoginTests.cs
	namespace 	

BookClient
 
. 
Tests 
. 
Controllers &
{ 
[ 
	TestClass 
( 
) 
] 
public 

class 

LoginTests 
{ 
[ 	

TestMethod	 
( 
) 
] 
public 
async 
Task 
	IndexTest #
(# $
)$ %
{ 	
LoginController 

controller &
=' (%
GetMockProviderController) B
(B C
)C D
;D E
UserLoginViewModel 
userLoginViewModel 1
=2 3
new4 7
UserLoginViewModel8 J
(J K
)K L
{M N
	User_nameO X
=Y Z
$str[ d
,d e
Passwordf n
=o p
$strq w
}x y
;y z
var 
redirectResult 
=  
await! &

controller' 1
.1 2
Index2 7
(7 8
userLoginViewModel8 J
)J K
asL N!
RedirectToRouteResultO d
;d e
Assert 
. 
	IsNotNull 
( 
redirectResult +
,+ ,
$str- D
)D E
;E F
Assert 
. 
AreEqual 
( 
$str &
,& '
redirectResult( 6
.6 7
RouteValues7 B
[B C
$strC K
]K L
)L M
;M N
Assert   
.   
AreEqual   
(   
userLoginViewModel   .
.  . /
	User_name  / 8
,  8 9

controller  : D
.  D E
Session  E L
[  L M
$str  M W
]  W X
)  X Y
;  Y Z
}!! 	
private## 
static## 
LoginController## &%
GetMockProviderController##' @
(##@ A
)##A B
{$$ 	
var%% 
mock%% 
=%% 
new%% 
Mock%% 
<%%  
ControllerContext%%  1
>%%1 2
(%%2 3
)%%3 4
;%%4 5
var&& 
session&& 
=&& 
new&& 
MockHttpSession&& -
(&&- .
)&&. /
;&&/ 0
mock'' 
.'' 
Setup'' 
('' 
p'' 
=>'' 
p'' 
.'' 
HttpContext'' )
.'') *
Session''* 1
)''1 2
.''2 3
Returns''3 :
('': ;
session''; B
)''B C
;''C D
LoginController)) 

controller)) &
=))' (
new))) ,
LoginController))- <
())< =
new))= @
ServiceFactory))A O
())O P
)))P Q
)))Q R
{))S T
ControllerContext))U f
=))g h
mock))i m
.))m n
Object))n t
}))u v
;))v w
return** 

controller** 
;** 
}++ 	
},, 
}-- ƒ	
CC:\Code\Prototype\BookApp\BookClient.Tests\Model\MockHttpSession.cs
	namespace 	

BookClient
 
. 
Tests 
. 
Model  
{ 
public 

class 
MockHttpSession  
:! " 
HttpSessionStateBase# 7
{ 
readonly 

Dictionary 
< 
string "
," #
object$ *
>* +
_sessionDictionary, >
=? @
newA D

DictionaryE O
<O P
stringP V
,V W
objectX ^
>^ _
(_ `
)` a
;a b
public

 
override

 
object

 
this

 #
[

# $
string

$ *
name

+ /
]

/ 0
{ 	
get 
{ 
return 
_sessionDictionary +
[+ ,
name, 0
]0 1
;1 2
}3 4
set 
{ 
_sessionDictionary $
[$ %
name% )
]) *
=+ ,
value- 2
;2 3
}4 5
} 	
} 
} 
EC:\Code\Prototype\BookApp\BookClient.Tests\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str +
)+ ,
], -
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str -
)- .
]. /
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *u
sC:\Code\Prototype\BookApp\BookClient.Tests\obj\Debug\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.csu
sC:\Code\Prototype\BookApp\BookClient.Tests\obj\Debug\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.csu
sC:\Code\Prototype\BookApp\BookClient.Tests\obj\Debug\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.csw
uC:\Code\Prototype\BookApp\BookClient.Tests\obj\Release\TemporaryGeneratedFile_036C0B5B-1481-4323-8D20-8F5ADCB23D92.csw
uC:\Code\Prototype\BookApp\BookClient.Tests\obj\Release\TemporaryGeneratedFile_5937a670-0e60-4077-877b-f7221da3dda1.csw
uC:\Code\Prototype\BookApp\BookClient.Tests\obj\Release\TemporaryGeneratedFile_E7A71F73-0F8D-4B9B-B56E-8E70B10BC5D3.cs¬
>C:\Code\Prototype\BookApp\BookClient\App_Start\BundleConfig.cs
	namespace 	

BookClient
 
{ 
public 

class 
BundleConfig 
{ 
public 
static 
void 
RegisterBundles *
(* +
BundleCollection+ ;
bundles< C
)C D
{		 	
bundles

 
.

 
Add

 
(

 
new

 
ScriptBundle

 (
(

( )
$str

) ;
)

; <
.

< =
Include

= D
(

D E
$str 7
)7 8
)8 9
;9 :
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str 4
)4 5
)5 6
;6 7
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str /
)/ 0
)0 1
;1 2
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) >
)> ?
.? @
Include@ G
(G H
$str .
,. /
$str ,
), -
)- .
;. /
bundles 
. 
Add 
( 
new 
StyleBundle '
(' (
$str( 7
)7 8
.8 9
Include9 @
(@ A
$str /
,/ 0
$str *
)* +
)+ ,
;, -
} 	
} 
} …
=C:\Code\Prototype\BookApp\BookClient\App_Start\RouteConfig.cs
	namespace 	

BookClient
 
{		 
public

 

class

 
RouteConfig

 
{ 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
routes 
. 
IgnoreRoute 
( 
$str ;
); <
;< =
routes 
. 
MapRoute 
( 
name 
: 
$str 
,  
url 
: 
$str 1
,1 2
defaults 
: 
new 
{ 

controller  *
=+ ,
$str- 3
,3 4
action5 ;
=< =
$str> E
,E F
idG I
=J K
UrlParameterL X
.X Y
OptionalY a
}b c
) 
; 
} 	
} 
} ¿
=C:\Code\Prototype\BookApp\BookClient\App_Start\UnityConfig.cs
	namespace 	

BookClient
 
. 
	App_Start 
{ 
public 

class 
UnityConfig 
{ 
private 
static 
Lazy 
< 
IUnityContainer +
>+ ,
	container- 6
=7 8
new9 <
Lazy= A
<A B
IUnityContainerB Q
>Q R
(R S
(S T
)T U
=>V X
{ 	
var 
	container 
= 
new 
UnityContainer  .
(. /
)/ 0
;0 1
RegisterTypes 
( 
	container #
)# $
;$ %
return 
	container 
; 
} 	
)	 

;
 
public 
static 
IUnityContainer %"
GetConfiguredContainer& <
(< =
)= >
{ 	
return 
	container 
. 
Value "
;" #
} 	
public## 
static## 
void## 
RegisterTypes## (
(##( )
IUnityContainer##) 8
	container##9 B
)##B C
{$$ 	
	container(( 
.(( 
RegisterType(( "
<((" #
IServiceFactory((# 2
,((2 3
ServiceFactory((4 B
>((B C
(((C D
)((D E
;((E F
})) 	
}** 
}++ Ì
CC:\Code\Prototype\BookApp\BookClient\App_Start\UnityMvcActivator.cs
[ 
assembly 	
:	 

WebActivatorEx 
. %
PreApplicationStartMethod 3
(3 4
typeof4 :
(: ;

BookClient; E
.E F
	App_StartF O
.O P
UnityWebActivatorP a
)a b
,b c
$strd k
)k l
]l m
[ 
assembly 	
:	 

WebActivatorEx 
. %
ApplicationShutdownMethod 3
(3 4
typeof4 :
(: ;

BookClient; E
.E F
	App_StartF O
.O P
UnityWebActivatorP a
)a b
,b c
$strd n
)n o
]o p
	namespace 	

BookClient
 
. 
	App_Start 
{		 
public 

static 
class 
UnityWebActivator )
{ 
public 
static 
void 
Start  
(  !
)! "
{ 	
var 
	container 
= 
UnityConfig '
.' ("
GetConfiguredContainer( >
(> ?
)? @
;@ A
FilterProviders 
. 
	Providers %
.% &
Remove& ,
(, -
FilterProviders- <
.< =
	Providers= F
.F G
OfTypeG M
<M N)
FilterAttributeFilterProviderN k
>k l
(l m
)m n
.n o
Firsto t
(t u
)u v
)v w
;w x
FilterProviders 
. 
	Providers %
.% &
Add& )
() *
new* -.
"UnityFilterAttributeFilterProvider. P
(P Q
	containerQ Z
)Z [
)[ \
;\ ]
DependencyResolver 
. 
SetResolver *
(* +
new+ .#
UnityDependencyResolver/ F
(F G
	containerG P
)P Q
)Q R
;R S
} 	
public 
static 
void 
Shutdown #
(# $
)$ %
{ 	
var 
	container 
= 
UnityConfig '
.' ("
GetConfiguredContainer( >
(> ?
)? @
;@ A
	container 
. 
Dispose 
( 
) 
;  
}   	
}!! 
}"" Ô
>C:\Code\Prototype\BookApp\BookClient\Controllers\BookAppUri.cs
	namespace 	

BookClient
 
. 
Controllers  
{ 
public 

static 
class 

BookAppUri "
{		 
public

 
static

 
readonly

 
string

 %$
BookRestApiSoupUiTestUrl

& >
=

? @
$str

A Y
;

Y Z
public 
static 
readonly 
string %#
BookRestApiLocalTestUrl& =
=> ?
$str@ Y
;Y Z
} 
} §L
BC:\Code\Prototype\BookApp\BookClient\Controllers\BookController.cs
	namespace 	

BookClient
 
. 
Controllers  
{ 
public 

class 
BookController 
:  !

Controller" ,
{ 
private 
readonly 
string 
_serviceUri  +
;+ ,
public 
BookController 
( 
IServiceFactory -
serviceFactory. <
)< =
{ 	
_serviceUri 
= 
serviceFactory (
.( )
GetServiceUri) 6
(6 7
)7 8
;8 9
} 	
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
) 
; 
} 	
public   
ActionResult   
Details   #
(  # $
int  $ '
id  ( *
)  * +
{!! 	
return## 
RedirectToAction## #
(### $
$str##$ +
,##+ ,
$str##- 3
,##3 4
id##5 7
)##7 8
;##8 9
}$$ 	
public&& 
ActionResult&& 
Edit&&  
(&&  !
int&&! $
id&&% '
)&&' (
{'' 	
throw(( 
new(( #
NotImplementedException(( -
(((- .
)((. /
;((/ 0
})) 	
public++ 
ActionResult++ 
Delete++ "
(++" #
int++# &
id++' )
)++) *
{,, 	
throw-- 
new-- #
NotImplementedException-- -
(--- .
)--. /
;--/ 0
}.. 	
public00 
ActionResult00 
Create00 "
(00" #
)00# $
{11 	
return22 
View22 
(22 
new22 
CreateBookViewModel22 /
(22/ 0
)220 1
)221 2
;222 3
}33 	
public55 
async55 
Task55 
<55 
ActionResult55 &
>55& '
SearchAsync55( 3
(553 4
SearchBookViewModel554 G
searchBookViewModel55H [
)55[ \
{66 	

HttpClient77 
client77 
=77 
new77  #

HttpClient77$ .
{77/ 0
BaseAddress771 <
=77= >
new77? B
Uri77C F
(77F G
_serviceUri77G R
)77R S
}77T U
;77U V
try99 
{:: 
var;; 
bookViewModel;; !
=;;" #
new;;$ '
SearchBookViewModel;;( ;
(;;; <
);;< =
;;;= >
HttpResponseMessage== #
response==$ ,
===- .
await>> 
client>>  
.>>  !
GetAsync>>! )
(>>) *
$str>>* =
+>>> ?
searchBookViewModel>>@ S
.>>S T
SearchField>>T _
+>>` a
(??* +
string??+ 1
.??1 2
IsNullOrEmpty??2 ?
(??? @
searchBookViewModel??@ S
.??S T
Subject??T [
)??[ \
?@@. /
null@@0 4
:AA. /
$strAA0 3
+AA4 5
searchBookViewModelAA6 I
.AAI J
SubjectAAJ Q
)AAQ R
)AAR S
.AAS T
ConfigureAwaitAAT b
(AAb c
falseAAc h
)AAh i
;AAi j
ifCC 
(CC 
responseCC 
.CC 

StatusCodeCC '
==CC( *
HttpStatusCodeCC+ 9
.CC9 :
OKCC: <
)CC< =
{DD 
bookViewModelEE !
.EE! "
BooksEE" '
=EE( )
awaitEE* /
responseEE0 8
.EE8 9
ContentEE9 @
.EE@ A
ReadAsAsyncEEA L
<EEL M
ListEEM Q
<EEQ R
BookEER V
>EEV W
>EEW X
(EEX Y
)EEY Z
.EEZ [
ConfigureAwaitEE[ i
(EEi j
falseEEj o
)EEo p
;EEp q
}FF 
elseGG 
ifGG 
(GG 
responseGG !
.GG! "

StatusCodeGG" ,
==GG- /
HttpStatusCodeGG0 >
.GG> ?
NotFoundGG? G
)GGG H
{HH 

ModelStateII 
.II 
AddModelErrorII ,
(II, -
$strII- /
,II/ 0
$strII1 B
)IIB C
;IIC D
returnJJ 
ViewJJ 
(JJ  
$strJJ  '
)JJ' (
;JJ( )
}KK 
returnMM 
ViewMM 
(MM 
$strMM #
,MM# $
bookViewModelMM% 2
)MM2 3
;MM3 4
}NN 
catchOO 
(OO  
HttpRequestExceptionOO '
eOO( )
)OO) *
{PP 

ModelStateQQ 
.QQ 
AddModelErrorQQ (
(QQ( )
$strQQ) 0
,QQ0 1
$strQQ2 ;
+QQ< =
eQQ> ?
.QQ? @
MessageQQ@ G
)QQG H
;QQH I
returnRR 
ViewRR 
(RR 
$strRR #
)RR# $
;RR$ %
}SS 
}TT 	
publicVV 
asyncVV 
TaskVV 
<VV 
ActionResultVV &
>VV& '
ReserveAsyncVV( 4
(VV4 5
stringVV5 ;
isbnVV< @
)VV@ A
{WW 	

HttpClientXX 
clientXX 
=XX 
newXX  #

HttpClientXX$ .
{XX/ 0
BaseAddressXX1 <
=XX= >
newXX? B
UriXXC F
(XXF G
_serviceUriXXG R
)XXR S
}XXT U
;XXU V
tryYY 
{ZZ 
if[[ 
([[ 
Session[[ 
[[[ 
$str[[ $
][[$ %
!=[[& (
null[[) -
)[[- .
{\\ 
HttpResponseMessage]] ' 
normalMemberResponse]]( <
=]]= >
await^^ 
client^^ $
.^^$ %
GetAsync^^% -
(^^- .
$str^^. I
+^^J K
(^^L M
int^^M P
)^^P Q
Session^^Q X
[^^X Y
$str^^Y a
]^^a b
)^^b c
.^^c d
ConfigureAwait^^d r
(^^r s
false^^s x
)^^x y
;^^y z
if`` 
(``  
normalMemberResponse`` ,
.``, -

StatusCode``- 7
==``8 :
HttpStatusCode``; I
.``I J
OK``J L
)``L M
{aa 
NormalMemberbb $
memberbb% +
=bb, -
awaitbb. 3 
normalMemberResponsebb4 H
.bbH I
ContentbbI P
.bbP Q
ReadAsAsyncbbQ \
<bb\ ]
NormalMemberbb] i
>bbi j
(bbj k
)bbk l
.bbl m
ConfigureAwaitbbm {
(bb{ |
false	bb| Å
)
bbÅ Ç
;
bbÇ É
HttpResponseMessagedd +
responsedd, 4
=dd5 6
awaitee !
clientee" (
.ee( )
PostAsJsonAsyncee) 8
(ee8 9
$stree9 J
,eeJ K
newff$ '
LoanRequirementff( 7
{ff8 9
Isbnff: >
=ff? @
isbnffA E
,ffE F

CopyNumberffG Q
=ffR S
$numffT U
,ffU V
MemberIdffW _
=ff` a
memberffb h
.ffh i
	Member_idffi r
}ffs t
)fft u
.gg  !
ConfigureAwaitgg! /
(gg/ 0
falsegg0 5
)gg5 6
;gg6 7
ifii 
(ii 
responseii $
.ii$ %

StatusCodeii% /
==ii0 2
HttpStatusCodeii3 A
.iiA B
OKiiB D
)iiD E
{jj 
TempDatakk $
[kk$ %
$strkk% *
]kk* +
=kk, -
$strkk. _
;kk_ `
returnll "
Viewll# '
(ll' (
$strll( /
)ll/ 0
;ll0 1
}mm 
elsenn 
{oo 

ModelStateqq &
.qq& '
AddModelErrorqq' 4
(qq4 5
$strqq5 <
,qq< =
awaitqq> C
responseqqD L
.qqL M
ContentqqM T
.qqT U
ReadAsStringAsyncqqU f
(qqf g
)qqg h
.qqh i
ConfigureAwaitqqi w
(qqw x
falseqqx }
)qq} ~
)qq~ 
;	qq Ä
returnrr "
Viewrr# '
(rr' (
$strrr( /
)rr/ 0
;rr0 1
}ss 
}uu 
elsevv 
{ww 

ModelStatexx "
.xx" #
AddModelErrorxx# 0
(xx0 1
$strxx1 8
,xx8 9
$strxx: |
)xx| }
;xx} ~
returnyy 
Viewyy #
(yy# $
$stryy$ +
)yy+ ,
;yy, -
}zz 
}|| 
else}} 
{~~ 
return 
RedirectToAction +
(+ ,
$str, 3
,3 4
$str5 <
)< =
;= >
}
ÄÄ 
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ "
HttpRequestException
ÉÉ '
e
ÉÉ( )
)
ÉÉ) *
{
ÑÑ 

ModelState
ÖÖ 
.
ÖÖ 
AddModelError
ÖÖ (
(
ÖÖ( )
$str
ÖÖ) 0
,
ÖÖ0 1
$str
ÖÖ2 ;
+
ÖÖ< =
e
ÖÖ> ?
.
ÖÖ? @
Message
ÖÖ@ G
)
ÖÖG H
;
ÖÖH I
return
ÜÜ 
View
ÜÜ 
(
ÜÜ 
$str
ÜÜ #
)
ÜÜ# $
;
ÜÜ$ %
}
áá 
}
àà 	
}
ââ 
}ää  
BC:\Code\Prototype\BookApp\BookClient\Controllers\HomeController.cs
	namespace 	

BookClient
 
. 
Controllers  
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
public 
ActionResult 
Index !
(! "
)" #
{ 	
return## 
RedirectToAction## #
(### $
$str##$ +
,##+ ,
$str##- 3
)##3 4
;##4 5
}$$ 	
}CC 
}DD ˇ?
CC:\Code\Prototype\BookApp\BookClient\Controllers\LoginController.cs
	namespace 	

BookClient
 
. 
Controllers  
{ 
public 

class 
LoginController  
:! "

Controller# -
{ 
private 
readonly 
string 
_serviceUri  +
;+ ,
public 
LoginController 
( 
IServiceFactory .
serviceFactory/ =
)= >
{ 	
_serviceUri 
= 
serviceFactory (
.( )
GetServiceUri) 6
(6 7
)7 8
;8 9
} 	
public 
ActionResult 
Index !
(! "
)" #
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
HttpPost	 
] 
public!! 
async!! 
Task!! 
<!! 
ActionResult!! &
>!!& '
Index!!( -
(!!- .
UserLoginViewModel!!. @
userLoginViewModel!!A S
)!!S T
{"" 	
if## 
(## 

ModelState## 
.## 
IsValid## "
)##" #
{$$ 

HttpClient%% 
client%% !
=%%" #
new%%$ '

HttpClient%%( 2
{%%3 4
BaseAddress%%4 ?
=%%@ A
new%%B E
Uri%%F I
(%%I J
_serviceUri%%J U
)%%U V
}%%W X
;%%X Y
try'' 
{(( 
HttpResponseMessage)) '
response))( 0
=))1 2
await))3 8
client))9 ?
.))? @
PostAsJsonAsync))@ O
())O P
$str))P a
,))a b
userLoginViewModel))c u
)))u v
;))v w
if++ 
(++ 
response++  
.++  !

StatusCode++! +
==++, .
HttpStatusCode++/ =
.++= >
Found++> C
)++C D
{,, 
var-- 
user--  
=--! "
await--# (
response--) 1
.--1 2
Content--2 9
.--9 :
ReadAsAsync--: E
<--E F
User--F J
>--J K
(--K L
)--L M
;--M N
Session.. 
[..  
$str..  (
]..( )
=..* +
user.., 0
...0 1
User_id..1 8
;..8 9
Session// 
[//  
$str//  *
]//* +
=//, -
user//. 2
.//2 3
	User_name//3 <
;//< =
Session00 
[00  
$str00  -
]00- .
=00/ 0
user001 5
.005 6
User_group_id006 C
;00C D
HttpResponseMessage33 +
permissionResponse33, >
=33? @
await33A F
client33G M
.33M N
GetAsync33N V
(33V W
$str33W u
+33v w
user33x |
.33| }
User_group_id	33} ä
)
33ä ã
;
33ã å
var55 
permissions55 '
=55( )
await55* /
permissionResponse550 B
.55B C
Content55C J
.55J K
ReadAsAsync55K V
<55V W
List55W [
<55[ \

Permission55\ f
>55f g
>55g h
(55h i
)55i j
;55j k
if77 
(77 
permissions77 '
!=77( *
null77+ /
)77/ 0
{88 
Session:: #
[::# $
$str::$ :
]::: ;
=::< =
permissions::> I
.::I J
FirstOrDefault::J X
(::X Y
p::Y Z
=>::[ ]
p::^ _
.::_ `
Action::` f
==::g i
PermissionEnum::j x
.::x y

UpdateBook	::y É
.
::É Ñ
ToString
::Ñ å
(
::å ç
)
::ç é
)
::é è
?
::è ê
.
::ê ë
Action
::ë ó
;
::ó ò
Session;; #
[;;# $
$str;;$ <
];;< =
=;;> ?
permissions;;@ K
.;;K L
FirstOrDefault;;L Z
(;;Z [
p;;[ \
=>;;] _
p;;` a
.;;a b
Action;;b h
==;;i k
PermissionEnum;;l z
.;;z {
UpdateMember	;;{ á
.
;;á à
ToString
;;à ê
(
;;ê ë
)
;;ë í
)
;;í ì
?
;;ì î
.
;;î ï
Action
;;ï õ
;
;;õ ú
Session<< #
[<<# $
$str<<$ :
]<<: ;
=<<< =
permissions<<> I
.<<I J
FirstOrDefault<<J X
(<<X Y
p<<Y Z
=><<[ ]
p<<^ _
.<<_ `
Action<<` f
==<<g i
PermissionEnum<<j x
.<<x y

UpdateLoan	<<y É
.
<<É Ñ
ToString
<<Ñ å
(
<<å ç
)
<<ç é
)
<<é è
?
<<è ê
.
<<ê ë
Action
<<ë ó
;
<<ó ò
Session== #
[==# $
$str==$ :
]==: ;
===< =
permissions==> I
.==I J
FirstOrDefault==J X
(==X Y
p==Y Z
=>==[ ]
p==^ _
.==_ `
Action==` f
====g i
PermissionEnum==j x
.==x y

UpdateUser	==y É
.
==É Ñ
ToString
==Ñ å
(
==å ç
)
==ç é
)
==é è
?
==è ê
.
==ê ë
Action
==ë ó
;
==ó ò
}>> 
return@@ 
RedirectToAction@@ /
(@@/ 0
$str@@0 :
)@@: ;
;@@; <
}AA 
elseBB 
ifBB 
(BB 
responseBB %
.BB% &

StatusCodeBB& 0
==BB1 3
HttpStatusCodeBB4 B
.BBB C
NotFoundBBC K
)BBK L
{CC 

ModelStateDD "
.DD" #
AddModelErrorDD# 0
(DD0 1
$strDD1 3
,DD3 4
$strDD5 V
)DDV W
;DDW X
returnEE 
ViewEE #
(EE# $
userLoginViewModelEE$ 6
)EE6 7
;EE7 8
}FF 
elseGG 
{HH 

ModelStateII "
.II" #
AddModelErrorII# 0
(II0 1
$strII1 8
,II8 9
$strII: C
+IID E
awaitIIF K
responseIIL T
.IIT U
ContentIIU \
.II\ ]
ReadAsStringAsyncII] n
(IIn o
)IIo p
)IIp q
;IIq r
returnJJ 
ViewJJ #
(JJ# $
userLoginViewModelJJ$ 6
)JJ6 7
;JJ7 8
}KK 
}LL 
catchMM 
(MM  
HttpRequestExceptionMM +
eMM, -
)MM- .
{NN 

ModelStateOO 
.OO 
AddModelErrorOO ,
(OO, -
$strOO- 4
,OO4 5
$strOO6 ?
+OO@ A
eOOB C
.OOC D
MessageOOD K
)OOK L
;OOL M
returnPP 
ViewPP 
(PP  
userLoginViewModelPP  2
)PP2 3
;PP3 4
}QQ 
}SS 
returnUU 
ViewUU 
(UU 
)UU 
;UU 
}VV 	
publicXX 
ActionResultXX 
LoggedInXX $
(XX$ %
)XX% &
{YY 	
ifZZ 
(ZZ 
SessionZZ 
[ZZ 
$strZZ  
]ZZ  !
!=ZZ" $
nullZZ% )
)ZZ) *
{[[ 
return\\ 
View\\ 
(\\ 
)\\ 
;\\ 
}]] 
return__ 
RedirectToAction__ #
(__# $
$str__$ +
)__+ ,
;__, -
}`` 	
publicbb 
ActionResultbb 
Logoutbb "
(bb" #
)bb# $
{cc 	
Sessiondd 
.dd 
Abandondd 
(dd 
)dd 
;dd 
returnee 
RedirectToActionee #
(ee# $
$stree$ +
)ee+ ,
;ee, -
}ff 	
}gg 
}hh Ã6
FC:\Code\Prototype\BookApp\BookClient\Controllers\RegisterController.cs
	namespace 	

BookClient
 
. 
Controllers  
{ 
public 

class 
RegisterController #
:$ %

Controller& 0
{ 
private 
readonly 
IServiceFactory (
_serviceFactory) 8
;8 9
public 
RegisterController !
(! "
IServiceFactory" 1
serviceFactory2 @
)@ A
{ 	
_serviceFactory 
= 
serviceFactory ,
;, -
} 	
public 
ActionResult 
Register $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
ActionResult &
>& '
Register( 0
(0 1 
UserAccountViewModel1 E 
userAccountViewModelF Z
)Z [
{ 	
if 
( 

ModelState 
. 
IsValid "
)" #
{   

HttpClient"" 
client"" !
=""" #
new""$ '

HttpClient""( 2
{""3 4
BaseAddress""5 @
=""A B
new""C F
Uri""G J
(""J K
_serviceFactory""K Z
.""Z [
GetServiceUri""[ h
(""h i
)""i j
)""j k
}""l m
;""m n
User$$ 
user$$ 
=$$ 
new$$ 
User$$  $
{%% 
Create_time&& 
=&&  !
DateTime&&" *
.&&* +
Now&&+ .
,&&. /
	User_name'' 
=''  
userAccountViewModel''  4
.''4 5
UserName''5 =
,''= >

FIrst_name(( 
=((   
userAccountViewModel((! 5
.((5 6
	FirstName((6 ?
,((? @
	Last_name)) 
=))  
userAccountViewModel))  4
.))4 5
LastName))5 =
,))= >
User_group_id** !
=**" #
$num**$ %
,**% &
	Is_Female++ 
=++  
userAccountViewModel++  4
.++4 5
IsFemale++5 =
,++= >
Password,, 
=,,  
userAccountViewModel,, 3
.,,3 4
Password,,4 <
,,,< =
Email-- 
=--  
userAccountViewModel-- 0
.--0 1
Email--1 6
}.. 
;.. 
try00 
{11 
var33 
userCtrResponse33 '
=33( )
await33* /
client330 6
.336 7
PostAsJsonAsync337 F
(33F G
$str33G Q
,33Q R
user33S W
)33W X
;33X Y
if55 
(55 
userCtrResponse55 '
.55' (

StatusCode55( 2
==553 5
HttpStatusCode556 D
.55D E
Created55E L
)55L M
{66 
var77 
newUser77 #
=77$ %
await77& +
userCtrResponse77, ;
.77; <
Content77< C
.77C D
ReadAsAsync77D O
<77O P
User77P T
>77T U
(77U V
)77V W
;77W X
Member;; 
member;; %
=;;& '
new;;( +
Member;;, 2
{;;3 4
Address;;5 <
=;;= > 
userAccountViewModel;;? S
.;;S T
HomeAddress;;T _
,;;_ `
City;;a e
=;;f g 
userAccountViewModel;;h |
.;;| }
City	;;} Å
,
;;Å Ç
	Post_code
;;É å
=
;;ç é"
userAccountViewModel
;;è £
.
;;£ §
PostCode
;;§ ¨
,
;;¨ ≠
Loan_rule_id
;;Æ ∫
=
;;ª º
$num
;;Ω æ
}
;;ø ¿
;
;;¿ ¡
var<< 
memberCtrResponse<< -
=<<. /
await<<0 5
client<<6 <
.<<< =
PostAsJsonAsync<<= L
(<<L M
$str<<M Y
,<<Y Z
member<<[ a
)<<a b
.<<b c
ContinueWith<<c o
(<<o p
postTask<<p x
=><<y {
postTask	<<| Ñ
.
<<Ñ Ö
Result
<<Ö ã
.
<<ã å%
EnsureSuccessStatusCode
<<å £
(
<<£ §
)
<<§ •
)
<<• ¶
;
<<¶ ß
var== 
	newMember== %
===& '
await==( -
memberCtrResponse==. ?
.==? @
Content==@ G
.==G H
ReadAsAsync==H S
<==S T
Member==T Z
>==Z [
(==[ \
)==\ ]
;==] ^
NormalMember@@ $
normalMember@@% 1
=@@2 3
new@@4 7
NormalMember@@8 D
{@@E F
Ssn@@G J
=@@K L 
userAccountViewModel@@M a
.@@a b
Ssn@@b e
,@@e f
User_id@@g n
=@@o p
newUser@@q x
.@@x y
User_id	@@y Ä
,
@@Ä Å
Member_type
@@Ç ç
=
@@é è
(
@@ê ë
int
@@ë î
)
@@î ï
MemberTypeEnum
@@ï £
.
@@£ §
Normal
@@§ ™
,
@@™ ´
	Member_id
@@¨ µ
=
@@∂ ∑
	newMember
@@∏ ¡
.
@@¡ ¬
	Member_id
@@¬ À
}
@@Ã Õ
;
@@Õ Œ
awaitBB 
clientBB $
.BB$ %
PostAsJsonAsyncBB% 4
(BB4 5
$strBB5 G
,BBG H
normalMemberBBI U
)BBU V
.BBV W
ContinueWithBBW c
(BBc d
postTaskBBd l
=>BBm o
postTaskBBp x
.BBx y
ResultBBy 
.	BB Ä%
EnsureSuccessStatusCode
BBÄ ó
(
BBó ò
)
BBò ô
)
BBô ö
;
BBö õ

ModelStateDD "
.DD" #
ClearDD# (
(DD( )
)DD) *
;DD* +
ViewBagFF 
.FF  
MessageFF  '
=FF( ) 
userAccountViewModelFF* >
.FF> ?
UserNameFF? G
+FFH I
$strFFJ h
;FFh i
}GG 
elseHH 
{II 
ViewBagJJ 
.JJ  
MessageJJ  '
=JJ( )
$strJJ* 3
+JJ4 5
awaitJJ6 ;
userCtrResponseJJ< K
.JJK L
ContentJJL S
.JJS T
ReadAsStringAsyncJJT e
(JJe f
)JJf g
;JJg h
}KK 
}MM 
catchNN 
(NN  
HttpRequestExceptionNN +
eNN, -
)NN- .
{OO 
ViewBagPP 
.PP 
MessagePP #
=PP$ %
ePP& '
.PP' (
MessagePP( /
;PP/ 0
}QQ 
}SS 
returnUU 
ViewUU 
(UU 
)UU 
;UU 
}VV 	
}WW 
}XX í
AC:\Code\Prototype\BookApp\BookClient\Enum\EmployeePositionEnum.cs
	namespace 	

BookClient
 
. 
Enum 
{ 
public 

class  
EmployeePositionEnum %
{ 
} 
} ä
;C:\Code\Prototype\BookApp\BookClient\Enum\MailChoiceEnum.cs
	namespace 	

BookClient
 
. 
Enum 
{ 
public 

enum 
MailChoiceEnum 
{ 
HomeAddress 
= 
$num 
, 
CampusAddress 
= 
$num 
} 
} Å
;C:\Code\Prototype\BookApp\BookClient\Enum\MemberTypeEnum.cs
	namespace 	

BookClient
 
. 
Enum 
{ 
public 

enum 
MemberTypeEnum 
{ 
Normal 
= 
$num 
, 
	Professor 
= 
$num 
} 
} î
;C:\Code\Prototype\BookApp\BookClient\Enum\PermissionEnum.cs
	namespace 	

BookClient
 
. 
Enum 
{ 
public 

enum 
PermissionEnum 
{ 

UpdateBook 
, 

UpdateUser 
, 
UpdateMember 
, 

UpdateLoan 
}		 
}

 »
>C:\Code\Prototype\BookApp\BookClient\Factory\ServiceFactory.cs
	namespace 	

BookClient
 
. 
Factory 
{ 
public 

class 
ServiceFactory 
:  
IServiceFactory! 0
{ 
public		 
static		 
readonly		 
string		 %$
BookRestApiSoupUiTestUrl		& >
=		? @
$str		A Y
;		Y Z
public 
static 
readonly 
string %#
BookRestApiLocalTestUrl& =
=> ?
$str@ Y
;Y Z
public 
string 
GetServiceUri #
(# $
)$ %
{ 	
string 
config 
=  
ConfigurationManager 0
.0 1
AppSettings1 <
[< =
$str= P
]P Q
;Q R
string 
uri 
; 
switch 
( 
config 
) 
{ 
case 
$str %
:% &
throw 
new #
NotImplementedException 5
(5 6
$str6 V
)V W
;W X
case 
$str )
:) *
uri 
= 
$str 3
;3 4
break 
; 
case 
$str -
:- .
uri 
= 
$str 2
;2 3
break 
; 
default   
:   
throw!! 
new!! #
NotImplementedException!! 5
(!!5 6
config!!6 <
+!!= >
$str!!? Q
)!!Q R
;!!R S
}"" 
return$$ 
uri$$ 
;$$ 
}%% 	
}&& 
}'' Ù
3C:\Code\Prototype\BookApp\BookClient\Global.asax.cs
	namespace 	

BookClient
 
{		 
public

 

class

 
MvcApplication

 
:

  !
System

" (
.

( )
Web

) ,
.

, -
HttpApplication

- <
{ 
	protected 
void 
Application_Start (
(( )
)) *
{ 	
AreaRegistration 
. 
RegisterAllAreas -
(- .
). /
;/ 0
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
} 	
} 
} Ú
AC:\Code\Prototype\BookApp\BookClient\Interface\IServiceFactory.cs
	namespace 	

BookClient
 
. 
	Interface 
{ 
public 

	interface 
IServiceFactory $
{ 
string 
GetServiceUri 
( 
) 
; 
} 
} Í
?C:\Code\Prototype\BookApp\BookClient\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str %
)% &
]& '
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str '
)' (
]( )
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *Ó"
FC:\Code\Prototype\BookApp\BookClient\ViewModels\CreateBookViewModel.cs
	namespace 	

BookClient
 
. 

ViewModels 
{ 
public		 

class		 
CreateBookViewModel		 $
{

 
public 
int 
Item_id 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
	Item_type 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
Subject 
{ 
get !
;! "
set# &
;& '
}( )
public 
DateTime 
Create_time #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Isbn 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
Language 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
Binding 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Edition 
{ 
get  #
;# $
set% (
;( )
}* +
public 
decimal 
? 
Price 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

Price_unit  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	Publisher 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
? 
Publish_time %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
? 
Page 
{ 
get 
; 
set  #
;# $
}% &
public 
byte 
[ 
] 
Image 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
short 

Total_copy 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
? 
Location_id 
{  !
get" %
;% &
set' *
;* +
}, -
public 
short 
? 
Reserved_copy #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public   
short   
?   
Missing_copy   "
{  # $
get  % (
;  ( )
set  * -
;  - .
}  / 0
public!! 
short!! 
?!! 
Damaged_copy!! "
{!!# $
get!!% (
;!!( )
set!!* -
;!!- .
}!!/ 0
public"" 
short"" 
?"" 
Checkout_copy"" #
{""$ %
get""& )
;"") *
set""+ .
;"". /
}""0 1
public## 
bool## 
Can_loan_out##  
{##! "
get### &
;##& '
set##( +
;##+ ,
}##- .
public$$ 
string$$ 
Location_code$$ #
{$$$ %
get$$& )
;$$) *
set$$+ .
;$$. /
}$$0 1
public&& 
virtual&& 
ICollection&& "
<&&" #

SerialItem&&# -
>&&- .
SerialItems&&/ :
{&&; <
get&&= @
;&&@ A
set&&B E
;&&E F
}&&G H
}'' 
}(( ¨
FC:\Code\Prototype\BookApp\BookClient\ViewModels\SearchBookViewModel.cs
	namespace 	

BookClient
 
. 

ViewModels 
{ 
public 

class 
SearchBookViewModel $
{ 
public 
string 
SearchField !
{" #
get$ '
;' (
set) ,
;, -
}. /
public

 
string

 
Subject

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
List 
< 
Book 
> 
Books 
{  !
get" %
;% &
set' *
;* +
}, -
=. /
new0 3
List4 8
<8 9
Book9 =
>= >
(> ?
)? @
;@ A
} 
} ¸=
GC:\Code\Prototype\BookApp\BookClient\ViewModels\UserAccountViewModel.cs
	namespace 	

BookClient
 
. 

ViewModels 
{ 
public		 

class		  
UserAccountViewModel		 %
{

 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
[ 	
Display	 
( 
Name 
= 
$str #
)# $
]$ %
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 8
)8 9
]9 :
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Compare	 
( 
nameof 
( 
Password  
)  !
,! "
ErrorMessage# /
=0 1
$str2 Q
)Q R
]R S
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[ 	
Display	 
( 
Name 
= 
$str *
)* +
]+ ,
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
DateTime 

CreateTime "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
short 
UserGroupId  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	
Required	 
( 
ErrorMessage 
=  
$str! :
): ;
]; <
[ 	
Display	 
( 
Name 
= 
$str $
)$ %
]% &
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
[   	
Required  	 
(   
ErrorMessage   
=    
$str  ! 9
)  9 :
]  : ;
[!! 	
Display!!	 
(!! 
Name!! 
=!! 
$str!! #
)!!# $
]!!$ %
public"" 
string"" 
LastName"" 
{""  
get""! $
;""$ %
set""& )
;"") *
}""+ ,
[$$ 	
Required$$	 
($$ 
ErrorMessage$$ 
=$$  
$str$$! 3
)$$3 4
]$$4 5
[%% 	
Display%%	 
(%% 
Name%% 
=%% 
$str%% 
)%% 
]%% 
public&& 
string&& 
Ssn&& 
{&& 
get&& 
;&&  
set&&! $
;&&$ %
}&&& '
[(( 	
Display((	 
((( 
Name(( 
=(( 
$str(( 
)((  
]((  !
public)) 
bool)) 
IsFemale)) 
{)) 
get)) "
;))" #
set))$ '
;))' (
}))) *
[++ 	
Required++	 
(++ 
ErrorMessage++ 
=++  
$str++! <
)++< =
]++= >
[,, 	
Display,,	 
(,, 
Name,, 
=,, 
$str,, &
),,& '
],,' (
public-- 
string-- 
HomeAddress-- !
{--" #
get--$ '
;--' (
set--) ,
;--, -
}--. /
[// 	
Required//	 
(// 
ErrorMessage// 
=//  
$str//! 8
)//8 9
]//9 :
[00 	
RegularExpression00	 
(00 
$str00 #
,00# $
ErrorMessage00% 1
=002 3
$str004 W
)00W X
]00X Y
[11 	
Range11	 
(11 
$num11 
,11 
$num11 
)11 
]11 
[22 	
Display22	 
(22 
Name22 
=22 
$str22 "
)22" #
]22# $
public33 
int33 
?33 
PostCode33 
{33 
get33 "
;33" #
set33$ '
;33' (
}33) *
[55 	
Required55	 
(55 
ErrorMessage55 
=55  
$str55! 4
)554 5
]555 6
[66 	
Display66	 
(66 
Name66 
=66 
$str66 
)66 
]66  
public77 
string77 
City77 
{77 
get77  
;77  !
set77" %
;77% &
}77' (
[99 	
Display99	 
(99 
Name99 
=99 
$str99 (
)99( )
]99) *
public:: 
string:: 
CampusAddress:: #
{::$ %
get::& )
;::) *
set::+ .
;::. /
}::0 1
[<< 	
Display<<	 
(<< 
Name<< 
=<< 
$str<< )
)<<) *
]<<* +
[== 	
RequiredIfNotEmpty==	 
(== 
nameof== "
(==" #
CampusAddress==# 0
)==0 1
)==1 2
]==2 3
[>> 	
Range>>	 
(>> 
$num>> 
,>> 
$num>> 
)>> 
]>> 
[?? 	
RegularExpression??	 
(?? 
$str?? #
,??# $
ErrorMessage??% 1
=??2 3
$str??4 W
)??W X
]??X Y
public@@ 
int@@ 
?@@ 
CampusPostCode@@ "
{@@# $
get@@% (
;@@( )
set@@* -
;@@- .
}@@/ 0
[BB 	
DisplayBB	 
(BB 
NameBB 
=BB 
$strBB %
)BB% &
]BB& '
[CC 	
RequiredIfNotEmptyCC	 
(CC 
nameofCC "
(CC" #
CampusAddressCC# 0
)CC0 1
)CC1 2
]CC2 3
publicDD 
stringDD 

CampusCityDD  
{DD! "
getDD# &
;DD& '
setDD( +
;DD+ ,
}DD- .
[FF 	
DisplayFF	 
(FF 
NameFF 
=FF 
$strFF %
)FF% &
]FF& '
publicGG 
ListGG 
<GG 
MailChoiceEnumGG "
>GG" #
MailChoicesGG$ /
{GG0 1
getGG2 5
;GG5 6
setGG7 :
;GG: ;
}GG< =
publicII 
MailChoiceEnumII 
SelectedMailChoiceII 0
{II1 2
getII3 6
;II6 7
setII8 ;
;II; <
}II= >
=II? @
MailChoiceEnumIIA O
.IIO P
HomeAddressIIP [
;II[ \
[KK 	
RequiredIfNotEmptyKK	 
(KK 
nameofKK "
(KK" #
EmailKK# (
)KK( )
)KK) *
]KK* +
[LL 	
DataTypeLL	 
(LL 
DataTypeLL 
.LL 
EmailAddressLL '
)LL' (
]LL( )
publicMM 
stringMM 
EmailMM 
{MM 
getMM !
;MM! "
setMM# &
;MM& '
}MM( )
}NN 
}OO ˛
EC:\Code\Prototype\BookApp\BookClient\ViewModels\UserLoginViewModel.cs
	namespace 	

BookClient
 
. 

ViewModels 
{ 
public 

class 
UserLoginViewModel #
{ 
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 9
)9 :
]: ;
[ 	
Display	 
( 
Name 
= 
$str #
)# $
]$ %
public		 
string		 
	User_name		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
[ 	
Required	 
( 
ErrorMessage 
=  
$str! 8
)8 9
]9 :
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} 