ñ 
Ú
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	

ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718û

conv2d_90/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_90/kernel
}
$conv2d_90/kernel/Read/ReadVariableOpReadVariableOpconv2d_90/kernel*&
_output_shapes
: *
dtype0
t
conv2d_90/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_90/bias
m
"conv2d_90/bias/Read/ReadVariableOpReadVariableOpconv2d_90/bias*
_output_shapes
: *
dtype0

conv2d_91/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_91/kernel
}
$conv2d_91/kernel/Read/ReadVariableOpReadVariableOpconv2d_91/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_91/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_91/bias
m
"conv2d_91/bias/Read/ReadVariableOpReadVariableOpconv2d_91/bias*
_output_shapes
:@*
dtype0

conv2d_92/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_92/kernel
}
$conv2d_92/kernel/Read/ReadVariableOpReadVariableOpconv2d_92/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_92/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_92/bias
m
"conv2d_92/bias/Read/ReadVariableOpReadVariableOpconv2d_92/bias*
_output_shapes
:@*
dtype0

conv2d_93/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_93/kernel
}
$conv2d_93/kernel/Read/ReadVariableOpReadVariableOpconv2d_93/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_93/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_93/bias
m
"conv2d_93/bias/Read/ReadVariableOpReadVariableOpconv2d_93/bias*
_output_shapes
:@*
dtype0

conv2d_94/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_94/kernel
}
$conv2d_94/kernel/Read/ReadVariableOpReadVariableOpconv2d_94/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_94/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_94/bias
m
"conv2d_94/bias/Read/ReadVariableOpReadVariableOpconv2d_94/bias*
_output_shapes
:@*
dtype0

conv2d_95/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_95/kernel
}
$conv2d_95/kernel/Read/ReadVariableOpReadVariableOpconv2d_95/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_95/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_95/bias
m
"conv2d_95/bias/Read/ReadVariableOpReadVariableOpconv2d_95/bias*
_output_shapes
:@*
dtype0
{
dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@* 
shared_namedense_30/kernel
t
#dense_30/kernel/Read/ReadVariableOpReadVariableOpdense_30/kernel*
_output_shapes
:	@*
dtype0
r
dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_30/bias
k
!dense_30/bias/Read/ReadVariableOpReadVariableOpdense_30/bias*
_output_shapes
:@*
dtype0
z
dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
* 
shared_namedense_31/kernel
s
#dense_31/kernel/Read/ReadVariableOpReadVariableOpdense_31/kernel*
_output_shapes

:@
*
dtype0
r
dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_31/bias
k
!dense_31/bias/Read/ReadVariableOpReadVariableOpdense_31/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0	
l

Variable_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
Variable_1
e
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:*
dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/conv2d_90/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_90/kernel/m

+Adam/conv2d_90/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_90/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_90/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_90/bias/m
{
)Adam/conv2d_90/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_90/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_91/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_91/kernel/m

+Adam/conv2d_91/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv2d_91/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_91/bias/m
{
)Adam/conv2d_91/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_92/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_92/kernel/m

+Adam/conv2d_92/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_92/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_92/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_92/bias/m
{
)Adam/conv2d_92/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_92/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_93/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_93/kernel/m

+Adam/conv2d_93/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_93/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_93/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_93/bias/m
{
)Adam/conv2d_93/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_93/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_94/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_94/kernel/m

+Adam/conv2d_94/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_94/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_94/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_94/bias/m
{
)Adam/conv2d_94/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_94/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_95/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_95/kernel/m

+Adam/conv2d_95/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_95/kernel/m*&
_output_shapes
:@@*
dtype0

Adam/conv2d_95/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_95/bias/m
{
)Adam/conv2d_95/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_95/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_30/kernel/m

*Adam/dense_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/m*
_output_shapes
:	@*
dtype0

Adam/dense_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_30/bias/m
y
(Adam/dense_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*'
shared_nameAdam/dense_31/kernel/m

*Adam/dense_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_31/kernel/m*
_output_shapes

:@
*
dtype0

Adam/dense_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_31/bias/m
y
(Adam/dense_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_31/bias/m*
_output_shapes
:
*
dtype0

Adam/conv2d_90/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_90/kernel/v

+Adam/conv2d_90/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_90/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_90/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_90/bias/v
{
)Adam/conv2d_90/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_90/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_91/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_91/kernel/v

+Adam/conv2d_91/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv2d_91/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_91/bias/v
{
)Adam/conv2d_91/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_91/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_92/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_92/kernel/v

+Adam/conv2d_92/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_92/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_92/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_92/bias/v
{
)Adam/conv2d_92/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_92/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_93/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_93/kernel/v

+Adam/conv2d_93/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_93/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_93/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_93/bias/v
{
)Adam/conv2d_93/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_93/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_94/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_94/kernel/v

+Adam/conv2d_94/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_94/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_94/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_94/bias/v
{
)Adam/conv2d_94/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_94/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_95/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_95/kernel/v

+Adam/conv2d_95/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_95/kernel/v*&
_output_shapes
:@@*
dtype0

Adam/conv2d_95/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_95/bias/v
{
)Adam/conv2d_95/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_95/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*'
shared_nameAdam/dense_30/kernel/v

*Adam/dense_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/v*
_output_shapes
:	@*
dtype0

Adam/dense_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_30/bias/v
y
(Adam/dense_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@
*'
shared_nameAdam/dense_31/kernel/v

*Adam/dense_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_31/kernel/v*
_output_shapes

:@
*
dtype0

Adam/dense_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_31/bias/v
y
(Adam/dense_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_31/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
¾j
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ùi
valueïiBìi Båi
¥
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
l
layer-0
layer-1
regularization_losses
trainable_variables
	variables
	keras_api
l
layer-0
layer-1
 regularization_losses
!trainable_variables
"	variables
#	keras_api
h

$kernel
%bias
&regularization_losses
'trainable_variables
(	variables
)	keras_api
R
*regularization_losses
+trainable_variables
,	variables
-	keras_api
h

.kernel
/bias
0regularization_losses
1trainable_variables
2	variables
3	keras_api
R
4regularization_losses
5trainable_variables
6	variables
7	keras_api
h

8kernel
9bias
:regularization_losses
;trainable_variables
<	variables
=	keras_api
R
>regularization_losses
?trainable_variables
@	variables
A	keras_api
h

Bkernel
Cbias
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
R
Hregularization_losses
Itrainable_variables
J	variables
K	keras_api
h

Lkernel
Mbias
Nregularization_losses
Otrainable_variables
P	variables
Q	keras_api
R
Rregularization_losses
Strainable_variables
T	variables
U	keras_api
h

Vkernel
Wbias
Xregularization_losses
Ytrainable_variables
Z	variables
[	keras_api
R
\regularization_losses
]trainable_variables
^	variables
_	keras_api
R
`regularization_losses
atrainable_variables
b	variables
c	keras_api
h

dkernel
ebias
fregularization_losses
gtrainable_variables
h	variables
i	keras_api
h

jkernel
kbias
lregularization_losses
mtrainable_variables
n	variables
o	keras_api

piter

qbeta_1

rbeta_2
	sdecay
tlearning_rate$mâ%mã.mä/må8mæ9mçBmèCméLmêMmëVmìWmídmîemïjmðkmñ$vò%vó.vô/võ8vö9v÷BvøCvùLvúMvûVvüWvýdvþevÿjvkv
 
v
$0
%1
.2
/3
84
95
B6
C7
L8
M9
V10
W11
d12
e13
j14
k15
v
$0
%1
.2
/3
84
95
B6
C7
L8
M9
V10
W11
d12
e13
j14
k15
­
umetrics
regularization_losses
vlayer_metrics
trainable_variables
wlayer_regularization_losses
	variables

xlayers
ynon_trainable_variables
 

z	keras_api

{	keras_api
 
 
 
®
|metrics
regularization_losses
}layer_metrics
trainable_variables
~layer_regularization_losses
	variables

layers
non_trainable_variables

	_rng
	keras_api

	_rng
	keras_api
 
 
 
²
metrics
 regularization_losses
layer_metrics
!trainable_variables
 layer_regularization_losses
"	variables
layers
non_trainable_variables
\Z
VARIABLE_VALUEconv2d_90/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_90/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

$0
%1

$0
%1
²
metrics
&regularization_losses
non_trainable_variables
'trainable_variables
 layer_regularization_losses
(	variables
layers
layer_metrics
 
 
 
²
metrics
*regularization_losses
non_trainable_variables
+trainable_variables
 layer_regularization_losses
,	variables
layers
layer_metrics
\Z
VARIABLE_VALUEconv2d_91/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_91/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

.0
/1

.0
/1
²
metrics
0regularization_losses
non_trainable_variables
1trainable_variables
 layer_regularization_losses
2	variables
layers
layer_metrics
 
 
 
²
metrics
4regularization_losses
non_trainable_variables
5trainable_variables
 layer_regularization_losses
6	variables
layers
layer_metrics
\Z
VARIABLE_VALUEconv2d_92/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_92/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

80
91

80
91
²
metrics
:regularization_losses
non_trainable_variables
;trainable_variables
  layer_regularization_losses
<	variables
¡layers
¢layer_metrics
 
 
 
²
£metrics
>regularization_losses
¤non_trainable_variables
?trainable_variables
 ¥layer_regularization_losses
@	variables
¦layers
§layer_metrics
\Z
VARIABLE_VALUEconv2d_93/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_93/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

B0
C1

B0
C1
²
¨metrics
Dregularization_losses
©non_trainable_variables
Etrainable_variables
 ªlayer_regularization_losses
F	variables
«layers
¬layer_metrics
 
 
 
²
­metrics
Hregularization_losses
®non_trainable_variables
Itrainable_variables
 ¯layer_regularization_losses
J	variables
°layers
±layer_metrics
\Z
VARIABLE_VALUEconv2d_94/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_94/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

L0
M1

L0
M1
²
²metrics
Nregularization_losses
³non_trainable_variables
Otrainable_variables
 ´layer_regularization_losses
P	variables
µlayers
¶layer_metrics
 
 
 
²
·metrics
Rregularization_losses
¸non_trainable_variables
Strainable_variables
 ¹layer_regularization_losses
T	variables
ºlayers
»layer_metrics
\Z
VARIABLE_VALUEconv2d_95/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_95/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

V0
W1

V0
W1
²
¼metrics
Xregularization_losses
½non_trainable_variables
Ytrainable_variables
 ¾layer_regularization_losses
Z	variables
¿layers
Àlayer_metrics
 
 
 
²
Ámetrics
\regularization_losses
Ânon_trainable_variables
]trainable_variables
 Ãlayer_regularization_losses
^	variables
Älayers
Ålayer_metrics
 
 
 
²
Æmetrics
`regularization_losses
Çnon_trainable_variables
atrainable_variables
 Èlayer_regularization_losses
b	variables
Élayers
Êlayer_metrics
[Y
VARIABLE_VALUEdense_30/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_30/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

d0
e1

d0
e1
²
Ëmetrics
fregularization_losses
Ìnon_trainable_variables
gtrainable_variables
 Ílayer_regularization_losses
h	variables
Îlayers
Ïlayer_metrics
[Y
VARIABLE_VALUEdense_31/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_31/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

j0
k1

j0
k1
²
Ðmetrics
lregularization_losses
Ñnon_trainable_variables
mtrainable_variables
 Òlayer_regularization_losses
n	variables
Ólayers
Ôlayer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

Õ0
Ö1
 
 
~
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
 
 
 
 
 
 

0
1
 

×
_state_var
 

Ø
_state_var
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Ùtotal

Úcount
Û	variables
Ü	keras_api
I

Ýtotal

Þcount
ß
_fn_kwargs
à	variables
á	keras_api
XV
VARIABLE_VALUEVariable:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUE
Variable_1:layer-1/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Ù0
Ú1

Û	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ý0
Þ1

à	variables
}
VARIABLE_VALUEAdam/conv2d_90/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_90/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_91/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_91/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_92/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_92/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_93/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_93/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_94/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_94/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_95/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_95/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_30/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_31/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_31/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_90/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_90/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_91/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_91/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_92/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_92/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_93/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_93/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_94/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_94/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_95/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_95/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_30/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_31/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_31/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

#serving_default_sequential_22_inputPlaceholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿ
é
StatefulPartitionedCallStatefulPartitionedCall#serving_default_sequential_22_inputconv2d_90/kernelconv2d_90/biasconv2d_91/kernelconv2d_91/biasconv2d_92/kernelconv2d_92/biasconv2d_93/kernelconv2d_93/biasconv2d_94/kernelconv2d_94/biasconv2d_95/kernelconv2d_95/biasdense_30/kerneldense_30/biasdense_31/kerneldense_31/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_27472
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ð
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_90/kernel/Read/ReadVariableOp"conv2d_90/bias/Read/ReadVariableOp$conv2d_91/kernel/Read/ReadVariableOp"conv2d_91/bias/Read/ReadVariableOp$conv2d_92/kernel/Read/ReadVariableOp"conv2d_92/bias/Read/ReadVariableOp$conv2d_93/kernel/Read/ReadVariableOp"conv2d_93/bias/Read/ReadVariableOp$conv2d_94/kernel/Read/ReadVariableOp"conv2d_94/bias/Read/ReadVariableOp$conv2d_95/kernel/Read/ReadVariableOp"conv2d_95/bias/Read/ReadVariableOp#dense_30/kernel/Read/ReadVariableOp!dense_30/bias/Read/ReadVariableOp#dense_31/kernel/Read/ReadVariableOp!dense_31/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_90/kernel/m/Read/ReadVariableOp)Adam/conv2d_90/bias/m/Read/ReadVariableOp+Adam/conv2d_91/kernel/m/Read/ReadVariableOp)Adam/conv2d_91/bias/m/Read/ReadVariableOp+Adam/conv2d_92/kernel/m/Read/ReadVariableOp)Adam/conv2d_92/bias/m/Read/ReadVariableOp+Adam/conv2d_93/kernel/m/Read/ReadVariableOp)Adam/conv2d_93/bias/m/Read/ReadVariableOp+Adam/conv2d_94/kernel/m/Read/ReadVariableOp)Adam/conv2d_94/bias/m/Read/ReadVariableOp+Adam/conv2d_95/kernel/m/Read/ReadVariableOp)Adam/conv2d_95/bias/m/Read/ReadVariableOp*Adam/dense_30/kernel/m/Read/ReadVariableOp(Adam/dense_30/bias/m/Read/ReadVariableOp*Adam/dense_31/kernel/m/Read/ReadVariableOp(Adam/dense_31/bias/m/Read/ReadVariableOp+Adam/conv2d_90/kernel/v/Read/ReadVariableOp)Adam/conv2d_90/bias/v/Read/ReadVariableOp+Adam/conv2d_91/kernel/v/Read/ReadVariableOp)Adam/conv2d_91/bias/v/Read/ReadVariableOp+Adam/conv2d_92/kernel/v/Read/ReadVariableOp)Adam/conv2d_92/bias/v/Read/ReadVariableOp+Adam/conv2d_93/kernel/v/Read/ReadVariableOp)Adam/conv2d_93/bias/v/Read/ReadVariableOp+Adam/conv2d_94/kernel/v/Read/ReadVariableOp)Adam/conv2d_94/bias/v/Read/ReadVariableOp+Adam/conv2d_95/kernel/v/Read/ReadVariableOp)Adam/conv2d_95/bias/v/Read/ReadVariableOp*Adam/dense_30/kernel/v/Read/ReadVariableOp(Adam/dense_30/bias/v/Read/ReadVariableOp*Adam/dense_31/kernel/v/Read/ReadVariableOp(Adam/dense_31/bias/v/Read/ReadVariableOpConst*H
TinA
?2=			*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_29065
Ï
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_90/kernelconv2d_90/biasconv2d_91/kernelconv2d_91/biasconv2d_92/kernelconv2d_92/biasconv2d_93/kernelconv2d_93/biasconv2d_94/kernelconv2d_94/biasconv2d_95/kernelconv2d_95/biasdense_30/kerneldense_30/biasdense_31/kerneldense_31/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateVariable
Variable_1totalcounttotal_1count_1Adam/conv2d_90/kernel/mAdam/conv2d_90/bias/mAdam/conv2d_91/kernel/mAdam/conv2d_91/bias/mAdam/conv2d_92/kernel/mAdam/conv2d_92/bias/mAdam/conv2d_93/kernel/mAdam/conv2d_93/bias/mAdam/conv2d_94/kernel/mAdam/conv2d_94/bias/mAdam/conv2d_95/kernel/mAdam/conv2d_95/bias/mAdam/dense_30/kernel/mAdam/dense_30/bias/mAdam/dense_31/kernel/mAdam/dense_31/bias/mAdam/conv2d_90/kernel/vAdam/conv2d_90/bias/vAdam/conv2d_91/kernel/vAdam/conv2d_91/bias/vAdam/conv2d_92/kernel/vAdam/conv2d_92/bias/vAdam/conv2d_93/kernel/vAdam/conv2d_93/bias/vAdam/conv2d_94/kernel/vAdam/conv2d_94/bias/vAdam/conv2d_95/kernel/vAdam/conv2d_95/bias/vAdam/dense_30/kernel/vAdam/dense_30/bias/vAdam/dense_31/kernel/vAdam/dense_31/bias/v*G
Tin@
>2<*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_29252«þ
Ã

)__inference_conv2d_94_layer_call_fn_28784

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_94_layer_call_and_return_conditional_losses_269602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ì
I
-__inference_sequential_22_layer_call_fn_28307

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_22_layer_call_and_return_conditional_losses_263942
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì
I
-__inference_sequential_23_layer_call_fn_28670

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_23_layer_call_and_return_conditional_losses_264302
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
g
K__inference_max_pooling2d_94_layer_call_and_return_conditional_losses_26850

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ®
ò
H__inference_sequential_23_layer_call_and_return_conditional_losses_28660
random_flip_4_inputH
:random_rotation_4_stateful_uniform_rngreadandskip_resource:	
identity¢1random_rotation_4/stateful_uniform/RngReadAndSkip÷
7random_flip_4/random_flip_left_right/control_dependencyIdentityrandom_flip_4_input*
T0*&
_class
loc:@random_flip_4_input*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7random_flip_4/random_flip_left_right/control_dependencyÈ
*random_flip_4/random_flip_left_right/ShapeShape@random_flip_4/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_4/random_flip_left_right/Shape¾
8random_flip_4/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_4/random_flip_left_right/strided_slice/stackÂ
:random_flip_4/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_4/random_flip_left_right/strided_slice/stack_1Â
:random_flip_4/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_4/random_flip_left_right/strided_slice/stack_2À
2random_flip_4/random_flip_left_right/strided_sliceStridedSlice3random_flip_4/random_flip_left_right/Shape:output:0Arandom_flip_4/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_4/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_4/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_4/random_flip_left_right/strided_sliceé
9random_flip_4/random_flip_left_right/random_uniform/shapePack;random_flip_4/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_4/random_flip_left_right/random_uniform/shape·
7random_flip_4/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_4/random_flip_left_right/random_uniform/min·
7random_flip_4/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7random_flip_4/random_flip_left_right/random_uniform/max
Arandom_flip_4/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_4/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02C
Arandom_flip_4/random_flip_left_right/random_uniform/RandomUniformµ
7random_flip_4/random_flip_left_right/random_uniform/MulMulJrandom_flip_4/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_4/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7random_flip_4/random_flip_left_right/random_uniform/Mul®
4random_flip_4/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_4/random_flip_left_right/Reshape/shape/1®
4random_flip_4/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_4/random_flip_left_right/Reshape/shape/2®
4random_flip_4/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_4/random_flip_left_right/Reshape/shape/3
2random_flip_4/random_flip_left_right/Reshape/shapePack;random_flip_4/random_flip_left_right/strided_slice:output:0=random_flip_4/random_flip_left_right/Reshape/shape/1:output:0=random_flip_4/random_flip_left_right/Reshape/shape/2:output:0=random_flip_4/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_4/random_flip_left_right/Reshape/shape
,random_flip_4/random_flip_left_right/ReshapeReshape;random_flip_4/random_flip_left_right/random_uniform/Mul:z:0;random_flip_4/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,random_flip_4/random_flip_left_right/ReshapeÒ
*random_flip_4/random_flip_left_right/RoundRound5random_flip_4/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*random_flip_4/random_flip_left_right/Round´
3random_flip_4/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_4/random_flip_left_right/ReverseV2/axis©
.random_flip_4/random_flip_left_right/ReverseV2	ReverseV2@random_flip_4/random_flip_left_right/control_dependency:output:0<random_flip_4/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.random_flip_4/random_flip_left_right/ReverseV2
(random_flip_4/random_flip_left_right/mulMul.random_flip_4/random_flip_left_right/Round:y:07random_flip_4/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_flip_4/random_flip_left_right/mul
*random_flip_4/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_flip_4/random_flip_left_right/sub/xú
(random_flip_4/random_flip_left_right/subSub3random_flip_4/random_flip_left_right/sub/x:output:0.random_flip_4/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_flip_4/random_flip_left_right/sub
*random_flip_4/random_flip_left_right/mul_1Mul,random_flip_4/random_flip_left_right/sub:z:0@random_flip_4/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*random_flip_4/random_flip_left_right/mul_1÷
(random_flip_4/random_flip_left_right/addAddV2,random_flip_4/random_flip_left_right/mul:z:0.random_flip_4/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_flip_4/random_flip_left_right/add
4random_flip_4/random_flip_up_down/control_dependencyIdentity,random_flip_4/random_flip_left_right/add:z:0*
T0*;
_class1
/-loc:@random_flip_4/random_flip_left_right/add*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4random_flip_4/random_flip_up_down/control_dependency¿
'random_flip_4/random_flip_up_down/ShapeShape=random_flip_4/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:2)
'random_flip_4/random_flip_up_down/Shape¸
5random_flip_4/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_flip_4/random_flip_up_down/strided_slice/stack¼
7random_flip_4/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_4/random_flip_up_down/strided_slice/stack_1¼
7random_flip_4/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_4/random_flip_up_down/strided_slice/stack_2®
/random_flip_4/random_flip_up_down/strided_sliceStridedSlice0random_flip_4/random_flip_up_down/Shape:output:0>random_flip_4/random_flip_up_down/strided_slice/stack:output:0@random_flip_4/random_flip_up_down/strided_slice/stack_1:output:0@random_flip_4/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_flip_4/random_flip_up_down/strided_sliceà
6random_flip_4/random_flip_up_down/random_uniform/shapePack8random_flip_4/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6random_flip_4/random_flip_up_down/random_uniform/shape±
4random_flip_4/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4random_flip_4/random_flip_up_down/random_uniform/min±
4random_flip_4/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?26
4random_flip_4/random_flip_up_down/random_uniform/max
>random_flip_4/random_flip_up_down/random_uniform/RandomUniformRandomUniform?random_flip_4/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02@
>random_flip_4/random_flip_up_down/random_uniform/RandomUniform©
4random_flip_4/random_flip_up_down/random_uniform/MulMulGrandom_flip_4/random_flip_up_down/random_uniform/RandomUniform:output:0=random_flip_4/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4random_flip_4/random_flip_up_down/random_uniform/Mul¨
1random_flip_4/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_4/random_flip_up_down/Reshape/shape/1¨
1random_flip_4/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_4/random_flip_up_down/Reshape/shape/2¨
1random_flip_4/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_4/random_flip_up_down/Reshape/shape/3
/random_flip_4/random_flip_up_down/Reshape/shapePack8random_flip_4/random_flip_up_down/strided_slice:output:0:random_flip_4/random_flip_up_down/Reshape/shape/1:output:0:random_flip_4/random_flip_up_down/Reshape/shape/2:output:0:random_flip_4/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:21
/random_flip_4/random_flip_up_down/Reshape/shape
)random_flip_4/random_flip_up_down/ReshapeReshape8random_flip_4/random_flip_up_down/random_uniform/Mul:z:08random_flip_4/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_flip_4/random_flip_up_down/ReshapeÉ
'random_flip_4/random_flip_up_down/RoundRound2random_flip_4/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_flip_4/random_flip_up_down/Round®
0random_flip_4/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:22
0random_flip_4/random_flip_up_down/ReverseV2/axis
+random_flip_4/random_flip_up_down/ReverseV2	ReverseV2=random_flip_4/random_flip_up_down/control_dependency:output:09random_flip_4/random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+random_flip_4/random_flip_up_down/ReverseV2ô
%random_flip_4/random_flip_up_down/mulMul+random_flip_4/random_flip_up_down/Round:y:04random_flip_4/random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_flip_4/random_flip_up_down/mul
'random_flip_4/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2)
'random_flip_4/random_flip_up_down/sub/xî
%random_flip_4/random_flip_up_down/subSub0random_flip_4/random_flip_up_down/sub/x:output:0+random_flip_4/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_flip_4/random_flip_up_down/subÿ
'random_flip_4/random_flip_up_down/mul_1Mul)random_flip_4/random_flip_up_down/sub:z:0=random_flip_4/random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_flip_4/random_flip_up_down/mul_1ë
%random_flip_4/random_flip_up_down/addAddV2)random_flip_4/random_flip_up_down/mul:z:0+random_flip_4/random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_flip_4/random_flip_up_down/add
random_rotation_4/ShapeShape)random_flip_4/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2
random_rotation_4/Shape
%random_rotation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_4/strided_slice/stack
'random_rotation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice/stack_1
'random_rotation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice/stack_2Î
random_rotation_4/strided_sliceStridedSlice random_rotation_4/Shape:output:0.random_rotation_4/strided_slice/stack:output:00random_rotation_4/strided_slice/stack_1:output:00random_rotation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_4/strided_slice
'random_rotation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice_1/stack 
)random_rotation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_1/stack_1 
)random_rotation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_1/stack_2Ø
!random_rotation_4/strided_slice_1StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_1/stack:output:02random_rotation_4/strided_slice_1/stack_1:output:02random_rotation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_4/strided_slice_1
random_rotation_4/CastCast*random_rotation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_4/Cast
'random_rotation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice_2/stack 
)random_rotation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_2/stack_1 
)random_rotation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_2/stack_2Ø
!random_rotation_4/strided_slice_2StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_2/stack:output:02random_rotation_4/strided_slice_2/stack_1:output:02random_rotation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_4/strided_slice_2
random_rotation_4/Cast_1Cast*random_rotation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_4/Cast_1´
(random_rotation_4/stateful_uniform/shapePack(random_rotation_4/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_4/stateful_uniform/shape
&random_rotation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿2(
&random_rotation_4/stateful_uniform/min
&random_rotation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?2(
&random_rotation_4/stateful_uniform/max
(random_rotation_4/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_rotation_4/stateful_uniform/Constá
'random_rotation_4/stateful_uniform/ProdProd1random_rotation_4/stateful_uniform/shape:output:01random_rotation_4/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/stateful_uniform/Prod
)random_rotation_4/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_rotation_4/stateful_uniform/Cast/xÀ
)random_rotation_4/stateful_uniform/Cast_1Cast0random_rotation_4/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2+
)random_rotation_4/stateful_uniform/Cast_1³
1random_rotation_4/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_4_stateful_uniform_rngreadandskip_resource2random_rotation_4/stateful_uniform/Cast/x:output:0-random_rotation_4/stateful_uniform/Cast_1:y:0*
_output_shapes
:23
1random_rotation_4/stateful_uniform/RngReadAndSkipº
6random_rotation_4/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_4/stateful_uniform/strided_slice/stack¾
8random_rotation_4/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_4/stateful_uniform/strided_slice/stack_1¾
8random_rotation_4/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_4/stateful_uniform/strided_slice/stack_2º
0random_rotation_4/stateful_uniform/strided_sliceStridedSlice9random_rotation_4/stateful_uniform/RngReadAndSkip:value:0?random_rotation_4/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_4/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_4/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask22
0random_rotation_4/stateful_uniform/strided_sliceÏ
*random_rotation_4/stateful_uniform/BitcastBitcast9random_rotation_4/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation_4/stateful_uniform/Bitcast¾
8random_rotation_4/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_4/stateful_uniform/strided_slice_1/stackÂ
:random_rotation_4/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_4/stateful_uniform/strided_slice_1/stack_1Â
:random_rotation_4/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_4/stateful_uniform/strided_slice_1/stack_2²
2random_rotation_4/stateful_uniform/strided_slice_1StridedSlice9random_rotation_4/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_4/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_4/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_4/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:24
2random_rotation_4/stateful_uniform/strided_slice_1Õ
,random_rotation_4/stateful_uniform/Bitcast_1Bitcast;random_rotation_4/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02.
,random_rotation_4/stateful_uniform/Bitcast_1Ä
?random_rotation_4/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2A
?random_rotation_4/stateful_uniform/StatelessRandomUniformV2/alg¤
;random_rotation_4/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_4/stateful_uniform/shape:output:05random_rotation_4/stateful_uniform/Bitcast_1:output:03random_rotation_4/stateful_uniform/Bitcast:output:0Hrandom_rotation_4/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;random_rotation_4/stateful_uniform/StatelessRandomUniformV2Ú
&random_rotation_4/stateful_uniform/subSub/random_rotation_4/stateful_uniform/max:output:0/random_rotation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_4/stateful_uniform/sub÷
&random_rotation_4/stateful_uniform/mulMulDrandom_rotation_4/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_4/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_4/stateful_uniform/mulÚ
"random_rotation_4/stateful_uniformAdd*random_rotation_4/stateful_uniform/mul:z:0/random_rotation_4/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"random_rotation_4/stateful_uniform
'random_rotation_4/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2)
'random_rotation_4/rotation_matrix/sub/yÆ
%random_rotation_4/rotation_matrix/subSubrandom_rotation_4/Cast_1:y:00random_rotation_4/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_4/rotation_matrix/sub«
%random_rotation_4/rotation_matrix/CosCos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/Cos
)random_rotation_4/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_1/yÌ
'random_rotation_4/rotation_matrix/sub_1Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_1Û
%random_rotation_4/rotation_matrix/mulMul)random_rotation_4/rotation_matrix/Cos:y:0+random_rotation_4/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/mul«
%random_rotation_4/rotation_matrix/SinSin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/Sin
)random_rotation_4/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_2/yÊ
'random_rotation_4/rotation_matrix/sub_2Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_2ß
'random_rotation_4/rotation_matrix/mul_1Mul)random_rotation_4/rotation_matrix/Sin:y:0+random_rotation_4/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/mul_1ß
'random_rotation_4/rotation_matrix/sub_3Sub)random_rotation_4/rotation_matrix/mul:z:0+random_rotation_4/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/sub_3ß
'random_rotation_4/rotation_matrix/sub_4Sub)random_rotation_4/rotation_matrix/sub:z:0+random_rotation_4/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/sub_4
+random_rotation_4/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_4/rotation_matrix/truediv/yò
)random_rotation_4/rotation_matrix/truedivRealDiv+random_rotation_4/rotation_matrix/sub_4:z:04random_rotation_4/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_rotation_4/rotation_matrix/truediv
)random_rotation_4/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_5/yÊ
'random_rotation_4/rotation_matrix/sub_5Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_5¯
'random_rotation_4/rotation_matrix/Sin_1Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Sin_1
)random_rotation_4/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_6/yÌ
'random_rotation_4/rotation_matrix/sub_6Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_6á
'random_rotation_4/rotation_matrix/mul_2Mul+random_rotation_4/rotation_matrix/Sin_1:y:0+random_rotation_4/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/mul_2¯
'random_rotation_4/rotation_matrix/Cos_1Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Cos_1
)random_rotation_4/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_7/yÊ
'random_rotation_4/rotation_matrix/sub_7Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_7á
'random_rotation_4/rotation_matrix/mul_3Mul+random_rotation_4/rotation_matrix/Cos_1:y:0+random_rotation_4/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/mul_3ß
%random_rotation_4/rotation_matrix/addAddV2+random_rotation_4/rotation_matrix/mul_2:z:0+random_rotation_4/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/addß
'random_rotation_4/rotation_matrix/sub_8Sub+random_rotation_4/rotation_matrix/sub_5:z:0)random_rotation_4/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/sub_8£
-random_rotation_4/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_4/rotation_matrix/truediv_1/yø
+random_rotation_4/rotation_matrix/truediv_1RealDiv+random_rotation_4/rotation_matrix/sub_8:z:06random_rotation_4/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+random_rotation_4/rotation_matrix/truediv_1¨
'random_rotation_4/rotation_matrix/ShapeShape&random_rotation_4/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_4/rotation_matrix/Shape¸
5random_rotation_4/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_4/rotation_matrix/strided_slice/stack¼
7random_rotation_4/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_4/rotation_matrix/strided_slice/stack_1¼
7random_rotation_4/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_4/rotation_matrix/strided_slice/stack_2®
/random_rotation_4/rotation_matrix/strided_sliceStridedSlice0random_rotation_4/rotation_matrix/Shape:output:0>random_rotation_4/rotation_matrix/strided_slice/stack:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_4/rotation_matrix/strided_slice¯
'random_rotation_4/rotation_matrix/Cos_2Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Cos_2Ã
7random_rotation_4/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_1/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_1/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_1/stack_2ã
1random_rotation_4/rotation_matrix/strided_slice_1StridedSlice+random_rotation_4/rotation_matrix/Cos_2:y:0@random_rotation_4/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_1¯
'random_rotation_4/rotation_matrix/Sin_2Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Sin_2Ã
7random_rotation_4/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_2/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_2/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_2/stack_2ã
1random_rotation_4/rotation_matrix/strided_slice_2StridedSlice+random_rotation_4/rotation_matrix/Sin_2:y:0@random_rotation_4/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_2Ã
%random_rotation_4/rotation_matrix/NegNeg:random_rotation_4/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/NegÃ
7random_rotation_4/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_3/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_3/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_3/stack_2å
1random_rotation_4/rotation_matrix/strided_slice_3StridedSlice-random_rotation_4/rotation_matrix/truediv:z:0@random_rotation_4/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_3¯
'random_rotation_4/rotation_matrix/Sin_3Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Sin_3Ã
7random_rotation_4/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_4/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_4/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_4/stack_2ã
1random_rotation_4/rotation_matrix/strided_slice_4StridedSlice+random_rotation_4/rotation_matrix/Sin_3:y:0@random_rotation_4/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_4¯
'random_rotation_4/rotation_matrix/Cos_3Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Cos_3Ã
7random_rotation_4/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_5/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_5/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_5/stack_2ã
1random_rotation_4/rotation_matrix/strided_slice_5StridedSlice+random_rotation_4/rotation_matrix/Cos_3:y:0@random_rotation_4/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_5Ã
7random_rotation_4/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_6/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_6/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_6/stack_2ç
1random_rotation_4/rotation_matrix/strided_slice_6StridedSlice/random_rotation_4/rotation_matrix/truediv_1:z:0@random_rotation_4/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_6 
-random_rotation_4/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_4/rotation_matrix/zeros/mul/yô
+random_rotation_4/rotation_matrix/zeros/mulMul8random_rotation_4/rotation_matrix/strided_slice:output:06random_rotation_4/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_4/rotation_matrix/zeros/mul£
.random_rotation_4/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è20
.random_rotation_4/rotation_matrix/zeros/Less/yï
,random_rotation_4/rotation_matrix/zeros/LessLess/random_rotation_4/rotation_matrix/zeros/mul:z:07random_rotation_4/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_4/rotation_matrix/zeros/Less¦
0random_rotation_4/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_4/rotation_matrix/zeros/packed/1
.random_rotation_4/rotation_matrix/zeros/packedPack8random_rotation_4/rotation_matrix/strided_slice:output:09random_rotation_4/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_4/rotation_matrix/zeros/packed£
-random_rotation_4/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_4/rotation_matrix/zeros/Constý
'random_rotation_4/rotation_matrix/zerosFill7random_rotation_4/rotation_matrix/zeros/packed:output:06random_rotation_4/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/zeros 
-random_rotation_4/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_4/rotation_matrix/concat/axisÜ
(random_rotation_4/rotation_matrix/concatConcatV2:random_rotation_4/rotation_matrix/strided_slice_1:output:0)random_rotation_4/rotation_matrix/Neg:y:0:random_rotation_4/rotation_matrix/strided_slice_3:output:0:random_rotation_4/rotation_matrix/strided_slice_4:output:0:random_rotation_4/rotation_matrix/strided_slice_5:output:0:random_rotation_4/rotation_matrix/strided_slice_6:output:00random_rotation_4/rotation_matrix/zeros:output:06random_rotation_4/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_4/rotation_matrix/concat
!random_rotation_4/transform/ShapeShape)random_flip_4/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2#
!random_rotation_4/transform/Shape¬
/random_rotation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_4/transform/strided_slice/stack°
1random_rotation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_4/transform/strided_slice/stack_1°
1random_rotation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_4/transform/strided_slice/stack_2ö
)random_rotation_4/transform/strided_sliceStridedSlice*random_rotation_4/transform/Shape:output:08random_rotation_4/transform/strided_slice/stack:output:0:random_rotation_4/transform/strided_slice/stack_1:output:0:random_rotation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_4/transform/strided_slice
&random_rotation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_4/transform/fill_valueÆ
6random_rotation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3)random_flip_4/random_flip_up_down/add:z:01random_rotation_4/rotation_matrix/concat:output:02random_rotation_4/transform/strided_slice:output:0/random_rotation_4/transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_4/transform/ImageProjectiveTransformV3Ý
IdentityIdentityKrandom_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:02^random_rotation_4/stateful_uniform/RngReadAndSkip*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 2f
1random_rotation_4/stateful_uniform/RngReadAndSkip1random_rotation_4/stateful_uniform/RngReadAndSkip:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namerandom_flip_4_input

