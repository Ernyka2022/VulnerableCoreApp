©
eC:\Users\Administrator\Downloads\VulnerableCoreApp-master\Controllers\CrossSiteScriptingController.cs
	namespace 	
VulnerableCoreApp
 
. 
Controllers '
{ 
public		 

class		 (
CrossSiteScriptingController		 -
:		. /

Controller		0 :
{

 
private 
ICommentsRepository #
commentsRepository$ 6
;6 7
public (
CrossSiteScriptingController +
(+ ,
ICommentsRepository, ?
commentsRepository@ R
)R S
{ 	
this 
. 
commentsRepository #
=$ %
commentsRepository& 8
;8 9
} 	
[ 	
HttpGet	 
] 
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
HttpGet	 
] 
public 
IActionResult 
	DemoTypeI &
(& '
)' (
{ 	
CommentsViewModel 
comments &
=' (
commentsRepository) ;
.; <
GetAll< B
(B C
)C D
;D E
return 
View 
( 
comments  
)  !
;! "
} 	
[ 	
HttpPost	 
] 
public   
IActionResult   
	DemoTypeI   &
(  & '
CommentViewModel  ' 7
comment  8 ?
)  ? @
{!! 	
Comment"" 

newComment"" 
=""  
new""! $
Comment""% ,
("", -
)""- .
;"". /

newComment## 
.## 
ID## 
=## 
Guid##  
.##  !
NewGuid##! (
(##( )
)##) *
.##* +
ToString##+ 3
(##3 4
)##4 5
;##5 6

newComment$$ 
.$$ 
Username$$ 
=$$  !
$str$$" -
;$$- .

newComment%% 
.%% 
	CreatedAt%%  
=%%! "
DateTime%%# +
.%%+ ,
Now%%, /
;%%/ 0

newComment&& 
.&& 
Text&& 
=&& 
comment&& %
.&&% &
Text&&& *
;&&* +
commentsRepository'' 
.'' 
Save'' #
(''# $

newComment''$ .
)''. /
;''/ 0
return)) 
RedirectToAction)) #
())# $
$str))$ /
)))/ 0
;))0 1
}** 	
[,, 	
HttpPost,,	 
],, 
public-- 
IActionResult-- 
DemoTypeIDelete-- ,
(--, -
String--- 3
ID--4 6
)--6 7
{.. 	
commentsRepository// 
.// 
Delete// %
(//% &
ID//& (
)//( )
;//) *
return11 
RedirectToAction11 #
(11# $
$str11$ /
)11/ 0
;110 1
}22 	
[44 	
HttpGet44	 
]44 
public55 
IActionResult55 

DemoTypeII55 '
(55' (
string55( .
query55/ 4
)554 5
{66 	
ViewData77 
[77 
$str77 
]77 
=77 
query77  %
;77% &
HttpContext:: 
.:: 
Response::  
.::  !
Headers::! (
.::( )
Add::) ,
(::, -
$str::- ?
,::? @
$str::@ C
)::C D
;::D E
return;; 
View;; 
(;; 
);; 
;;; 
}<< 	
}== 
}>> §
WC:\Users\Administrator\Downloads\VulnerableCoreApp-master\Controllers\HomeController.cs
	namespace		 	
VulnerableCoreApp		
 
.		 
Controllers		 '
{

 
public 

class 
HomeController 
:  !

Controller" ,
{ 
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Error "
(" #
)# $
{ 	
return 
View 
( 
new 
ErrorViewModel *
{+ ,
	RequestId- 6
=7 8
Activity9 A
.A B
CurrentB I
?I J
.J K
IdK M
??N P
HttpContextQ \
.\ ]
TraceIdentifier] l
}m n
)n o
;o p
} 	
} 
} 
KC:\Users\Administrator\Downloads\VulnerableCoreApp-master\Models\Comment.cs
	namespace 	
VulnerableCoreApp
 
. 
Models "
{ 
public 

class 
Comment 
{ 
public 
String 
ID 
{ 
get 
; 
set  #
;# $
}% &
public 
String 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
DateTime		 
	CreatedAt		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
String

 
Text

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
} 
} ¥
RC:\Users\Administrator\Downloads\VulnerableCoreApp-master\Models\ErrorViewModel.cs
	namespace 	
VulnerableCoreApp
 
. 
Models "
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
bool		 
ShowRequestId		 !
=>		" $
!		% &
string		& ,
.		, -
IsNullOrEmpty		- :
(		: ;
	RequestId		; D
)		D E
;		E F
}

 
} Ø
DC:\Users\Administrator\Downloads\VulnerableCoreApp-master\Program.cs
	namespace 	
VulnerableCoreApp
 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
BuildWebHost 
( 
args 
) 
. 
Run "
(" #
)# $
;$ %
} 	
public 
static 
IWebHost 
BuildWebHost +
(+ ,
string, 2
[2 3
]3 4
args5 9
)9 :
=>; =
WebHost 
.  
CreateDefaultBuilder (
(( )
args) -
)- .
. 