ý
D__inference_conv2d_92_layer_call_and_return_conditional_losses_26924

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@
 
_user_specified_nameinputs
Ã

d
H__inference_sequential_22_layer_call_and_return_conditional_losses_26394

inputs
identity
resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing_3/resize/sizeÕ
 resizing_3/resize/ResizeBilinearResizeBilinearinputsresizing_3/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2"
 resizing_3/resize/ResizeBilinearm
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
rescaling_3/Cast/xq
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_3/Cast_1/xµ
rescaling_3/mulMul1resizing_3/resize/ResizeBilinear:resized_images:0rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rescaling_3/mul
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rescaling_3/addq
IdentityIdentityrescaling_3/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
q
H__inference_sequential_23_layer_call_and_return_conditional_losses_28490
random_flip_4_input
identityq
IdentityIdentityrandom_flip_4_input*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namerandom_flip_4_input
Åü
æ$
!__inference__traced_restore_29252
file_prefix;
!assignvariableop_conv2d_90_kernel: /
!assignvariableop_1_conv2d_90_bias: =
#assignvariableop_2_conv2d_91_kernel: @/
!assignvariableop_3_conv2d_91_bias:@=
#assignvariableop_4_conv2d_92_kernel:@@/
!assignvariableop_5_conv2d_92_bias:@=
#assignvariableop_6_conv2d_93_kernel:@@/
!assignvariableop_7_conv2d_93_bias:@=
#assignvariableop_8_conv2d_94_kernel:@@/
!assignvariableop_9_conv2d_94_bias:@>
$assignvariableop_10_conv2d_95_kernel:@@0
"assignvariableop_11_conv2d_95_bias:@6
#assignvariableop_12_dense_30_kernel:	@/
!assignvariableop_13_dense_30_bias:@5
#assignvariableop_14_dense_31_kernel:@
/
!assignvariableop_15_dense_31_bias:
'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: *
assignvariableop_21_variable:	,
assignvariableop_22_variable_1:	#
assignvariableop_23_total: #
assignvariableop_24_count: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: E
+assignvariableop_27_adam_conv2d_90_kernel_m: 7
)assignvariableop_28_adam_conv2d_90_bias_m: E
+assignvariableop_29_adam_conv2d_91_kernel_m: @7
)assignvariableop_30_adam_conv2d_91_bias_m:@E
+assignvariableop_31_adam_conv2d_92_kernel_m:@@7
)assignvariableop_32_adam_conv2d_92_bias_m:@E
+assignvariableop_33_adam_conv2d_93_kernel_m:@@7
)assignvariableop_34_adam_conv2d_93_bias_m:@E
+assignvariableop_35_adam_conv2d_94_kernel_m:@@7
)assignvariableop_36_adam_conv2d_94_bias_m:@E
+assignvariableop_37_adam_conv2d_95_kernel_m:@@7
)assignvariableop_38_adam_conv2d_95_bias_m:@=
*assignvariableop_39_adam_dense_30_kernel_m:	@6
(assignvariableop_40_adam_dense_30_bias_m:@<
*assignvariableop_41_adam_dense_31_kernel_m:@
6
(assignvariableop_42_adam_dense_31_bias_m:
E
+assignvariableop_43_adam_conv2d_90_kernel_v: 7
)assignvariableop_44_adam_conv2d_90_bias_v: E
+assignvariableop_45_adam_conv2d_91_kernel_v: @7
)assignvariableop_46_adam_conv2d_91_bias_v:@E
+assignvariableop_47_adam_conv2d_92_kernel_v:@@7
)assignvariableop_48_adam_conv2d_92_bias_v:@E
+assignvariableop_49_adam_conv2d_93_kernel_v:@@7
)assignvariableop_50_adam_conv2d_93_bias_v:@E
+assignvariableop_51_adam_conv2d_94_kernel_v:@@7
)assignvariableop_52_adam_conv2d_94_bias_v:@E
+assignvariableop_53_adam_conv2d_95_kernel_v:@@7
)assignvariableop_54_adam_conv2d_95_bias_v:@=
*assignvariableop_55_adam_dense_30_kernel_v:	@6
(assignvariableop_56_adam_dense_30_bias_v:@<
*assignvariableop_57_adam_dense_31_kernel_v:@
6
(assignvariableop_58_adam_dense_31_bias_v:

identity_60¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¬!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*¸ 
value® B« <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*
valueB<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesÚ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesó
ð::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<			2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_90_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_90_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_91_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_91_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¨
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_92_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¦
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_92_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¨
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_93_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¦
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_93_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¨
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_94_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¦
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_94_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¬
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_95_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11ª
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_95_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12«
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_30_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13©
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_30_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14«
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_31_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15©
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_31_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_16¥
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17§
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18§
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¦
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20®
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_21¤
AssignVariableOp_21AssignVariableOpassignvariableop_21_variableIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_22¦
AssignVariableOp_22AssignVariableOpassignvariableop_22_variable_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¡
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¡
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25£
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26£
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27³
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_90_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28±
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_90_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29³
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_91_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30±
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_91_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31³
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_92_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32±
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_92_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33³
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_93_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34±
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_93_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35³
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_94_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36±
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_94_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37³
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_95_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38±
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_95_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39²
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_30_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40°
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_30_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41²
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_31_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42°
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_31_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43³
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_90_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44±
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_90_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45³
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_91_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46±
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_91_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47³
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_92_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48±
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_92_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49³
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_93_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50±
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_93_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51³
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_94_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52±
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_94_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53³
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_95_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54±
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_95_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55²
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_30_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56°
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_30_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57²
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_31_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58°
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_31_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_589
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpð

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_59ã

Identity_60IdentityIdentity_59:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_60"#
identity_60Identity_60:output:0*
_input_shapesz
x: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ç
ä
-__inference_sequential_24_layer_call_fn_28213

inputs
unknown:	#
	unknown_0: 
	unknown_1: #
	unknown_2: @
	unknown_3:@#
	unknown_4:@@
	unknown_5:@#
	unknown_6:@@
	unknown_7:@#
	unknown_8:@@
	unknown_9:@$

unknown_10:@@

unknown_11:@

unknown_12:	@

unknown_13:@

unknown_14:@


unknown_15:

identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_24_layer_call_and_return_conditional_losses_272432
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
g
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_26826

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

ô
C__inference_dense_31_layer_call_and_return_conditional_losses_28846

inputs0
matmul_readvariableop_resource:@
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Î

 __inference__wrapped_model_26360
sequential_22_inputP
6sequential_24_conv2d_90_conv2d_readvariableop_resource: E
7sequential_24_conv2d_90_biasadd_readvariableop_resource: P
6sequential_24_conv2d_91_conv2d_readvariableop_resource: @E
7sequential_24_conv2d_91_biasadd_readvariableop_resource:@P
6sequential_24_conv2d_92_conv2d_readvariableop_resource:@@E
7sequential_24_conv2d_92_biasadd_readvariableop_resource:@P
6sequential_24_conv2d_93_conv2d_readvariableop_resource:@@E
7sequential_24_conv2d_93_biasadd_readvariableop_resource:@P
6sequential_24_conv2d_94_conv2d_readvariableop_resource:@@E
7sequential_24_conv2d_94_biasadd_readvariableop_resource:@P
6sequential_24_conv2d_95_conv2d_readvariableop_resource:@@E
7sequential_24_conv2d_95_biasadd_readvariableop_resource:@H
5sequential_24_dense_30_matmul_readvariableop_resource:	@D
6sequential_24_dense_30_biasadd_readvariableop_resource:@G
5sequential_24_dense_31_matmul_readvariableop_resource:@
D
6sequential_24_dense_31_biasadd_readvariableop_resource:

identity¢.sequential_24/conv2d_90/BiasAdd/ReadVariableOp¢-sequential_24/conv2d_90/Conv2D/ReadVariableOp¢.sequential_24/conv2d_91/BiasAdd/ReadVariableOp¢-sequential_24/conv2d_91/Conv2D/ReadVariableOp¢.sequential_24/conv2d_92/BiasAdd/ReadVariableOp¢-sequential_24/conv2d_92/Conv2D/ReadVariableOp¢.sequential_24/conv2d_93/BiasAdd/ReadVariableOp¢-sequential_24/conv2d_93/Conv2D/ReadVariableOp¢.sequential_24/conv2d_94/BiasAdd/ReadVariableOp¢-sequential_24/conv2d_94/Conv2D/ReadVariableOp¢.sequential_24/conv2d_95/BiasAdd/ReadVariableOp¢-sequential_24/conv2d_95/Conv2D/ReadVariableOp¢-sequential_24/dense_30/BiasAdd/ReadVariableOp¢,sequential_24/dense_30/MatMul/ReadVariableOp¢-sequential_24/dense_31/BiasAdd/ReadVariableOp¢,sequential_24/dense_31/MatMul/ReadVariableOp¹
2sequential_24/sequential_22/resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      24
2sequential_24/sequential_22/resizing_3/resize/size¶
<sequential_24/sequential_22/resizing_3/resize/ResizeBilinearResizeBilinearsequential_22_input;sequential_24/sequential_22/resizing_3/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2>
<sequential_24/sequential_22/resizing_3/resize/ResizeBilinear¥
.sequential_24/sequential_22/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;20
.sequential_24/sequential_22/rescaling_3/Cast/x©
0sequential_24/sequential_22/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    22
0sequential_24/sequential_22/rescaling_3/Cast_1/x¥
+sequential_24/sequential_22/rescaling_3/mulMulMsequential_24/sequential_22/resizing_3/resize/ResizeBilinear:resized_images:07sequential_24/sequential_22/rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_24/sequential_22/rescaling_3/mul
+sequential_24/sequential_22/rescaling_3/addAddV2/sequential_24/sequential_22/rescaling_3/mul:z:09sequential_24/sequential_22/rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_24/sequential_22/rescaling_3/addÝ
-sequential_24/conv2d_90/Conv2D/ReadVariableOpReadVariableOp6sequential_24_conv2d_90_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_24/conv2d_90/Conv2D/ReadVariableOp
sequential_24/conv2d_90/Conv2DConv2D/sequential_24/sequential_22/rescaling_3/add:z:05sequential_24/conv2d_90/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *
paddingVALID*
strides
2 
sequential_24/conv2d_90/Conv2DÔ
.sequential_24/conv2d_90/BiasAdd/ReadVariableOpReadVariableOp7sequential_24_conv2d_90_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_24/conv2d_90/BiasAdd/ReadVariableOpê
sequential_24/conv2d_90/BiasAddBiasAdd'sequential_24/conv2d_90/Conv2D:output:06sequential_24/conv2d_90/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2!
sequential_24/conv2d_90/BiasAddª
sequential_24/conv2d_90/ReluRelu(sequential_24/conv2d_90/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2
sequential_24/conv2d_90/Reluô
&sequential_24/max_pooling2d_90/MaxPoolMaxPool*sequential_24/conv2d_90/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
2(
&sequential_24/max_pooling2d_90/MaxPoolÝ
-sequential_24/conv2d_91/Conv2D/ReadVariableOpReadVariableOp6sequential_24_conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02/
-sequential_24/conv2d_91/Conv2D/ReadVariableOp
sequential_24/conv2d_91/Conv2DConv2D/sequential_24/max_pooling2d_90/MaxPool:output:05sequential_24/conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*
paddingVALID*
strides
2 
sequential_24/conv2d_91/Conv2DÔ
.sequential_24/conv2d_91/BiasAdd/ReadVariableOpReadVariableOp7sequential_24_conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_24/conv2d_91/BiasAdd/ReadVariableOpè
sequential_24/conv2d_91/BiasAddBiasAdd'sequential_24/conv2d_91/Conv2D:output:06sequential_24/conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2!
sequential_24/conv2d_91/BiasAdd¨
sequential_24/conv2d_91/ReluRelu(sequential_24/conv2d_91/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2
sequential_24/conv2d_91/Reluô
&sequential_24/max_pooling2d_91/MaxPoolMaxPool*sequential_24/conv2d_91/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@*
ksize
*
paddingVALID*
strides
2(
&sequential_24/max_pooling2d_91/MaxPoolÝ
-sequential_24/conv2d_92/Conv2D/ReadVariableOpReadVariableOp6sequential_24_conv2d_92_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential_24/conv2d_92/Conv2D/ReadVariableOp
sequential_24/conv2d_92/Conv2DConv2D/sequential_24/max_pooling2d_91/MaxPool:output:05sequential_24/conv2d_92/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*
paddingVALID*
strides
2 
sequential_24/conv2d_92/Conv2DÔ
.sequential_24/conv2d_92/BiasAdd/ReadVariableOpReadVariableOp7sequential_24_conv2d_92_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_24/conv2d_92/BiasAdd/ReadVariableOpè
sequential_24/conv2d_92/BiasAddBiasAdd'sequential_24/conv2d_92/Conv2D:output:06sequential_24/conv2d_92/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2!
sequential_24/conv2d_92/BiasAdd¨
sequential_24/conv2d_92/ReluRelu(sequential_24/conv2d_92/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2
sequential_24/conv2d_92/Reluô
&sequential_24/max_pooling2d_92/MaxPoolMaxPool*sequential_24/conv2d_92/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2(
&sequential_24/max_pooling2d_92/MaxPoolÝ
-sequential_24/conv2d_93/Conv2D/ReadVariableOpReadVariableOp6sequential_24_conv2d_93_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential_24/conv2d_93/Conv2D/ReadVariableOp
sequential_24/conv2d_93/Conv2DConv2D/sequential_24/max_pooling2d_92/MaxPool:output:05sequential_24/conv2d_93/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2 
sequential_24/conv2d_93/Conv2DÔ
.sequential_24/conv2d_93/BiasAdd/ReadVariableOpReadVariableOp7sequential_24_conv2d_93_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_24/conv2d_93/BiasAdd/ReadVariableOpè
sequential_24/conv2d_93/BiasAddBiasAdd'sequential_24/conv2d_93/Conv2D:output:06sequential_24/conv2d_93/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
sequential_24/conv2d_93/BiasAdd¨
sequential_24/conv2d_93/ReluRelu(sequential_24/conv2d_93/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_24/conv2d_93/Reluô
&sequential_24/max_pooling2d_93/MaxPoolMaxPool*sequential_24/conv2d_93/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2(
&sequential_24/max_pooling2d_93/MaxPoolÝ
-sequential_24/conv2d_94/Conv2D/ReadVariableOpReadVariableOp6sequential_24_conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential_24/conv2d_94/Conv2D/ReadVariableOp
sequential_24/conv2d_94/Conv2DConv2D/sequential_24/max_pooling2d_93/MaxPool:output:05sequential_24/conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2 
sequential_24/conv2d_94/Conv2DÔ
.sequential_24/conv2d_94/BiasAdd/ReadVariableOpReadVariableOp7sequential_24_conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_24/conv2d_94/BiasAdd/ReadVariableOpè
sequential_24/conv2d_94/BiasAddBiasAdd'sequential_24/conv2d_94/Conv2D:output:06sequential_24/conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
sequential_24/conv2d_94/BiasAdd¨
sequential_24/conv2d_94/ReluRelu(sequential_24/conv2d_94/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_24/conv2d_94/Reluô
&sequential_24/max_pooling2d_94/MaxPoolMaxPool*sequential_24/conv2d_94/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2(
&sequential_24/max_pooling2d_94/MaxPoolÝ
-sequential_24/conv2d_95/Conv2D/ReadVariableOpReadVariableOp6sequential_24_conv2d_95_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02/
-sequential_24/conv2d_95/Conv2D/ReadVariableOp
sequential_24/conv2d_95/Conv2DConv2D/sequential_24/max_pooling2d_94/MaxPool:output:05sequential_24/conv2d_95/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2 
sequential_24/conv2d_95/Conv2DÔ
.sequential_24/conv2d_95/BiasAdd/ReadVariableOpReadVariableOp7sequential_24_conv2d_95_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_24/conv2d_95/BiasAdd/ReadVariableOpè
sequential_24/conv2d_95/BiasAddBiasAdd'sequential_24/conv2d_95/Conv2D:output:06sequential_24/conv2d_95/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
sequential_24/conv2d_95/BiasAdd¨
sequential_24/conv2d_95/ReluRelu(sequential_24/conv2d_95/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_24/conv2d_95/Reluô
&sequential_24/max_pooling2d_95/MaxPoolMaxPool*sequential_24/conv2d_95/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2(
&sequential_24/max_pooling2d_95/MaxPool
sequential_24/flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2 
sequential_24/flatten_15/ConstÜ
 sequential_24/flatten_15/ReshapeReshape/sequential_24/max_pooling2d_95/MaxPool:output:0'sequential_24/flatten_15/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_24/flatten_15/ReshapeÓ
,sequential_24/dense_30/MatMul/ReadVariableOpReadVariableOp5sequential_24_dense_30_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02.
,sequential_24/dense_30/MatMul/ReadVariableOpÛ
sequential_24/dense_30/MatMulMatMul)sequential_24/flatten_15/Reshape:output:04sequential_24/dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_24/dense_30/MatMulÑ
-sequential_24/dense_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_24_dense_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-sequential_24/dense_30/BiasAdd/ReadVariableOpÝ
sequential_24/dense_30/BiasAddBiasAdd'sequential_24/dense_30/MatMul:product:05sequential_24/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
sequential_24/dense_30/BiasAdd
sequential_24/dense_30/ReluRelu'sequential_24/dense_30/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_24/dense_30/ReluÒ
,sequential_24/dense_31/MatMul/ReadVariableOpReadVariableOp5sequential_24_dense_31_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02.
,sequential_24/dense_31/MatMul/ReadVariableOpÛ
sequential_24/dense_31/MatMulMatMul)sequential_24/dense_30/Relu:activations:04sequential_24/dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
sequential_24/dense_31/MatMulÑ
-sequential_24/dense_31/BiasAdd/ReadVariableOpReadVariableOp6sequential_24_dense_31_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02/
-sequential_24/dense_31/BiasAdd/ReadVariableOpÝ
sequential_24/dense_31/BiasAddBiasAdd'sequential_24/dense_31/MatMul:product:05sequential_24/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
sequential_24/dense_31/BiasAdd¦
sequential_24/dense_31/SoftmaxSoftmax'sequential_24/dense_31/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
sequential_24/dense_31/Softmax
IdentityIdentity(sequential_24/dense_31/Softmax:softmax:0/^sequential_24/conv2d_90/BiasAdd/ReadVariableOp.^sequential_24/conv2d_90/Conv2D/ReadVariableOp/^sequential_24/conv2d_91/BiasAdd/ReadVariableOp.^sequential_24/conv2d_91/Conv2D/ReadVariableOp/^sequential_24/conv2d_92/BiasAdd/ReadVariableOp.^sequential_24/conv2d_92/Conv2D/ReadVariableOp/^sequential_24/conv2d_93/BiasAdd/ReadVariableOp.^sequential_24/conv2d_93/Conv2D/ReadVariableOp/^sequential_24/conv2d_94/BiasAdd/ReadVariableOp.^sequential_24/conv2d_94/Conv2D/ReadVariableOp/^sequential_24/conv2d_95/BiasAdd/ReadVariableOp.^sequential_24/conv2d_95/Conv2D/ReadVariableOp.^sequential_24/dense_30/BiasAdd/ReadVariableOp-^sequential_24/dense_30/MatMul/ReadVariableOp.^sequential_24/dense_31/BiasAdd/ReadVariableOp-^sequential_24/dense_31/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 2`
.sequential_24/conv2d_90/BiasAdd/ReadVariableOp.sequential_24/conv2d_90/BiasAdd/ReadVariableOp2^
-sequential_24/conv2d_90/Conv2D/ReadVariableOp-sequential_24/conv2d_90/Conv2D/ReadVariableOp2`
.sequential_24/conv2d_91/BiasAdd/ReadVariableOp.sequential_24/conv2d_91/BiasAdd/ReadVariableOp2^
-sequential_24/conv2d_91/Conv2D/ReadVariableOp-sequential_24/conv2d_91/Conv2D/ReadVariableOp2`
.sequential_24/conv2d_92/BiasAdd/ReadVariableOp.sequential_24/conv2d_92/BiasAdd/ReadVariableOp2^
-sequential_24/conv2d_92/Conv2D/ReadVariableOp-sequential_24/conv2d_92/Conv2D/ReadVariableOp2`
.sequential_24/conv2d_93/BiasAdd/ReadVariableOp.sequential_24/conv2d_93/BiasAdd/ReadVariableOp2^
-sequential_24/conv2d_93/Conv2D/ReadVariableOp-sequential_24/conv2d_93/Conv2D/ReadVariableOp2`
.sequential_24/conv2d_94/BiasAdd/ReadVariableOp.sequential_24/conv2d_94/BiasAdd/ReadVariableOp2^
-sequential_24/conv2d_94/Conv2D/ReadVariableOp-sequential_24/conv2d_94/Conv2D/ReadVariableOp2`
.sequential_24/conv2d_95/BiasAdd/ReadVariableOp.sequential_24/conv2d_95/BiasAdd/ReadVariableOp2^
-sequential_24/conv2d_95/Conv2D/ReadVariableOp-sequential_24/conv2d_95/Conv2D/ReadVariableOp2^
-sequential_24/dense_30/BiasAdd/ReadVariableOp-sequential_24/dense_30/BiasAdd/ReadVariableOp2\
,sequential_24/dense_30/MatMul/ReadVariableOp,sequential_24/dense_30/MatMul/ReadVariableOp2^
-sequential_24/dense_31/BiasAdd/ReadVariableOp-sequential_24/dense_31/BiasAdd/ReadVariableOp2\
,sequential_24/dense_31/MatMul/ReadVariableOp,sequential_24/dense_31/MatMul/ReadVariableOp:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesequential_22_input

V
-__inference_sequential_23_layer_call_fn_28665
random_flip_4_input
identityÝ
PartitionedCallPartitionedCallrandom_flip_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_23_layer_call_and_return_conditional_losses_264302
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namerandom_flip_4_input
¢
d
H__inference_sequential_23_layer_call_and_return_conditional_losses_28316

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³

ô
C__inference_dense_31_layer_call_and_return_conditional_losses_27021

inputs0
matmul_readvariableop_resource:@
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ã

d
H__inference_sequential_22_layer_call_and_return_conditional_losses_28262

inputs
identity
resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing_3/resize/sizeÕ
 resizing_3/resize/ResizeBilinearResizeBilinearinputsresizing_3/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2"
 resizing_3/resize/ResizeBilinearm
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
rescaling_3/Cast/xq
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_3/Cast_1/xµ
rescaling_3/mulMul1resizing_3/resize/ResizeBilinear:resized_images:0rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rescaling_3/mul
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rescaling_3/addq
IdentityIdentityrescaling_3/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_93_layer_call_and_return_conditional_losses_26942

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ì
ú
H__inference_sequential_24_layer_call_and_return_conditional_losses_27786

inputsV
Hsequential_23_random_rotation_4_stateful_uniform_rngreadandskip_resource:	B
(conv2d_90_conv2d_readvariableop_resource: 7
)conv2d_90_biasadd_readvariableop_resource: B
(conv2d_91_conv2d_readvariableop_resource: @7
)conv2d_91_biasadd_readvariableop_resource:@B
(conv2d_92_conv2d_readvariableop_resource:@@7
)conv2d_92_biasadd_readvariableop_resource:@B
(conv2d_93_conv2d_readvariableop_resource:@@7
)conv2d_93_biasadd_readvariableop_resource:@B
(conv2d_94_conv2d_readvariableop_resource:@@7
)conv2d_94_biasadd_readvariableop_resource:@B
(conv2d_95_conv2d_readvariableop_resource:@@7
)conv2d_95_biasadd_readvariableop_resource:@:
'dense_30_matmul_readvariableop_resource:	@6
(dense_30_biasadd_readvariableop_resource:@9
'dense_31_matmul_readvariableop_resource:@
6
(dense_31_biasadd_readvariableop_resource:

identity¢ conv2d_90/BiasAdd/ReadVariableOp¢conv2d_90/Conv2D/ReadVariableOp¢ conv2d_91/BiasAdd/ReadVariableOp¢conv2d_91/Conv2D/ReadVariableOp¢ conv2d_92/BiasAdd/ReadVariableOp¢conv2d_92/Conv2D/ReadVariableOp¢ conv2d_93/BiasAdd/ReadVariableOp¢conv2d_93/Conv2D/ReadVariableOp¢ conv2d_94/BiasAdd/ReadVariableOp¢conv2d_94/Conv2D/ReadVariableOp¢ conv2d_95/BiasAdd/ReadVariableOp¢conv2d_95/Conv2D/ReadVariableOp¢dense_30/BiasAdd/ReadVariableOp¢dense_30/MatMul/ReadVariableOp¢dense_31/BiasAdd/ReadVariableOp¢dense_31/MatMul/ReadVariableOp¢?sequential_23/random_rotation_4/stateful_uniform/RngReadAndSkip
$sequential_22/resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_22/resizing_3/resize/sizeÿ
.sequential_22/resizing_3/resize/ResizeBilinearResizeBilinearinputs-sequential_22/resizing_3/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(20
.sequential_22/resizing_3/resize/ResizeBilinear
 sequential_22/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2"
 sequential_22/rescaling_3/Cast/x
"sequential_22/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_22/rescaling_3/Cast_1/xí
sequential_22/rescaling_3/mulMul?sequential_22/resizing_3/resize/ResizeBilinear:resized_images:0)sequential_22/rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_22/rescaling_3/mulÓ
sequential_22/rescaling_3/addAddV2!sequential_22/rescaling_3/mul:z:0+sequential_22/rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_22/rescaling_3/add«
Esequential_23/random_flip_4/random_flip_left_right/control_dependencyIdentity!sequential_22/rescaling_3/add:z:0*
T0*0
_class&
$"loc:@sequential_22/rescaling_3/add*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2G
Esequential_23/random_flip_4/random_flip_left_right/control_dependencyò
8sequential_23/random_flip_4/random_flip_left_right/ShapeShapeNsequential_23/random_flip_4/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2:
8sequential_23/random_flip_4/random_flip_left_right/ShapeÚ
Fsequential_23/random_flip_4/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fsequential_23/random_flip_4/random_flip_left_right/strided_slice/stackÞ
Hsequential_23/random_flip_4/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_23/random_flip_4/random_flip_left_right/strided_slice/stack_1Þ
Hsequential_23/random_flip_4/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_23/random_flip_4/random_flip_left_right/strided_slice/stack_2
@sequential_23/random_flip_4/random_flip_left_right/strided_sliceStridedSliceAsequential_23/random_flip_4/random_flip_left_right/Shape:output:0Osequential_23/random_flip_4/random_flip_left_right/strided_slice/stack:output:0Qsequential_23/random_flip_4/random_flip_left_right/strided_slice/stack_1:output:0Qsequential_23/random_flip_4/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2B
@sequential_23/random_flip_4/random_flip_left_right/strided_slice
Gsequential_23/random_flip_4/random_flip_left_right/random_uniform/shapePackIsequential_23/random_flip_4/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2I
Gsequential_23/random_flip_4/random_flip_left_right/random_uniform/shapeÓ
Esequential_23/random_flip_4/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2G
Esequential_23/random_flip_4/random_flip_left_right/random_uniform/minÓ
Esequential_23/random_flip_4/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2G
Esequential_23/random_flip_4/random_flip_left_right/random_uniform/maxÀ
Osequential_23/random_flip_4/random_flip_left_right/random_uniform/RandomUniformRandomUniformPsequential_23/random_flip_4/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02Q
Osequential_23/random_flip_4/random_flip_left_right/random_uniform/RandomUniformí
Esequential_23/random_flip_4/random_flip_left_right/random_uniform/MulMulXsequential_23/random_flip_4/random_flip_left_right/random_uniform/RandomUniform:output:0Nsequential_23/random_flip_4/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2G
Esequential_23/random_flip_4/random_flip_left_right/random_uniform/MulÊ
Bsequential_23/random_flip_4/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_23/random_flip_4/random_flip_left_right/Reshape/shape/1Ê
Bsequential_23/random_flip_4/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_23/random_flip_4/random_flip_left_right/Reshape/shape/2Ê
Bsequential_23/random_flip_4/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_23/random_flip_4/random_flip_left_right/Reshape/shape/3ì
@sequential_23/random_flip_4/random_flip_left_right/Reshape/shapePackIsequential_23/random_flip_4/random_flip_left_right/strided_slice:output:0Ksequential_23/random_flip_4/random_flip_left_right/Reshape/shape/1:output:0Ksequential_23/random_flip_4/random_flip_left_right/Reshape/shape/2:output:0Ksequential_23/random_flip_4/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2B
@sequential_23/random_flip_4/random_flip_left_right/Reshape/shapeÓ
:sequential_23/random_flip_4/random_flip_left_right/ReshapeReshapeIsequential_23/random_flip_4/random_flip_left_right/random_uniform/Mul:z:0Isequential_23/random_flip_4/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:sequential_23/random_flip_4/random_flip_left_right/Reshapeü
8sequential_23/random_flip_4/random_flip_left_right/RoundRoundCsequential_23/random_flip_4/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8sequential_23/random_flip_4/random_flip_left_right/RoundÐ
Asequential_23/random_flip_4/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_23/random_flip_4/random_flip_left_right/ReverseV2/axisá
<sequential_23/random_flip_4/random_flip_left_right/ReverseV2	ReverseV2Nsequential_23/random_flip_4/random_flip_left_right/control_dependency:output:0Jsequential_23/random_flip_4/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2>
<sequential_23/random_flip_4/random_flip_left_right/ReverseV2¸
6sequential_23/random_flip_4/random_flip_left_right/mulMul<sequential_23/random_flip_4/random_flip_left_right/Round:y:0Esequential_23/random_flip_4/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_23/random_flip_4/random_flip_left_right/mul¹
8sequential_23/random_flip_4/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_23/random_flip_4/random_flip_left_right/sub/x²
6sequential_23/random_flip_4/random_flip_left_right/subSubAsequential_23/random_flip_4/random_flip_left_right/sub/x:output:0<sequential_23/random_flip_4/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_23/random_flip_4/random_flip_left_right/subÃ
8sequential_23/random_flip_4/random_flip_left_right/mul_1Mul:sequential_23/random_flip_4/random_flip_left_right/sub:z:0Nsequential_23/random_flip_4/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8sequential_23/random_flip_4/random_flip_left_right/mul_1¯
6sequential_23/random_flip_4/random_flip_left_right/addAddV2:sequential_23/random_flip_4/random_flip_left_right/mul:z:0<sequential_23/random_flip_4/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_23/random_flip_4/random_flip_left_right/add×
Bsequential_23/random_flip_4/random_flip_up_down/control_dependencyIdentity:sequential_23/random_flip_4/random_flip_left_right/add:z:0*
T0*I
_class?
=;loc:@sequential_23/random_flip_4/random_flip_left_right/add*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
Bsequential_23/random_flip_4/random_flip_up_down/control_dependencyé
5sequential_23/random_flip_4/random_flip_up_down/ShapeShapeKsequential_23/random_flip_4/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:27
5sequential_23/random_flip_4/random_flip_up_down/ShapeÔ
Csequential_23/random_flip_4/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential_23/random_flip_4/random_flip_up_down/strided_slice/stackØ
Esequential_23/random_flip_4/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_23/random_flip_4/random_flip_up_down/strided_slice/stack_1Ø
Esequential_23/random_flip_4/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_23/random_flip_4/random_flip_up_down/strided_slice/stack_2
=sequential_23/random_flip_4/random_flip_up_down/strided_sliceStridedSlice>sequential_23/random_flip_4/random_flip_up_down/Shape:output:0Lsequential_23/random_flip_4/random_flip_up_down/strided_slice/stack:output:0Nsequential_23/random_flip_4/random_flip_up_down/strided_slice/stack_1:output:0Nsequential_23/random_flip_4/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
=sequential_23/random_flip_4/random_flip_up_down/strided_slice
Dsequential_23/random_flip_4/random_flip_up_down/random_uniform/shapePackFsequential_23/random_flip_4/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:2F
Dsequential_23/random_flip_4/random_flip_up_down/random_uniform/shapeÍ
Bsequential_23/random_flip_4/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2D
Bsequential_23/random_flip_4/random_flip_up_down/random_uniform/minÍ
Bsequential_23/random_flip_4/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2D
Bsequential_23/random_flip_4/random_flip_up_down/random_uniform/max·
Lsequential_23/random_flip_4/random_flip_up_down/random_uniform/RandomUniformRandomUniformMsequential_23/random_flip_4/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02N
Lsequential_23/random_flip_4/random_flip_up_down/random_uniform/RandomUniformá
Bsequential_23/random_flip_4/random_flip_up_down/random_uniform/MulMulUsequential_23/random_flip_4/random_flip_up_down/random_uniform/RandomUniform:output:0Ksequential_23/random_flip_4/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
Bsequential_23/random_flip_4/random_flip_up_down/random_uniform/MulÄ
?sequential_23/random_flip_4/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_23/random_flip_4/random_flip_up_down/Reshape/shape/1Ä
?sequential_23/random_flip_4/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_23/random_flip_4/random_flip_up_down/Reshape/shape/2Ä
?sequential_23/random_flip_4/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_23/random_flip_4/random_flip_up_down/Reshape/shape/3Ú
=sequential_23/random_flip_4/random_flip_up_down/Reshape/shapePackFsequential_23/random_flip_4/random_flip_up_down/strided_slice:output:0Hsequential_23/random_flip_4/random_flip_up_down/Reshape/shape/1:output:0Hsequential_23/random_flip_4/random_flip_up_down/Reshape/shape/2:output:0Hsequential_23/random_flip_4/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2?
=sequential_23/random_flip_4/random_flip_up_down/Reshape/shapeÇ
7sequential_23/random_flip_4/random_flip_up_down/ReshapeReshapeFsequential_23/random_flip_4/random_flip_up_down/random_uniform/Mul:z:0Fsequential_23/random_flip_4/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7sequential_23/random_flip_4/random_flip_up_down/Reshapeó
5sequential_23/random_flip_4/random_flip_up_down/RoundRound@sequential_23/random_flip_4/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_flip_4/random_flip_up_down/RoundÊ
>sequential_23/random_flip_4/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_23/random_flip_4/random_flip_up_down/ReverseV2/axisÕ
9sequential_23/random_flip_4/random_flip_up_down/ReverseV2	ReverseV2Ksequential_23/random_flip_4/random_flip_up_down/control_dependency:output:0Gsequential_23/random_flip_4/random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9sequential_23/random_flip_4/random_flip_up_down/ReverseV2¬
3sequential_23/random_flip_4/random_flip_up_down/mulMul9sequential_23/random_flip_4/random_flip_up_down/Round:y:0Bsequential_23/random_flip_4/random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_flip_4/random_flip_up_down/mul³
5sequential_23/random_flip_4/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?27
5sequential_23/random_flip_4/random_flip_up_down/sub/x¦
3sequential_23/random_flip_4/random_flip_up_down/subSub>sequential_23/random_flip_4/random_flip_up_down/sub/x:output:09sequential_23/random_flip_4/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_flip_4/random_flip_up_down/sub·
5sequential_23/random_flip_4/random_flip_up_down/mul_1Mul7sequential_23/random_flip_4/random_flip_up_down/sub:z:0Ksequential_23/random_flip_4/random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_flip_4/random_flip_up_down/mul_1£
3sequential_23/random_flip_4/random_flip_up_down/addAddV27sequential_23/random_flip_4/random_flip_up_down/mul:z:09sequential_23/random_flip_4/random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_flip_4/random_flip_up_down/addµ
%sequential_23/random_rotation_4/ShapeShape7sequential_23/random_flip_4/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2'
%sequential_23/random_rotation_4/Shape´
3sequential_23/random_rotation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_23/random_rotation_4/strided_slice/stack¸
5sequential_23/random_rotation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_23/random_rotation_4/strided_slice/stack_1¸
5sequential_23/random_rotation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_23/random_rotation_4/strided_slice/stack_2¢
-sequential_23/random_rotation_4/strided_sliceStridedSlice.sequential_23/random_rotation_4/Shape:output:0<sequential_23/random_rotation_4/strided_slice/stack:output:0>sequential_23/random_rotation_4/strided_slice/stack_1:output:0>sequential_23/random_rotation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_23/random_rotation_4/strided_slice¸
5sequential_23/random_rotation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5sequential_23/random_rotation_4/strided_slice_1/stack¼
7sequential_23/random_rotation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_23/random_rotation_4/strided_slice_1/stack_1¼
7sequential_23/random_rotation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_23/random_rotation_4/strided_slice_1/stack_2¬
/sequential_23/random_rotation_4/strided_slice_1StridedSlice.sequential_23/random_rotation_4/Shape:output:0>sequential_23/random_rotation_4/strided_slice_1/stack:output:0@sequential_23/random_rotation_4/strided_slice_1/stack_1:output:0@sequential_23/random_rotation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_23/random_rotation_4/strided_slice_1¾
$sequential_23/random_rotation_4/CastCast8sequential_23/random_rotation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$sequential_23/random_rotation_4/Cast¸
5sequential_23/random_rotation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5sequential_23/random_rotation_4/strided_slice_2/stack¼
7sequential_23/random_rotation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_23/random_rotation_4/strided_slice_2/stack_1¼
7sequential_23/random_rotation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_23/random_rotation_4/strided_slice_2/stack_2¬
/sequential_23/random_rotation_4/strided_slice_2StridedSlice.sequential_23/random_rotation_4/Shape:output:0>sequential_23/random_rotation_4/strided_slice_2/stack:output:0@sequential_23/random_rotation_4/strided_slice_2/stack_1:output:0@sequential_23/random_rotation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_23/random_rotation_4/strided_slice_2Â
&sequential_23/random_rotation_4/Cast_1Cast8sequential_23/random_rotation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2(
&sequential_23/random_rotation_4/Cast_1Þ
6sequential_23/random_rotation_4/stateful_uniform/shapePack6sequential_23/random_rotation_4/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6sequential_23/random_rotation_4/stateful_uniform/shape±
4sequential_23/random_rotation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿26
4sequential_23/random_rotation_4/stateful_uniform/min±
4sequential_23/random_rotation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?26
4sequential_23/random_rotation_4/stateful_uniform/maxº
6sequential_23/random_rotation_4/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_23/random_rotation_4/stateful_uniform/Const
5sequential_23/random_rotation_4/stateful_uniform/ProdProd?sequential_23/random_rotation_4/stateful_uniform/shape:output:0?sequential_23/random_rotation_4/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 27
5sequential_23/random_rotation_4/stateful_uniform/Prod´
7sequential_23/random_rotation_4/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_23/random_rotation_4/stateful_uniform/Cast/xê
7sequential_23/random_rotation_4/stateful_uniform/Cast_1Cast>sequential_23/random_rotation_4/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 29
7sequential_23/random_rotation_4/stateful_uniform/Cast_1ù
?sequential_23/random_rotation_4/stateful_uniform/RngReadAndSkipRngReadAndSkipHsequential_23_random_rotation_4_stateful_uniform_rngreadandskip_resource@sequential_23/random_rotation_4/stateful_uniform/Cast/x:output:0;sequential_23/random_rotation_4/stateful_uniform/Cast_1:y:0*
_output_shapes
:2A
?sequential_23/random_rotation_4/stateful_uniform/RngReadAndSkipÖ
Dsequential_23/random_rotation_4/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2F
Dsequential_23/random_rotation_4/stateful_uniform/strided_slice/stackÚ
Fsequential_23/random_rotation_4/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_23/random_rotation_4/stateful_uniform/strided_slice/stack_1Ú
Fsequential_23/random_rotation_4/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_23/random_rotation_4/stateful_uniform/strided_slice/stack_2
>sequential_23/random_rotation_4/stateful_uniform/strided_sliceStridedSliceGsequential_23/random_rotation_4/stateful_uniform/RngReadAndSkip:value:0Msequential_23/random_rotation_4/stateful_uniform/strided_slice/stack:output:0Osequential_23/random_rotation_4/stateful_uniform/strided_slice/stack_1:output:0Osequential_23/random_rotation_4/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2@
>sequential_23/random_rotation_4/stateful_uniform/strided_sliceù
8sequential_23/random_rotation_4/stateful_uniform/BitcastBitcastGsequential_23/random_rotation_4/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02:
8sequential_23/random_rotation_4/stateful_uniform/BitcastÚ
Fsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stackÞ
Hsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stack_1Þ
Hsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stack_2
@sequential_23/random_rotation_4/stateful_uniform/strided_slice_1StridedSliceGsequential_23/random_rotation_4/stateful_uniform/RngReadAndSkip:value:0Osequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stack:output:0Qsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stack_1:output:0Qsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2B
@sequential_23/random_rotation_4/stateful_uniform/strided_slice_1ÿ
:sequential_23/random_rotation_4/stateful_uniform/Bitcast_1BitcastIsequential_23/random_rotation_4/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02<
:sequential_23/random_rotation_4/stateful_uniform/Bitcast_1à
Msequential_23/random_rotation_4/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2O
Msequential_23/random_rotation_4/stateful_uniform/StatelessRandomUniformV2/algø
Isequential_23/random_rotation_4/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2?sequential_23/random_rotation_4/stateful_uniform/shape:output:0Csequential_23/random_rotation_4/stateful_uniform/Bitcast_1:output:0Asequential_23/random_rotation_4/stateful_uniform/Bitcast:output:0Vsequential_23/random_rotation_4/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Isequential_23/random_rotation_4/stateful_uniform/StatelessRandomUniformV2
4sequential_23/random_rotation_4/stateful_uniform/subSub=sequential_23/random_rotation_4/stateful_uniform/max:output:0=sequential_23/random_rotation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 26
4sequential_23/random_rotation_4/stateful_uniform/sub¯
4sequential_23/random_rotation_4/stateful_uniform/mulMulRsequential_23/random_rotation_4/stateful_uniform/StatelessRandomUniformV2:output:08sequential_23/random_rotation_4/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_23/random_rotation_4/stateful_uniform/mul
0sequential_23/random_rotation_4/stateful_uniformAdd8sequential_23/random_rotation_4/stateful_uniform/mul:z:0=sequential_23/random_rotation_4/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_23/random_rotation_4/stateful_uniform³
5sequential_23/random_rotation_4/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?27
5sequential_23/random_rotation_4/rotation_matrix/sub/yþ
3sequential_23/random_rotation_4/rotation_matrix/subSub*sequential_23/random_rotation_4/Cast_1:y:0>sequential_23/random_rotation_4/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 25
3sequential_23/random_rotation_4/rotation_matrix/subÕ
3sequential_23/random_rotation_4/rotation_matrix/CosCos4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_rotation_4/rotation_matrix/Cos·
7sequential_23/random_rotation_4/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_23/random_rotation_4/rotation_matrix/sub_1/y
5sequential_23/random_rotation_4/rotation_matrix/sub_1Sub*sequential_23/random_rotation_4/Cast_1:y:0@sequential_23/random_rotation_4/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 27
5sequential_23/random_rotation_4/rotation_matrix/sub_1
3sequential_23/random_rotation_4/rotation_matrix/mulMul7sequential_23/random_rotation_4/rotation_matrix/Cos:y:09sequential_23/random_rotation_4/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_rotation_4/rotation_matrix/mulÕ
3sequential_23/random_rotation_4/rotation_matrix/SinSin4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_rotation_4/rotation_matrix/Sin·
7sequential_23/random_rotation_4/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_23/random_rotation_4/rotation_matrix/sub_2/y
5sequential_23/random_rotation_4/rotation_matrix/sub_2Sub(sequential_23/random_rotation_4/Cast:y:0@sequential_23/random_rotation_4/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 27
5sequential_23/random_rotation_4/rotation_matrix/sub_2
5sequential_23/random_rotation_4/rotation_matrix/mul_1Mul7sequential_23/random_rotation_4/rotation_matrix/Sin:y:09sequential_23/random_rotation_4/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/mul_1
5sequential_23/random_rotation_4/rotation_matrix/sub_3Sub7sequential_23/random_rotation_4/rotation_matrix/mul:z:09sequential_23/random_rotation_4/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/sub_3
5sequential_23/random_rotation_4/rotation_matrix/sub_4Sub7sequential_23/random_rotation_4/rotation_matrix/sub:z:09sequential_23/random_rotation_4/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/sub_4»
9sequential_23/random_rotation_4/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2;
9sequential_23/random_rotation_4/rotation_matrix/truediv/yª
7sequential_23/random_rotation_4/rotation_matrix/truedivRealDiv9sequential_23/random_rotation_4/rotation_matrix/sub_4:z:0Bsequential_23/random_rotation_4/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7sequential_23/random_rotation_4/rotation_matrix/truediv·
7sequential_23/random_rotation_4/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_23/random_rotation_4/rotation_matrix/sub_5/y
5sequential_23/random_rotation_4/rotation_matrix/sub_5Sub(sequential_23/random_rotation_4/Cast:y:0@sequential_23/random_rotation_4/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 27
5sequential_23/random_rotation_4/rotation_matrix/sub_5Ù
5sequential_23/random_rotation_4/rotation_matrix/Sin_1Sin4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/Sin_1·
7sequential_23/random_rotation_4/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_23/random_rotation_4/rotation_matrix/sub_6/y
5sequential_23/random_rotation_4/rotation_matrix/sub_6Sub*sequential_23/random_rotation_4/Cast_1:y:0@sequential_23/random_rotation_4/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 27
5sequential_23/random_rotation_4/rotation_matrix/sub_6
5sequential_23/random_rotation_4/rotation_matrix/mul_2Mul9sequential_23/random_rotation_4/rotation_matrix/Sin_1:y:09sequential_23/random_rotation_4/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/mul_2Ù
5sequential_23/random_rotation_4/rotation_matrix/Cos_1Cos4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/Cos_1·
7sequential_23/random_rotation_4/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_23/random_rotation_4/rotation_matrix/sub_7/y
5sequential_23/random_rotation_4/rotation_matrix/sub_7Sub(sequential_23/random_rotation_4/Cast:y:0@sequential_23/random_rotation_4/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 27
5sequential_23/random_rotation_4/rotation_matrix/sub_7
5sequential_23/random_rotation_4/rotation_matrix/mul_3Mul9sequential_23/random_rotation_4/rotation_matrix/Cos_1:y:09sequential_23/random_rotation_4/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/mul_3
3sequential_23/random_rotation_4/rotation_matrix/addAddV29sequential_23/random_rotation_4/rotation_matrix/mul_2:z:09sequential_23/random_rotation_4/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_rotation_4/rotation_matrix/add
5sequential_23/random_rotation_4/rotation_matrix/sub_8Sub9sequential_23/random_rotation_4/rotation_matrix/sub_5:z:07sequential_23/random_rotation_4/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/sub_8¿
;sequential_23/random_rotation_4/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2=
;sequential_23/random_rotation_4/rotation_matrix/truediv_1/y°
9sequential_23/random_rotation_4/rotation_matrix/truediv_1RealDiv9sequential_23/random_rotation_4/rotation_matrix/sub_8:z:0Dsequential_23/random_rotation_4/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9sequential_23/random_rotation_4/rotation_matrix/truediv_1Ò
5sequential_23/random_rotation_4/rotation_matrix/ShapeShape4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*
_output_shapes
:27
5sequential_23/random_rotation_4/rotation_matrix/ShapeÔ
Csequential_23/random_rotation_4/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential_23/random_rotation_4/rotation_matrix/strided_slice/stackØ
Esequential_23/random_rotation_4/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice/stack_1Ø
Esequential_23/random_rotation_4/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice/stack_2
=sequential_23/random_rotation_4/rotation_matrix/strided_sliceStridedSlice>sequential_23/random_rotation_4/rotation_matrix/Shape:output:0Lsequential_23/random_rotation_4/rotation_matrix/strided_slice/stack:output:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice/stack_1:output:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
=sequential_23/random_rotation_4/rotation_matrix/strided_sliceÙ
5sequential_23/random_rotation_4/rotation_matrix/Cos_2Cos4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/Cos_2ß
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stackã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stack_1ã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stack_2·
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_1StridedSlice9sequential_23/random_rotation_4/rotation_matrix/Cos_2:y:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stack:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stack_1:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_1Ù
5sequential_23/random_rotation_4/rotation_matrix/Sin_2Sin4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/Sin_2ß
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stackã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stack_1ã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stack_2·
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_2StridedSlice9sequential_23/random_rotation_4/rotation_matrix/Sin_2:y:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stack:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stack_1:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_2í
3sequential_23/random_rotation_4/rotation_matrix/NegNegHsequential_23/random_rotation_4/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_rotation_4/rotation_matrix/Negß
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stackã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stack_1ã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stack_2¹
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_3StridedSlice;sequential_23/random_rotation_4/rotation_matrix/truediv:z:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stack:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stack_1:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_3Ù
5sequential_23/random_rotation_4/rotation_matrix/Sin_3Sin4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/Sin_3ß
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stackã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stack_1ã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stack_2·
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_4StridedSlice9sequential_23/random_rotation_4/rotation_matrix/Sin_3:y:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stack:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stack_1:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_4Ù
5sequential_23/random_rotation_4/rotation_matrix/Cos_3Cos4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/Cos_3ß
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stackã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stack_1ã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stack_2·
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_5StridedSlice9sequential_23/random_rotation_4/rotation_matrix/Cos_3:y:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stack:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stack_1:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_5ß
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stackã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stack_1ã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stack_2»
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_6StridedSlice=sequential_23/random_rotation_4/rotation_matrix/truediv_1:z:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stack:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stack_1:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_6¼
;sequential_23/random_rotation_4/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_23/random_rotation_4/rotation_matrix/zeros/mul/y¬
9sequential_23/random_rotation_4/rotation_matrix/zeros/mulMulFsequential_23/random_rotation_4/rotation_matrix/strided_slice:output:0Dsequential_23/random_rotation_4/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2;
9sequential_23/random_rotation_4/rotation_matrix/zeros/mul¿
<sequential_23/random_rotation_4/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2>
<sequential_23/random_rotation_4/rotation_matrix/zeros/Less/y§
:sequential_23/random_rotation_4/rotation_matrix/zeros/LessLess=sequential_23/random_rotation_4/rotation_matrix/zeros/mul:z:0Esequential_23/random_rotation_4/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2<
:sequential_23/random_rotation_4/rotation_matrix/zeros/LessÂ
>sequential_23/random_rotation_4/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_23/random_rotation_4/rotation_matrix/zeros/packed/1Ã
<sequential_23/random_rotation_4/rotation_matrix/zeros/packedPackFsequential_23/random_rotation_4/rotation_matrix/strided_slice:output:0Gsequential_23/random_rotation_4/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2>
<sequential_23/random_rotation_4/rotation_matrix/zeros/packed¿
;sequential_23/random_rotation_4/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2=
;sequential_23/random_rotation_4/rotation_matrix/zeros/Constµ
5sequential_23/random_rotation_4/rotation_matrix/zerosFillEsequential_23/random_rotation_4/rotation_matrix/zeros/packed:output:0Dsequential_23/random_rotation_4/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/zeros¼
;sequential_23/random_rotation_4/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_23/random_rotation_4/rotation_matrix/concat/axisè
6sequential_23/random_rotation_4/rotation_matrix/concatConcatV2Hsequential_23/random_rotation_4/rotation_matrix/strided_slice_1:output:07sequential_23/random_rotation_4/rotation_matrix/Neg:y:0Hsequential_23/random_rotation_4/rotation_matrix/strided_slice_3:output:0Hsequential_23/random_rotation_4/rotation_matrix/strided_slice_4:output:0Hsequential_23/random_rotation_4/rotation_matrix/strided_slice_5:output:0Hsequential_23/random_rotation_4/rotation_matrix/strided_slice_6:output:0>sequential_23/random_rotation_4/rotation_matrix/zeros:output:0Dsequential_23/random_rotation_4/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_23/random_rotation_4/rotation_matrix/concatÉ
/sequential_23/random_rotation_4/transform/ShapeShape7sequential_23/random_flip_4/random_flip_up_down/add:z:0*
T0*
_output_shapes
:21
/sequential_23/random_rotation_4/transform/ShapeÈ
=sequential_23/random_rotation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_23/random_rotation_4/transform/strided_slice/stackÌ
?sequential_23/random_rotation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_23/random_rotation_4/transform/strided_slice/stack_1Ì
?sequential_23/random_rotation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_23/random_rotation_4/transform/strided_slice/stack_2Ê
7sequential_23/random_rotation_4/transform/strided_sliceStridedSlice8sequential_23/random_rotation_4/transform/Shape:output:0Fsequential_23/random_rotation_4/transform/strided_slice/stack:output:0Hsequential_23/random_rotation_4/transform/strided_slice/stack_1:output:0Hsequential_23/random_rotation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:29
7sequential_23/random_rotation_4/transform/strided_slice±
4sequential_23/random_rotation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_23/random_rotation_4/transform/fill_value
Dsequential_23/random_rotation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV37sequential_23/random_flip_4/random_flip_up_down/add:z:0?sequential_23/random_rotation_4/rotation_matrix/concat:output:0@sequential_23/random_rotation_4/transform/strided_slice:output:0=sequential_23/random_rotation_4/transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2F
Dsequential_23/random_rotation_4/transform/ImageProjectiveTransformV3³
conv2d_90/Conv2D/ReadVariableOpReadVariableOp(conv2d_90_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_90/Conv2D/ReadVariableOp
conv2d_90/Conv2DConv2DYsequential_23/random_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_90/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *
paddingVALID*
strides
2
conv2d_90/Conv2Dª
 conv2d_90/BiasAdd/ReadVariableOpReadVariableOp)conv2d_90_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_90/BiasAdd/ReadVariableOp²
conv2d_90/BiasAddBiasAddconv2d_90/Conv2D:output:0(conv2d_90/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2
conv2d_90/BiasAdd
conv2d_90/ReluReluconv2d_90/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2
conv2d_90/ReluÊ
max_pooling2d_90/MaxPoolMaxPoolconv2d_90/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_90/MaxPool³
conv2d_91/Conv2D/ReadVariableOpReadVariableOp(conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_91/Conv2D/ReadVariableOpÝ
conv2d_91/Conv2DConv2D!max_pooling2d_90/MaxPool:output:0'conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*
paddingVALID*
strides
2
conv2d_91/Conv2Dª
 conv2d_91/BiasAdd/ReadVariableOpReadVariableOp)conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_91/BiasAdd/ReadVariableOp°
conv2d_91/BiasAddBiasAddconv2d_91/Conv2D:output:0(conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2
conv2d_91/BiasAdd~
conv2d_91/ReluReluconv2d_91/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2
conv2d_91/ReluÊ
max_pooling2d_91/MaxPoolMaxPoolconv2d_91/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_91/MaxPool³
conv2d_92/Conv2D/ReadVariableOpReadVariableOp(conv2d_92_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_92/Conv2D/ReadVariableOpÝ
conv2d_92/Conv2DConv2D!max_pooling2d_91/MaxPool:output:0'conv2d_92/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*
paddingVALID*
strides
2
conv2d_92/Conv2Dª
 conv2d_92/BiasAdd/ReadVariableOpReadVariableOp)conv2d_92_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_92/BiasAdd/ReadVariableOp°
conv2d_92/BiasAddBiasAddconv2d_92/Conv2D:output:0(conv2d_92/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2
conv2d_92/BiasAdd~
conv2d_92/ReluReluconv2d_92/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2
conv2d_92/ReluÊ
max_pooling2d_92/MaxPoolMaxPoolconv2d_92/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_92/MaxPool³
conv2d_93/Conv2D/ReadVariableOpReadVariableOp(conv2d_93_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_93/Conv2D/ReadVariableOpÝ
conv2d_93/Conv2DConv2D!max_pooling2d_92/MaxPool:output:0'conv2d_93/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_93/Conv2Dª
 conv2d_93/BiasAdd/ReadVariableOpReadVariableOp)conv2d_93_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_93/BiasAdd/ReadVariableOp°
conv2d_93/BiasAddBiasAddconv2d_93/Conv2D:output:0(conv2d_93/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_93/BiasAdd~
conv2d_93/ReluReluconv2d_93/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_93/ReluÊ
max_pooling2d_93/MaxPoolMaxPoolconv2d_93/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_93/MaxPool³
conv2d_94/Conv2D/ReadVariableOpReadVariableOp(conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_94/Conv2D/ReadVariableOpÝ
conv2d_94/Conv2DConv2D!max_pooling2d_93/MaxPool:output:0'conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_94/Conv2Dª
 conv2d_94/BiasAdd/ReadVariableOpReadVariableOp)conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_94/BiasAdd/ReadVariableOp°
conv2d_94/BiasAddBiasAddconv2d_94/Conv2D:output:0(conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_94/BiasAdd~
conv2d_94/ReluReluconv2d_94/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_94/ReluÊ
max_pooling2d_94/MaxPoolMaxPoolconv2d_94/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_94/MaxPool³
conv2d_95/Conv2D/ReadVariableOpReadVariableOp(conv2d_95_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_95/Conv2D/ReadVariableOpÝ
conv2d_95/Conv2DConv2D!max_pooling2d_94/MaxPool:output:0'conv2d_95/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_95/Conv2Dª
 conv2d_95/BiasAdd/ReadVariableOpReadVariableOp)conv2d_95_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_95/BiasAdd/ReadVariableOp°
conv2d_95/BiasAddBiasAddconv2d_95/Conv2D:output:0(conv2d_95/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_95/BiasAdd~
conv2d_95/ReluReluconv2d_95/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_95/ReluÊ
max_pooling2d_95/MaxPoolMaxPoolconv2d_95/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_95/MaxPoolu
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten_15/Const¤
flatten_15/ReshapeReshape!max_pooling2d_95/MaxPool:output:0flatten_15/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_15/Reshape©
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02 
dense_30/MatMul/ReadVariableOp£
dense_30/MatMulMatMulflatten_15/Reshape:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/MatMul§
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_30/BiasAdd/ReadVariableOp¥
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/BiasAdds
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/Relu¨
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02 
dense_31/MatMul/ReadVariableOp£
dense_31/MatMulMatMuldense_30/Relu:activations:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_31/MatMul§
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_31/BiasAdd/ReadVariableOp¥
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_31/BiasAdd|
dense_31/SoftmaxSoftmaxdense_31/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_31/SoftmaxÔ
IdentityIdentitydense_31/Softmax:softmax:0!^conv2d_90/BiasAdd/ReadVariableOp ^conv2d_90/Conv2D/ReadVariableOp!^conv2d_91/BiasAdd/ReadVariableOp ^conv2d_91/Conv2D/ReadVariableOp!^conv2d_92/BiasAdd/ReadVariableOp ^conv2d_92/Conv2D/ReadVariableOp!^conv2d_93/BiasAdd/ReadVariableOp ^conv2d_93/Conv2D/ReadVariableOp!^conv2d_94/BiasAdd/ReadVariableOp ^conv2d_94/Conv2D/ReadVariableOp!^conv2d_95/BiasAdd/ReadVariableOp ^conv2d_95/Conv2D/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp@^sequential_23/random_rotation_4/stateful_uniform/RngReadAndSkip*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : 2D
 conv2d_90/BiasAdd/ReadVariableOp conv2d_90/BiasAdd/ReadVariableOp2B
conv2d_90/Conv2D/ReadVariableOpconv2d_90/Conv2D/ReadVariableOp2D
 conv2d_91/BiasAdd/ReadVariableOp conv2d_91/BiasAdd/ReadVariableOp2B
conv2d_91/Conv2D/ReadVariableOpconv2d_91/Conv2D/ReadVariableOp2D
 conv2d_92/BiasAdd/ReadVariableOp conv2d_92/BiasAdd/ReadVariableOp2B
conv2d_92/Conv2D/ReadVariableOpconv2d_92/Conv2D/ReadVariableOp2D
 conv2d_93/BiasAdd/ReadVariableOp conv2d_93/BiasAdd/ReadVariableOp2B
conv2d_93/Conv2D/ReadVariableOpconv2d_93/Conv2D/ReadVariableOp2D
 conv2d_94/BiasAdd/ReadVariableOp conv2d_94/BiasAdd/ReadVariableOp2B
conv2d_94/Conv2D/ReadVariableOpconv2d_94/Conv2D/ReadVariableOp2D
 conv2d_95/BiasAdd/ReadVariableOp conv2d_95/BiasAdd/ReadVariableOp2B
conv2d_95/Conv2D/ReadVariableOpconv2d_95/Conv2D/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2
?sequential_23/random_rotation_4/stateful_uniform/RngReadAndSkip?sequential_23/random_rotation_4/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á

n
H__inference_sequential_22_layer_call_and_return_conditional_losses_28282
resizing_3_input
identity
resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing_3/resize/sizeß
 resizing_3/resize/ResizeBilinearResizeBilinearresizing_3_inputresizing_3/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2"
 resizing_3/resize/ResizeBilinearm
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
rescaling_3/Cast/xq
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_3/Cast_1/xµ
rescaling_3/mulMul1resizing_3/resize/ResizeBilinear:resized_images:0rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rescaling_3/mul
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rescaling_3/addq
IdentityIdentityrescaling_3/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:c _
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameresizing_3_input
¯

õ
C__inference_dense_30_layer_call_and_return_conditional_losses_28826

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
F
*__inference_flatten_15_layer_call_fn_28815

inputs
identityÄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_269912
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

ý
D__inference_conv2d_95_layer_call_and_return_conditional_losses_26978

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ã

)__inference_conv2d_92_layer_call_fn_28744

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_92_layer_call_and_return_conditional_losses_269242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ>>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@
 
_user_specified_nameinputs
×
L
0__inference_max_pooling2d_95_layer_call_fn_26868

inputs
identityì
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_95_layer_call_and_return_conditional_losses_268622
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
L
0__inference_max_pooling2d_91_layer_call_fn_26820

inputs
identityì
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_268142
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å
×
-__inference_sequential_24_layer_call_fn_28137
sequential_22_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@

unknown_13:@


unknown_14:

identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCallsequential_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_24_layer_call_and_return_conditional_losses_270282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesequential_22_input

ý
D__inference_conv2d_91_layer_call_and_return_conditional_losses_26906

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

ñ
-__inference_sequential_24_layer_call_fn_28252
sequential_22_input
unknown:	#
	unknown_0: 
	unknown_1: #
	unknown_2: @
	unknown_3:@#
	unknown_4:@@
	unknown_5:@#
	unknown_6:@@
	unknown_7:@#
	unknown_8:@@
	unknown_9:@$

unknown_10:@@

unknown_11:@

unknown_12:	@

unknown_13:@

unknown_14:@


unknown_15:

identity¢StatefulPartitionedCallÍ
StatefulPartitionedCallStatefulPartitionedCallsequential_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_24_layer_call_and_return_conditional_losses_272432
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesequential_22_input
®I
Â
H__inference_sequential_24_layer_call_and_return_conditional_losses_27028

inputs)
conv2d_90_26889: 
conv2d_90_26891: )
conv2d_91_26907: @
conv2d_91_26909:@)
conv2d_92_26925:@@
conv2d_92_26927:@)
conv2d_93_26943:@@
conv2d_93_26945:@)
conv2d_94_26961:@@
conv2d_94_26963:@)
conv2d_95_26979:@@
conv2d_95_26981:@!
dense_30_27005:	@
dense_30_27007:@ 
dense_31_27022:@

dense_31_27024:

identity¢!conv2d_90/StatefulPartitionedCall¢!conv2d_91/StatefulPartitionedCall¢!conv2d_92/StatefulPartitionedCall¢!conv2d_93/StatefulPartitionedCall¢!conv2d_94/StatefulPartitionedCall¢!conv2d_95/StatefulPartitionedCall¢ dense_30/StatefulPartitionedCall¢ dense_31/StatefulPartitionedCallì
sequential_22/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_22_layer_call_and_return_conditional_losses_263742
sequential_22/PartitionedCall
sequential_23/PartitionedCallPartitionedCall&sequential_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_23_layer_call_and_return_conditional_losses_264302
sequential_23/PartitionedCallÀ
!conv2d_90/StatefulPartitionedCallStatefulPartitionedCall&sequential_23/PartitionedCall:output:0conv2d_90_26889conv2d_90_26891*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_90_layer_call_and_return_conditional_losses_268882#
!conv2d_90/StatefulPartitionedCall
 max_pooling2d_90/PartitionedCallPartitionedCall*conv2d_90/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_268022"
 max_pooling2d_90/PartitionedCallÁ
!conv2d_91/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_90/PartitionedCall:output:0conv2d_91_26907conv2d_91_26909*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_91_layer_call_and_return_conditional_losses_269062#
!conv2d_91/StatefulPartitionedCall
 max_pooling2d_91/PartitionedCallPartitionedCall*conv2d_91/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_268142"
 max_pooling2d_91/PartitionedCallÁ
!conv2d_92/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_91/PartitionedCall:output:0conv2d_92_26925conv2d_92_26927*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_92_layer_call_and_return_conditional_losses_269242#
!conv2d_92/StatefulPartitionedCall
 max_pooling2d_92/PartitionedCallPartitionedCall*conv2d_92/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_268262"
 max_pooling2d_92/PartitionedCallÁ
!conv2d_93/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_92/PartitionedCall:output:0conv2d_93_26943conv2d_93_26945*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_93_layer_call_and_return_conditional_losses_269422#
!conv2d_93/StatefulPartitionedCall
 max_pooling2d_93/PartitionedCallPartitionedCall*conv2d_93/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_268382"
 max_pooling2d_93/PartitionedCallÁ
!conv2d_94/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_93/PartitionedCall:output:0conv2d_94_26961conv2d_94_26963*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_94_layer_call_and_return_conditional_losses_269602#
!conv2d_94/StatefulPartitionedCall
 max_pooling2d_94/PartitionedCallPartitionedCall*conv2d_94/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_94_layer_call_and_return_conditional_losses_268502"
 max_pooling2d_94/PartitionedCallÁ
!conv2d_95/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_94/PartitionedCall:output:0conv2d_95_26979conv2d_95_26981*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_95_layer_call_and_return_conditional_losses_269782#
!conv2d_95/StatefulPartitionedCall
 max_pooling2d_95/PartitionedCallPartitionedCall*conv2d_95/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_95_layer_call_and_return_conditional_losses_268622"
 max_pooling2d_95/PartitionedCallý
flatten_15/PartitionedCallPartitionedCall)max_pooling2d_95/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_269912
flatten_15/PartitionedCall®
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_30_27005dense_30_27007*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_30_layer_call_and_return_conditional_losses_270042"
 dense_30/StatefulPartitionedCall´
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_27022dense_31_27024*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_31_layer_call_and_return_conditional_losses_270212"
 dense_31/StatefulPartitionedCall
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0"^conv2d_90/StatefulPartitionedCall"^conv2d_91/StatefulPartitionedCall"^conv2d_92/StatefulPartitionedCall"^conv2d_93/StatefulPartitionedCall"^conv2d_94/StatefulPartitionedCall"^conv2d_95/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 2F
!conv2d_90/StatefulPartitionedCall!conv2d_90/StatefulPartitionedCall2F
!conv2d_91/StatefulPartitionedCall!conv2d_91/StatefulPartitionedCall2F
!conv2d_92/StatefulPartitionedCall!conv2d_92/StatefulPartitionedCall2F
!conv2d_93/StatefulPartitionedCall!conv2d_93/StatefulPartitionedCall2F
!conv2d_94/StatefulPartitionedCall!conv2d_94/StatefulPartitionedCall2F
!conv2d_95/StatefulPartitionedCall!conv2d_95/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡
ý
D__inference_conv2d_90_layer_call_and_return_conditional_losses_28695

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2
Relu¡
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_91_layer_call_and_return_conditional_losses_28715

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¡®
å
H__inference_sequential_23_layer_call_and_return_conditional_losses_28486

inputsH
:random_rotation_4_stateful_uniform_rngreadandskip_resource:	
identity¢1random_rotation_4/stateful_uniform/RngReadAndSkipÝ
7random_flip_4/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7random_flip_4/random_flip_left_right/control_dependencyÈ
*random_flip_4/random_flip_left_right/ShapeShape@random_flip_4/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_4/random_flip_left_right/Shape¾
8random_flip_4/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_4/random_flip_left_right/strided_slice/stackÂ
:random_flip_4/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_4/random_flip_left_right/strided_slice/stack_1Â
:random_flip_4/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_4/random_flip_left_right/strided_slice/stack_2À
2random_flip_4/random_flip_left_right/strided_sliceStridedSlice3random_flip_4/random_flip_left_right/Shape:output:0Arandom_flip_4/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_4/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_4/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_4/random_flip_left_right/strided_sliceé
9random_flip_4/random_flip_left_right/random_uniform/shapePack;random_flip_4/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_4/random_flip_left_right/random_uniform/shape·
7random_flip_4/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_4/random_flip_left_right/random_uniform/min·
7random_flip_4/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7random_flip_4/random_flip_left_right/random_uniform/max
Arandom_flip_4/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_4/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02C
Arandom_flip_4/random_flip_left_right/random_uniform/RandomUniformµ
7random_flip_4/random_flip_left_right/random_uniform/MulMulJrandom_flip_4/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_4/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7random_flip_4/random_flip_left_right/random_uniform/Mul®
4random_flip_4/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_4/random_flip_left_right/Reshape/shape/1®
4random_flip_4/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_4/random_flip_left_right/Reshape/shape/2®
4random_flip_4/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_4/random_flip_left_right/Reshape/shape/3
2random_flip_4/random_flip_left_right/Reshape/shapePack;random_flip_4/random_flip_left_right/strided_slice:output:0=random_flip_4/random_flip_left_right/Reshape/shape/1:output:0=random_flip_4/random_flip_left_right/Reshape/shape/2:output:0=random_flip_4/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_4/random_flip_left_right/Reshape/shape
,random_flip_4/random_flip_left_right/ReshapeReshape;random_flip_4/random_flip_left_right/random_uniform/Mul:z:0;random_flip_4/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,random_flip_4/random_flip_left_right/ReshapeÒ
*random_flip_4/random_flip_left_right/RoundRound5random_flip_4/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*random_flip_4/random_flip_left_right/Round´
3random_flip_4/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_4/random_flip_left_right/ReverseV2/axis©
.random_flip_4/random_flip_left_right/ReverseV2	ReverseV2@random_flip_4/random_flip_left_right/control_dependency:output:0<random_flip_4/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.random_flip_4/random_flip_left_right/ReverseV2
(random_flip_4/random_flip_left_right/mulMul.random_flip_4/random_flip_left_right/Round:y:07random_flip_4/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_flip_4/random_flip_left_right/mul
*random_flip_4/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_flip_4/random_flip_left_right/sub/xú
(random_flip_4/random_flip_left_right/subSub3random_flip_4/random_flip_left_right/sub/x:output:0.random_flip_4/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_flip_4/random_flip_left_right/sub
*random_flip_4/random_flip_left_right/mul_1Mul,random_flip_4/random_flip_left_right/sub:z:0@random_flip_4/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*random_flip_4/random_flip_left_right/mul_1÷
(random_flip_4/random_flip_left_right/addAddV2,random_flip_4/random_flip_left_right/mul:z:0.random_flip_4/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_flip_4/random_flip_left_right/add
4random_flip_4/random_flip_up_down/control_dependencyIdentity,random_flip_4/random_flip_left_right/add:z:0*
T0*;
_class1
/-loc:@random_flip_4/random_flip_left_right/add*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4random_flip_4/random_flip_up_down/control_dependency¿
'random_flip_4/random_flip_up_down/ShapeShape=random_flip_4/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:2)
'random_flip_4/random_flip_up_down/Shape¸
5random_flip_4/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_flip_4/random_flip_up_down/strided_slice/stack¼
7random_flip_4/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_4/random_flip_up_down/strided_slice/stack_1¼
7random_flip_4/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_4/random_flip_up_down/strided_slice/stack_2®
/random_flip_4/random_flip_up_down/strided_sliceStridedSlice0random_flip_4/random_flip_up_down/Shape:output:0>random_flip_4/random_flip_up_down/strided_slice/stack:output:0@random_flip_4/random_flip_up_down/strided_slice/stack_1:output:0@random_flip_4/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_flip_4/random_flip_up_down/strided_sliceà
6random_flip_4/random_flip_up_down/random_uniform/shapePack8random_flip_4/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6random_flip_4/random_flip_up_down/random_uniform/shape±
4random_flip_4/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4random_flip_4/random_flip_up_down/random_uniform/min±
4random_flip_4/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?26
4random_flip_4/random_flip_up_down/random_uniform/max
>random_flip_4/random_flip_up_down/random_uniform/RandomUniformRandomUniform?random_flip_4/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02@
>random_flip_4/random_flip_up_down/random_uniform/RandomUniform©
4random_flip_4/random_flip_up_down/random_uniform/MulMulGrandom_flip_4/random_flip_up_down/random_uniform/RandomUniform:output:0=random_flip_4/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4random_flip_4/random_flip_up_down/random_uniform/Mul¨
1random_flip_4/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_4/random_flip_up_down/Reshape/shape/1¨
1random_flip_4/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_4/random_flip_up_down/Reshape/shape/2¨
1random_flip_4/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_4/random_flip_up_down/Reshape/shape/3
/random_flip_4/random_flip_up_down/Reshape/shapePack8random_flip_4/random_flip_up_down/strided_slice:output:0:random_flip_4/random_flip_up_down/Reshape/shape/1:output:0:random_flip_4/random_flip_up_down/Reshape/shape/2:output:0:random_flip_4/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:21
/random_flip_4/random_flip_up_down/Reshape/shape
)random_flip_4/random_flip_up_down/ReshapeReshape8random_flip_4/random_flip_up_down/random_uniform/Mul:z:08random_flip_4/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_flip_4/random_flip_up_down/ReshapeÉ
'random_flip_4/random_flip_up_down/RoundRound2random_flip_4/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_flip_4/random_flip_up_down/Round®
0random_flip_4/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:22
0random_flip_4/random_flip_up_down/ReverseV2/axis
+random_flip_4/random_flip_up_down/ReverseV2	ReverseV2=random_flip_4/random_flip_up_down/control_dependency:output:09random_flip_4/random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+random_flip_4/random_flip_up_down/ReverseV2ô
%random_flip_4/random_flip_up_down/mulMul+random_flip_4/random_flip_up_down/Round:y:04random_flip_4/random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_flip_4/random_flip_up_down/mul
'random_flip_4/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2)
'random_flip_4/random_flip_up_down/sub/xî
%random_flip_4/random_flip_up_down/subSub0random_flip_4/random_flip_up_down/sub/x:output:0+random_flip_4/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_flip_4/random_flip_up_down/subÿ
'random_flip_4/random_flip_up_down/mul_1Mul)random_flip_4/random_flip_up_down/sub:z:0=random_flip_4/random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_flip_4/random_flip_up_down/mul_1ë
%random_flip_4/random_flip_up_down/addAddV2)random_flip_4/random_flip_up_down/mul:z:0+random_flip_4/random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_flip_4/random_flip_up_down/add
random_rotation_4/ShapeShape)random_flip_4/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2
random_rotation_4/Shape
%random_rotation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_4/strided_slice/stack
'random_rotation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice/stack_1
'random_rotation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice/stack_2Î
random_rotation_4/strided_sliceStridedSlice random_rotation_4/Shape:output:0.random_rotation_4/strided_slice/stack:output:00random_rotation_4/strided_slice/stack_1:output:00random_rotation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_4/strided_slice
'random_rotation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice_1/stack 
)random_rotation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_1/stack_1 
)random_rotation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_1/stack_2Ø
!random_rotation_4/strided_slice_1StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_1/stack:output:02random_rotation_4/strided_slice_1/stack_1:output:02random_rotation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_4/strided_slice_1
random_rotation_4/CastCast*random_rotation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_4/Cast
'random_rotation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice_2/stack 
)random_rotation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_2/stack_1 
)random_rotation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_2/stack_2Ø
!random_rotation_4/strided_slice_2StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_2/stack:output:02random_rotation_4/strided_slice_2/stack_1:output:02random_rotation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_4/strided_slice_2
random_rotation_4/Cast_1Cast*random_rotation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_4/Cast_1´
(random_rotation_4/stateful_uniform/shapePack(random_rotation_4/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_4/stateful_uniform/shape
&random_rotation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿2(
&random_rotation_4/stateful_uniform/min
&random_rotation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?2(
&random_rotation_4/stateful_uniform/max
(random_rotation_4/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_rotation_4/stateful_uniform/Constá
'random_rotation_4/stateful_uniform/ProdProd1random_rotation_4/stateful_uniform/shape:output:01random_rotation_4/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/stateful_uniform/Prod
)random_rotation_4/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_rotation_4/stateful_uniform/Cast/xÀ
)random_rotation_4/stateful_uniform/Cast_1Cast0random_rotation_4/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2+
)random_rotation_4/stateful_uniform/Cast_1³
1random_rotation_4/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_4_stateful_uniform_rngreadandskip_resource2random_rotation_4/stateful_uniform/Cast/x:output:0-random_rotation_4/stateful_uniform/Cast_1:y:0*
_output_shapes
:23
1random_rotation_4/stateful_uniform/RngReadAndSkipº
6random_rotation_4/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_4/stateful_uniform/strided_slice/stack¾
8random_rotation_4/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_4/stateful_uniform/strided_slice/stack_1¾
8random_rotation_4/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_4/stateful_uniform/strided_slice/stack_2º
0random_rotation_4/stateful_uniform/strided_sliceStridedSlice9random_rotation_4/stateful_uniform/RngReadAndSkip:value:0?random_rotation_4/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_4/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_4/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask22
0random_rotation_4/stateful_uniform/strided_sliceÏ
*random_rotation_4/stateful_uniform/BitcastBitcast9random_rotation_4/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation_4/stateful_uniform/Bitcast¾
8random_rotation_4/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_4/stateful_uniform/strided_slice_1/stackÂ
:random_rotation_4/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_4/stateful_uniform/strided_slice_1/stack_1Â
:random_rotation_4/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_4/stateful_uniform/strided_slice_1/stack_2²
2random_rotation_4/stateful_uniform/strided_slice_1StridedSlice9random_rotation_4/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_4/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_4/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_4/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:24
2random_rotation_4/stateful_uniform/strided_slice_1Õ
,random_rotation_4/stateful_uniform/Bitcast_1Bitcast;random_rotation_4/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02.
,random_rotation_4/stateful_uniform/Bitcast_1Ä
?random_rotation_4/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2A
?random_rotation_4/stateful_uniform/StatelessRandomUniformV2/alg¤
;random_rotation_4/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_4/stateful_uniform/shape:output:05random_rotation_4/stateful_uniform/Bitcast_1:output:03random_rotation_4/stateful_uniform/Bitcast:output:0Hrandom_rotation_4/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;random_rotation_4/stateful_uniform/StatelessRandomUniformV2Ú
&random_rotation_4/stateful_uniform/subSub/random_rotation_4/stateful_uniform/max:output:0/random_rotation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_4/stateful_uniform/sub÷
&random_rotation_4/stateful_uniform/mulMulDrandom_rotation_4/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_4/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_4/stateful_uniform/mulÚ
"random_rotation_4/stateful_uniformAdd*random_rotation_4/stateful_uniform/mul:z:0/random_rotation_4/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"random_rotation_4/stateful_uniform
'random_rotation_4/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2)
'random_rotation_4/rotation_matrix/sub/yÆ
%random_rotation_4/rotation_matrix/subSubrandom_rotation_4/Cast_1:y:00random_rotation_4/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_4/rotation_matrix/sub«
%random_rotation_4/rotation_matrix/CosCos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/Cos
)random_rotation_4/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_1/yÌ
'random_rotation_4/rotation_matrix/sub_1Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_1Û
%random_rotation_4/rotation_matrix/mulMul)random_rotation_4/rotation_matrix/Cos:y:0+random_rotation_4/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/mul«
%random_rotation_4/rotation_matrix/SinSin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/Sin
)random_rotation_4/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_2/yÊ
'random_rotation_4/rotation_matrix/sub_2Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_2ß
'random_rotation_4/rotation_matrix/mul_1Mul)random_rotation_4/rotation_matrix/Sin:y:0+random_rotation_4/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/mul_1ß
'random_rotation_4/rotation_matrix/sub_3Sub)random_rotation_4/rotation_matrix/mul:z:0+random_rotation_4/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/sub_3ß
'random_rotation_4/rotation_matrix/sub_4Sub)random_rotation_4/rotation_matrix/sub:z:0+random_rotation_4/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/sub_4
+random_rotation_4/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_4/rotation_matrix/truediv/yò
)random_rotation_4/rotation_matrix/truedivRealDiv+random_rotation_4/rotation_matrix/sub_4:z:04random_rotation_4/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_rotation_4/rotation_matrix/truediv
)random_rotation_4/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_5/yÊ
'random_rotation_4/rotation_matrix/sub_5Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_5¯
'random_rotation_4/rotation_matrix/Sin_1Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Sin_1
)random_rotation_4/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_6/yÌ
'random_rotation_4/rotation_matrix/sub_6Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_6á
'random_rotation_4/rotation_matrix/mul_2Mul+random_rotation_4/rotation_matrix/Sin_1:y:0+random_rotation_4/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/mul_2¯
'random_rotation_4/rotation_matrix/Cos_1Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Cos_1
)random_rotation_4/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_7/yÊ
'random_rotation_4/rotation_matrix/sub_7Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_7á
'random_rotation_4/rotation_matrix/mul_3Mul+random_rotation_4/rotation_matrix/Cos_1:y:0+random_rotation_4/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/mul_3ß
%random_rotation_4/rotation_matrix/addAddV2+random_rotation_4/rotation_matrix/mul_2:z:0+random_rotation_4/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/addß
'random_rotation_4/rotation_matrix/sub_8Sub+random_rotation_4/rotation_matrix/sub_5:z:0)random_rotation_4/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/sub_8£
-random_rotation_4/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_4/rotation_matrix/truediv_1/yø
+random_rotation_4/rotation_matrix/truediv_1RealDiv+random_rotation_4/rotation_matrix/sub_8:z:06random_rotation_4/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+random_rotation_4/rotation_matrix/truediv_1¨
'random_rotation_4/rotation_matrix/ShapeShape&random_rotation_4/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_4/rotation_matrix/Shape¸
5random_rotation_4/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_4/rotation_matrix/strided_slice/stack¼
7random_rotation_4/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_4/rotation_matrix/strided_slice/stack_1¼
7random_rotation_4/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_4/rotation_matrix/strided_slice/stack_2®
/random_rotation_4/rotation_matrix/strided_sliceStridedSlice0random_rotation_4/rotation_matrix/Shape:output:0>random_rotation_4/rotation_matrix/strided_slice/stack:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_4/rotation_matrix/strided_slice¯
'random_rotation_4/rotation_matrix/Cos_2Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Cos_2Ã
7random_rotation_4/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_1/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_1/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_1/stack_2ã
1random_rotation_4/rotation_matrix/strided_slice_1StridedSlice+random_rotation_4/rotation_matrix/Cos_2:y:0@random_rotation_4/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_1¯
'random_rotation_4/rotation_matrix/Sin_2Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Sin_2Ã
7random_rotation_4/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_2/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_2/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_2/stack_2ã
1random_rotation_4/rotation_matrix/strided_slice_2StridedSlice+random_rotation_4/rotation_matrix/Sin_2:y:0@random_rotation_4/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_2Ã
%random_rotation_4/rotation_matrix/NegNeg:random_rotation_4/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/NegÃ
7random_rotation_4/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_3/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_3/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_3/stack_2å
1random_rotation_4/rotation_matrix/strided_slice_3StridedSlice-random_rotation_4/rotation_matrix/truediv:z:0@random_rotation_4/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_3¯
'random_rotation_4/rotation_matrix/Sin_3Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Sin_3Ã
7random_rotation_4/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_4/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_4/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_4/stack_2ã
1random_rotation_4/rotation_matrix/strided_slice_4StridedSlice+random_rotation_4/rotation_matrix/Sin_3:y:0@random_rotation_4/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_4¯
'random_rotation_4/rotation_matrix/Cos_3Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Cos_3Ã
7random_rotation_4/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_5/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_5/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_5/stack_2ã
1random_rotation_4/rotation_matrix/strided_slice_5StridedSlice+random_rotation_4/rotation_matrix/Cos_3:y:0@random_rotation_4/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_5Ã
7random_rotation_4/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_6/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_6/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_6/stack_2ç
1random_rotation_4/rotation_matrix/strided_slice_6StridedSlice/random_rotation_4/rotation_matrix/truediv_1:z:0@random_rotation_4/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_6 
-random_rotation_4/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_4/rotation_matrix/zeros/mul/yô
+random_rotation_4/rotation_matrix/zeros/mulMul8random_rotation_4/rotation_matrix/strided_slice:output:06random_rotation_4/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_4/rotation_matrix/zeros/mul£
.random_rotation_4/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è20
.random_rotation_4/rotation_matrix/zeros/Less/yï
,random_rotation_4/rotation_matrix/zeros/LessLess/random_rotation_4/rotation_matrix/zeros/mul:z:07random_rotation_4/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_4/rotation_matrix/zeros/Less¦
0random_rotation_4/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_4/rotation_matrix/zeros/packed/1
.random_rotation_4/rotation_matrix/zeros/packedPack8random_rotation_4/rotation_matrix/strided_slice:output:09random_rotation_4/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_4/rotation_matrix/zeros/packed£
-random_rotation_4/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_4/rotation_matrix/zeros/Constý
'random_rotation_4/rotation_matrix/zerosFill7random_rotation_4/rotation_matrix/zeros/packed:output:06random_rotation_4/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/zeros 
-random_rotation_4/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_4/rotation_matrix/concat/axisÜ
(random_rotation_4/rotation_matrix/concatConcatV2:random_rotation_4/rotation_matrix/strided_slice_1:output:0)random_rotation_4/rotation_matrix/Neg:y:0:random_rotation_4/rotation_matrix/strided_slice_3:output:0:random_rotation_4/rotation_matrix/strided_slice_4:output:0:random_rotation_4/rotation_matrix/strided_slice_5:output:0:random_rotation_4/rotation_matrix/strided_slice_6:output:00random_rotation_4/rotation_matrix/zeros:output:06random_rotation_4/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_4/rotation_matrix/concat
!random_rotation_4/transform/ShapeShape)random_flip_4/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2#
!random_rotation_4/transform/Shape¬
/random_rotation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_4/transform/strided_slice/stack°
1random_rotation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_4/transform/strided_slice/stack_1°
1random_rotation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_4/transform/strided_slice/stack_2ö
)random_rotation_4/transform/strided_sliceStridedSlice*random_rotation_4/transform/Shape:output:08random_rotation_4/transform/strided_slice/stack:output:0:random_rotation_4/transform/strided_slice/stack_1:output:0:random_rotation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_4/transform/strided_slice
&random_rotation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_4/transform/fill_valueÆ
6random_rotation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3)random_flip_4/random_flip_up_down/add:z:01random_rotation_4/rotation_matrix/concat:output:02random_rotation_4/transform/strided_slice:output:0/random_rotation_4/transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_4/transform/ImageProjectiveTransformV3Ý
IdentityIdentityKrandom_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:02^random_rotation_4/stateful_uniform/RngReadAndSkip*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 2f
1random_rotation_4/stateful_uniform/RngReadAndSkip1random_rotation_4/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æv

__inference__traced_save_29065
file_prefix/
+savev2_conv2d_90_kernel_read_readvariableop-
)savev2_conv2d_90_bias_read_readvariableop/
+savev2_conv2d_91_kernel_read_readvariableop-
)savev2_conv2d_91_bias_read_readvariableop/
+savev2_conv2d_92_kernel_read_readvariableop-
)savev2_conv2d_92_bias_read_readvariableop/
+savev2_conv2d_93_kernel_read_readvariableop-
)savev2_conv2d_93_bias_read_readvariableop/
+savev2_conv2d_94_kernel_read_readvariableop-
)savev2_conv2d_94_bias_read_readvariableop/
+savev2_conv2d_95_kernel_read_readvariableop-
)savev2_conv2d_95_bias_read_readvariableop.
*savev2_dense_30_kernel_read_readvariableop,
(savev2_dense_30_bias_read_readvariableop.
*savev2_dense_31_kernel_read_readvariableop,
(savev2_dense_31_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop'
#savev2_variable_read_readvariableop	)
%savev2_variable_1_read_readvariableop	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_90_kernel_m_read_readvariableop4
0savev2_adam_conv2d_90_bias_m_read_readvariableop6
2savev2_adam_conv2d_91_kernel_m_read_readvariableop4
0savev2_adam_conv2d_91_bias_m_read_readvariableop6
2savev2_adam_conv2d_92_kernel_m_read_readvariableop4
0savev2_adam_conv2d_92_bias_m_read_readvariableop6
2savev2_adam_conv2d_93_kernel_m_read_readvariableop4
0savev2_adam_conv2d_93_bias_m_read_readvariableop6
2savev2_adam_conv2d_94_kernel_m_read_readvariableop4
0savev2_adam_conv2d_94_bias_m_read_readvariableop6
2savev2_adam_conv2d_95_kernel_m_read_readvariableop4
0savev2_adam_conv2d_95_bias_m_read_readvariableop5
1savev2_adam_dense_30_kernel_m_read_readvariableop3
/savev2_adam_dense_30_bias_m_read_readvariableop5
1savev2_adam_dense_31_kernel_m_read_readvariableop3
/savev2_adam_dense_31_bias_m_read_readvariableop6
2savev2_adam_conv2d_90_kernel_v_read_readvariableop4
0savev2_adam_conv2d_90_bias_v_read_readvariableop6
2savev2_adam_conv2d_91_kernel_v_read_readvariableop4
0savev2_adam_conv2d_91_bias_v_read_readvariableop6
2savev2_adam_conv2d_92_kernel_v_read_readvariableop4
0savev2_adam_conv2d_92_bias_v_read_readvariableop6
2savev2_adam_conv2d_93_kernel_v_read_readvariableop4
0savev2_adam_conv2d_93_bias_v_read_readvariableop6
2savev2_adam_conv2d_94_kernel_v_read_readvariableop4
0savev2_adam_conv2d_94_bias_v_read_readvariableop6
2savev2_adam_conv2d_95_kernel_v_read_readvariableop4
0savev2_adam_conv2d_95_bias_v_read_readvariableop5
1savev2_adam_dense_30_kernel_v_read_readvariableop3
/savev2_adam_dense_30_bias_v_read_readvariableop5
1savev2_adam_dense_31_kernel_v_read_readvariableop3
/savev2_adam_dense_31_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¦!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*¸ 
value® B« <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-0/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB:layer-1/layer-1/_rng/_state_var/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*
valueB<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices­
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_90_kernel_read_readvariableop)savev2_conv2d_90_bias_read_readvariableop+savev2_conv2d_91_kernel_read_readvariableop)savev2_conv2d_91_bias_read_readvariableop+savev2_conv2d_92_kernel_read_readvariableop)savev2_conv2d_92_bias_read_readvariableop+savev2_conv2d_93_kernel_read_readvariableop)savev2_conv2d_93_bias_read_readvariableop+savev2_conv2d_94_kernel_read_readvariableop)savev2_conv2d_94_bias_read_readvariableop+savev2_conv2d_95_kernel_read_readvariableop)savev2_conv2d_95_bias_read_readvariableop*savev2_dense_30_kernel_read_readvariableop(savev2_dense_30_bias_read_readvariableop*savev2_dense_31_kernel_read_readvariableop(savev2_dense_31_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_90_kernel_m_read_readvariableop0savev2_adam_conv2d_90_bias_m_read_readvariableop2savev2_adam_conv2d_91_kernel_m_read_readvariableop0savev2_adam_conv2d_91_bias_m_read_readvariableop2savev2_adam_conv2d_92_kernel_m_read_readvariableop0savev2_adam_conv2d_92_bias_m_read_readvariableop2savev2_adam_conv2d_93_kernel_m_read_readvariableop0savev2_adam_conv2d_93_bias_m_read_readvariableop2savev2_adam_conv2d_94_kernel_m_read_readvariableop0savev2_adam_conv2d_94_bias_m_read_readvariableop2savev2_adam_conv2d_95_kernel_m_read_readvariableop0savev2_adam_conv2d_95_bias_m_read_readvariableop1savev2_adam_dense_30_kernel_m_read_readvariableop/savev2_adam_dense_30_bias_m_read_readvariableop1savev2_adam_dense_31_kernel_m_read_readvariableop/savev2_adam_dense_31_bias_m_read_readvariableop2savev2_adam_conv2d_90_kernel_v_read_readvariableop0savev2_adam_conv2d_90_bias_v_read_readvariableop2savev2_adam_conv2d_91_kernel_v_read_readvariableop0savev2_adam_conv2d_91_bias_v_read_readvariableop2savev2_adam_conv2d_92_kernel_v_read_readvariableop0savev2_adam_conv2d_92_bias_v_read_readvariableop2savev2_adam_conv2d_93_kernel_v_read_readvariableop0savev2_adam_conv2d_93_bias_v_read_readvariableop2savev2_adam_conv2d_94_kernel_v_read_readvariableop0savev2_adam_conv2d_94_bias_v_read_readvariableop2savev2_adam_conv2d_95_kernel_v_read_readvariableop0savev2_adam_conv2d_95_bias_v_read_readvariableop1savev2_adam_dense_30_kernel_v_read_readvariableop/savev2_adam_dense_30_bias_v_read_readvariableop1savev2_adam_dense_31_kernel_v_read_readvariableop/savev2_adam_dense_31_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *J
dtypes@
>2<			2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Ê
_input_shapes¸
µ: : : : @:@:@@:@:@@:@:@@:@:@@:@:	@:@:@
:
: : : : : ::: : : : : : : @:@:@@:@:@@:@:@@:@:@@:@:	@:@:@
:
: : : @:@:@@:@:@@:@:@@:@:@@:@:	@:@:@
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:, (
&
_output_shapes
:@@: !

_output_shapes
:@:,"(
&
_output_shapes
:@@: #

_output_shapes
:@:,$(
&
_output_shapes
:@@: %

_output_shapes
:@:,&(
&
_output_shapes
:@@: '

_output_shapes
:@:%(!

_output_shapes
:	@: )

_output_shapes
:@:$* 

_output_shapes

:@
: +

_output_shapes
:
:,,(
&
_output_shapes
: : -

_output_shapes
: :,.(
&
_output_shapes
: @: /

_output_shapes
:@:,0(
&
_output_shapes
:@@: 1

_output_shapes
:@:,2(
&
_output_shapes
:@@: 3

_output_shapes
:@:,4(
&
_output_shapes
:@@: 5

_output_shapes
:@:,6(
&
_output_shapes
:@@: 7

_output_shapes
:@:%8!

_output_shapes
:	@: 9

_output_shapes
:@:$: 

_output_shapes

:@
: ;

_output_shapes
:
:<

_output_shapes
: 
¢
d
H__inference_sequential_23_layer_call_and_return_conditional_losses_26430

inputs
identityd
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶Ì

H__inference_sequential_24_layer_call_and_return_conditional_losses_28100
sequential_22_inputV
Hsequential_23_random_rotation_4_stateful_uniform_rngreadandskip_resource:	B
(conv2d_90_conv2d_readvariableop_resource: 7
)conv2d_90_biasadd_readvariableop_resource: B
(conv2d_91_conv2d_readvariableop_resource: @7
)conv2d_91_biasadd_readvariableop_resource:@B
(conv2d_92_conv2d_readvariableop_resource:@@7
)conv2d_92_biasadd_readvariableop_resource:@B
(conv2d_93_conv2d_readvariableop_resource:@@7
)conv2d_93_biasadd_readvariableop_resource:@B
(conv2d_94_conv2d_readvariableop_resource:@@7
)conv2d_94_biasadd_readvariableop_resource:@B
(conv2d_95_conv2d_readvariableop_resource:@@7
)conv2d_95_biasadd_readvariableop_resource:@:
'dense_30_matmul_readvariableop_resource:	@6
(dense_30_biasadd_readvariableop_resource:@9
'dense_31_matmul_readvariableop_resource:@
6
(dense_31_biasadd_readvariableop_resource:

identity¢ conv2d_90/BiasAdd/ReadVariableOp¢conv2d_90/Conv2D/ReadVariableOp¢ conv2d_91/BiasAdd/ReadVariableOp¢conv2d_91/Conv2D/ReadVariableOp¢ conv2d_92/BiasAdd/ReadVariableOp¢conv2d_92/Conv2D/ReadVariableOp¢ conv2d_93/BiasAdd/ReadVariableOp¢conv2d_93/Conv2D/ReadVariableOp¢ conv2d_94/BiasAdd/ReadVariableOp¢conv2d_94/Conv2D/ReadVariableOp¢ conv2d_95/BiasAdd/ReadVariableOp¢conv2d_95/Conv2D/ReadVariableOp¢dense_30/BiasAdd/ReadVariableOp¢dense_30/MatMul/ReadVariableOp¢dense_31/BiasAdd/ReadVariableOp¢dense_31/MatMul/ReadVariableOp¢?sequential_23/random_rotation_4/stateful_uniform/RngReadAndSkip
$sequential_22/resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_22/resizing_3/resize/size
.sequential_22/resizing_3/resize/ResizeBilinearResizeBilinearsequential_22_input-sequential_22/resizing_3/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(20
.sequential_22/resizing_3/resize/ResizeBilinear
 sequential_22/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2"
 sequential_22/rescaling_3/Cast/x
"sequential_22/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_22/rescaling_3/Cast_1/xí
sequential_22/rescaling_3/mulMul?sequential_22/resizing_3/resize/ResizeBilinear:resized_images:0)sequential_22/rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_22/rescaling_3/mulÓ
sequential_22/rescaling_3/addAddV2!sequential_22/rescaling_3/mul:z:0+sequential_22/rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_22/rescaling_3/add«
Esequential_23/random_flip_4/random_flip_left_right/control_dependencyIdentity!sequential_22/rescaling_3/add:z:0*
T0*0
_class&
$"loc:@sequential_22/rescaling_3/add*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2G
Esequential_23/random_flip_4/random_flip_left_right/control_dependencyò
8sequential_23/random_flip_4/random_flip_left_right/ShapeShapeNsequential_23/random_flip_4/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2:
8sequential_23/random_flip_4/random_flip_left_right/ShapeÚ
Fsequential_23/random_flip_4/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2H
Fsequential_23/random_flip_4/random_flip_left_right/strided_slice/stackÞ
Hsequential_23/random_flip_4/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_23/random_flip_4/random_flip_left_right/strided_slice/stack_1Þ
Hsequential_23/random_flip_4/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_23/random_flip_4/random_flip_left_right/strided_slice/stack_2
@sequential_23/random_flip_4/random_flip_left_right/strided_sliceStridedSliceAsequential_23/random_flip_4/random_flip_left_right/Shape:output:0Osequential_23/random_flip_4/random_flip_left_right/strided_slice/stack:output:0Qsequential_23/random_flip_4/random_flip_left_right/strided_slice/stack_1:output:0Qsequential_23/random_flip_4/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2B
@sequential_23/random_flip_4/random_flip_left_right/strided_slice
Gsequential_23/random_flip_4/random_flip_left_right/random_uniform/shapePackIsequential_23/random_flip_4/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2I
Gsequential_23/random_flip_4/random_flip_left_right/random_uniform/shapeÓ
Esequential_23/random_flip_4/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2G
Esequential_23/random_flip_4/random_flip_left_right/random_uniform/minÓ
Esequential_23/random_flip_4/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2G
Esequential_23/random_flip_4/random_flip_left_right/random_uniform/maxÀ
Osequential_23/random_flip_4/random_flip_left_right/random_uniform/RandomUniformRandomUniformPsequential_23/random_flip_4/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02Q
Osequential_23/random_flip_4/random_flip_left_right/random_uniform/RandomUniformí
Esequential_23/random_flip_4/random_flip_left_right/random_uniform/MulMulXsequential_23/random_flip_4/random_flip_left_right/random_uniform/RandomUniform:output:0Nsequential_23/random_flip_4/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2G
Esequential_23/random_flip_4/random_flip_left_right/random_uniform/MulÊ
Bsequential_23/random_flip_4/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_23/random_flip_4/random_flip_left_right/Reshape/shape/1Ê
Bsequential_23/random_flip_4/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_23/random_flip_4/random_flip_left_right/Reshape/shape/2Ê
Bsequential_23/random_flip_4/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2D
Bsequential_23/random_flip_4/random_flip_left_right/Reshape/shape/3ì
@sequential_23/random_flip_4/random_flip_left_right/Reshape/shapePackIsequential_23/random_flip_4/random_flip_left_right/strided_slice:output:0Ksequential_23/random_flip_4/random_flip_left_right/Reshape/shape/1:output:0Ksequential_23/random_flip_4/random_flip_left_right/Reshape/shape/2:output:0Ksequential_23/random_flip_4/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2B
@sequential_23/random_flip_4/random_flip_left_right/Reshape/shapeÓ
:sequential_23/random_flip_4/random_flip_left_right/ReshapeReshapeIsequential_23/random_flip_4/random_flip_left_right/random_uniform/Mul:z:0Isequential_23/random_flip_4/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2<
:sequential_23/random_flip_4/random_flip_left_right/Reshapeü
8sequential_23/random_flip_4/random_flip_left_right/RoundRoundCsequential_23/random_flip_4/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8sequential_23/random_flip_4/random_flip_left_right/RoundÐ
Asequential_23/random_flip_4/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_23/random_flip_4/random_flip_left_right/ReverseV2/axisá
<sequential_23/random_flip_4/random_flip_left_right/ReverseV2	ReverseV2Nsequential_23/random_flip_4/random_flip_left_right/control_dependency:output:0Jsequential_23/random_flip_4/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2>
<sequential_23/random_flip_4/random_flip_left_right/ReverseV2¸
6sequential_23/random_flip_4/random_flip_left_right/mulMul<sequential_23/random_flip_4/random_flip_left_right/Round:y:0Esequential_23/random_flip_4/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_23/random_flip_4/random_flip_left_right/mul¹
8sequential_23/random_flip_4/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2:
8sequential_23/random_flip_4/random_flip_left_right/sub/x²
6sequential_23/random_flip_4/random_flip_left_right/subSubAsequential_23/random_flip_4/random_flip_left_right/sub/x:output:0<sequential_23/random_flip_4/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_23/random_flip_4/random_flip_left_right/subÃ
8sequential_23/random_flip_4/random_flip_left_right/mul_1Mul:sequential_23/random_flip_4/random_flip_left_right/sub:z:0Nsequential_23/random_flip_4/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2:
8sequential_23/random_flip_4/random_flip_left_right/mul_1¯
6sequential_23/random_flip_4/random_flip_left_right/addAddV2:sequential_23/random_flip_4/random_flip_left_right/mul:z:0<sequential_23/random_flip_4/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_23/random_flip_4/random_flip_left_right/add×
Bsequential_23/random_flip_4/random_flip_up_down/control_dependencyIdentity:sequential_23/random_flip_4/random_flip_left_right/add:z:0*
T0*I
_class?
=;loc:@sequential_23/random_flip_4/random_flip_left_right/add*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
Bsequential_23/random_flip_4/random_flip_up_down/control_dependencyé
5sequential_23/random_flip_4/random_flip_up_down/ShapeShapeKsequential_23/random_flip_4/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:27
5sequential_23/random_flip_4/random_flip_up_down/ShapeÔ
Csequential_23/random_flip_4/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential_23/random_flip_4/random_flip_up_down/strided_slice/stackØ
Esequential_23/random_flip_4/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_23/random_flip_4/random_flip_up_down/strided_slice/stack_1Ø
Esequential_23/random_flip_4/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_23/random_flip_4/random_flip_up_down/strided_slice/stack_2
=sequential_23/random_flip_4/random_flip_up_down/strided_sliceStridedSlice>sequential_23/random_flip_4/random_flip_up_down/Shape:output:0Lsequential_23/random_flip_4/random_flip_up_down/strided_slice/stack:output:0Nsequential_23/random_flip_4/random_flip_up_down/strided_slice/stack_1:output:0Nsequential_23/random_flip_4/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
=sequential_23/random_flip_4/random_flip_up_down/strided_slice
Dsequential_23/random_flip_4/random_flip_up_down/random_uniform/shapePackFsequential_23/random_flip_4/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:2F
Dsequential_23/random_flip_4/random_flip_up_down/random_uniform/shapeÍ
Bsequential_23/random_flip_4/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    2D
Bsequential_23/random_flip_4/random_flip_up_down/random_uniform/minÍ
Bsequential_23/random_flip_4/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2D
Bsequential_23/random_flip_4/random_flip_up_down/random_uniform/max·
Lsequential_23/random_flip_4/random_flip_up_down/random_uniform/RandomUniformRandomUniformMsequential_23/random_flip_4/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02N
Lsequential_23/random_flip_4/random_flip_up_down/random_uniform/RandomUniformá
Bsequential_23/random_flip_4/random_flip_up_down/random_uniform/MulMulUsequential_23/random_flip_4/random_flip_up_down/random_uniform/RandomUniform:output:0Ksequential_23/random_flip_4/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
Bsequential_23/random_flip_4/random_flip_up_down/random_uniform/MulÄ
?sequential_23/random_flip_4/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_23/random_flip_4/random_flip_up_down/Reshape/shape/1Ä
?sequential_23/random_flip_4/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_23/random_flip_4/random_flip_up_down/Reshape/shape/2Ä
?sequential_23/random_flip_4/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2A
?sequential_23/random_flip_4/random_flip_up_down/Reshape/shape/3Ú
=sequential_23/random_flip_4/random_flip_up_down/Reshape/shapePackFsequential_23/random_flip_4/random_flip_up_down/strided_slice:output:0Hsequential_23/random_flip_4/random_flip_up_down/Reshape/shape/1:output:0Hsequential_23/random_flip_4/random_flip_up_down/Reshape/shape/2:output:0Hsequential_23/random_flip_4/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2?
=sequential_23/random_flip_4/random_flip_up_down/Reshape/shapeÇ
7sequential_23/random_flip_4/random_flip_up_down/ReshapeReshapeFsequential_23/random_flip_4/random_flip_up_down/random_uniform/Mul:z:0Fsequential_23/random_flip_4/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7sequential_23/random_flip_4/random_flip_up_down/Reshapeó
5sequential_23/random_flip_4/random_flip_up_down/RoundRound@sequential_23/random_flip_4/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_flip_4/random_flip_up_down/RoundÊ
>sequential_23/random_flip_4/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_23/random_flip_4/random_flip_up_down/ReverseV2/axisÕ
9sequential_23/random_flip_4/random_flip_up_down/ReverseV2	ReverseV2Ksequential_23/random_flip_4/random_flip_up_down/control_dependency:output:0Gsequential_23/random_flip_4/random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9sequential_23/random_flip_4/random_flip_up_down/ReverseV2¬
3sequential_23/random_flip_4/random_flip_up_down/mulMul9sequential_23/random_flip_4/random_flip_up_down/Round:y:0Bsequential_23/random_flip_4/random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_flip_4/random_flip_up_down/mul³
5sequential_23/random_flip_4/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?27
5sequential_23/random_flip_4/random_flip_up_down/sub/x¦
3sequential_23/random_flip_4/random_flip_up_down/subSub>sequential_23/random_flip_4/random_flip_up_down/sub/x:output:09sequential_23/random_flip_4/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_flip_4/random_flip_up_down/sub·
5sequential_23/random_flip_4/random_flip_up_down/mul_1Mul7sequential_23/random_flip_4/random_flip_up_down/sub:z:0Ksequential_23/random_flip_4/random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_flip_4/random_flip_up_down/mul_1£
3sequential_23/random_flip_4/random_flip_up_down/addAddV27sequential_23/random_flip_4/random_flip_up_down/mul:z:09sequential_23/random_flip_4/random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_flip_4/random_flip_up_down/addµ
%sequential_23/random_rotation_4/ShapeShape7sequential_23/random_flip_4/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2'
%sequential_23/random_rotation_4/Shape´
3sequential_23/random_rotation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 25
3sequential_23/random_rotation_4/strided_slice/stack¸
5sequential_23/random_rotation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_23/random_rotation_4/strided_slice/stack_1¸
5sequential_23/random_rotation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:27
5sequential_23/random_rotation_4/strided_slice/stack_2¢
-sequential_23/random_rotation_4/strided_sliceStridedSlice.sequential_23/random_rotation_4/Shape:output:0<sequential_23/random_rotation_4/strided_slice/stack:output:0>sequential_23/random_rotation_4/strided_slice/stack_1:output:0>sequential_23/random_rotation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2/
-sequential_23/random_rotation_4/strided_slice¸
5sequential_23/random_rotation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5sequential_23/random_rotation_4/strided_slice_1/stack¼
7sequential_23/random_rotation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_23/random_rotation_4/strided_slice_1/stack_1¼
7sequential_23/random_rotation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_23/random_rotation_4/strided_slice_1/stack_2¬
/sequential_23/random_rotation_4/strided_slice_1StridedSlice.sequential_23/random_rotation_4/Shape:output:0>sequential_23/random_rotation_4/strided_slice_1/stack:output:0@sequential_23/random_rotation_4/strided_slice_1/stack_1:output:0@sequential_23/random_rotation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_23/random_rotation_4/strided_slice_1¾
$sequential_23/random_rotation_4/CastCast8sequential_23/random_rotation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2&
$sequential_23/random_rotation_4/Cast¸
5sequential_23/random_rotation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:27
5sequential_23/random_rotation_4/strided_slice_2/stack¼
7sequential_23/random_rotation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_23/random_rotation_4/strided_slice_2/stack_1¼
7sequential_23/random_rotation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7sequential_23/random_rotation_4/strided_slice_2/stack_2¬
/sequential_23/random_rotation_4/strided_slice_2StridedSlice.sequential_23/random_rotation_4/Shape:output:0>sequential_23/random_rotation_4/strided_slice_2/stack:output:0@sequential_23/random_rotation_4/strided_slice_2/stack_1:output:0@sequential_23/random_rotation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/sequential_23/random_rotation_4/strided_slice_2Â
&sequential_23/random_rotation_4/Cast_1Cast8sequential_23/random_rotation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2(
&sequential_23/random_rotation_4/Cast_1Þ
6sequential_23/random_rotation_4/stateful_uniform/shapePack6sequential_23/random_rotation_4/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6sequential_23/random_rotation_4/stateful_uniform/shape±
4sequential_23/random_rotation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿26
4sequential_23/random_rotation_4/stateful_uniform/min±
4sequential_23/random_rotation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?26
4sequential_23/random_rotation_4/stateful_uniform/maxº
6sequential_23/random_rotation_4/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_23/random_rotation_4/stateful_uniform/Const
5sequential_23/random_rotation_4/stateful_uniform/ProdProd?sequential_23/random_rotation_4/stateful_uniform/shape:output:0?sequential_23/random_rotation_4/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 27
5sequential_23/random_rotation_4/stateful_uniform/Prod´
7sequential_23/random_rotation_4/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :29
7sequential_23/random_rotation_4/stateful_uniform/Cast/xê
7sequential_23/random_rotation_4/stateful_uniform/Cast_1Cast>sequential_23/random_rotation_4/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 29
7sequential_23/random_rotation_4/stateful_uniform/Cast_1ù
?sequential_23/random_rotation_4/stateful_uniform/RngReadAndSkipRngReadAndSkipHsequential_23_random_rotation_4_stateful_uniform_rngreadandskip_resource@sequential_23/random_rotation_4/stateful_uniform/Cast/x:output:0;sequential_23/random_rotation_4/stateful_uniform/Cast_1:y:0*
_output_shapes
:2A
?sequential_23/random_rotation_4/stateful_uniform/RngReadAndSkipÖ
Dsequential_23/random_rotation_4/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2F
Dsequential_23/random_rotation_4/stateful_uniform/strided_slice/stackÚ
Fsequential_23/random_rotation_4/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_23/random_rotation_4/stateful_uniform/strided_slice/stack_1Ú
Fsequential_23/random_rotation_4/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_23/random_rotation_4/stateful_uniform/strided_slice/stack_2
>sequential_23/random_rotation_4/stateful_uniform/strided_sliceStridedSliceGsequential_23/random_rotation_4/stateful_uniform/RngReadAndSkip:value:0Msequential_23/random_rotation_4/stateful_uniform/strided_slice/stack:output:0Osequential_23/random_rotation_4/stateful_uniform/strided_slice/stack_1:output:0Osequential_23/random_rotation_4/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask2@
>sequential_23/random_rotation_4/stateful_uniform/strided_sliceù
8sequential_23/random_rotation_4/stateful_uniform/BitcastBitcastGsequential_23/random_rotation_4/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02:
8sequential_23/random_rotation_4/stateful_uniform/BitcastÚ
Fsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2H
Fsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stackÞ
Hsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stack_1Þ
Hsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2J
Hsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stack_2
@sequential_23/random_rotation_4/stateful_uniform/strided_slice_1StridedSliceGsequential_23/random_rotation_4/stateful_uniform/RngReadAndSkip:value:0Osequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stack:output:0Qsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stack_1:output:0Qsequential_23/random_rotation_4/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:2B
@sequential_23/random_rotation_4/stateful_uniform/strided_slice_1ÿ
:sequential_23/random_rotation_4/stateful_uniform/Bitcast_1BitcastIsequential_23/random_rotation_4/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02<
:sequential_23/random_rotation_4/stateful_uniform/Bitcast_1à
Msequential_23/random_rotation_4/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2O
Msequential_23/random_rotation_4/stateful_uniform/StatelessRandomUniformV2/algø
Isequential_23/random_rotation_4/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2?sequential_23/random_rotation_4/stateful_uniform/shape:output:0Csequential_23/random_rotation_4/stateful_uniform/Bitcast_1:output:0Asequential_23/random_rotation_4/stateful_uniform/Bitcast:output:0Vsequential_23/random_rotation_4/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2K
Isequential_23/random_rotation_4/stateful_uniform/StatelessRandomUniformV2
4sequential_23/random_rotation_4/stateful_uniform/subSub=sequential_23/random_rotation_4/stateful_uniform/max:output:0=sequential_23/random_rotation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 26
4sequential_23/random_rotation_4/stateful_uniform/sub¯
4sequential_23/random_rotation_4/stateful_uniform/mulMulRsequential_23/random_rotation_4/stateful_uniform/StatelessRandomUniformV2:output:08sequential_23/random_rotation_4/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_23/random_rotation_4/stateful_uniform/mul
0sequential_23/random_rotation_4/stateful_uniformAdd8sequential_23/random_rotation_4/stateful_uniform/mul:z:0=sequential_23/random_rotation_4/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_23/random_rotation_4/stateful_uniform³
5sequential_23/random_rotation_4/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?27
5sequential_23/random_rotation_4/rotation_matrix/sub/yþ
3sequential_23/random_rotation_4/rotation_matrix/subSub*sequential_23/random_rotation_4/Cast_1:y:0>sequential_23/random_rotation_4/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 25
3sequential_23/random_rotation_4/rotation_matrix/subÕ
3sequential_23/random_rotation_4/rotation_matrix/CosCos4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_rotation_4/rotation_matrix/Cos·
7sequential_23/random_rotation_4/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_23/random_rotation_4/rotation_matrix/sub_1/y
5sequential_23/random_rotation_4/rotation_matrix/sub_1Sub*sequential_23/random_rotation_4/Cast_1:y:0@sequential_23/random_rotation_4/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 27
5sequential_23/random_rotation_4/rotation_matrix/sub_1
3sequential_23/random_rotation_4/rotation_matrix/mulMul7sequential_23/random_rotation_4/rotation_matrix/Cos:y:09sequential_23/random_rotation_4/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_rotation_4/rotation_matrix/mulÕ
3sequential_23/random_rotation_4/rotation_matrix/SinSin4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_rotation_4/rotation_matrix/Sin·
7sequential_23/random_rotation_4/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_23/random_rotation_4/rotation_matrix/sub_2/y
5sequential_23/random_rotation_4/rotation_matrix/sub_2Sub(sequential_23/random_rotation_4/Cast:y:0@sequential_23/random_rotation_4/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 27
5sequential_23/random_rotation_4/rotation_matrix/sub_2
5sequential_23/random_rotation_4/rotation_matrix/mul_1Mul7sequential_23/random_rotation_4/rotation_matrix/Sin:y:09sequential_23/random_rotation_4/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/mul_1
5sequential_23/random_rotation_4/rotation_matrix/sub_3Sub7sequential_23/random_rotation_4/rotation_matrix/mul:z:09sequential_23/random_rotation_4/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/sub_3
5sequential_23/random_rotation_4/rotation_matrix/sub_4Sub7sequential_23/random_rotation_4/rotation_matrix/sub:z:09sequential_23/random_rotation_4/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/sub_4»
9sequential_23/random_rotation_4/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2;
9sequential_23/random_rotation_4/rotation_matrix/truediv/yª
7sequential_23/random_rotation_4/rotation_matrix/truedivRealDiv9sequential_23/random_rotation_4/rotation_matrix/sub_4:z:0Bsequential_23/random_rotation_4/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7sequential_23/random_rotation_4/rotation_matrix/truediv·
7sequential_23/random_rotation_4/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_23/random_rotation_4/rotation_matrix/sub_5/y
5sequential_23/random_rotation_4/rotation_matrix/sub_5Sub(sequential_23/random_rotation_4/Cast:y:0@sequential_23/random_rotation_4/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 27
5sequential_23/random_rotation_4/rotation_matrix/sub_5Ù
5sequential_23/random_rotation_4/rotation_matrix/Sin_1Sin4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/Sin_1·
7sequential_23/random_rotation_4/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_23/random_rotation_4/rotation_matrix/sub_6/y
5sequential_23/random_rotation_4/rotation_matrix/sub_6Sub*sequential_23/random_rotation_4/Cast_1:y:0@sequential_23/random_rotation_4/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 27
5sequential_23/random_rotation_4/rotation_matrix/sub_6
5sequential_23/random_rotation_4/rotation_matrix/mul_2Mul9sequential_23/random_rotation_4/rotation_matrix/Sin_1:y:09sequential_23/random_rotation_4/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/mul_2Ù
5sequential_23/random_rotation_4/rotation_matrix/Cos_1Cos4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/Cos_1·
7sequential_23/random_rotation_4/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_23/random_rotation_4/rotation_matrix/sub_7/y
5sequential_23/random_rotation_4/rotation_matrix/sub_7Sub(sequential_23/random_rotation_4/Cast:y:0@sequential_23/random_rotation_4/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 27
5sequential_23/random_rotation_4/rotation_matrix/sub_7
5sequential_23/random_rotation_4/rotation_matrix/mul_3Mul9sequential_23/random_rotation_4/rotation_matrix/Cos_1:y:09sequential_23/random_rotation_4/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/mul_3
3sequential_23/random_rotation_4/rotation_matrix/addAddV29sequential_23/random_rotation_4/rotation_matrix/mul_2:z:09sequential_23/random_rotation_4/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_rotation_4/rotation_matrix/add
5sequential_23/random_rotation_4/rotation_matrix/sub_8Sub9sequential_23/random_rotation_4/rotation_matrix/sub_5:z:07sequential_23/random_rotation_4/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/sub_8¿
;sequential_23/random_rotation_4/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2=
;sequential_23/random_rotation_4/rotation_matrix/truediv_1/y°
9sequential_23/random_rotation_4/rotation_matrix/truediv_1RealDiv9sequential_23/random_rotation_4/rotation_matrix/sub_8:z:0Dsequential_23/random_rotation_4/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9sequential_23/random_rotation_4/rotation_matrix/truediv_1Ò
5sequential_23/random_rotation_4/rotation_matrix/ShapeShape4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*
_output_shapes
:27
5sequential_23/random_rotation_4/rotation_matrix/ShapeÔ
Csequential_23/random_rotation_4/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential_23/random_rotation_4/rotation_matrix/strided_slice/stackØ
Esequential_23/random_rotation_4/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice/stack_1Ø
Esequential_23/random_rotation_4/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice/stack_2
=sequential_23/random_rotation_4/rotation_matrix/strided_sliceStridedSlice>sequential_23/random_rotation_4/rotation_matrix/Shape:output:0Lsequential_23/random_rotation_4/rotation_matrix/strided_slice/stack:output:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice/stack_1:output:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2?
=sequential_23/random_rotation_4/rotation_matrix/strided_sliceÙ
5sequential_23/random_rotation_4/rotation_matrix/Cos_2Cos4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/Cos_2ß
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stackã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stack_1ã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stack_2·
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_1StridedSlice9sequential_23/random_rotation_4/rotation_matrix/Cos_2:y:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stack:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stack_1:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_1Ù
5sequential_23/random_rotation_4/rotation_matrix/Sin_2Sin4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/Sin_2ß
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stackã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stack_1ã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stack_2·
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_2StridedSlice9sequential_23/random_rotation_4/rotation_matrix/Sin_2:y:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stack:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stack_1:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_2í
3sequential_23/random_rotation_4/rotation_matrix/NegNegHsequential_23/random_rotation_4/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_23/random_rotation_4/rotation_matrix/Negß
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stackã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stack_1ã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stack_2¹
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_3StridedSlice;sequential_23/random_rotation_4/rotation_matrix/truediv:z:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stack:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stack_1:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_3Ù
5sequential_23/random_rotation_4/rotation_matrix/Sin_3Sin4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/Sin_3ß
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stackã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stack_1ã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stack_2·
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_4StridedSlice9sequential_23/random_rotation_4/rotation_matrix/Sin_3:y:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stack:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stack_1:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_4Ù
5sequential_23/random_rotation_4/rotation_matrix/Cos_3Cos4sequential_23/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/Cos_3ß
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stackã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stack_1ã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stack_2·
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_5StridedSlice9sequential_23/random_rotation_4/rotation_matrix/Cos_3:y:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stack:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stack_1:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_5ß
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        2G
Esequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stackã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stack_1ã
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2I
Gsequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stack_2»
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_6StridedSlice=sequential_23/random_rotation_4/rotation_matrix/truediv_1:z:0Nsequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stack:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stack_1:output:0Psequential_23/random_rotation_4/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask2A
?sequential_23/random_rotation_4/rotation_matrix/strided_slice_6¼
;sequential_23/random_rotation_4/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_23/random_rotation_4/rotation_matrix/zeros/mul/y¬
9sequential_23/random_rotation_4/rotation_matrix/zeros/mulMulFsequential_23/random_rotation_4/rotation_matrix/strided_slice:output:0Dsequential_23/random_rotation_4/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2;
9sequential_23/random_rotation_4/rotation_matrix/zeros/mul¿
<sequential_23/random_rotation_4/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2>
<sequential_23/random_rotation_4/rotation_matrix/zeros/Less/y§
:sequential_23/random_rotation_4/rotation_matrix/zeros/LessLess=sequential_23/random_rotation_4/rotation_matrix/zeros/mul:z:0Esequential_23/random_rotation_4/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2<
:sequential_23/random_rotation_4/rotation_matrix/zeros/LessÂ
>sequential_23/random_rotation_4/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2@
>sequential_23/random_rotation_4/rotation_matrix/zeros/packed/1Ã
<sequential_23/random_rotation_4/rotation_matrix/zeros/packedPackFsequential_23/random_rotation_4/rotation_matrix/strided_slice:output:0Gsequential_23/random_rotation_4/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2>
<sequential_23/random_rotation_4/rotation_matrix/zeros/packed¿
;sequential_23/random_rotation_4/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2=
;sequential_23/random_rotation_4/rotation_matrix/zeros/Constµ
5sequential_23/random_rotation_4/rotation_matrix/zerosFillEsequential_23/random_rotation_4/rotation_matrix/zeros/packed:output:0Dsequential_23/random_rotation_4/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ27
5sequential_23/random_rotation_4/rotation_matrix/zeros¼
;sequential_23/random_rotation_4/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_23/random_rotation_4/rotation_matrix/concat/axisè
6sequential_23/random_rotation_4/rotation_matrix/concatConcatV2Hsequential_23/random_rotation_4/rotation_matrix/strided_slice_1:output:07sequential_23/random_rotation_4/rotation_matrix/Neg:y:0Hsequential_23/random_rotation_4/rotation_matrix/strided_slice_3:output:0Hsequential_23/random_rotation_4/rotation_matrix/strided_slice_4:output:0Hsequential_23/random_rotation_4/rotation_matrix/strided_slice_5:output:0Hsequential_23/random_rotation_4/rotation_matrix/strided_slice_6:output:0>sequential_23/random_rotation_4/rotation_matrix/zeros:output:0Dsequential_23/random_rotation_4/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ28
6sequential_23/random_rotation_4/rotation_matrix/concatÉ
/sequential_23/random_rotation_4/transform/ShapeShape7sequential_23/random_flip_4/random_flip_up_down/add:z:0*
T0*
_output_shapes
:21
/sequential_23/random_rotation_4/transform/ShapeÈ
=sequential_23/random_rotation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2?
=sequential_23/random_rotation_4/transform/strided_slice/stackÌ
?sequential_23/random_rotation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_23/random_rotation_4/transform/strided_slice/stack_1Ì
?sequential_23/random_rotation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_23/random_rotation_4/transform/strided_slice/stack_2Ê
7sequential_23/random_rotation_4/transform/strided_sliceStridedSlice8sequential_23/random_rotation_4/transform/Shape:output:0Fsequential_23/random_rotation_4/transform/strided_slice/stack:output:0Hsequential_23/random_rotation_4/transform/strided_slice/stack_1:output:0Hsequential_23/random_rotation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:29
7sequential_23/random_rotation_4/transform/strided_slice±
4sequential_23/random_rotation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4sequential_23/random_rotation_4/transform/fill_value
Dsequential_23/random_rotation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV37sequential_23/random_flip_4/random_flip_up_down/add:z:0?sequential_23/random_rotation_4/rotation_matrix/concat:output:0@sequential_23/random_rotation_4/transform/strided_slice:output:0=sequential_23/random_rotation_4/transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR2F
Dsequential_23/random_rotation_4/transform/ImageProjectiveTransformV3³
conv2d_90/Conv2D/ReadVariableOpReadVariableOp(conv2d_90_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_90/Conv2D/ReadVariableOp
conv2d_90/Conv2DConv2DYsequential_23/random_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_90/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *
paddingVALID*
strides
2
conv2d_90/Conv2Dª
 conv2d_90/BiasAdd/ReadVariableOpReadVariableOp)conv2d_90_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_90/BiasAdd/ReadVariableOp²
conv2d_90/BiasAddBiasAddconv2d_90/Conv2D:output:0(conv2d_90/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2
conv2d_90/BiasAdd
conv2d_90/ReluReluconv2d_90/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2
conv2d_90/ReluÊ
max_pooling2d_90/MaxPoolMaxPoolconv2d_90/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_90/MaxPool³
conv2d_91/Conv2D/ReadVariableOpReadVariableOp(conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_91/Conv2D/ReadVariableOpÝ
conv2d_91/Conv2DConv2D!max_pooling2d_90/MaxPool:output:0'conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*
paddingVALID*
strides
2
conv2d_91/Conv2Dª
 conv2d_91/BiasAdd/ReadVariableOpReadVariableOp)conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_91/BiasAdd/ReadVariableOp°
conv2d_91/BiasAddBiasAddconv2d_91/Conv2D:output:0(conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2
conv2d_91/BiasAdd~
conv2d_91/ReluReluconv2d_91/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2
conv2d_91/ReluÊ
max_pooling2d_91/MaxPoolMaxPoolconv2d_91/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_91/MaxPool³
conv2d_92/Conv2D/ReadVariableOpReadVariableOp(conv2d_92_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_92/Conv2D/ReadVariableOpÝ
conv2d_92/Conv2DConv2D!max_pooling2d_91/MaxPool:output:0'conv2d_92/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*
paddingVALID*
strides
2
conv2d_92/Conv2Dª
 conv2d_92/BiasAdd/ReadVariableOpReadVariableOp)conv2d_92_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_92/BiasAdd/ReadVariableOp°
conv2d_92/BiasAddBiasAddconv2d_92/Conv2D:output:0(conv2d_92/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2
conv2d_92/BiasAdd~
conv2d_92/ReluReluconv2d_92/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2
conv2d_92/ReluÊ
max_pooling2d_92/MaxPoolMaxPoolconv2d_92/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_92/MaxPool³
conv2d_93/Conv2D/ReadVariableOpReadVariableOp(conv2d_93_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_93/Conv2D/ReadVariableOpÝ
conv2d_93/Conv2DConv2D!max_pooling2d_92/MaxPool:output:0'conv2d_93/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_93/Conv2Dª
 conv2d_93/BiasAdd/ReadVariableOpReadVariableOp)conv2d_93_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_93/BiasAdd/ReadVariableOp°
conv2d_93/BiasAddBiasAddconv2d_93/Conv2D:output:0(conv2d_93/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_93/BiasAdd~
conv2d_93/ReluReluconv2d_93/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_93/ReluÊ
max_pooling2d_93/MaxPoolMaxPoolconv2d_93/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_93/MaxPool³
conv2d_94/Conv2D/ReadVariableOpReadVariableOp(conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_94/Conv2D/ReadVariableOpÝ
conv2d_94/Conv2DConv2D!max_pooling2d_93/MaxPool:output:0'conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_94/Conv2Dª
 conv2d_94/BiasAdd/ReadVariableOpReadVariableOp)conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_94/BiasAdd/ReadVariableOp°
conv2d_94/BiasAddBiasAddconv2d_94/Conv2D:output:0(conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_94/BiasAdd~
conv2d_94/ReluReluconv2d_94/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_94/ReluÊ
max_pooling2d_94/MaxPoolMaxPoolconv2d_94/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_94/MaxPool³
conv2d_95/Conv2D/ReadVariableOpReadVariableOp(conv2d_95_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_95/Conv2D/ReadVariableOpÝ
conv2d_95/Conv2DConv2D!max_pooling2d_94/MaxPool:output:0'conv2d_95/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_95/Conv2Dª
 conv2d_95/BiasAdd/ReadVariableOpReadVariableOp)conv2d_95_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_95/BiasAdd/ReadVariableOp°
conv2d_95/BiasAddBiasAddconv2d_95/Conv2D:output:0(conv2d_95/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_95/BiasAdd~
conv2d_95/ReluReluconv2d_95/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_95/ReluÊ
max_pooling2d_95/MaxPoolMaxPoolconv2d_95/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_95/MaxPoolu
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten_15/Const¤
flatten_15/ReshapeReshape!max_pooling2d_95/MaxPool:output:0flatten_15/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_15/Reshape©
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02 
dense_30/MatMul/ReadVariableOp£
dense_30/MatMulMatMulflatten_15/Reshape:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/MatMul§
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_30/BiasAdd/ReadVariableOp¥
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/BiasAdds
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/Relu¨
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02 
dense_31/MatMul/ReadVariableOp£
dense_31/MatMulMatMuldense_30/Relu:activations:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_31/MatMul§
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_31/BiasAdd/ReadVariableOp¥
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_31/BiasAdd|
dense_31/SoftmaxSoftmaxdense_31/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_31/SoftmaxÔ
IdentityIdentitydense_31/Softmax:softmax:0!^conv2d_90/BiasAdd/ReadVariableOp ^conv2d_90/Conv2D/ReadVariableOp!^conv2d_91/BiasAdd/ReadVariableOp ^conv2d_91/Conv2D/ReadVariableOp!^conv2d_92/BiasAdd/ReadVariableOp ^conv2d_92/Conv2D/ReadVariableOp!^conv2d_93/BiasAdd/ReadVariableOp ^conv2d_93/Conv2D/ReadVariableOp!^conv2d_94/BiasAdd/ReadVariableOp ^conv2d_94/Conv2D/ReadVariableOp!^conv2d_95/BiasAdd/ReadVariableOp ^conv2d_95/Conv2D/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp@^sequential_23/random_rotation_4/stateful_uniform/RngReadAndSkip*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : 2D
 conv2d_90/BiasAdd/ReadVariableOp conv2d_90/BiasAdd/ReadVariableOp2B
conv2d_90/Conv2D/ReadVariableOpconv2d_90/Conv2D/ReadVariableOp2D
 conv2d_91/BiasAdd/ReadVariableOp conv2d_91/BiasAdd/ReadVariableOp2B
conv2d_91/Conv2D/ReadVariableOpconv2d_91/Conv2D/ReadVariableOp2D
 conv2d_92/BiasAdd/ReadVariableOp conv2d_92/BiasAdd/ReadVariableOp2B
conv2d_92/Conv2D/ReadVariableOpconv2d_92/Conv2D/ReadVariableOp2D
 conv2d_93/BiasAdd/ReadVariableOp conv2d_93/BiasAdd/ReadVariableOp2B
conv2d_93/Conv2D/ReadVariableOpconv2d_93/Conv2D/ReadVariableOp2D
 conv2d_94/BiasAdd/ReadVariableOp conv2d_94/BiasAdd/ReadVariableOp2B
conv2d_94/Conv2D/ReadVariableOpconv2d_94/Conv2D/ReadVariableOp2D
 conv2d_95/BiasAdd/ReadVariableOp conv2d_95/BiasAdd/ReadVariableOp2B
conv2d_95/Conv2D/ReadVariableOpconv2d_95/Conv2D/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2
?sequential_23/random_rotation_4/stateful_uniform/RngReadAndSkip?sequential_23/random_rotation_4/stateful_uniform/RngReadAndSkip:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesequential_22_input
Ã

)__inference_conv2d_93_layer_call_fn_28764

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_93_layer_call_and_return_conditional_losses_269422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
©K

H__inference_sequential_24_layer_call_and_return_conditional_losses_27243

inputs!
sequential_23_27192:	)
conv2d_90_27195: 
conv2d_90_27197: )
conv2d_91_27201: @
conv2d_91_27203:@)
conv2d_92_27207:@@
conv2d_92_27209:@)
conv2d_93_27213:@@
conv2d_93_27215:@)
conv2d_94_27219:@@
conv2d_94_27221:@)
conv2d_95_27225:@@
conv2d_95_27227:@!
dense_30_27232:	@
dense_30_27234:@ 
dense_31_27237:@

dense_31_27239:

identity¢!conv2d_90/StatefulPartitionedCall¢!conv2d_91/StatefulPartitionedCall¢!conv2d_92/StatefulPartitionedCall¢!conv2d_93/StatefulPartitionedCall¢!conv2d_94/StatefulPartitionedCall¢!conv2d_95/StatefulPartitionedCall¢ dense_30/StatefulPartitionedCall¢ dense_31/StatefulPartitionedCall¢%sequential_23/StatefulPartitionedCallì
sequential_22/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_22_layer_call_and_return_conditional_losses_263942
sequential_22/PartitionedCallº
%sequential_23/StatefulPartitionedCallStatefulPartitionedCall&sequential_22/PartitionedCall:output:0sequential_23_27192*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_23_layer_call_and_return_conditional_losses_266102'
%sequential_23/StatefulPartitionedCallÈ
!conv2d_90/StatefulPartitionedCallStatefulPartitionedCall.sequential_23/StatefulPartitionedCall:output:0conv2d_90_27195conv2d_90_27197*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_90_layer_call_and_return_conditional_losses_268882#
!conv2d_90/StatefulPartitionedCall
 max_pooling2d_90/PartitionedCallPartitionedCall*conv2d_90/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_268022"
 max_pooling2d_90/PartitionedCallÁ
!conv2d_91/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_90/PartitionedCall:output:0conv2d_91_27201conv2d_91_27203*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_91_layer_call_and_return_conditional_losses_269062#
!conv2d_91/StatefulPartitionedCall
 max_pooling2d_91/PartitionedCallPartitionedCall*conv2d_91/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_268142"
 max_pooling2d_91/PartitionedCallÁ
!conv2d_92/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_91/PartitionedCall:output:0conv2d_92_27207conv2d_92_27209*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_92_layer_call_and_return_conditional_losses_269242#
!conv2d_92/StatefulPartitionedCall
 max_pooling2d_92/PartitionedCallPartitionedCall*conv2d_92/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_268262"
 max_pooling2d_92/PartitionedCallÁ
!conv2d_93/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_92/PartitionedCall:output:0conv2d_93_27213conv2d_93_27215*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_93_layer_call_and_return_conditional_losses_269422#
!conv2d_93/StatefulPartitionedCall
 max_pooling2d_93/PartitionedCallPartitionedCall*conv2d_93/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_268382"
 max_pooling2d_93/PartitionedCallÁ
!conv2d_94/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_93/PartitionedCall:output:0conv2d_94_27219conv2d_94_27221*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_94_layer_call_and_return_conditional_losses_269602#
!conv2d_94/StatefulPartitionedCall
 max_pooling2d_94/PartitionedCallPartitionedCall*conv2d_94/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_94_layer_call_and_return_conditional_losses_268502"
 max_pooling2d_94/PartitionedCallÁ
!conv2d_95/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_94/PartitionedCall:output:0conv2d_95_27225conv2d_95_27227*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_95_layer_call_and_return_conditional_losses_269782#
!conv2d_95/StatefulPartitionedCall
 max_pooling2d_95/PartitionedCallPartitionedCall*conv2d_95/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_95_layer_call_and_return_conditional_losses_268622"
 max_pooling2d_95/PartitionedCallý
flatten_15/PartitionedCallPartitionedCall)max_pooling2d_95/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_15_layer_call_and_return_conditional_losses_269912
flatten_15/PartitionedCall®
 dense_30/StatefulPartitionedCallStatefulPartitionedCall#flatten_15/PartitionedCall:output:0dense_30_27232dense_30_27234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_30_layer_call_and_return_conditional_losses_270042"
 dense_30/StatefulPartitionedCall´
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_27237dense_31_27239*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_31_layer_call_and_return_conditional_losses_270212"
 dense_31/StatefulPartitionedCallÃ
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0"^conv2d_90/StatefulPartitionedCall"^conv2d_91/StatefulPartitionedCall"^conv2d_92/StatefulPartitionedCall"^conv2d_93/StatefulPartitionedCall"^conv2d_94/StatefulPartitionedCall"^conv2d_95/StatefulPartitionedCall!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall&^sequential_23/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : 2F
!conv2d_90/StatefulPartitionedCall!conv2d_90/StatefulPartitionedCall2F
!conv2d_91/StatefulPartitionedCall!conv2d_91/StatefulPartitionedCall2F
!conv2d_92/StatefulPartitionedCall!conv2d_92/StatefulPartitionedCall2F
!conv2d_93/StatefulPartitionedCall!conv2d_93/StatefulPartitionedCall2F
!conv2d_94/StatefulPartitionedCall!conv2d_94/StatefulPartitionedCall2F
!conv2d_95/StatefulPartitionedCall!conv2d_95/StatefulPartitionedCall2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2N
%sequential_23/StatefulPartitionedCall%sequential_23/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë

)__inference_conv2d_90_layer_call_fn_28704

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_90_layer_call_and_return_conditional_losses_268882
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
L
0__inference_max_pooling2d_94_layer_call_fn_26856

inputs
identityì
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_94_layer_call_and_return_conditional_losses_268502
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

d
H__inference_sequential_22_layer_call_and_return_conditional_losses_28272

inputs
identity
resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing_3/resize/sizeÕ
 resizing_3/resize/ResizeBilinearResizeBilinearinputsresizing_3/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2"
 resizing_3/resize/ResizeBilinearm
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
rescaling_3/Cast/xq
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_3/Cast_1/xµ
rescaling_3/mulMul1resizing_3/resize/ResizeBilinear:resized_images:0rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rescaling_3/mul
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rescaling_3/addq
IdentityIdentityrescaling_3/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Òg
í
H__inference_sequential_24_layer_call_and_return_conditional_losses_27860
sequential_22_inputB
(conv2d_90_conv2d_readvariableop_resource: 7
)conv2d_90_biasadd_readvariableop_resource: B
(conv2d_91_conv2d_readvariableop_resource: @7
)conv2d_91_biasadd_readvariableop_resource:@B
(conv2d_92_conv2d_readvariableop_resource:@@7
)conv2d_92_biasadd_readvariableop_resource:@B
(conv2d_93_conv2d_readvariableop_resource:@@7
)conv2d_93_biasadd_readvariableop_resource:@B
(conv2d_94_conv2d_readvariableop_resource:@@7
)conv2d_94_biasadd_readvariableop_resource:@B
(conv2d_95_conv2d_readvariableop_resource:@@7
)conv2d_95_biasadd_readvariableop_resource:@:
'dense_30_matmul_readvariableop_resource:	@6
(dense_30_biasadd_readvariableop_resource:@9
'dense_31_matmul_readvariableop_resource:@
6
(dense_31_biasadd_readvariableop_resource:

identity¢ conv2d_90/BiasAdd/ReadVariableOp¢conv2d_90/Conv2D/ReadVariableOp¢ conv2d_91/BiasAdd/ReadVariableOp¢conv2d_91/Conv2D/ReadVariableOp¢ conv2d_92/BiasAdd/ReadVariableOp¢conv2d_92/Conv2D/ReadVariableOp¢ conv2d_93/BiasAdd/ReadVariableOp¢conv2d_93/Conv2D/ReadVariableOp¢ conv2d_94/BiasAdd/ReadVariableOp¢conv2d_94/Conv2D/ReadVariableOp¢ conv2d_95/BiasAdd/ReadVariableOp¢conv2d_95/Conv2D/ReadVariableOp¢dense_30/BiasAdd/ReadVariableOp¢dense_30/MatMul/ReadVariableOp¢dense_31/BiasAdd/ReadVariableOp¢dense_31/MatMul/ReadVariableOp
$sequential_22/resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_22/resizing_3/resize/size
.sequential_22/resizing_3/resize/ResizeBilinearResizeBilinearsequential_22_input-sequential_22/resizing_3/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(20
.sequential_22/resizing_3/resize/ResizeBilinear
 sequential_22/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2"
 sequential_22/rescaling_3/Cast/x
"sequential_22/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_22/rescaling_3/Cast_1/xí
sequential_22/rescaling_3/mulMul?sequential_22/resizing_3/resize/ResizeBilinear:resized_images:0)sequential_22/rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_22/rescaling_3/mulÓ
sequential_22/rescaling_3/addAddV2!sequential_22/rescaling_3/mul:z:0+sequential_22/rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_22/rescaling_3/add³
conv2d_90/Conv2D/ReadVariableOpReadVariableOp(conv2d_90_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_90/Conv2D/ReadVariableOpß
conv2d_90/Conv2DConv2D!sequential_22/rescaling_3/add:z:0'conv2d_90/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *
paddingVALID*
strides
2
conv2d_90/Conv2Dª
 conv2d_90/BiasAdd/ReadVariableOpReadVariableOp)conv2d_90_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_90/BiasAdd/ReadVariableOp²
conv2d_90/BiasAddBiasAddconv2d_90/Conv2D:output:0(conv2d_90/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2
conv2d_90/BiasAdd
conv2d_90/ReluReluconv2d_90/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2
conv2d_90/ReluÊ
max_pooling2d_90/MaxPoolMaxPoolconv2d_90/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_90/MaxPool³
conv2d_91/Conv2D/ReadVariableOpReadVariableOp(conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_91/Conv2D/ReadVariableOpÝ
conv2d_91/Conv2DConv2D!max_pooling2d_90/MaxPool:output:0'conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*
paddingVALID*
strides
2
conv2d_91/Conv2Dª
 conv2d_91/BiasAdd/ReadVariableOpReadVariableOp)conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_91/BiasAdd/ReadVariableOp°
conv2d_91/BiasAddBiasAddconv2d_91/Conv2D:output:0(conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2
conv2d_91/BiasAdd~
conv2d_91/ReluReluconv2d_91/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2
conv2d_91/ReluÊ
max_pooling2d_91/MaxPoolMaxPoolconv2d_91/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_91/MaxPool³
conv2d_92/Conv2D/ReadVariableOpReadVariableOp(conv2d_92_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_92/Conv2D/ReadVariableOpÝ
conv2d_92/Conv2DConv2D!max_pooling2d_91/MaxPool:output:0'conv2d_92/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*
paddingVALID*
strides
2
conv2d_92/Conv2Dª
 conv2d_92/BiasAdd/ReadVariableOpReadVariableOp)conv2d_92_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_92/BiasAdd/ReadVariableOp°
conv2d_92/BiasAddBiasAddconv2d_92/Conv2D:output:0(conv2d_92/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2
conv2d_92/BiasAdd~
conv2d_92/ReluReluconv2d_92/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2
conv2d_92/ReluÊ
max_pooling2d_92/MaxPoolMaxPoolconv2d_92/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_92/MaxPool³
conv2d_93/Conv2D/ReadVariableOpReadVariableOp(conv2d_93_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_93/Conv2D/ReadVariableOpÝ
conv2d_93/Conv2DConv2D!max_pooling2d_92/MaxPool:output:0'conv2d_93/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_93/Conv2Dª
 conv2d_93/BiasAdd/ReadVariableOpReadVariableOp)conv2d_93_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_93/BiasAdd/ReadVariableOp°
conv2d_93/BiasAddBiasAddconv2d_93/Conv2D:output:0(conv2d_93/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_93/BiasAdd~
conv2d_93/ReluReluconv2d_93/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_93/ReluÊ
max_pooling2d_93/MaxPoolMaxPoolconv2d_93/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_93/MaxPool³
conv2d_94/Conv2D/ReadVariableOpReadVariableOp(conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_94/Conv2D/ReadVariableOpÝ
conv2d_94/Conv2DConv2D!max_pooling2d_93/MaxPool:output:0'conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_94/Conv2Dª
 conv2d_94/BiasAdd/ReadVariableOpReadVariableOp)conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_94/BiasAdd/ReadVariableOp°
conv2d_94/BiasAddBiasAddconv2d_94/Conv2D:output:0(conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_94/BiasAdd~
conv2d_94/ReluReluconv2d_94/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_94/ReluÊ
max_pooling2d_94/MaxPoolMaxPoolconv2d_94/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_94/MaxPool³
conv2d_95/Conv2D/ReadVariableOpReadVariableOp(conv2d_95_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_95/Conv2D/ReadVariableOpÝ
conv2d_95/Conv2DConv2D!max_pooling2d_94/MaxPool:output:0'conv2d_95/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_95/Conv2Dª
 conv2d_95/BiasAdd/ReadVariableOpReadVariableOp)conv2d_95_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_95/BiasAdd/ReadVariableOp°
conv2d_95/BiasAddBiasAddconv2d_95/Conv2D:output:0(conv2d_95/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_95/BiasAdd~
conv2d_95/ReluReluconv2d_95/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_95/ReluÊ
max_pooling2d_95/MaxPoolMaxPoolconv2d_95/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_95/MaxPoolu
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten_15/Const¤
flatten_15/ReshapeReshape!max_pooling2d_95/MaxPool:output:0flatten_15/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_15/Reshape©
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02 
dense_30/MatMul/ReadVariableOp£
dense_30/MatMulMatMulflatten_15/Reshape:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/MatMul§
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_30/BiasAdd/ReadVariableOp¥
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/BiasAdds
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/Relu¨
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02 
dense_31/MatMul/ReadVariableOp£
dense_31/MatMulMatMuldense_30/Relu:activations:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_31/MatMul§
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_31/BiasAdd/ReadVariableOp¥
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_31/BiasAdd|
dense_31/SoftmaxSoftmaxdense_31/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_31/Softmax
IdentityIdentitydense_31/Softmax:softmax:0!^conv2d_90/BiasAdd/ReadVariableOp ^conv2d_90/Conv2D/ReadVariableOp!^conv2d_91/BiasAdd/ReadVariableOp ^conv2d_91/Conv2D/ReadVariableOp!^conv2d_92/BiasAdd/ReadVariableOp ^conv2d_92/Conv2D/ReadVariableOp!^conv2d_93/BiasAdd/ReadVariableOp ^conv2d_93/Conv2D/ReadVariableOp!^conv2d_94/BiasAdd/ReadVariableOp ^conv2d_94/Conv2D/ReadVariableOp!^conv2d_95/BiasAdd/ReadVariableOp ^conv2d_95/Conv2D/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 2D
 conv2d_90/BiasAdd/ReadVariableOp conv2d_90/BiasAdd/ReadVariableOp2B
conv2d_90/Conv2D/ReadVariableOpconv2d_90/Conv2D/ReadVariableOp2D
 conv2d_91/BiasAdd/ReadVariableOp conv2d_91/BiasAdd/ReadVariableOp2B
conv2d_91/Conv2D/ReadVariableOpconv2d_91/Conv2D/ReadVariableOp2D
 conv2d_92/BiasAdd/ReadVariableOp conv2d_92/BiasAdd/ReadVariableOp2B
conv2d_92/Conv2D/ReadVariableOpconv2d_92/Conv2D/ReadVariableOp2D
 conv2d_93/BiasAdd/ReadVariableOp conv2d_93/BiasAdd/ReadVariableOp2B
conv2d_93/Conv2D/ReadVariableOpconv2d_93/Conv2D/ReadVariableOp2D
 conv2d_94/BiasAdd/ReadVariableOp conv2d_94/BiasAdd/ReadVariableOp2B
conv2d_94/Conv2D/ReadVariableOpconv2d_94/Conv2D/ReadVariableOp2D
 conv2d_95/BiasAdd/ReadVariableOp conv2d_95/BiasAdd/ReadVariableOp2B
conv2d_95/Conv2D/ReadVariableOpconv2d_95/Conv2D/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesequential_22_input
ç
a
E__inference_flatten_15_layer_call_and_return_conditional_losses_26991

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¡
ý
D__inference_conv2d_90_layer_call_and_return_conditional_losses_26888

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp¦
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2
Relu¡
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

)__inference_conv2d_95_layer_call_fn_28804

inputs!
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_95_layer_call_and_return_conditional_losses_269782
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

S
-__inference_sequential_22_layer_call_fn_28297
resizing_3_input
identityÚ
PartitionedCallPartitionedCallresizing_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_22_layer_call_and_return_conditional_losses_263742
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:c _
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameresizing_3_input
«
g
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_26814

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
g
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_26838

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

}
-__inference_sequential_23_layer_call_fn_28677

inputs
unknown:	
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_23_layer_call_and_return_conditional_losses_266102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡®
å
H__inference_sequential_23_layer_call_and_return_conditional_losses_26610

inputsH
:random_rotation_4_stateful_uniform_rngreadandskip_resource:	
identity¢1random_rotation_4/stateful_uniform/RngReadAndSkipÝ
7random_flip_4/random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7random_flip_4/random_flip_left_right/control_dependencyÈ
*random_flip_4/random_flip_left_right/ShapeShape@random_flip_4/random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:2,
*random_flip_4/random_flip_left_right/Shape¾
8random_flip_4/random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8random_flip_4/random_flip_left_right/strided_slice/stackÂ
:random_flip_4/random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_4/random_flip_left_right/strided_slice/stack_1Â
:random_flip_4/random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_flip_4/random_flip_left_right/strided_slice/stack_2À
2random_flip_4/random_flip_left_right/strided_sliceStridedSlice3random_flip_4/random_flip_left_right/Shape:output:0Arandom_flip_4/random_flip_left_right/strided_slice/stack:output:0Crandom_flip_4/random_flip_left_right/strided_slice/stack_1:output:0Crandom_flip_4/random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2random_flip_4/random_flip_left_right/strided_sliceé
9random_flip_4/random_flip_left_right/random_uniform/shapePack;random_flip_4/random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:2;
9random_flip_4/random_flip_left_right/random_uniform/shape·
7random_flip_4/random_flip_left_right/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    29
7random_flip_4/random_flip_left_right/random_uniform/min·
7random_flip_4/random_flip_left_right/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7random_flip_4/random_flip_left_right/random_uniform/max
Arandom_flip_4/random_flip_left_right/random_uniform/RandomUniformRandomUniformBrandom_flip_4/random_flip_left_right/random_uniform/shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02C
Arandom_flip_4/random_flip_left_right/random_uniform/RandomUniformµ
7random_flip_4/random_flip_left_right/random_uniform/MulMulJrandom_flip_4/random_flip_left_right/random_uniform/RandomUniform:output:0@random_flip_4/random_flip_left_right/random_uniform/max:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ29
7random_flip_4/random_flip_left_right/random_uniform/Mul®
4random_flip_4/random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_4/random_flip_left_right/Reshape/shape/1®
4random_flip_4/random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_4/random_flip_left_right/Reshape/shape/2®
4random_flip_4/random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :26
4random_flip_4/random_flip_left_right/Reshape/shape/3
2random_flip_4/random_flip_left_right/Reshape/shapePack;random_flip_4/random_flip_left_right/strided_slice:output:0=random_flip_4/random_flip_left_right/Reshape/shape/1:output:0=random_flip_4/random_flip_left_right/Reshape/shape/2:output:0=random_flip_4/random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:24
2random_flip_4/random_flip_left_right/Reshape/shape
,random_flip_4/random_flip_left_right/ReshapeReshape;random_flip_4/random_flip_left_right/random_uniform/Mul:z:0;random_flip_4/random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,random_flip_4/random_flip_left_right/ReshapeÒ
*random_flip_4/random_flip_left_right/RoundRound5random_flip_4/random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*random_flip_4/random_flip_left_right/Round´
3random_flip_4/random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:25
3random_flip_4/random_flip_left_right/ReverseV2/axis©
.random_flip_4/random_flip_left_right/ReverseV2	ReverseV2@random_flip_4/random_flip_left_right/control_dependency:output:0<random_flip_4/random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.random_flip_4/random_flip_left_right/ReverseV2
(random_flip_4/random_flip_left_right/mulMul.random_flip_4/random_flip_left_right/Round:y:07random_flip_4/random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_flip_4/random_flip_left_right/mul
*random_flip_4/random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*random_flip_4/random_flip_left_right/sub/xú
(random_flip_4/random_flip_left_right/subSub3random_flip_4/random_flip_left_right/sub/x:output:0.random_flip_4/random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_flip_4/random_flip_left_right/sub
*random_flip_4/random_flip_left_right/mul_1Mul,random_flip_4/random_flip_left_right/sub:z:0@random_flip_4/random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2,
*random_flip_4/random_flip_left_right/mul_1÷
(random_flip_4/random_flip_left_right/addAddV2,random_flip_4/random_flip_left_right/mul:z:0.random_flip_4/random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_flip_4/random_flip_left_right/add
4random_flip_4/random_flip_up_down/control_dependencyIdentity,random_flip_4/random_flip_left_right/add:z:0*
T0*;
_class1
/-loc:@random_flip_4/random_flip_left_right/add*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4random_flip_4/random_flip_up_down/control_dependency¿
'random_flip_4/random_flip_up_down/ShapeShape=random_flip_4/random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:2)
'random_flip_4/random_flip_up_down/Shape¸
5random_flip_4/random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_flip_4/random_flip_up_down/strided_slice/stack¼
7random_flip_4/random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_4/random_flip_up_down/strided_slice/stack_1¼
7random_flip_4/random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_flip_4/random_flip_up_down/strided_slice/stack_2®
/random_flip_4/random_flip_up_down/strided_sliceStridedSlice0random_flip_4/random_flip_up_down/Shape:output:0>random_flip_4/random_flip_up_down/strided_slice/stack:output:0@random_flip_4/random_flip_up_down/strided_slice/stack_1:output:0@random_flip_4/random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_flip_4/random_flip_up_down/strided_sliceà
6random_flip_4/random_flip_up_down/random_uniform/shapePack8random_flip_4/random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:28
6random_flip_4/random_flip_up_down/random_uniform/shape±
4random_flip_4/random_flip_up_down/random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    26
4random_flip_4/random_flip_up_down/random_uniform/min±
4random_flip_4/random_flip_up_down/random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?26
4random_flip_4/random_flip_up_down/random_uniform/max
>random_flip_4/random_flip_up_down/random_uniform/RandomUniformRandomUniform?random_flip_4/random_flip_up_down/random_uniform/shape:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02@
>random_flip_4/random_flip_up_down/random_uniform/RandomUniform©
4random_flip_4/random_flip_up_down/random_uniform/MulMulGrandom_flip_4/random_flip_up_down/random_uniform/RandomUniform:output:0=random_flip_4/random_flip_up_down/random_uniform/max:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4random_flip_4/random_flip_up_down/random_uniform/Mul¨
1random_flip_4/random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_4/random_flip_up_down/Reshape/shape/1¨
1random_flip_4/random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_4/random_flip_up_down/Reshape/shape/2¨
1random_flip_4/random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :23
1random_flip_4/random_flip_up_down/Reshape/shape/3
/random_flip_4/random_flip_up_down/Reshape/shapePack8random_flip_4/random_flip_up_down/strided_slice:output:0:random_flip_4/random_flip_up_down/Reshape/shape/1:output:0:random_flip_4/random_flip_up_down/Reshape/shape/2:output:0:random_flip_4/random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:21
/random_flip_4/random_flip_up_down/Reshape/shape
)random_flip_4/random_flip_up_down/ReshapeReshape8random_flip_4/random_flip_up_down/random_uniform/Mul:z:08random_flip_4/random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_flip_4/random_flip_up_down/ReshapeÉ
'random_flip_4/random_flip_up_down/RoundRound2random_flip_4/random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_flip_4/random_flip_up_down/Round®
0random_flip_4/random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:22
0random_flip_4/random_flip_up_down/ReverseV2/axis
+random_flip_4/random_flip_up_down/ReverseV2	ReverseV2=random_flip_4/random_flip_up_down/control_dependency:output:09random_flip_4/random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+random_flip_4/random_flip_up_down/ReverseV2ô
%random_flip_4/random_flip_up_down/mulMul+random_flip_4/random_flip_up_down/Round:y:04random_flip_4/random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_flip_4/random_flip_up_down/mul
'random_flip_4/random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2)
'random_flip_4/random_flip_up_down/sub/xî
%random_flip_4/random_flip_up_down/subSub0random_flip_4/random_flip_up_down/sub/x:output:0+random_flip_4/random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_flip_4/random_flip_up_down/subÿ
'random_flip_4/random_flip_up_down/mul_1Mul)random_flip_4/random_flip_up_down/sub:z:0=random_flip_4/random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_flip_4/random_flip_up_down/mul_1ë
%random_flip_4/random_flip_up_down/addAddV2)random_flip_4/random_flip_up_down/mul:z:0+random_flip_4/random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_flip_4/random_flip_up_down/add
random_rotation_4/ShapeShape)random_flip_4/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2
random_rotation_4/Shape
%random_rotation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%random_rotation_4/strided_slice/stack
'random_rotation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice/stack_1
'random_rotation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice/stack_2Î
random_rotation_4/strided_sliceStridedSlice random_rotation_4/Shape:output:0.random_rotation_4/strided_slice/stack:output:00random_rotation_4/strided_slice/stack_1:output:00random_rotation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
random_rotation_4/strided_slice
'random_rotation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice_1/stack 
)random_rotation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_1/stack_1 
)random_rotation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_1/stack_2Ø
!random_rotation_4/strided_slice_1StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_1/stack:output:02random_rotation_4/strided_slice_1/stack_1:output:02random_rotation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_4/strided_slice_1
random_rotation_4/CastCast*random_rotation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_4/Cast
'random_rotation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2)
'random_rotation_4/strided_slice_2/stack 
)random_rotation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_2/stack_1 
)random_rotation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)random_rotation_4/strided_slice_2/stack_2Ø
!random_rotation_4/strided_slice_2StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_2/stack:output:02random_rotation_4/strided_slice_2/stack_1:output:02random_rotation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!random_rotation_4/strided_slice_2
random_rotation_4/Cast_1Cast*random_rotation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
random_rotation_4/Cast_1´
(random_rotation_4/stateful_uniform/shapePack(random_rotation_4/strided_slice:output:0*
N*
T0*
_output_shapes
:2*
(random_rotation_4/stateful_uniform/shape
&random_rotation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿2(
&random_rotation_4/stateful_uniform/min
&random_rotation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?2(
&random_rotation_4/stateful_uniform/max
(random_rotation_4/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2*
(random_rotation_4/stateful_uniform/Constá
'random_rotation_4/stateful_uniform/ProdProd1random_rotation_4/stateful_uniform/shape:output:01random_rotation_4/stateful_uniform/Const:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/stateful_uniform/Prod
)random_rotation_4/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :2+
)random_rotation_4/stateful_uniform/Cast/xÀ
)random_rotation_4/stateful_uniform/Cast_1Cast0random_rotation_4/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 2+
)random_rotation_4/stateful_uniform/Cast_1³
1random_rotation_4/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_4_stateful_uniform_rngreadandskip_resource2random_rotation_4/stateful_uniform/Cast/x:output:0-random_rotation_4/stateful_uniform/Cast_1:y:0*
_output_shapes
:23
1random_rotation_4/stateful_uniform/RngReadAndSkipº
6random_rotation_4/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6random_rotation_4/stateful_uniform/strided_slice/stack¾
8random_rotation_4/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_4/stateful_uniform/strided_slice/stack_1¾
8random_rotation_4/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_4/stateful_uniform/strided_slice/stack_2º
0random_rotation_4/stateful_uniform/strided_sliceStridedSlice9random_rotation_4/stateful_uniform/RngReadAndSkip:value:0?random_rotation_4/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_4/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_4/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask22
0random_rotation_4/stateful_uniform/strided_sliceÏ
*random_rotation_4/stateful_uniform/BitcastBitcast9random_rotation_4/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type02,
*random_rotation_4/stateful_uniform/Bitcast¾
8random_rotation_4/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8random_rotation_4/stateful_uniform/strided_slice_1/stackÂ
:random_rotation_4/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_4/stateful_uniform/strided_slice_1/stack_1Â
:random_rotation_4/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:random_rotation_4/stateful_uniform/strided_slice_1/stack_2²
2random_rotation_4/stateful_uniform/strided_slice_1StridedSlice9random_rotation_4/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_4/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_4/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_4/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:24
2random_rotation_4/stateful_uniform/strided_slice_1Õ
,random_rotation_4/stateful_uniform/Bitcast_1Bitcast;random_rotation_4/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type02.
,random_rotation_4/stateful_uniform/Bitcast_1Ä
?random_rotation_4/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :2A
?random_rotation_4/stateful_uniform/StatelessRandomUniformV2/alg¤
;random_rotation_4/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_4/stateful_uniform/shape:output:05random_rotation_4/stateful_uniform/Bitcast_1:output:03random_rotation_4/stateful_uniform/Bitcast:output:0Hrandom_rotation_4/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2=
;random_rotation_4/stateful_uniform/StatelessRandomUniformV2Ú
&random_rotation_4/stateful_uniform/subSub/random_rotation_4/stateful_uniform/max:output:0/random_rotation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: 2(
&random_rotation_4/stateful_uniform/sub÷
&random_rotation_4/stateful_uniform/mulMulDrandom_rotation_4/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_4/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&random_rotation_4/stateful_uniform/mulÚ
"random_rotation_4/stateful_uniformAdd*random_rotation_4/stateful_uniform/mul:z:0/random_rotation_4/stateful_uniform/min:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"random_rotation_4/stateful_uniform
'random_rotation_4/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2)
'random_rotation_4/rotation_matrix/sub/yÆ
%random_rotation_4/rotation_matrix/subSubrandom_rotation_4/Cast_1:y:00random_rotation_4/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 2'
%random_rotation_4/rotation_matrix/sub«
%random_rotation_4/rotation_matrix/CosCos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/Cos
)random_rotation_4/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_1/yÌ
'random_rotation_4/rotation_matrix/sub_1Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_1Û
%random_rotation_4/rotation_matrix/mulMul)random_rotation_4/rotation_matrix/Cos:y:0+random_rotation_4/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/mul«
%random_rotation_4/rotation_matrix/SinSin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/Sin
)random_rotation_4/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_2/yÊ
'random_rotation_4/rotation_matrix/sub_2Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_2ß
'random_rotation_4/rotation_matrix/mul_1Mul)random_rotation_4/rotation_matrix/Sin:y:0+random_rotation_4/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/mul_1ß
'random_rotation_4/rotation_matrix/sub_3Sub)random_rotation_4/rotation_matrix/mul:z:0+random_rotation_4/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/sub_3ß
'random_rotation_4/rotation_matrix/sub_4Sub)random_rotation_4/rotation_matrix/sub:z:0+random_rotation_4/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/sub_4
+random_rotation_4/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2-
+random_rotation_4/rotation_matrix/truediv/yò
)random_rotation_4/rotation_matrix/truedivRealDiv+random_rotation_4/rotation_matrix/sub_4:z:04random_rotation_4/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)random_rotation_4/rotation_matrix/truediv
)random_rotation_4/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_5/yÊ
'random_rotation_4/rotation_matrix/sub_5Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_5¯
'random_rotation_4/rotation_matrix/Sin_1Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Sin_1
)random_rotation_4/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_6/yÌ
'random_rotation_4/rotation_matrix/sub_6Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_6á
'random_rotation_4/rotation_matrix/mul_2Mul+random_rotation_4/rotation_matrix/Sin_1:y:0+random_rotation_4/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/mul_2¯
'random_rotation_4/rotation_matrix/Cos_1Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Cos_1
)random_rotation_4/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)random_rotation_4/rotation_matrix/sub_7/yÊ
'random_rotation_4/rotation_matrix/sub_7Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 2)
'random_rotation_4/rotation_matrix/sub_7á
'random_rotation_4/rotation_matrix/mul_3Mul+random_rotation_4/rotation_matrix/Cos_1:y:0+random_rotation_4/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/mul_3ß
%random_rotation_4/rotation_matrix/addAddV2+random_rotation_4/rotation_matrix/mul_2:z:0+random_rotation_4/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/addß
'random_rotation_4/rotation_matrix/sub_8Sub+random_rotation_4/rotation_matrix/sub_5:z:0)random_rotation_4/rotation_matrix/add:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/sub_8£
-random_rotation_4/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @2/
-random_rotation_4/rotation_matrix/truediv_1/yø
+random_rotation_4/rotation_matrix/truediv_1RealDiv+random_rotation_4/rotation_matrix/sub_8:z:06random_rotation_4/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+random_rotation_4/rotation_matrix/truediv_1¨
'random_rotation_4/rotation_matrix/ShapeShape&random_rotation_4/stateful_uniform:z:0*
T0*
_output_shapes
:2)
'random_rotation_4/rotation_matrix/Shape¸
5random_rotation_4/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5random_rotation_4/rotation_matrix/strided_slice/stack¼
7random_rotation_4/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_4/rotation_matrix/strided_slice/stack_1¼
7random_rotation_4/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7random_rotation_4/rotation_matrix/strided_slice/stack_2®
/random_rotation_4/rotation_matrix/strided_sliceStridedSlice0random_rotation_4/rotation_matrix/Shape:output:0>random_rotation_4/rotation_matrix/strided_slice/stack:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask21
/random_rotation_4/rotation_matrix/strided_slice¯
'random_rotation_4/rotation_matrix/Cos_2Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Cos_2Ã
7random_rotation_4/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_1/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_1/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_1/stack_2ã
1random_rotation_4/rotation_matrix/strided_slice_1StridedSlice+random_rotation_4/rotation_matrix/Cos_2:y:0@random_rotation_4/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_1¯
'random_rotation_4/rotation_matrix/Sin_2Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Sin_2Ã
7random_rotation_4/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_2/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_2/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_2/stack_2ã
1random_rotation_4/rotation_matrix/strided_slice_2StridedSlice+random_rotation_4/rotation_matrix/Sin_2:y:0@random_rotation_4/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_2Ã
%random_rotation_4/rotation_matrix/NegNeg:random_rotation_4/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%random_rotation_4/rotation_matrix/NegÃ
7random_rotation_4/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_3/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_3/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_3/stack_2å
1random_rotation_4/rotation_matrix/strided_slice_3StridedSlice-random_rotation_4/rotation_matrix/truediv:z:0@random_rotation_4/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_3¯
'random_rotation_4/rotation_matrix/Sin_3Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Sin_3Ã
7random_rotation_4/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_4/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_4/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_4/stack_2ã
1random_rotation_4/rotation_matrix/strided_slice_4StridedSlice+random_rotation_4/rotation_matrix/Sin_3:y:0@random_rotation_4/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_4¯
'random_rotation_4/rotation_matrix/Cos_3Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/Cos_3Ã
7random_rotation_4/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_5/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_5/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_5/stack_2ã
1random_rotation_4/rotation_matrix/strided_slice_5StridedSlice+random_rotation_4/rotation_matrix/Cos_3:y:0@random_rotation_4/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_5Ã
7random_rotation_4/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7random_rotation_4/rotation_matrix/strided_slice_6/stackÇ
9random_rotation_4/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9random_rotation_4/rotation_matrix/strided_slice_6/stack_1Ç
9random_rotation_4/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9random_rotation_4/rotation_matrix/strided_slice_6/stack_2ç
1random_rotation_4/rotation_matrix/strided_slice_6StridedSlice/random_rotation_4/rotation_matrix/truediv_1:z:0@random_rotation_4/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask23
1random_rotation_4/rotation_matrix/strided_slice_6 
-random_rotation_4/rotation_matrix/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_4/rotation_matrix/zeros/mul/yô
+random_rotation_4/rotation_matrix/zeros/mulMul8random_rotation_4/rotation_matrix/strided_slice:output:06random_rotation_4/rotation_matrix/zeros/mul/y:output:0*
T0*
_output_shapes
: 2-
+random_rotation_4/rotation_matrix/zeros/mul£
.random_rotation_4/rotation_matrix/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è20
.random_rotation_4/rotation_matrix/zeros/Less/yï
,random_rotation_4/rotation_matrix/zeros/LessLess/random_rotation_4/rotation_matrix/zeros/mul:z:07random_rotation_4/rotation_matrix/zeros/Less/y:output:0*
T0*
_output_shapes
: 2.
,random_rotation_4/rotation_matrix/zeros/Less¦
0random_rotation_4/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :22
0random_rotation_4/rotation_matrix/zeros/packed/1
.random_rotation_4/rotation_matrix/zeros/packedPack8random_rotation_4/rotation_matrix/strided_slice:output:09random_rotation_4/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:20
.random_rotation_4/rotation_matrix/zeros/packed£
-random_rotation_4/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2/
-random_rotation_4/rotation_matrix/zeros/Constý
'random_rotation_4/rotation_matrix/zerosFill7random_rotation_4/rotation_matrix/zeros/packed:output:06random_rotation_4/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'random_rotation_4/rotation_matrix/zeros 
-random_rotation_4/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2/
-random_rotation_4/rotation_matrix/concat/axisÜ
(random_rotation_4/rotation_matrix/concatConcatV2:random_rotation_4/rotation_matrix/strided_slice_1:output:0)random_rotation_4/rotation_matrix/Neg:y:0:random_rotation_4/rotation_matrix/strided_slice_3:output:0:random_rotation_4/rotation_matrix/strided_slice_4:output:0:random_rotation_4/rotation_matrix/strided_slice_5:output:0:random_rotation_4/rotation_matrix/strided_slice_6:output:00random_rotation_4/rotation_matrix/zeros:output:06random_rotation_4/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(random_rotation_4/rotation_matrix/concat
!random_rotation_4/transform/ShapeShape)random_flip_4/random_flip_up_down/add:z:0*
T0*
_output_shapes
:2#
!random_rotation_4/transform/Shape¬
/random_rotation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/random_rotation_4/transform/strided_slice/stack°
1random_rotation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_4/transform/strided_slice/stack_1°
1random_rotation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1random_rotation_4/transform/strided_slice/stack_2ö
)random_rotation_4/transform/strided_sliceStridedSlice*random_rotation_4/transform/Shape:output:08random_rotation_4/transform/strided_slice/stack:output:0:random_rotation_4/transform/strided_slice/stack_1:output:0:random_rotation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2+
)random_rotation_4/transform/strided_slice
&random_rotation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&random_rotation_4/transform/fill_valueÆ
6random_rotation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3)random_flip_4/random_flip_up_down/add:z:01random_rotation_4/rotation_matrix/concat:output:02random_rotation_4/transform/strided_slice:output:0/random_rotation_4/transform/fill_value:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR28
6random_rotation_4/transform/ImageProjectiveTransformV3Ý
IdentityIdentityKrandom_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:02^random_rotation_4/stateful_uniform/RngReadAndSkip*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 2f
1random_rotation_4/stateful_uniform/RngReadAndSkip1random_rotation_4/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_94_layer_call_and_return_conditional_losses_26960

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
×
L
0__inference_max_pooling2d_93_layer_call_fn_26844

inputs
identityì
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_268382
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

)__inference_conv2d_91_layer_call_fn_28724

inputs!
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallü
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_91_layer_call_and_return_conditional_losses_269062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

ý
D__inference_conv2d_94_layer_call_and_return_conditional_losses_28775

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ã

-__inference_sequential_23_layer_call_fn_28684
random_flip_4_input
unknown:	
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_4_inputunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_23_layer_call_and_return_conditional_losses_266102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namerandom_flip_4_input

ý
D__inference_conv2d_95_layer_call_and_return_conditional_losses_28795

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ç
a
E__inference_flatten_15_layer_call_and_return_conditional_losses_28810

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
³
Í
#__inference_signature_wrapper_27472
sequential_22_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@

unknown_13:@


unknown_14:

identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallsequential_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_263602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesequential_22_input
Ã

d
H__inference_sequential_22_layer_call_and_return_conditional_losses_26374

inputs
identity
resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing_3/resize/sizeÕ
 resizing_3/resize/ResizeBilinearResizeBilinearinputsresizing_3/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2"
 resizing_3/resize/ResizeBilinearm
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
rescaling_3/Cast/xq
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_3/Cast_1/xµ
rescaling_3/mulMul1resizing_3/resize/ResizeBilinear:resized_images:0rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rescaling_3/mul
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rescaling_3/addq
IdentityIdentityrescaling_3/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾
Ê
-__inference_sequential_24_layer_call_fn_28174

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	@

unknown_12:@

unknown_13:@


unknown_14:

identity¢StatefulPartitionedCall³
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_24_layer_call_and_return_conditional_losses_270282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

S
-__inference_sequential_22_layer_call_fn_28312
resizing_3_input
identityÚ
PartitionedCallPartitionedCallresizing_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_22_layer_call_and_return_conditional_losses_263942
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:c _
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameresizing_3_input
¯

õ
C__inference_dense_30_layer_call_and_return_conditional_losses_27004

inputs1
matmul_readvariableop_resource:	@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á

n
H__inference_sequential_22_layer_call_and_return_conditional_losses_28292
resizing_3_input
identity
resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2
resizing_3/resize/sizeß
 resizing_3/resize/ResizeBilinearResizeBilinearresizing_3_inputresizing_3/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2"
 resizing_3/resize/ResizeBilinearm
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2
rescaling_3/Cast/xq
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_3/Cast_1/xµ
rescaling_3/mulMul1resizing_3/resize/ResizeBilinear:resized_images:0rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rescaling_3/mul
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
rescaling_3/addq
IdentityIdentityrescaling_3/add:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:c _
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameresizing_3_input
«
g
K__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_26802

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_92_layer_call_and_return_conditional_losses_28735

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@
 
_user_specified_nameinputs
×
L
0__inference_max_pooling2d_92_layer_call_fn_26832

inputs
identityì
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_268262
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ý
D__inference_conv2d_93_layer_call_and_return_conditional_losses_28755

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


(__inference_dense_30_layer_call_fn_28835

inputs
unknown:	@
	unknown_0:@
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_30_layer_call_and_return_conditional_losses_270042
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×
L
0__inference_max_pooling2d_90_layer_call_fn_26808

inputs
identityì
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_268022
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«g
à
H__inference_sequential_24_layer_call_and_return_conditional_losses_27546

inputsB
(conv2d_90_conv2d_readvariableop_resource: 7
)conv2d_90_biasadd_readvariableop_resource: B
(conv2d_91_conv2d_readvariableop_resource: @7
)conv2d_91_biasadd_readvariableop_resource:@B
(conv2d_92_conv2d_readvariableop_resource:@@7
)conv2d_92_biasadd_readvariableop_resource:@B
(conv2d_93_conv2d_readvariableop_resource:@@7
)conv2d_93_biasadd_readvariableop_resource:@B
(conv2d_94_conv2d_readvariableop_resource:@@7
)conv2d_94_biasadd_readvariableop_resource:@B
(conv2d_95_conv2d_readvariableop_resource:@@7
)conv2d_95_biasadd_readvariableop_resource:@:
'dense_30_matmul_readvariableop_resource:	@6
(dense_30_biasadd_readvariableop_resource:@9
'dense_31_matmul_readvariableop_resource:@
6
(dense_31_biasadd_readvariableop_resource:

identity¢ conv2d_90/BiasAdd/ReadVariableOp¢conv2d_90/Conv2D/ReadVariableOp¢ conv2d_91/BiasAdd/ReadVariableOp¢conv2d_91/Conv2D/ReadVariableOp¢ conv2d_92/BiasAdd/ReadVariableOp¢conv2d_92/Conv2D/ReadVariableOp¢ conv2d_93/BiasAdd/ReadVariableOp¢conv2d_93/Conv2D/ReadVariableOp¢ conv2d_94/BiasAdd/ReadVariableOp¢conv2d_94/Conv2D/ReadVariableOp¢ conv2d_95/BiasAdd/ReadVariableOp¢conv2d_95/Conv2D/ReadVariableOp¢dense_30/BiasAdd/ReadVariableOp¢dense_30/MatMul/ReadVariableOp¢dense_31/BiasAdd/ReadVariableOp¢dense_31/MatMul/ReadVariableOp
$sequential_22/resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_22/resizing_3/resize/sizeÿ
.sequential_22/resizing_3/resize/ResizeBilinearResizeBilinearinputs-sequential_22/resizing_3/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(20
.sequential_22/resizing_3/resize/ResizeBilinear
 sequential_22/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;2"
 sequential_22/rescaling_3/Cast/x
"sequential_22/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_22/rescaling_3/Cast_1/xí
sequential_22/rescaling_3/mulMul?sequential_22/resizing_3/resize/ResizeBilinear:resized_images:0)sequential_22/rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_22/rescaling_3/mulÓ
sequential_22/rescaling_3/addAddV2!sequential_22/rescaling_3/mul:z:0+sequential_22/rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_22/rescaling_3/add³
conv2d_90/Conv2D/ReadVariableOpReadVariableOp(conv2d_90_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_90/Conv2D/ReadVariableOpß
conv2d_90/Conv2DConv2D!sequential_22/rescaling_3/add:z:0'conv2d_90/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ *
paddingVALID*
strides
2
conv2d_90/Conv2Dª
 conv2d_90/BiasAdd/ReadVariableOpReadVariableOp)conv2d_90_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_90/BiasAdd/ReadVariableOp²
conv2d_90/BiasAddBiasAddconv2d_90/Conv2D:output:0(conv2d_90/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2
conv2d_90/BiasAdd
conv2d_90/ReluReluconv2d_90/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿþþ 2
conv2d_90/ReluÊ
max_pooling2d_90/MaxPoolMaxPoolconv2d_90/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_90/MaxPool³
conv2d_91/Conv2D/ReadVariableOpReadVariableOp(conv2d_91_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_91/Conv2D/ReadVariableOpÝ
conv2d_91/Conv2DConv2D!max_pooling2d_90/MaxPool:output:0'conv2d_91/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@*
paddingVALID*
strides
2
conv2d_91/Conv2Dª
 conv2d_91/BiasAdd/ReadVariableOpReadVariableOp)conv2d_91_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_91/BiasAdd/ReadVariableOp°
conv2d_91/BiasAddBiasAddconv2d_91/Conv2D:output:0(conv2d_91/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2
conv2d_91/BiasAdd~
conv2d_91/ReluReluconv2d_91/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}}@2
conv2d_91/ReluÊ
max_pooling2d_91/MaxPoolMaxPoolconv2d_91/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ>>@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_91/MaxPool³
conv2d_92/Conv2D/ReadVariableOpReadVariableOp(conv2d_92_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_92/Conv2D/ReadVariableOpÝ
conv2d_92/Conv2DConv2D!max_pooling2d_91/MaxPool:output:0'conv2d_92/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@*
paddingVALID*
strides
2
conv2d_92/Conv2Dª
 conv2d_92/BiasAdd/ReadVariableOpReadVariableOp)conv2d_92_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_92/BiasAdd/ReadVariableOp°
conv2d_92/BiasAddBiasAddconv2d_92/Conv2D:output:0(conv2d_92/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2
conv2d_92/BiasAdd~
conv2d_92/ReluReluconv2d_92/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<<@2
conv2d_92/ReluÊ
max_pooling2d_92/MaxPoolMaxPoolconv2d_92/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_92/MaxPool³
conv2d_93/Conv2D/ReadVariableOpReadVariableOp(conv2d_93_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_93/Conv2D/ReadVariableOpÝ
conv2d_93/Conv2DConv2D!max_pooling2d_92/MaxPool:output:0'conv2d_93/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_93/Conv2Dª
 conv2d_93/BiasAdd/ReadVariableOpReadVariableOp)conv2d_93_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_93/BiasAdd/ReadVariableOp°
conv2d_93/BiasAddBiasAddconv2d_93/Conv2D:output:0(conv2d_93/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_93/BiasAdd~
conv2d_93/ReluReluconv2d_93/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_93/ReluÊ
max_pooling2d_93/MaxPoolMaxPoolconv2d_93/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_93/MaxPool³
conv2d_94/Conv2D/ReadVariableOpReadVariableOp(conv2d_94_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_94/Conv2D/ReadVariableOpÝ
conv2d_94/Conv2DConv2D!max_pooling2d_93/MaxPool:output:0'conv2d_94/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_94/Conv2Dª
 conv2d_94/BiasAdd/ReadVariableOpReadVariableOp)conv2d_94_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_94/BiasAdd/ReadVariableOp°
conv2d_94/BiasAddBiasAddconv2d_94/Conv2D:output:0(conv2d_94/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_94/BiasAdd~
conv2d_94/ReluReluconv2d_94/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_94/ReluÊ
max_pooling2d_94/MaxPoolMaxPoolconv2d_94/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_94/MaxPool³
conv2d_95/Conv2D/ReadVariableOpReadVariableOp(conv2d_95_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02!
conv2d_95/Conv2D/ReadVariableOpÝ
conv2d_95/Conv2DConv2D!max_pooling2d_94/MaxPool:output:0'conv2d_95/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
2
conv2d_95/Conv2Dª
 conv2d_95/BiasAdd/ReadVariableOpReadVariableOp)conv2d_95_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_95/BiasAdd/ReadVariableOp°
conv2d_95/BiasAddBiasAddconv2d_95/Conv2D:output:0(conv2d_95/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_95/BiasAdd~
conv2d_95/ReluReluconv2d_95/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
conv2d_95/ReluÊ
max_pooling2d_95/MaxPoolMaxPoolconv2d_95/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_95/MaxPoolu
flatten_15/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2
flatten_15/Const¤
flatten_15/ReshapeReshape!max_pooling2d_95/MaxPool:output:0flatten_15/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_15/Reshape©
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02 
dense_30/MatMul/ReadVariableOp£
dense_30/MatMulMatMulflatten_15/Reshape:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/MatMul§
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_30/BiasAdd/ReadVariableOp¥
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/BiasAdds
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_30/Relu¨
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

:@
*
dtype02 
dense_31/MatMul/ReadVariableOp£
dense_31/MatMulMatMuldense_30/Relu:activations:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_31/MatMul§
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_31/BiasAdd/ReadVariableOp¥
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_31/BiasAdd|
dense_31/SoftmaxSoftmaxdense_31/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_31/Softmax
IdentityIdentitydense_31/Softmax:softmax:0!^conv2d_90/BiasAdd/ReadVariableOp ^conv2d_90/Conv2D/ReadVariableOp!^conv2d_91/BiasAdd/ReadVariableOp ^conv2d_91/Conv2D/ReadVariableOp!^conv2d_92/BiasAdd/ReadVariableOp ^conv2d_92/Conv2D/ReadVariableOp!^conv2d_93/BiasAdd/ReadVariableOp ^conv2d_93/Conv2D/ReadVariableOp!^conv2d_94/BiasAdd/ReadVariableOp ^conv2d_94/Conv2D/ReadVariableOp!^conv2d_95/BiasAdd/ReadVariableOp ^conv2d_95/Conv2D/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : 2D
 conv2d_90/BiasAdd/ReadVariableOp conv2d_90/BiasAdd/ReadVariableOp2B
conv2d_90/Conv2D/ReadVariableOpconv2d_90/Conv2D/ReadVariableOp2D
 conv2d_91/BiasAdd/ReadVariableOp conv2d_91/BiasAdd/ReadVariableOp2B
conv2d_91/Conv2D/ReadVariableOpconv2d_91/Conv2D/ReadVariableOp2D
 conv2d_92/BiasAdd/ReadVariableOp conv2d_92/BiasAdd/ReadVariableOp2B
conv2d_92/Conv2D/ReadVariableOpconv2d_92/Conv2D/ReadVariableOp2D
 conv2d_93/BiasAdd/ReadVariableOp conv2d_93/BiasAdd/ReadVariableOp2B
conv2d_93/Conv2D/ReadVariableOpconv2d_93/Conv2D/ReadVariableOp2D
 conv2d_94/BiasAdd/ReadVariableOp conv2d_94/BiasAdd/ReadVariableOp2B
conv2d_94/Conv2D/ReadVariableOpconv2d_94/Conv2D/ReadVariableOp2D
 conv2d_95/BiasAdd/ReadVariableOp conv2d_95/BiasAdd/ReadVariableOp2B
conv2d_95/Conv2D/ReadVariableOpconv2d_95/Conv2D/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
g
K__inference_max_pooling2d_95_layer_call_and_return_conditional_losses_26862

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


(__inference_dense_31_layer_call_fn_28855

inputs
unknown:@

	unknown_0:

identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_31_layer_call_and_return_conditional_losses_270212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ì
I
-__inference_sequential_22_layer_call_fn_28302

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_22_layer_call_and_return_conditional_losses_263742
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Í
serving_default¹
]
sequential_22_inputF
%serving_default_sequential_22_input:0ÿÿÿÿÿÿÿÿÿ<
dense_310
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:âè
±
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
_default_save_signature
+&call_and_return_all_conditional_losses
__call__"®
_tf_keras_sequential{"name": "sequential_24", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_24", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_22_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_22", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "resizing_3_input"}}, {"class_name": "Resizing", "config": {"name": "resizing_3", "trainable": true, "dtype": "float32", "height": 256, "width": 256, "interpolation": "bilinear"}}, {"class_name": "Rescaling", "config": {"name": "rescaling_3", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}}, {"class_name": "Sequential", "config": {"name": "sequential_23", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_4_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_4", "trainable": true, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_4", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}}, {"class_name": "Conv2D", "config": {"name": "conv2d_90", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_90", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_91", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_91", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_92", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_92", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_93", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_93", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_94", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_94", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_95", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_95", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_15", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 40, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [32, 256, 256, 3]}, "float32", "sequential_22_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_24", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_22_input"}, "shared_object_id": 0}, {"class_name": "Sequential", "config": {"name": "sequential_22", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "resizing_3_input"}}, {"class_name": "Resizing", "config": {"name": "resizing_3", "trainable": true, "dtype": "float32", "height": 256, "width": 256, "interpolation": "bilinear"}}, {"class_name": "Rescaling", "config": {"name": "rescaling_3", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}, "shared_object_id": 4}, {"class_name": "Sequential", "config": {"name": "sequential_23", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_4_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_4", "trainable": true, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_4", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "shared_object_id": 8}, {"class_name": "Conv2D", "config": {"name": "conv2d_90", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_90", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 12}, {"class_name": "Conv2D", "config": {"name": "conv2d_91", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_91", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 16}, {"class_name": "Conv2D", "config": {"name": "conv2d_92", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_92", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 20}, {"class_name": "Conv2D", "config": {"name": "conv2d_93", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_93", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 24}, {"class_name": "Conv2D", "config": {"name": "conv2d_94", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 27}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_94", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 28}, {"class_name": "Conv2D", "config": {"name": "conv2d_95", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 31}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_95", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 32}, {"class_name": "Flatten", "config": {"name": "flatten_15", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 33}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 34}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 36}, {"class_name": "Dense", "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 39}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": false}, "shared_object_id": 41}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 42}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
¼
layer-0
layer-1
regularization_losses
trainable_variables
	variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_sequentialò{"name": "sequential_22", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_22", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "resizing_3_input"}}, {"class_name": "Resizing", "config": {"name": "resizing_3", "trainable": true, "dtype": "float32", "height": 256, "width": 256, "interpolation": "bilinear"}}, {"class_name": "Rescaling", "config": {"name": "rescaling_3", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}}]}, "shared_object_id": 4, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [32, 256, 256, 3]}, "float32", "resizing_3_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_22", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "resizing_3_input"}, "shared_object_id": 1}, {"class_name": "Resizing", "config": {"name": "resizing_3", "trainable": true, "dtype": "float32", "height": 256, "width": 256, "interpolation": "bilinear"}, "shared_object_id": 2}, {"class_name": "Rescaling", "config": {"name": "rescaling_3", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "shared_object_id": 3}]}}}
ë
layer-0
layer-1
 regularization_losses
!trainable_variables
"	variables
#	keras_api
+&call_and_return_all_conditional_losses
__call__"À
_tf_keras_sequential¡{"name": "sequential_23", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_23", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_4_input"}}, {"class_name": "RandomFlip", "config": {"name": "random_flip_4", "trainable": true, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_4", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}}]}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 43}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 256, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [32, 256, 256, 3]}, "float32", "random_flip_4_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_23", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 256, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "random_flip_4_input"}, "shared_object_id": 5}, {"class_name": "RandomFlip", "config": {"name": "random_flip_4", "trainable": true, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}, "shared_object_id": 6}, {"class_name": "RandomRotation", "config": {"name": "random_rotation_4", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 7}]}}}
á

$kernel
%bias
&regularization_losses
'trainable_variables
(	variables
)	keras_api
+&call_and_return_all_conditional_losses
__call__"º

_tf_keras_layer 
{"name": "conv2d_90", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_90", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 44}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 256, 256, 3]}}
³
*regularization_losses
+trainable_variables
,	variables
-	keras_api
+&call_and_return_all_conditional_losses
__call__"¢
_tf_keras_layer{"name": "max_pooling2d_90", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_90", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 45}}
ä

.kernel
/bias
0regularization_losses
1trainable_variables
2	variables
3	keras_api
+&call_and_return_all_conditional_losses
__call__"½

_tf_keras_layer£
{"name": "conv2d_91", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_91", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 46}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 127, 127, 32]}}
³
4regularization_losses
5trainable_variables
6	variables
7	keras_api
+&call_and_return_all_conditional_losses
__call__"¢
_tf_keras_layer{"name": "max_pooling2d_91", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_91", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 47}}
â

8kernel
9bias
:regularization_losses
;trainable_variables
<	variables
=	keras_api
+&call_and_return_all_conditional_losses
__call__"»

_tf_keras_layer¡
{"name": "conv2d_92", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_92", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 48}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 62, 62, 64]}}
³
>regularization_losses
?trainable_variables
@	variables
A	keras_api
+&call_and_return_all_conditional_losses
__call__"¢
_tf_keras_layer{"name": "max_pooling2d_92", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_92", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 49}}
â

Bkernel
Cbias
Dregularization_losses
Etrainable_variables
F	variables
G	keras_api
+&call_and_return_all_conditional_losses
__call__"»

_tf_keras_layer¡
{"name": "conv2d_93", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_93", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 50}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 30, 30, 64]}}
³
Hregularization_losses
Itrainable_variables
J	variables
K	keras_api
+&call_and_return_all_conditional_losses
__call__"¢
_tf_keras_layer{"name": "max_pooling2d_93", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_93", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 51}}
â

Lkernel
Mbias
Nregularization_losses
Otrainable_variables
P	variables
Q	keras_api
+&call_and_return_all_conditional_losses
__call__"»

_tf_keras_layer¡
{"name": "conv2d_94", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_94", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 52}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 14, 14, 64]}}
³
Rregularization_losses
Strainable_variables
T	variables
U	keras_api
+&call_and_return_all_conditional_losses
__call__"¢
_tf_keras_layer{"name": "max_pooling2d_94", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_94", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 53}}
à

Vkernel
Wbias
Xregularization_losses
Ytrainable_variables
Z	variables
[	keras_api
+&call_and_return_all_conditional_losses
__call__"¹

_tf_keras_layer
{"name": "conv2d_95", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_95", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 256, 256, 3]}, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 54}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 6, 6, 64]}}
³
\regularization_losses
]trainable_variables
^	variables
_	keras_api
+&call_and_return_all_conditional_losses
 __call__"¢
_tf_keras_layer{"name": "max_pooling2d_95", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_95", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 55}}

`regularization_losses
atrainable_variables
b	variables
c	keras_api
+¡&call_and_return_all_conditional_losses
¢__call__"
_tf_keras_layerï{"name": "flatten_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_15", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 56}}
Ô

dkernel
ebias
fregularization_losses
gtrainable_variables
h	variables
i	keras_api
+£&call_and_return_all_conditional_losses
¤__call__"­
_tf_keras_layer{"name": "dense_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 34}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 36, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 57}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 256]}}
Õ

jkernel
kbias
lregularization_losses
mtrainable_variables
n	variables
o	keras_api
+¥&call_and_return_all_conditional_losses
¦__call__"®
_tf_keras_layer{"name": "dense_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 58}, "build_input_shape": {"class_name": "TensorShape", "items": [32, 64]}}

piter

qbeta_1

rbeta_2
	sdecay
tlearning_rate$mâ%mã.mä/må8mæ9mçBmèCméLmêMmëVmìWmídmîemïjmðkmñ$vò%vó.vô/võ8vö9v÷BvøCvùLvúMvûVvüWvýdvþevÿjvkv"
	optimizer
 "
trackable_list_wrapper

$0
%1
.2
/3
84
95
B6
C7
L8
M9
V10
W11
d12
e13
j14
k15"
trackable_list_wrapper

$0
%1
.2
/3
84
95
B6
C7
L8
M9
V10
W11
d12
e13
j14
k15"
trackable_list_wrapper
Î
umetrics
regularization_losses
vlayer_metrics
trainable_variables
wlayer_regularization_losses
	variables

xlayers
ynon_trainable_variables
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
§serving_default"
signature_map

z	keras_api"ú
_tf_keras_layerà{"name": "resizing_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "Resizing", "config": {"name": "resizing_3", "trainable": true, "dtype": "float32", "height": 256, "width": 256, "interpolation": "bilinear"}, "shared_object_id": 2}

{	keras_api"ð
_tf_keras_layerÖ{"name": "rescaling_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "Rescaling", "config": {"name": "rescaling_3", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "shared_object_id": 3}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
±
|metrics
regularization_losses
}layer_metrics
trainable_variables
~layer_regularization_losses
	variables

layers
non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¾
	_rng
	keras_api" 
_tf_keras_layer{"name": "random_flip_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomFlip", "config": {"name": "random_flip_4", "trainable": true, "dtype": "float32", "mode": "horizontal_and_vertical", "seed": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 43}}
Ö
	_rng
	keras_api"¸
_tf_keras_layer{"name": "random_rotation_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "RandomRotation", "config": {"name": "random_rotation_4", "trainable": true, "dtype": "float32", "factor": 0.2, "fill_mode": "reflect", "fill_value": 0.0, "interpolation": "bilinear", "seed": null}, "shared_object_id": 7}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
metrics
 regularization_losses
layer_metrics
!trainable_variables
 layer_regularization_losses
"	variables
layers
non_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_90/kernel
: 2conv2d_90/bias
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
µ
metrics
&regularization_losses
non_trainable_variables
'trainable_variables
 layer_regularization_losses
(	variables
layers
layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
metrics
*regularization_losses
non_trainable_variables
+trainable_variables
 layer_regularization_losses
,	variables
layers
layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_91/kernel
:@2conv2d_91/bias
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
µ
metrics
0regularization_losses
non_trainable_variables
1trainable_variables
 layer_regularization_losses
2	variables
layers
layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
metrics
4regularization_losses
non_trainable_variables
5trainable_variables
 layer_regularization_losses
6	variables
layers
layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_92/kernel
:@2conv2d_92/bias
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
µ
metrics
:regularization_losses
non_trainable_variables
;trainable_variables
  layer_regularization_losses
<	variables
¡layers
¢layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
£metrics
>regularization_losses
¤non_trainable_variables
?trainable_variables
 ¥layer_regularization_losses
@	variables
¦layers
§layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_93/kernel
:@2conv2d_93/bias
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
µ
¨metrics
Dregularization_losses
©non_trainable_variables
Etrainable_variables
 ªlayer_regularization_losses
F	variables
«layers
¬layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
­metrics
Hregularization_losses
®non_trainable_variables
Itrainable_variables
 ¯layer_regularization_losses
J	variables
°layers
±layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_94/kernel
:@2conv2d_94/bias
 "
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
µ
²metrics
Nregularization_losses
³non_trainable_variables
Otrainable_variables
 ´layer_regularization_losses
P	variables
µlayers
¶layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
·metrics
Rregularization_losses
¸non_trainable_variables
Strainable_variables
 ¹layer_regularization_losses
T	variables
ºlayers
»layer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
*:(@@2conv2d_95/kernel
:@2conv2d_95/bias
 "
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
µ
¼metrics
Xregularization_losses
½non_trainable_variables
Ytrainable_variables
 ¾layer_regularization_losses
Z	variables
¿layers
Àlayer_metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ámetrics
\regularization_losses
Ânon_trainable_variables
]trainable_variables
 Ãlayer_regularization_losses
^	variables
Älayers
Ålayer_metrics
 __call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Æmetrics
`regularization_losses
Çnon_trainable_variables
atrainable_variables
 Èlayer_regularization_losses
b	variables
Élayers
Êlayer_metrics
¢__call__
+¡&call_and_return_all_conditional_losses
'¡"call_and_return_conditional_losses"
_generic_user_object
": 	@2dense_30/kernel
:@2dense_30/bias
 "
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
µ
Ëmetrics
fregularization_losses
Ìnon_trainable_variables
gtrainable_variables
 Ílayer_regularization_losses
h	variables
Îlayers
Ïlayer_metrics
¤__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
!:@
2dense_31/kernel
:
2dense_31/bias
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
µ
Ðmetrics
lregularization_losses
Ñnon_trainable_variables
mtrainable_variables
 Òlayer_regularization_losses
n	variables
Ólayers
Ôlayer_metrics
¦__call__
+¥&call_and_return_all_conditional_losses
'¥"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
Õ0
Ö1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16"
trackable_list_wrapper
 "
trackable_list_wrapper
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
/
×
_state_var"
_generic_user_object
"
_generic_user_object
/
Ø
_state_var"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Ø

Ùtotal

Úcount
Û	variables
Ü	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 59}
£

Ýtotal

Þcount
ß
_fn_kwargs
à	variables
á	keras_api"×
_tf_keras_metric¼{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 42}
:	2Variable
:	2Variable
:  (2total
:  (2count
0
Ù0
Ú1"
trackable_list_wrapper
.
Û	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ý0
Þ1"
trackable_list_wrapper
.
à	variables"
_generic_user_object
/:- 2Adam/conv2d_90/kernel/m
!: 2Adam/conv2d_90/bias/m
/:- @2Adam/conv2d_91/kernel/m
!:@2Adam/conv2d_91/bias/m
/:-@@2Adam/conv2d_92/kernel/m
!:@2Adam/conv2d_92/bias/m
/:-@@2Adam/conv2d_93/kernel/m
!:@2Adam/conv2d_93/bias/m
/:-@@2Adam/conv2d_94/kernel/m
!:@2Adam/conv2d_94/bias/m
/:-@@2Adam/conv2d_95/kernel/m
!:@2Adam/conv2d_95/bias/m
':%	@2Adam/dense_30/kernel/m
 :@2Adam/dense_30/bias/m
&:$@
2Adam/dense_31/kernel/m
 :
2Adam/dense_31/bias/m
/:- 2Adam/conv2d_90/kernel/v
!: 2Adam/conv2d_90/bias/v
/:- @2Adam/conv2d_91/kernel/v
!:@2Adam/conv2d_91/bias/v
/:-@@2Adam/conv2d_92/kernel/v
!:@2Adam/conv2d_92/bias/v
/:-@@2Adam/conv2d_93/kernel/v
!:@2Adam/conv2d_93/bias/v
/:-@@2Adam/conv2d_94/kernel/v
!:@2Adam/conv2d_94/bias/v
/:-@@2Adam/conv2d_95/kernel/v
!:@2Adam/conv2d_95/bias/v
':%	@2Adam/dense_30/kernel/v
 :@2Adam/dense_30/bias/v
&:$@
2Adam/dense_31/kernel/v
 :
2Adam/dense_31/bias/v
ô2ñ
 __inference__wrapped_model_26360Ì
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *<¢9
74
sequential_22_inputÿÿÿÿÿÿÿÿÿ
î2ë
H__inference_sequential_24_layer_call_and_return_conditional_losses_27546
H__inference_sequential_24_layer_call_and_return_conditional_losses_27786
H__inference_sequential_24_layer_call_and_return_conditional_losses_27860
H__inference_sequential_24_layer_call_and_return_conditional_losses_28100À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2ÿ
-__inference_sequential_24_layer_call_fn_28137
-__inference_sequential_24_layer_call_fn_28174
-__inference_sequential_24_layer_call_fn_28213
-__inference_sequential_24_layer_call_fn_28252À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_22_layer_call_and_return_conditional_losses_28262
H__inference_sequential_22_layer_call_and_return_conditional_losses_28272
H__inference_sequential_22_layer_call_and_return_conditional_losses_28282
H__inference_sequential_22_layer_call_and_return_conditional_losses_28292À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2ÿ
-__inference_sequential_22_layer_call_fn_28297
-__inference_sequential_22_layer_call_fn_28302
-__inference_sequential_22_layer_call_fn_28307
-__inference_sequential_22_layer_call_fn_28312À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_23_layer_call_and_return_conditional_losses_28316
H__inference_sequential_23_layer_call_and_return_conditional_losses_28486
H__inference_sequential_23_layer_call_and_return_conditional_losses_28490
H__inference_sequential_23_layer_call_and_return_conditional_losses_28660À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2ÿ
-__inference_sequential_23_layer_call_fn_28665
-__inference_sequential_23_layer_call_fn_28670
-__inference_sequential_23_layer_call_fn_28677
-__inference_sequential_23_layer_call_fn_28684À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
D__inference_conv2d_90_layer_call_and_return_conditional_losses_28695¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_conv2d_90_layer_call_fn_28704¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³2°
K__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_26802à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
0__inference_max_pooling2d_90_layer_call_fn_26808à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
î2ë
D__inference_conv2d_91_layer_call_and_return_conditional_losses_28715¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_conv2d_91_layer_call_fn_28724¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³2°
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_26814à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
0__inference_max_pooling2d_91_layer_call_fn_26820à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
î2ë
D__inference_conv2d_92_layer_call_and_return_conditional_losses_28735¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_conv2d_92_layer_call_fn_28744¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³2°
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_26826à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
0__inference_max_pooling2d_92_layer_call_fn_26832à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
î2ë
D__inference_conv2d_93_layer_call_and_return_conditional_losses_28755¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_conv2d_93_layer_call_fn_28764¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³2°
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_26838à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
0__inference_max_pooling2d_93_layer_call_fn_26844à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
î2ë
D__inference_conv2d_94_layer_call_and_return_conditional_losses_28775¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_conv2d_94_layer_call_fn_28784¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³2°
K__inference_max_pooling2d_94_layer_call_and_return_conditional_losses_26850à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
0__inference_max_pooling2d_94_layer_call_fn_26856à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
î2ë
D__inference_conv2d_95_layer_call_and_return_conditional_losses_28795¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_conv2d_95_layer_call_fn_28804¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
³2°
K__inference_max_pooling2d_95_layer_call_and_return_conditional_losses_26862à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
0__inference_max_pooling2d_95_layer_call_fn_26868à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ï2ì
E__inference_flatten_15_layer_call_and_return_conditional_losses_28810¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
*__inference_flatten_15_layer_call_fn_28815¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_30_layer_call_and_return_conditional_losses_28826¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_dense_30_layer_call_fn_28835¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_31_layer_call_and_return_conditional_losses_28846¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_dense_31_layer_call_fn_28855¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÖBÓ
#__inference_signature_wrapper_27472sequential_22_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ´
 __inference__wrapped_model_26360$%./89BCLMVWdejkF¢C
<¢9
74
sequential_22_inputÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_31"
dense_31ÿÿÿÿÿÿÿÿÿ
¸
D__inference_conv2d_90_layer_call_and_return_conditional_losses_28695p$%9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿþþ 
 
)__inference_conv2d_90_layer_call_fn_28704c$%9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª ""ÿÿÿÿÿÿÿÿÿþþ ´
D__inference_conv2d_91_layer_call_and_return_conditional_losses_28715l./7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ}}@
 
)__inference_conv2d_91_layer_call_fn_28724_./7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª " ÿÿÿÿÿÿÿÿÿ}}@´
D__inference_conv2d_92_layer_call_and_return_conditional_losses_28735l897¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ>>@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ<<@
 
)__inference_conv2d_92_layer_call_fn_28744_897¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ>>@
ª " ÿÿÿÿÿÿÿÿÿ<<@´
D__inference_conv2d_93_layer_call_and_return_conditional_losses_28755lBC7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv2d_93_layer_call_fn_28764_BC7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª " ÿÿÿÿÿÿÿÿÿ@´
D__inference_conv2d_94_layer_call_and_return_conditional_losses_28775lLM7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv2d_94_layer_call_fn_28784_LM7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª " ÿÿÿÿÿÿÿÿÿ@´
D__inference_conv2d_95_layer_call_and_return_conditional_losses_28795lVW7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_conv2d_95_layer_call_fn_28804_VW7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª " ÿÿÿÿÿÿÿÿÿ@¤
C__inference_dense_30_layer_call_and_return_conditional_losses_28826]de0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 |
(__inference_dense_30_layer_call_fn_28835Pde0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@£
C__inference_dense_31_layer_call_and_return_conditional_losses_28846\jk/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 {
(__inference_dense_31_layer_call_fn_28855Ojk/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ
ª
E__inference_flatten_15_layer_call_and_return_conditional_losses_28810a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_flatten_15_layer_call_fn_28815T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_90_layer_call_and_return_conditional_losses_26802R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_90_layer_call_fn_26808R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_91_layer_call_and_return_conditional_losses_26814R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_91_layer_call_fn_26820R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_92_layer_call_and_return_conditional_losses_26826R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_92_layer_call_fn_26832R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_93_layer_call_and_return_conditional_losses_26838R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_93_layer_call_fn_26844R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_94_layer_call_and_return_conditional_losses_26850R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_94_layer_call_fn_26856R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿî
K__inference_max_pooling2d_95_layer_call_and_return_conditional_losses_26862R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
0__inference_max_pooling2d_95_layer_call_fn_26868R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ
H__inference_sequential_22_layer_call_and_return_conditional_losses_28262tA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 À
H__inference_sequential_22_layer_call_and_return_conditional_losses_28272tA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 Ê
H__inference_sequential_22_layer_call_and_return_conditional_losses_28282~K¢H
A¢>
41
resizing_3_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 Ê
H__inference_sequential_22_layer_call_and_return_conditional_losses_28292~K¢H
A¢>
41
resizing_3_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 ¢
-__inference_sequential_22_layer_call_fn_28297qK¢H
A¢>
41
resizing_3_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ""ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_22_layer_call_fn_28302gA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ""ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_22_layer_call_fn_28307gA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ""ÿÿÿÿÿÿÿÿÿ¢
-__inference_sequential_22_layer_call_fn_28312qK¢H
A¢>
41
resizing_3_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ""ÿÿÿÿÿÿÿÿÿÀ
H__inference_sequential_23_layer_call_and_return_conditional_losses_28316tA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 Ä
H__inference_sequential_23_layer_call_and_return_conditional_losses_28486xØA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 Î
H__inference_sequential_23_layer_call_and_return_conditional_losses_28490N¢K
D¢A
74
random_flip_4_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 Ò
H__inference_sequential_23_layer_call_and_return_conditional_losses_28660ØN¢K
D¢A
74
random_flip_4_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ
 ¥
-__inference_sequential_23_layer_call_fn_28665tN¢K
D¢A
74
random_flip_4_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ""ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_23_layer_call_fn_28670gA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ""ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_23_layer_call_fn_28677kØA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ""ÿÿÿÿÿÿÿÿÿ©
-__inference_sequential_23_layer_call_fn_28684xØN¢K
D¢A
74
random_flip_4_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ""ÿÿÿÿÿÿÿÿÿÈ
H__inference_sequential_24_layer_call_and_return_conditional_losses_27546|$%./89BCLMVWdejkA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Ê
H__inference_sequential_24_layer_call_and_return_conditional_losses_27786~Ø$%./89BCLMVWdejkA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Ö
H__inference_sequential_24_layer_call_and_return_conditional_losses_27860$%./89BCLMVWdejkN¢K
D¢A
74
sequential_22_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Ø
H__inference_sequential_24_layer_call_and_return_conditional_losses_28100Ø$%./89BCLMVWdejkN¢K
D¢A
74
sequential_22_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ­
-__inference_sequential_24_layer_call_fn_28137|$%./89BCLMVWdejkN¢K
D¢A
74
sequential_22_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_24_layer_call_fn_28174o$%./89BCLMVWdejkA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
¢
-__inference_sequential_24_layer_call_fn_28213qØ$%./89BCLMVWdejkA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
¯
-__inference_sequential_24_layer_call_fn_28252~Ø$%./89BCLMVWdejkN¢K
D¢A
74
sequential_22_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
Î
#__inference_signature_wrapper_27472¦$%./89BCLMVWdejk]¢Z
¢ 
SªP
N
sequential_22_input74
sequential_22_inputÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_31"
dense_31ÿÿÿÿÿÿÿÿÿ