UseStartup 
< 
Startup #
># $
($ %
)% &
. 
Build 
( 
) 
; 
} 
} Ø
ZC:\Users\Administrator\Downloads\VulnerableCoreApp-master\Repository\CommentsRepository.cs
	namespace 	
VulnerableCoreApp
 
. 

Repository &
{ 
public		 

class		 
CommentsRepository		 #
:		$ %
ICommentsRepository		& 9
{

 
private 
List 
< 
Comment 
> 
Comments &
;& '
public 
CommentsRepository !
(! "
)" #
{ 	
Comments 
= 
new 
List 
<  
Comment  '
>' (
(( )
)) *
;* +
} 	
public 
CommentsViewModel  
GetAll! '
(' (
)( )
{ 	
CommentsViewModel 
comments &
=' (
new) ,
CommentsViewModel- >
(> ?
)? @
;@ A
comments 
. 
Comments 
= 
new  #
List% )
<) *
CommentViewModel* :
>: ;
(; <
)< =
;= >
foreach 
( 
Comment 
comment $
in% '
Comments( 0
)0 1
{ 
CommentViewModel  
commentViewModel! 1
=2 3
new4 7
CommentViewModel8 H
(H I
)I J
;J K
commentViewModel  
.  !
ID! #
=$ %
comment& -
.- .
ID. 0
;0 1
commentViewModel  
.  !
Username! )
=* +
comment, 3
.3 4
Username4 <
;< =
commentViewModel  
.  !
	CreatedAt! *
=+ ,
comment- 4
.4 5
	CreatedAt5 >
;> ?
commentViewModel  
.  !
Text! %
=& '
comment( /
./ 0
Text0 4
;4 5
comments 
. 
Comments !
.! "
Add" %
(% &
commentViewModel& 6
)6 7
;7 8
} 
return   
comments   
;   
}!! 	
public## 
Comment## 
Save## 
(## 
Comment## #
comment##$ +
)##+ ,
{$$ 	
Comments%% 
.%% 
Add%% 
(%% 
comment%%  
)%%  !
;%%! "
return'' 
comment'' 
;'' 
}(( 	
public** 
void** 
Delete** 
(** 
String** !
ID**" $
)**$ %
{++ 	
Comments,, 
.,, 
Remove,, 
(,, 
Comments,, $
.,,$ %
Where,,% *
(,,* +
comment,,+ 2
=>,,3 5
comment,,6 =
.,,= >
ID,,> @
==,,A C
ID,,D F
),,F G
.,,G H
First,,H M
(,,M N
),,N O
),,O P
;,,P Q
}-- 	
}.. 
}// ‘
[C:\Users\Administrator\Downloads\VulnerableCoreApp-master\Repository\ICommentsRepository.cs
	namespace 	
VulnerableCoreApp
 
. 

Repository &
{ 
public 

	interface 
ICommentsRepository (
{		 
CommentsViewModel

 
GetAll

  
(

  !
)

! "
;

" #
Comment 
Save 
( 
Comment 
comment $
)$ %
;% &
void 
Delete 
( 
String 
ID 
) 
; 
} 
} þ
DC:\Users\Administrator\Downloads\VulnerableCoreApp-master\Startup.cs
	namespace 	
VulnerableCoreApp
 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
AddMvc 
( 
) 
; 
services 
. 
AddSingleton !
<! "
ICommentsRepository" 5
,5 6
CommentsRepository7 I
>I J
(J K
)K L
;L M
} 	
public 
void 
	Configure 
( 
IApplicationBuilder 1
app2 5
,5 6
IHostingEnvironment7 J
envK N
)N O
{ 	
if   
(   
env   
.   
IsDevelopment   !
(  ! "
)  " #
)  # $
{!! 
app"" 
."" %
UseDeveloperExceptionPage"" -
(""- .
)"". /
;""/ 0
}## 
else$$ 
{%% 
app&& 
.&& 
UseExceptionHandler&& '
(&&' (
$str&&( 5
)&&5 6
;&&6 7
}'' 
app)) 
.)) 
UseStaticFiles)) 
()) 
)))  
;))  !
app++ 
.++ 
UseMvc++ 
(++ 
routes++ 
=>++  
{,, 
routes-- 
.-- 
MapRoute-- 
(--  
name.. 
:.. 
$str.. #
,..# $
template// 
:// 
$str// F
)//F G
;//G H
}00 
)00 
;00 
}11 	
}22 
}33 Š
YC:\Users\Administrator\Downloads\VulnerableCoreApp-master\ViewModels\CommentsViewModel.cs
	namespace 	
VulnerableCoreApp
 
. 

ViewModels &
{ 
public 

class 
CommentsViewModel "
{ 
public 
List 
< 
CommentViewModel $
>$ %
Comments& .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
}		 
}

 ›
XC:\Users\Administrator\Downloads\VulnerableCoreApp-master\ViewModels\CommentViewModel.cs
	namespace 	
VulnerableCoreApp
 
. 

ViewModels &
{ 
public 

class 
CommentViewModel !
{ 
public 
String 
ID 
{ 
get 
; 
set  #
;# $
}% &
public 
String 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
DateTime		 
	CreatedAt		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
String

 
Text

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
} 
} 