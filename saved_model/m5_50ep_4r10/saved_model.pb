­$
µ
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.0-49-g85c8b2a817f8â

conv1d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:P* 
shared_nameconv1d_8/kernel
x
#conv1d_8/kernel/Read/ReadVariableOpReadVariableOpconv1d_8/kernel*#
_output_shapes
:P*
dtype0
s
conv1d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_8/bias
l
!conv1d_8/bias/Read/ReadVariableOpReadVariableOpconv1d_8/bias*
_output_shapes	
:*
dtype0

batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_8/gamma

/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes	
:*
dtype0

batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_8/beta

.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes	
:*
dtype0

!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_8/moving_mean

5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes	
:*
dtype0
£
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_8/moving_variance

9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes	
:*
dtype0

conv1d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_9/kernel
y
#conv1d_9/kernel/Read/ReadVariableOpReadVariableOpconv1d_9/kernel*$
_output_shapes
:*
dtype0
s
conv1d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_9/bias
l
!conv1d_9/bias/Read/ReadVariableOpReadVariableOpconv1d_9/bias*
_output_shapes	
:*
dtype0

batch_normalization_9/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_9/gamma

/batch_normalization_9/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_9/gamma*
_output_shapes	
:*
dtype0

batch_normalization_9/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_9/beta

.batch_normalization_9/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_9/beta*
_output_shapes	
:*
dtype0

!batch_normalization_9/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_9/moving_mean

5batch_normalization_9/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_9/moving_mean*
_output_shapes	
:*
dtype0
£
%batch_normalization_9/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_9/moving_variance

9batch_normalization_9/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_9/moving_variance*
_output_shapes	
:*
dtype0

conv1d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_10/kernel
{
$conv1d_10/kernel/Read/ReadVariableOpReadVariableOpconv1d_10/kernel*$
_output_shapes
:*
dtype0
u
conv1d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_10/bias
n
"conv1d_10/bias/Read/ReadVariableOpReadVariableOpconv1d_10/bias*
_output_shapes	
:*
dtype0

batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_10/gamma

0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes	
:*
dtype0

batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_10/beta

/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes	
:*
dtype0

"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_10/moving_mean

6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes	
:*
dtype0
¥
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_10/moving_variance

:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes	
:*
dtype0

conv1d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_11/kernel
{
$conv1d_11/kernel/Read/ReadVariableOpReadVariableOpconv1d_11/kernel*$
_output_shapes
:*
dtype0
u
conv1d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_11/bias
n
"conv1d_11/bias/Read/ReadVariableOpReadVariableOpconv1d_11/bias*
_output_shapes	
:*
dtype0

batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_11/gamma

0batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_11/gamma*
_output_shapes	
:*
dtype0

batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_11/beta

/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_11/beta*
_output_shapes	
:*
dtype0

"batch_normalization_11/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_11/moving_mean

6batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
_output_shapes	
:*
dtype0
¥
&batch_normalization_11/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_11/moving_variance

:batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
_output_shapes	
:*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
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

Adam/conv1d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*'
shared_nameAdam/conv1d_8/kernel/m

*Adam/conv1d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/kernel/m*#
_output_shapes
:P*
dtype0

Adam/conv1d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv1d_8/bias/m
z
(Adam/conv1d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/bias/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_8/gamma/m

6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/m*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_8/beta/m

5Adam/batch_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/m*
_output_shapes	
:*
dtype0

Adam/conv1d_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv1d_9/kernel/m

*Adam/conv1d_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_9/kernel/m*$
_output_shapes
:*
dtype0

Adam/conv1d_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv1d_9/bias/m
z
(Adam/conv1d_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_9/bias/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_9/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_9/gamma/m

6Adam/batch_normalization_9/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_9/gamma/m*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_9/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_9/beta/m

5Adam/batch_normalization_9/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_9/beta/m*
_output_shapes	
:*
dtype0

Adam/conv1d_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv1d_10/kernel/m

+Adam/conv1d_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_10/kernel/m*$
_output_shapes
:*
dtype0

Adam/conv1d_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv1d_10/bias/m
|
)Adam/conv1d_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_10/bias/m*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_10/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_10/gamma/m

7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_10/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_10/beta/m

6Adam/batch_normalization_10/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/m*
_output_shapes	
:*
dtype0

Adam/conv1d_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv1d_11/kernel/m

+Adam/conv1d_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_11/kernel/m*$
_output_shapes
:*
dtype0

Adam/conv1d_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv1d_11/bias/m
|
)Adam/conv1d_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_11/bias/m*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_11/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_11/gamma/m

7Adam/batch_normalization_11/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_11/gamma/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_11/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_11/beta/m

6Adam/batch_normalization_11/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_11/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0

Adam/conv1d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*'
shared_nameAdam/conv1d_8/kernel/v

*Adam/conv1d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/kernel/v*#
_output_shapes
:P*
dtype0

Adam/conv1d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv1d_8/bias/v
z
(Adam/conv1d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/bias/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_8/gamma/v

6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/v*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_8/beta/v

5Adam/batch_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/v*
_output_shapes	
:*
dtype0

Adam/conv1d_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv1d_9/kernel/v

*Adam/conv1d_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_9/kernel/v*$
_output_shapes
:*
dtype0

Adam/conv1d_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv1d_9/bias/v
z
(Adam/conv1d_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_9/bias/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_9/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_9/gamma/v

6Adam/batch_normalization_9/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_9/gamma/v*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_9/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_9/beta/v

5Adam/batch_normalization_9/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_9/beta/v*
_output_shapes	
:*
dtype0

Adam/conv1d_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv1d_10/kernel/v

+Adam/conv1d_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_10/kernel/v*$
_output_shapes
:*
dtype0

Adam/conv1d_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv1d_10/bias/v
|
)Adam/conv1d_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_10/bias/v*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_10/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_10/gamma/v

7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_10/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_10/beta/v

6Adam/batch_normalization_10/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/v*
_output_shapes	
:*
dtype0

Adam/conv1d_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv1d_11/kernel/v

+Adam/conv1d_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_11/kernel/v*$
_output_shapes
:*
dtype0

Adam/conv1d_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv1d_11/bias/v
|
)Adam/conv1d_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_11/bias/v*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_11/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_11/gamma/v

7Adam/batch_normalization_11/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_11/gamma/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_11/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_11/beta/v

6Adam/batch_normalization_11/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_11/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ñ}
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*}
value}Bÿ| Bø|
Í
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api

axis
	 gamma
!beta
"moving_mean
#moving_variance
$regularization_losses
%	variables
&trainable_variables
'	keras_api
R
(regularization_losses
)	variables
*trainable_variables
+	keras_api
R
,regularization_losses
-	variables
.trainable_variables
/	keras_api
h

0kernel
1bias
2regularization_losses
3	variables
4trainable_variables
5	keras_api

6axis
	7gamma
8beta
9moving_mean
:moving_variance
;regularization_losses
<	variables
=trainable_variables
>	keras_api
R
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
R
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
h

Gkernel
Hbias
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api

Maxis
	Ngamma
Obeta
Pmoving_mean
Qmoving_variance
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
R
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
R
Zregularization_losses
[	variables
\trainable_variables
]	keras_api
h

^kernel
_bias
`regularization_losses
a	variables
btrainable_variables
c	keras_api

daxis
	egamma
fbeta
gmoving_mean
hmoving_variance
iregularization_losses
j	variables
ktrainable_variables
l	keras_api
R
mregularization_losses
n	variables
otrainable_variables
p	keras_api
R
qregularization_losses
r	variables
strainable_variables
t	keras_api
R
uregularization_losses
v	variables
wtrainable_variables
x	keras_api
h

ykernel
zbias
{regularization_losses
|	variables
}trainable_variables
~	keras_api
¬
iter
beta_1
beta_2

decay
learning_ratemîmï mð!mñ0mò1mó7mô8mõGmöHm÷NmøOmù^mú_mûemüfmýymþzmÿvv v!v0v1v7v8vGvHvNvOv^v_vevfvyvzv
 
Æ
0
1
 2
!3
"4
#5
06
17
78
89
910
:11
G12
H13
N14
O15
P16
Q17
^18
_19
e20
f21
g22
h23
y24
z25

0
1
 2
!3
04
15
76
87
G8
H9
N10
O11
^12
_13
e14
f15
y16
z17
²
metrics
layers
regularization_losses
	variables
trainable_variables
layer_metrics
non_trainable_variables
 layer_regularization_losses
 
[Y
VARIABLE_VALUEconv1d_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
²
metrics
layers
regularization_losses
	variables
trainable_variables
layer_metrics
non_trainable_variables
 layer_regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

 0
!1
"2
#3

 0
!1
²
metrics
layers
$regularization_losses
%	variables
&trainable_variables
layer_metrics
non_trainable_variables
 layer_regularization_losses
 
 
 
²
metrics
layers
(regularization_losses
)	variables
*trainable_variables
layer_metrics
non_trainable_variables
 layer_regularization_losses
 
 
 
²
metrics
layers
,regularization_losses
-	variables
.trainable_variables
layer_metrics
non_trainable_variables
 layer_regularization_losses
[Y
VARIABLE_VALUEconv1d_9/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_9/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

00
11

00
11
²
metrics
layers
2regularization_losses
3	variables
4trainable_variables
layer_metrics
 non_trainable_variables
 ¡layer_regularization_losses
 
fd
VARIABLE_VALUEbatch_normalization_9/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_9/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_9/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_9/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

70
81
92
:3

70
81
²
¢metrics
£layers
;regularization_losses
<	variables
=trainable_variables
¤layer_metrics
¥non_trainable_variables
 ¦layer_regularization_losses
 
 
 
²
§metrics
¨layers
?regularization_losses
@	variables
Atrainable_variables
©layer_metrics
ªnon_trainable_variables
 «layer_regularization_losses
 
 
 
²
¬metrics
­layers
Cregularization_losses
D	variables
Etrainable_variables
®layer_metrics
¯non_trainable_variables
 °layer_regularization_losses
\Z
VARIABLE_VALUEconv1d_10/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv1d_10/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

G0
H1

G0
H1
²
±metrics
²layers
Iregularization_losses
J	variables
Ktrainable_variables
³layer_metrics
´non_trainable_variables
 µlayer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_10/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_10/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_10/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_10/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1
P2
Q3

N0
O1
²
¶metrics
·layers
Rregularization_losses
S	variables
Ttrainable_variables
¸layer_metrics
¹non_trainable_variables
 ºlayer_regularization_losses
 
 
 
²
»metrics
¼layers
Vregularization_losses
W	variables
Xtrainable_variables
½layer_metrics
¾non_trainable_variables
 ¿layer_regularization_losses
 
 
 
²
Àmetrics
Álayers
Zregularization_losses
[	variables
\trainable_variables
Âlayer_metrics
Ãnon_trainable_variables
 Älayer_regularization_losses
\Z
VARIABLE_VALUEconv1d_11/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv1d_11/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

^0
_1

^0
_1
²
Åmetrics
Ælayers
`regularization_losses
a	variables
btrainable_variables
Çlayer_metrics
Ènon_trainable_variables
 Élayer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_11/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_11/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_11/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_11/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

e0
f1
g2
h3

e0
f1
²
Êmetrics
Ëlayers
iregularization_losses
j	variables
ktrainable_variables
Ìlayer_metrics
Ínon_trainable_variables
 Îlayer_regularization_losses
 
 
 
²
Ïmetrics
Ðlayers
mregularization_losses
n	variables
otrainable_variables
Ñlayer_metrics
Ònon_trainable_variables
 Ólayer_regularization_losses
 
 
 
²
Ômetrics
Õlayers
qregularization_losses
r	variables
strainable_variables
Ölayer_metrics
×non_trainable_variables
 Ølayer_regularization_losses
 
 
 
²
Ùmetrics
Úlayers
uregularization_losses
v	variables
wtrainable_variables
Ûlayer_metrics
Ünon_trainable_variables
 Ýlayer_regularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

y0
z1

y0
z1
²
Þmetrics
ßlayers
{regularization_losses
|	variables
}trainable_variables
àlayer_metrics
ánon_trainable_variables
 âlayer_regularization_losses
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
ã0
ä1

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
17
 
8
"0
#1
92
:3
P4
Q5
g6
h7
 
 
 
 
 
 
 
 
 

"0
#1
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

90
:1
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

P0
Q1
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

g0
h1
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

åtotal

æcount
ç	variables
è	keras_api
I

étotal

êcount
ë
_fn_kwargs
ì	variables
í	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

å0
æ1

ç	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

é0
ê1

ì	variables
~|
VARIABLE_VALUEAdam/conv1d_8/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_8/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_8/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_8/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_9/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_9/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_9/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_9/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_10/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_10/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_10/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_10/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_11/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_11/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_11/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_11/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_8/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_8/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_8/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_8/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_9/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_9/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_9/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_9/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_10/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_10/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_10/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_10/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv1d_11/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv1d_11/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_11/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_11/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_conv1d_8_inputPlaceholder*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN*
dtype0*!
shape:ÿÿÿÿÿÿÿÿÿN
¡
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_8_inputconv1d_8/kernelconv1d_8/bias%batch_normalization_8/moving_variancebatch_normalization_8/gamma!batch_normalization_8/moving_meanbatch_normalization_8/betaconv1d_9/kernelconv1d_9/bias%batch_normalization_9/moving_variancebatch_normalization_9/gamma!batch_normalization_9/moving_meanbatch_normalization_9/betaconv1d_10/kernelconv1d_10/bias&batch_normalization_10/moving_variancebatch_normalization_10/gamma"batch_normalization_10/moving_meanbatch_normalization_10/betaconv1d_11/kernelconv1d_11/bias&batch_normalization_11/moving_variancebatch_normalization_11/gamma"batch_normalization_11/moving_meanbatch_normalization_11/betadense_2/kerneldense_2/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_6627
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_8/kernel/Read/ReadVariableOp!conv1d_8/bias/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp#conv1d_9/kernel/Read/ReadVariableOp!conv1d_9/bias/Read/ReadVariableOp/batch_normalization_9/gamma/Read/ReadVariableOp.batch_normalization_9/beta/Read/ReadVariableOp5batch_normalization_9/moving_mean/Read/ReadVariableOp9batch_normalization_9/moving_variance/Read/ReadVariableOp$conv1d_10/kernel/Read/ReadVariableOp"conv1d_10/bias/Read/ReadVariableOp0batch_normalization_10/gamma/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOp$conv1d_11/kernel/Read/ReadVariableOp"conv1d_11/bias/Read/ReadVariableOp0batch_normalization_11/gamma/Read/ReadVariableOp/batch_normalization_11/beta/Read/ReadVariableOp6batch_normalization_11/moving_mean/Read/ReadVariableOp:batch_normalization_11/moving_variance/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv1d_8/kernel/m/Read/ReadVariableOp(Adam/conv1d_8/bias/m/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_8/beta/m/Read/ReadVariableOp*Adam/conv1d_9/kernel/m/Read/ReadVariableOp(Adam/conv1d_9/bias/m/Read/ReadVariableOp6Adam/batch_normalization_9/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_9/beta/m/Read/ReadVariableOp+Adam/conv1d_10/kernel/m/Read/ReadVariableOp)Adam/conv1d_10/bias/m/Read/ReadVariableOp7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_10/beta/m/Read/ReadVariableOp+Adam/conv1d_11/kernel/m/Read/ReadVariableOp)Adam/conv1d_11/bias/m/Read/ReadVariableOp7Adam/batch_normalization_11/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_11/beta/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp*Adam/conv1d_8/kernel/v/Read/ReadVariableOp(Adam/conv1d_8/bias/v/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_8/beta/v/Read/ReadVariableOp*Adam/conv1d_9/kernel/v/Read/ReadVariableOp(Adam/conv1d_9/bias/v/Read/ReadVariableOp6Adam/batch_normalization_9/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_9/beta/v/Read/ReadVariableOp+Adam/conv1d_10/kernel/v/Read/ReadVariableOp)Adam/conv1d_10/bias/v/Read/ReadVariableOp7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_10/beta/v/Read/ReadVariableOp+Adam/conv1d_11/kernel/v/Read/ReadVariableOp)Adam/conv1d_11/bias/v/Read/ReadVariableOp7Adam/batch_normalization_11/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_11/beta/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*T
TinM
K2I	*
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
GPU 2J 8 *&
f!R
__inference__traced_save_8297

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_8/kernelconv1d_8/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_varianceconv1d_9/kernelconv1d_9/biasbatch_normalization_9/gammabatch_normalization_9/beta!batch_normalization_9/moving_mean%batch_normalization_9/moving_varianceconv1d_10/kernelconv1d_10/biasbatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_varianceconv1d_11/kernelconv1d_11/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_variancedense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv1d_8/kernel/mAdam/conv1d_8/bias/m"Adam/batch_normalization_8/gamma/m!Adam/batch_normalization_8/beta/mAdam/conv1d_9/kernel/mAdam/conv1d_9/bias/m"Adam/batch_normalization_9/gamma/m!Adam/batch_normalization_9/beta/mAdam/conv1d_10/kernel/mAdam/conv1d_10/bias/m#Adam/batch_normalization_10/gamma/m"Adam/batch_normalization_10/beta/mAdam/conv1d_11/kernel/mAdam/conv1d_11/bias/m#Adam/batch_normalization_11/gamma/m"Adam/batch_normalization_11/beta/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/conv1d_8/kernel/vAdam/conv1d_8/bias/v"Adam/batch_normalization_8/gamma/v!Adam/batch_normalization_8/beta/vAdam/conv1d_9/kernel/vAdam/conv1d_9/bias/v"Adam/batch_normalization_9/gamma/v!Adam/batch_normalization_9/beta/vAdam/conv1d_10/kernel/vAdam/conv1d_10/bias/v#Adam/batch_normalization_10/gamma/v"Adam/batch_normalization_10/beta/vAdam/conv1d_11/kernel/vAdam/conv1d_11/bias/v#Adam/batch_normalization_11/gamma/v"Adam/batch_normalization_11/beta/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*S
TinL
J2H*
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
GPU 2J 8 *)
f$R"
 __inference__traced_restore_8520éÐ
Ì
b
F__inference_activation_8_layer_call_and_return_conditional_losses_7340

inputs
identityT
ReluReluinputs*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
Relul
IdentityIdentityRelu:activations:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÄ:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_nameinputs
Ì
b
F__inference_activation_9_layer_call_and_return_conditional_losses_5757

inputs
identityT
ReluReluinputs*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
Relul
IdentityIdentityRelu:activations:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2

Identity"
identityIdentity:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿñ:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
 
_user_specified_nameinputs
Ë
¨
5__inference_batch_normalization_10_layer_call_fn_7660

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_58382
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼0
Â
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7417

inputs
assignmovingavg_7392
assignmovingavg_1_7398)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradientª
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7392*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7392*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7392*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7392*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7392AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7392*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7398*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7398*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7398*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7398*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7398AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7398*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
batchnorm/add_1¹
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿñ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
 
_user_specified_nameinputs
Ì
^
B__inference_lambda_2_layer_call_and_return_conditional_losses_6062

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesp
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Meanb
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
¯
(
 __inference__traced_restore_8520
file_prefix$
 assignvariableop_conv1d_8_kernel$
 assignvariableop_1_conv1d_8_bias2
.assignvariableop_2_batch_normalization_8_gamma1
-assignvariableop_3_batch_normalization_8_beta8
4assignvariableop_4_batch_normalization_8_moving_mean<
8assignvariableop_5_batch_normalization_8_moving_variance&
"assignvariableop_6_conv1d_9_kernel$
 assignvariableop_7_conv1d_9_bias2
.assignvariableop_8_batch_normalization_9_gamma1
-assignvariableop_9_batch_normalization_9_beta9
5assignvariableop_10_batch_normalization_9_moving_mean=
9assignvariableop_11_batch_normalization_9_moving_variance(
$assignvariableop_12_conv1d_10_kernel&
"assignvariableop_13_conv1d_10_bias4
0assignvariableop_14_batch_normalization_10_gamma3
/assignvariableop_15_batch_normalization_10_beta:
6assignvariableop_16_batch_normalization_10_moving_mean>
:assignvariableop_17_batch_normalization_10_moving_variance(
$assignvariableop_18_conv1d_11_kernel&
"assignvariableop_19_conv1d_11_bias4
0assignvariableop_20_batch_normalization_11_gamma3
/assignvariableop_21_batch_normalization_11_beta:
6assignvariableop_22_batch_normalization_11_moving_mean>
:assignvariableop_23_batch_normalization_11_moving_variance&
"assignvariableop_24_dense_2_kernel$
 assignvariableop_25_dense_2_bias!
assignvariableop_26_adam_iter#
assignvariableop_27_adam_beta_1#
assignvariableop_28_adam_beta_2"
assignvariableop_29_adam_decay*
&assignvariableop_30_adam_learning_rate
assignvariableop_31_total
assignvariableop_32_count
assignvariableop_33_total_1
assignvariableop_34_count_1.
*assignvariableop_35_adam_conv1d_8_kernel_m,
(assignvariableop_36_adam_conv1d_8_bias_m:
6assignvariableop_37_adam_batch_normalization_8_gamma_m9
5assignvariableop_38_adam_batch_normalization_8_beta_m.
*assignvariableop_39_adam_conv1d_9_kernel_m,
(assignvariableop_40_adam_conv1d_9_bias_m:
6assignvariableop_41_adam_batch_normalization_9_gamma_m9
5assignvariableop_42_adam_batch_normalization_9_beta_m/
+assignvariableop_43_adam_conv1d_10_kernel_m-
)assignvariableop_44_adam_conv1d_10_bias_m;
7assignvariableop_45_adam_batch_normalization_10_gamma_m:
6assignvariableop_46_adam_batch_normalization_10_beta_m/
+assignvariableop_47_adam_conv1d_11_kernel_m-
)assignvariableop_48_adam_conv1d_11_bias_m;
7assignvariableop_49_adam_batch_normalization_11_gamma_m:
6assignvariableop_50_adam_batch_normalization_11_beta_m-
)assignvariableop_51_adam_dense_2_kernel_m+
'assignvariableop_52_adam_dense_2_bias_m.
*assignvariableop_53_adam_conv1d_8_kernel_v,
(assignvariableop_54_adam_conv1d_8_bias_v:
6assignvariableop_55_adam_batch_normalization_8_gamma_v9
5assignvariableop_56_adam_batch_normalization_8_beta_v.
*assignvariableop_57_adam_conv1d_9_kernel_v,
(assignvariableop_58_adam_conv1d_9_bias_v:
6assignvariableop_59_adam_batch_normalization_9_gamma_v9
5assignvariableop_60_adam_batch_normalization_9_beta_v/
+assignvariableop_61_adam_conv1d_10_kernel_v-
)assignvariableop_62_adam_conv1d_10_bias_v;
7assignvariableop_63_adam_batch_normalization_10_gamma_v:
6assignvariableop_64_adam_batch_normalization_10_beta_v/
+assignvariableop_65_adam_conv1d_11_kernel_v-
)assignvariableop_66_adam_conv1d_11_bias_v;
7assignvariableop_67_adam_batch_normalization_11_gamma_v:
6assignvariableop_68_adam_batch_normalization_11_beta_v-
)assignvariableop_69_adam_dense_2_kernel_v+
'assignvariableop_70_adam_dense_2_bias_v
identity_72¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_8¢AssignVariableOp_9Ú'
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*æ&
valueÜ&BÙ&HB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names¡
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*¥
valueBHB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¶
_output_shapes£
 ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*V
dtypesL
J2H	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_conv1d_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2³
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_8_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3²
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_8_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¹
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_8_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5½
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_8_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv1d_9_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv1d_9_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8³
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_9_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9²
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_9_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10½
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_9_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Á
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_9_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¬
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv1d_10_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13ª
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv1d_10_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¸
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_10_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15·
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_10_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¾
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_10_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Â
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_10_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¬
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv1d_11_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19ª
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv1d_11_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¸
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_11_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21·
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_11_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¾
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_11_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Â
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_11_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24ª
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_2_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¨
AssignVariableOp_25AssignVariableOp assignvariableop_25_dense_2_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_26¥
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_iterIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27§
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_beta_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28§
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_beta_2Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29¦
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_decayIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30®
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_learning_rateIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31¡
AssignVariableOp_31AssignVariableOpassignvariableop_31_totalIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32¡
AssignVariableOp_32AssignVariableOpassignvariableop_32_countIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33£
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34£
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_1Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35²
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv1d_8_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36°
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv1d_8_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37¾
AssignVariableOp_37AssignVariableOp6assignvariableop_37_adam_batch_normalization_8_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38½
AssignVariableOp_38AssignVariableOp5assignvariableop_38_adam_batch_normalization_8_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39²
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_conv1d_9_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40°
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_conv1d_9_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41¾
AssignVariableOp_41AssignVariableOp6assignvariableop_41_adam_batch_normalization_9_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42½
AssignVariableOp_42AssignVariableOp5assignvariableop_42_adam_batch_normalization_9_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43³
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv1d_10_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44±
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv1d_10_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45¿
AssignVariableOp_45AssignVariableOp7assignvariableop_45_adam_batch_normalization_10_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46¾
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_batch_normalization_10_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47³
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv1d_11_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48±
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv1d_11_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49¿
AssignVariableOp_49AssignVariableOp7assignvariableop_49_adam_batch_normalization_11_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50¾
AssignVariableOp_50AssignVariableOp6assignvariableop_50_adam_batch_normalization_11_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51±
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_2_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52¯
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_2_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53²
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_conv1d_8_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54°
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_conv1d_8_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55¾
AssignVariableOp_55AssignVariableOp6assignvariableop_55_adam_batch_normalization_8_gamma_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56½
AssignVariableOp_56AssignVariableOp5assignvariableop_56_adam_batch_normalization_8_beta_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57²
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_conv1d_9_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58°
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_conv1d_9_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59¾
AssignVariableOp_59AssignVariableOp6assignvariableop_59_adam_batch_normalization_9_gamma_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60½
AssignVariableOp_60AssignVariableOp5assignvariableop_60_adam_batch_normalization_9_beta_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61³
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_conv1d_10_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62±
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_conv1d_10_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63¿
AssignVariableOp_63AssignVariableOp7assignvariableop_63_adam_batch_normalization_10_gamma_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64¾
AssignVariableOp_64AssignVariableOp6assignvariableop_64_adam_batch_normalization_10_beta_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65³
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_conv1d_11_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66±
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_conv1d_11_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67¿
AssignVariableOp_67AssignVariableOp7assignvariableop_67_adam_batch_normalization_11_gamma_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68¾
AssignVariableOp_68AssignVariableOp6assignvariableop_68_adam_batch_normalization_11_beta_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69±
AssignVariableOp_69AssignVariableOp)assignvariableop_69_adam_dense_2_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70¯
AssignVariableOp_70AssignVariableOp'assignvariableop_70_adam_dense_2_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_709
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpø
Identity_71Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_71ë
Identity_72IdentityIdentity_71:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_72"#
identity_72Identity_72:output:0*³
_input_shapes¡
: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
í0
Â
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_4954

inputs
assignmovingavg_4929
assignmovingavg_1_4935)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradient²
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/4929*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_4929*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/4929*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/4929*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_4929AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/4929*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/4935*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_4935*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/4935*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/4935*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_4935AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/4935*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Á
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç
f
J__inference_max_pooling1d_10_layer_call_and_return_conditional_losses_5317

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

ExpandDims±
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é
§
4__inference_batch_normalization_9_layer_call_fn_7532

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_51092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
¨
5__inference_batch_normalization_11_layer_call_fn_7952

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall¦
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_54192
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
¨
5__inference_batch_normalization_10_layer_call_fn_7742

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall¦
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_52642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö
©
B__inference_conv1d_8_layer_call_and_return_conditional_losses_7162

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOp¢1conv1d_8/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿN2
conv1d/ExpandDims¹
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:P*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim¸
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:P2
conv1d/ExpandDims_1¸
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
BiasAdd×
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:P*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp»
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:P2$
"conv1d_8/kernel/Regularizer/Square
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const¾
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_8/kernel/Regularizer/mul/xÀ
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mulÜ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿN::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
 
_user_specified_nameinputs
î0
Ã
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7919

inputs
assignmovingavg_7894
assignmovingavg_1_7900)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradient²
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7894*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7894*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7894*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7894*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7894AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7894*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7900*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7900*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7900*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7900*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7900AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7900*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Á
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª|
ù

F__inference_sequential_2_layer_call_and_return_conditional_losses_6127
conv1d_8_input
conv1d_8_5514
conv1d_8_5516
batch_normalization_8_5601
batch_normalization_8_5603
batch_normalization_8_5605
batch_normalization_8_5607
conv1d_9_5656
conv1d_9_5658
batch_normalization_9_5743
batch_normalization_9_5745
batch_normalization_9_5747
batch_normalization_9_5749
conv1d_10_5798
conv1d_10_5800
batch_normalization_10_5885
batch_normalization_10_5887
batch_normalization_10_5889
batch_normalization_10_5891
conv1d_11_5940
conv1d_11_5942
batch_normalization_11_6027
batch_normalization_11_6029
batch_normalization_11_6031
batch_normalization_11_6033
dense_2_6097
dense_2_6099
identity¢.batch_normalization_10/StatefulPartitionedCall¢.batch_normalization_11/StatefulPartitionedCall¢-batch_normalization_8/StatefulPartitionedCall¢-batch_normalization_9/StatefulPartitionedCall¢!conv1d_10/StatefulPartitionedCall¢2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¢!conv1d_11/StatefulPartitionedCall¢2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¢ conv1d_8/StatefulPartitionedCall¢1conv1d_8/kernel/Regularizer/Square/ReadVariableOp¢ conv1d_9/StatefulPartitionedCall¢1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¢dense_2/StatefulPartitionedCall
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCallconv1d_8_inputconv1d_8_5514conv1d_8_5516*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_8_layer_call_and_return_conditional_losses_55032"
 conv1d_8/StatefulPartitionedCall²
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0batch_normalization_8_5601batch_normalization_8_5603batch_normalization_8_5605batch_normalization_8_5607*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_55542/
-batch_normalization_8/StatefulPartitionedCall
activation_8/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_8_layer_call_and_return_conditional_losses_56152
activation_8/PartitionedCall
max_pooling1d_8/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_50072!
max_pooling1d_8/PartitionedCall¶
 conv1d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_8/PartitionedCall:output:0conv1d_9_5656conv1d_9_5658*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_9_layer_call_and_return_conditional_losses_56452"
 conv1d_9/StatefulPartitionedCall²
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)conv1d_9/StatefulPartitionedCall:output:0batch_normalization_9_5743batch_normalization_9_5745batch_normalization_9_5747batch_normalization_9_5749*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_56962/
-batch_normalization_9/StatefulPartitionedCall
activation_9/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_9_layer_call_and_return_conditional_losses_57572
activation_9/PartitionedCall
max_pooling1d_9/PartitionedCallPartitionedCall%activation_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling1d_9_layer_call_and_return_conditional_losses_51622!
max_pooling1d_9/PartitionedCall»
!conv1d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_9/PartitionedCall:output:0conv1d_10_5798conv1d_10_5800*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv1d_10_layer_call_and_return_conditional_losses_57872#
!conv1d_10/StatefulPartitionedCallº
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv1d_10/StatefulPartitionedCall:output:0batch_normalization_10_5885batch_normalization_10_5887batch_normalization_10_5889batch_normalization_10_5891*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_583820
.batch_normalization_10/StatefulPartitionedCall
activation_10/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_10_layer_call_and_return_conditional_losses_58992
activation_10/PartitionedCall
 max_pooling1d_10/PartitionedCallPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling1d_10_layer_call_and_return_conditional_losses_53172"
 max_pooling1d_10/PartitionedCall»
!conv1d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_10/PartitionedCall:output:0conv1d_11_5940conv1d_11_5942*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv1d_11_layer_call_and_return_conditional_losses_59292#
!conv1d_11/StatefulPartitionedCall¹
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*conv1d_11/StatefulPartitionedCall:output:0batch_normalization_11_6027batch_normalization_11_6029batch_normalization_11_6031batch_normalization_11_6033*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_598020
.batch_normalization_11/StatefulPartitionedCall
activation_11/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_11_layer_call_and_return_conditional_losses_60412
activation_11/PartitionedCall
 max_pooling1d_11/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_54722"
 max_pooling1d_11/PartitionedCallö
lambda_2/PartitionedCallPartitionedCall)max_pooling1d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lambda_2_layer_call_and_return_conditional_losses_60562
lambda_2/PartitionedCall¤
dense_2/StatefulPartitionedCallStatefulPartitionedCall!lambda_2/PartitionedCall:output:0dense_2_6097dense_2_6099*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_60862!
dense_2/StatefulPartitionedCall¹
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_8_5514*#
_output_shapes
:P*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp»
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:P2$
"conv1d_8/kernel/Regularizer/Square
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const¾
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_8/kernel/Regularizer/mul/xÀ
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mulº
1conv1d_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_9_5656*$
_output_shapes
:*
dtype023
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¼
"conv1d_9/kernel/Regularizer/SquareSquare9conv1d_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2$
"conv1d_9/kernel/Regularizer/Square
!conv1d_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_9/kernel/Regularizer/Const¾
conv1d_9/kernel/Regularizer/SumSum&conv1d_9/kernel/Regularizer/Square:y:0*conv1d_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/Sum
!conv1d_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_9/kernel/Regularizer/mul/xÀ
conv1d_9/kernel/Regularizer/mulMul*conv1d_9/kernel/Regularizer/mul/x:output:0(conv1d_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/mul½
2conv1d_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_10_5798*$
_output_shapes
:*
dtype024
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_10/kernel/Regularizer/SquareSquare:conv1d_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_10/kernel/Regularizer/Square
"conv1d_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_10/kernel/Regularizer/ConstÂ
 conv1d_10/kernel/Regularizer/SumSum'conv1d_10/kernel/Regularizer/Square:y:0+conv1d_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/Sum
"conv1d_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_10/kernel/Regularizer/mul/xÄ
 conv1d_10/kernel/Regularizer/mulMul+conv1d_10/kernel/Regularizer/mul/x:output:0)conv1d_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/mul½
2conv1d_11/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_11_5940*$
_output_shapes
:*
dtype024
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_11/kernel/Regularizer/SquareSquare:conv1d_11/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_11/kernel/Regularizer/Square
"conv1d_11/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_11/kernel/Regularizer/ConstÂ
 conv1d_11/kernel/Regularizer/SumSum'conv1d_11/kernel/Regularizer/Square:y:0+conv1d_11/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/Sum
"conv1d_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_11/kernel/Regularizer/mul/xÄ
 conv1d_11/kernel/Regularizer/mulMul+conv1d_11/kernel/Regularizer/mul/x:output:0)conv1d_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/mulÀ
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall"^conv1d_10/StatefulPartitionedCall3^conv1d_10/kernel/Regularizer/Square/ReadVariableOp"^conv1d_11/StatefulPartitionedCall3^conv1d_11/kernel/Regularizer/Square/ReadVariableOp!^conv1d_8/StatefulPartitionedCall2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp!^conv1d_9/StatefulPartitionedCall2^conv1d_9/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*
_input_shapes
:ÿÿÿÿÿÿÿÿÿN::::::::::::::::::::::::::2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2F
!conv1d_10/StatefulPartitionedCall!conv1d_10/StatefulPartitionedCall2h
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2F
!conv1d_11/StatefulPartitionedCall!conv1d_11/StatefulPartitionedCall2h
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_9/StatefulPartitionedCall conv1d_9/StatefulPartitionedCall2f
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp1conv1d_9/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:\ X
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
(
_user_specified_nameconv1d_8_input
ë
§
4__inference_batch_normalization_8_layer_call_fn_7335

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_49872
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë
§
4__inference_batch_normalization_9_layer_call_fn_7463

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_57162
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿñ::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
 
_user_specified_nameinputs
ç
f
J__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_5472

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

ExpandDims±
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
¡
__inference_loss_fn_1_8039>
:conv1d_9_kernel_regularizer_square_readvariableop_resource
identity¢1conv1d_9/kernel/Regularizer/Square/ReadVariableOpç
1conv1d_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv1d_9_kernel_regularizer_square_readvariableop_resource*$
_output_shapes
:*
dtype023
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¼
"conv1d_9/kernel/Regularizer/SquareSquare9conv1d_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2$
"conv1d_9/kernel/Regularizer/Square
!conv1d_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_9/kernel/Regularizer/Const¾
conv1d_9/kernel/Regularizer/SumSum&conv1d_9/kernel/Regularizer/Square:y:0*conv1d_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/Sum
!conv1d_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_9/kernel/Regularizer/mul/xÀ
conv1d_9/kernel/Regularizer/mulMul*conv1d_9/kernel/Regularizer/mul/x:output:0(conv1d_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/mul
IdentityIdentity#conv1d_9/kernel/Regularizer/mul:z:02^conv1d_9/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2f
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp1conv1d_9/kernel/Regularizer/Square/ReadVariableOp
æ
e
I__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_5007

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

ExpandDims±
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú§

F__inference_sequential_2_layer_call_and_return_conditional_losses_6856

inputs8
4conv1d_8_conv1d_expanddims_1_readvariableop_resource,
(conv1d_8_biasadd_readvariableop_resource.
*batch_normalization_8_assignmovingavg_66490
,batch_normalization_8_assignmovingavg_1_6655?
;batch_normalization_8_batchnorm_mul_readvariableop_resource;
7batch_normalization_8_batchnorm_readvariableop_resource8
4conv1d_9_conv1d_expanddims_1_readvariableop_resource,
(conv1d_9_biasadd_readvariableop_resource.
*batch_normalization_9_assignmovingavg_66970
,batch_normalization_9_assignmovingavg_1_6703?
;batch_normalization_9_batchnorm_mul_readvariableop_resource;
7batch_normalization_9_batchnorm_readvariableop_resource9
5conv1d_10_conv1d_expanddims_1_readvariableop_resource-
)conv1d_10_biasadd_readvariableop_resource/
+batch_normalization_10_assignmovingavg_67451
-batch_normalization_10_assignmovingavg_1_6751@
<batch_normalization_10_batchnorm_mul_readvariableop_resource<
8batch_normalization_10_batchnorm_readvariableop_resource9
5conv1d_11_conv1d_expanddims_1_readvariableop_resource-
)conv1d_11_biasadd_readvariableop_resource/
+batch_normalization_11_assignmovingavg_67931
-batch_normalization_11_assignmovingavg_1_6799@
<batch_normalization_11_batchnorm_mul_readvariableop_resource<
8batch_normalization_11_batchnorm_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identity¢:batch_normalization_10/AssignMovingAvg/AssignSubVariableOp¢5batch_normalization_10/AssignMovingAvg/ReadVariableOp¢<batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp¢7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_10/batchnorm/ReadVariableOp¢3batch_normalization_10/batchnorm/mul/ReadVariableOp¢:batch_normalization_11/AssignMovingAvg/AssignSubVariableOp¢5batch_normalization_11/AssignMovingAvg/ReadVariableOp¢<batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp¢7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_11/batchnorm/ReadVariableOp¢3batch_normalization_11/batchnorm/mul/ReadVariableOp¢9batch_normalization_8/AssignMovingAvg/AssignSubVariableOp¢4batch_normalization_8/AssignMovingAvg/ReadVariableOp¢;batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp¢6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp¢.batch_normalization_8/batchnorm/ReadVariableOp¢2batch_normalization_8/batchnorm/mul/ReadVariableOp¢9batch_normalization_9/AssignMovingAvg/AssignSubVariableOp¢4batch_normalization_9/AssignMovingAvg/ReadVariableOp¢;batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp¢6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp¢.batch_normalization_9/batchnorm/ReadVariableOp¢2batch_normalization_9/batchnorm/mul/ReadVariableOp¢ conv1d_10/BiasAdd/ReadVariableOp¢,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp¢2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¢ conv1d_11/BiasAdd/ReadVariableOp¢,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp¢2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¢conv1d_8/BiasAdd/ReadVariableOp¢+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp¢1conv1d_8/kernel/Regularizer/Square/ReadVariableOp¢conv1d_9/BiasAdd/ReadVariableOp¢+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp¢1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp
conv1d_8/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_8/conv1d/ExpandDims/dim²
conv1d_8/conv1d/ExpandDims
ExpandDimsinputs'conv1d_8/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿN2
conv1d_8/conv1d/ExpandDimsÔ
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_8_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:P*
dtype02-
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_8/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_8/conv1d/ExpandDims_1/dimÜ
conv1d_8/conv1d/ExpandDims_1
ExpandDims3conv1d_8/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_8/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:P2
conv1d_8/conv1d/ExpandDims_1Ü
conv1d_8/conv1dConv2D#conv1d_8/conv1d/ExpandDims:output:0%conv1d_8/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
paddingSAME*
strides
2
conv1d_8/conv1d¯
conv1d_8/conv1d/SqueezeSqueezeconv1d_8/conv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_8/conv1d/Squeeze¨
conv1d_8/BiasAdd/ReadVariableOpReadVariableOp(conv1d_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv1d_8/BiasAdd/ReadVariableOp²
conv1d_8/BiasAddBiasAdd conv1d_8/conv1d/Squeeze:output:0'conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
conv1d_8/BiasAdd½
4batch_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       26
4batch_normalization_8/moments/mean/reduction_indicesé
"batch_normalization_8/moments/meanMeanconv1d_8/BiasAdd:output:0=batch_normalization_8/moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2$
"batch_normalization_8/moments/meanÃ
*batch_normalization_8/moments/StopGradientStopGradient+batch_normalization_8/moments/mean:output:0*
T0*#
_output_shapes
:2,
*batch_normalization_8/moments/StopGradientÿ
/batch_normalization_8/moments/SquaredDifferenceSquaredDifferenceconv1d_8/BiasAdd:output:03batch_normalization_8/moments/StopGradient:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ21
/batch_normalization_8/moments/SquaredDifferenceÅ
8batch_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2:
8batch_normalization_8/moments/variance/reduction_indices
&batch_normalization_8/moments/varianceMean3batch_normalization_8/moments/SquaredDifference:z:0Abatch_normalization_8/moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2(
&batch_normalization_8/moments/varianceÄ
%batch_normalization_8/moments/SqueezeSqueeze+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2'
%batch_normalization_8/moments/SqueezeÌ
'batch_normalization_8/moments/Squeeze_1Squeeze/batch_normalization_8/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2)
'batch_normalization_8/moments/Squeeze_1
+batch_normalization_8/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@batch_normalization_8/AssignMovingAvg/6649*
_output_shapes
: *
dtype0*
valueB
 *
×#<2-
+batch_normalization_8/AssignMovingAvg/decayÔ
4batch_normalization_8/AssignMovingAvg/ReadVariableOpReadVariableOp*batch_normalization_8_assignmovingavg_6649*
_output_shapes	
:*
dtype026
4batch_normalization_8/AssignMovingAvg/ReadVariableOpÞ
)batch_normalization_8/AssignMovingAvg/subSub<batch_normalization_8/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_8/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*=
_class3
1/loc:@batch_normalization_8/AssignMovingAvg/6649*
_output_shapes	
:2+
)batch_normalization_8/AssignMovingAvg/subÕ
)batch_normalization_8/AssignMovingAvg/mulMul-batch_normalization_8/AssignMovingAvg/sub:z:04batch_normalization_8/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*=
_class3
1/loc:@batch_normalization_8/AssignMovingAvg/6649*
_output_shapes	
:2+
)batch_normalization_8/AssignMovingAvg/mul¯
9batch_normalization_8/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp*batch_normalization_8_assignmovingavg_6649-batch_normalization_8/AssignMovingAvg/mul:z:05^batch_normalization_8/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@batch_normalization_8/AssignMovingAvg/6649*
_output_shapes
 *
dtype02;
9batch_normalization_8/AssignMovingAvg/AssignSubVariableOp
-batch_normalization_8/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*?
_class5
31loc:@batch_normalization_8/AssignMovingAvg_1/6655*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_8/AssignMovingAvg_1/decayÚ
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOpReadVariableOp,batch_normalization_8_assignmovingavg_1_6655*
_output_shapes	
:*
dtype028
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOpè
+batch_normalization_8/AssignMovingAvg_1/subSub>batch_normalization_8/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_8/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_class5
31loc:@batch_normalization_8/AssignMovingAvg_1/6655*
_output_shapes	
:2-
+batch_normalization_8/AssignMovingAvg_1/subß
+batch_normalization_8/AssignMovingAvg_1/mulMul/batch_normalization_8/AssignMovingAvg_1/sub:z:06batch_normalization_8/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_class5
31loc:@batch_normalization_8/AssignMovingAvg_1/6655*
_output_shapes	
:2-
+batch_normalization_8/AssignMovingAvg_1/mul»
;batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp,batch_normalization_8_assignmovingavg_1_6655/batch_normalization_8/AssignMovingAvg_1/mul:z:07^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*?
_class5
31loc:@batch_normalization_8/AssignMovingAvg_1/6655*
_output_shapes
 *
dtype02=
;batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_8/batchnorm/add/yÛ
#batch_normalization_8/batchnorm/addAddV20batch_normalization_8/moments/Squeeze_1:output:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_8/batchnorm/add¦
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_8/batchnorm/Rsqrtá
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_8/batchnorm/mul/ReadVariableOpÞ
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_8/batchnorm/mulÑ
%batch_normalization_8/batchnorm/mul_1Mulconv1d_8/BiasAdd:output:0'batch_normalization_8/batchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2'
%batch_normalization_8/batchnorm/mul_1Ô
%batch_normalization_8/batchnorm/mul_2Mul.batch_normalization_8/moments/Squeeze:output:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_8/batchnorm/mul_2Õ
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_8/batchnorm/ReadVariableOpÚ
#batch_normalization_8/batchnorm/subSub6batch_normalization_8/batchnorm/ReadVariableOp:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_8/batchnorm/subã
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2'
%batch_normalization_8/batchnorm/add_1
activation_8/ReluRelu)batch_normalization_8/batchnorm/add_1:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
activation_8/Relu
max_pooling1d_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_8/ExpandDims/dimÌ
max_pooling1d_8/ExpandDims
ExpandDimsactivation_8/Relu:activations:0'max_pooling1d_8/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
max_pooling1d_8/ExpandDimsÑ
max_pooling1d_8/MaxPoolMaxPool#max_pooling1d_8/ExpandDims:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
ksize
*
paddingVALID*
strides
2
max_pooling1d_8/MaxPool®
max_pooling1d_8/SqueezeSqueeze max_pooling1d_8/MaxPool:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
squeeze_dims
2
max_pooling1d_8/Squeeze
conv1d_9/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_9/conv1d/ExpandDims/dimÍ
conv1d_9/conv1d/ExpandDims
ExpandDims max_pooling1d_8/Squeeze:output:0'conv1d_9/conv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
conv1d_9/conv1d/ExpandDimsÕ
+conv1d_9/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_9_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02-
+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_9/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_9/conv1d/ExpandDims_1/dimÝ
conv1d_9/conv1d/ExpandDims_1
ExpandDims3conv1d_9/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_9/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2
conv1d_9/conv1d/ExpandDims_1Ü
conv1d_9/conv1dConv2D#conv1d_9/conv1d/ExpandDims:output:0%conv1d_9/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
paddingSAME*
strides
2
conv1d_9/conv1d¯
conv1d_9/conv1d/SqueezeSqueezeconv1d_9/conv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_9/conv1d/Squeeze¨
conv1d_9/BiasAdd/ReadVariableOpReadVariableOp(conv1d_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv1d_9/BiasAdd/ReadVariableOp²
conv1d_9/BiasAddBiasAdd conv1d_9/conv1d/Squeeze:output:0'conv1d_9/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
conv1d_9/BiasAdd½
4batch_normalization_9/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       26
4batch_normalization_9/moments/mean/reduction_indicesé
"batch_normalization_9/moments/meanMeanconv1d_9/BiasAdd:output:0=batch_normalization_9/moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2$
"batch_normalization_9/moments/meanÃ
*batch_normalization_9/moments/StopGradientStopGradient+batch_normalization_9/moments/mean:output:0*
T0*#
_output_shapes
:2,
*batch_normalization_9/moments/StopGradientÿ
/batch_normalization_9/moments/SquaredDifferenceSquaredDifferenceconv1d_9/BiasAdd:output:03batch_normalization_9/moments/StopGradient:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ21
/batch_normalization_9/moments/SquaredDifferenceÅ
8batch_normalization_9/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2:
8batch_normalization_9/moments/variance/reduction_indices
&batch_normalization_9/moments/varianceMean3batch_normalization_9/moments/SquaredDifference:z:0Abatch_normalization_9/moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2(
&batch_normalization_9/moments/varianceÄ
%batch_normalization_9/moments/SqueezeSqueeze+batch_normalization_9/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2'
%batch_normalization_9/moments/SqueezeÌ
'batch_normalization_9/moments/Squeeze_1Squeeze/batch_normalization_9/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2)
'batch_normalization_9/moments/Squeeze_1
+batch_normalization_9/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@batch_normalization_9/AssignMovingAvg/6697*
_output_shapes
: *
dtype0*
valueB
 *
×#<2-
+batch_normalization_9/AssignMovingAvg/decayÔ
4batch_normalization_9/AssignMovingAvg/ReadVariableOpReadVariableOp*batch_normalization_9_assignmovingavg_6697*
_output_shapes	
:*
dtype026
4batch_normalization_9/AssignMovingAvg/ReadVariableOpÞ
)batch_normalization_9/AssignMovingAvg/subSub<batch_normalization_9/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_9/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*=
_class3
1/loc:@batch_normalization_9/AssignMovingAvg/6697*
_output_shapes	
:2+
)batch_normalization_9/AssignMovingAvg/subÕ
)batch_normalization_9/AssignMovingAvg/mulMul-batch_normalization_9/AssignMovingAvg/sub:z:04batch_normalization_9/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*=
_class3
1/loc:@batch_normalization_9/AssignMovingAvg/6697*
_output_shapes	
:2+
)batch_normalization_9/AssignMovingAvg/mul¯
9batch_normalization_9/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp*batch_normalization_9_assignmovingavg_6697-batch_normalization_9/AssignMovingAvg/mul:z:05^batch_normalization_9/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@batch_normalization_9/AssignMovingAvg/6697*
_output_shapes
 *
dtype02;
9batch_normalization_9/AssignMovingAvg/AssignSubVariableOp
-batch_normalization_9/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*?
_class5
31loc:@batch_normalization_9/AssignMovingAvg_1/6703*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_9/AssignMovingAvg_1/decayÚ
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOpReadVariableOp,batch_normalization_9_assignmovingavg_1_6703*
_output_shapes	
:*
dtype028
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOpè
+batch_normalization_9/AssignMovingAvg_1/subSub>batch_normalization_9/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_9/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_class5
31loc:@batch_normalization_9/AssignMovingAvg_1/6703*
_output_shapes	
:2-
+batch_normalization_9/AssignMovingAvg_1/subß
+batch_normalization_9/AssignMovingAvg_1/mulMul/batch_normalization_9/AssignMovingAvg_1/sub:z:06batch_normalization_9/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_class5
31loc:@batch_normalization_9/AssignMovingAvg_1/6703*
_output_shapes	
:2-
+batch_normalization_9/AssignMovingAvg_1/mul»
;batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp,batch_normalization_9_assignmovingavg_1_6703/batch_normalization_9/AssignMovingAvg_1/mul:z:07^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*?
_class5
31loc:@batch_normalization_9/AssignMovingAvg_1/6703*
_output_shapes
 *
dtype02=
;batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp
%batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_9/batchnorm/add/yÛ
#batch_normalization_9/batchnorm/addAddV20batch_normalization_9/moments/Squeeze_1:output:0.batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_9/batchnorm/add¦
%batch_normalization_9/batchnorm/RsqrtRsqrt'batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_9/batchnorm/Rsqrtá
2batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_9/batchnorm/mul/ReadVariableOpÞ
#batch_normalization_9/batchnorm/mulMul)batch_normalization_9/batchnorm/Rsqrt:y:0:batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_9/batchnorm/mulÑ
%batch_normalization_9/batchnorm/mul_1Mulconv1d_9/BiasAdd:output:0'batch_normalization_9/batchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2'
%batch_normalization_9/batchnorm/mul_1Ô
%batch_normalization_9/batchnorm/mul_2Mul.batch_normalization_9/moments/Squeeze:output:0'batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_9/batchnorm/mul_2Õ
.batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_9/batchnorm/ReadVariableOpÚ
#batch_normalization_9/batchnorm/subSub6batch_normalization_9/batchnorm/ReadVariableOp:value:0)batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_9/batchnorm/subã
%batch_normalization_9/batchnorm/add_1AddV2)batch_normalization_9/batchnorm/mul_1:z:0'batch_normalization_9/batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2'
%batch_normalization_9/batchnorm/add_1
activation_9/ReluRelu)batch_normalization_9/batchnorm/add_1:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
activation_9/Relu
max_pooling1d_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_9/ExpandDims/dimÌ
max_pooling1d_9/ExpandDims
ExpandDimsactivation_9/Relu:activations:0'max_pooling1d_9/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
max_pooling1d_9/ExpandDimsÑ
max_pooling1d_9/MaxPoolMaxPool#max_pooling1d_9/ExpandDims:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling1d_9/MaxPool®
max_pooling1d_9/SqueezeSqueeze max_pooling1d_9/MaxPool:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2
max_pooling1d_9/Squeeze
conv1d_10/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_10/conv1d/ExpandDims/dimÐ
conv1d_10/conv1d/ExpandDims
ExpandDims max_pooling1d_9/Squeeze:output:0(conv1d_10/conv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_10/conv1d/ExpandDimsØ
,conv1d_10/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_10_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02.
,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_10/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_10/conv1d/ExpandDims_1/dimá
conv1d_10/conv1d/ExpandDims_1
ExpandDims4conv1d_10/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_10/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2
conv1d_10/conv1d/ExpandDims_1à
conv1d_10/conv1dConv2D$conv1d_10/conv1d/ExpandDims:output:0&conv1d_10/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d_10/conv1d²
conv1d_10/conv1d/SqueezeSqueezeconv1d_10/conv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_10/conv1d/Squeeze«
 conv1d_10/BiasAdd/ReadVariableOpReadVariableOp)conv1d_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv1d_10/BiasAdd/ReadVariableOp¶
conv1d_10/BiasAddBiasAdd!conv1d_10/conv1d/Squeeze:output:0(conv1d_10/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_10/BiasAdd¿
5batch_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       27
5batch_normalization_10/moments/mean/reduction_indicesí
#batch_normalization_10/moments/meanMeanconv1d_10/BiasAdd:output:0>batch_normalization_10/moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2%
#batch_normalization_10/moments/meanÆ
+batch_normalization_10/moments/StopGradientStopGradient,batch_normalization_10/moments/mean:output:0*
T0*#
_output_shapes
:2-
+batch_normalization_10/moments/StopGradient
0batch_normalization_10/moments/SquaredDifferenceSquaredDifferenceconv1d_10/BiasAdd:output:04batch_normalization_10/moments/StopGradient:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0batch_normalization_10/moments/SquaredDifferenceÇ
9batch_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2;
9batch_normalization_10/moments/variance/reduction_indices
'batch_normalization_10/moments/varianceMean4batch_normalization_10/moments/SquaredDifference:z:0Bbatch_normalization_10/moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2)
'batch_normalization_10/moments/varianceÇ
&batch_normalization_10/moments/SqueezeSqueeze,batch_normalization_10/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2(
&batch_normalization_10/moments/SqueezeÏ
(batch_normalization_10/moments/Squeeze_1Squeeze0batch_normalization_10/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2*
(batch_normalization_10/moments/Squeeze_1
,batch_normalization_10/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*>
_class4
20loc:@batch_normalization_10/AssignMovingAvg/6745*
_output_shapes
: *
dtype0*
valueB
 *
×#<2.
,batch_normalization_10/AssignMovingAvg/decay×
5batch_normalization_10/AssignMovingAvg/ReadVariableOpReadVariableOp+batch_normalization_10_assignmovingavg_6745*
_output_shapes	
:*
dtype027
5batch_normalization_10/AssignMovingAvg/ReadVariableOpã
*batch_normalization_10/AssignMovingAvg/subSub=batch_normalization_10/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_10/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@batch_normalization_10/AssignMovingAvg/6745*
_output_shapes	
:2,
*batch_normalization_10/AssignMovingAvg/subÚ
*batch_normalization_10/AssignMovingAvg/mulMul.batch_normalization_10/AssignMovingAvg/sub:z:05batch_normalization_10/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@batch_normalization_10/AssignMovingAvg/6745*
_output_shapes	
:2,
*batch_normalization_10/AssignMovingAvg/mulµ
:batch_normalization_10/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp+batch_normalization_10_assignmovingavg_6745.batch_normalization_10/AssignMovingAvg/mul:z:06^batch_normalization_10/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*>
_class4
20loc:@batch_normalization_10/AssignMovingAvg/6745*
_output_shapes
 *
dtype02<
:batch_normalization_10/AssignMovingAvg/AssignSubVariableOp
.batch_normalization_10/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@batch_normalization_10/AssignMovingAvg_1/6751*
_output_shapes
: *
dtype0*
valueB
 *
×#<20
.batch_normalization_10/AssignMovingAvg_1/decayÝ
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOpReadVariableOp-batch_normalization_10_assignmovingavg_1_6751*
_output_shapes	
:*
dtype029
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOpí
,batch_normalization_10/AssignMovingAvg_1/subSub?batch_normalization_10/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_10/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@batch_normalization_10/AssignMovingAvg_1/6751*
_output_shapes	
:2.
,batch_normalization_10/AssignMovingAvg_1/subä
,batch_normalization_10/AssignMovingAvg_1/mulMul0batch_normalization_10/AssignMovingAvg_1/sub:z:07batch_normalization_10/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@batch_normalization_10/AssignMovingAvg_1/6751*
_output_shapes	
:2.
,batch_normalization_10/AssignMovingAvg_1/mulÁ
<batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp-batch_normalization_10_assignmovingavg_1_67510batch_normalization_10/AssignMovingAvg_1/mul:z:08^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@batch_normalization_10/AssignMovingAvg_1/6751*
_output_shapes
 *
dtype02>
<batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp
&batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_10/batchnorm/add/yß
$batch_normalization_10/batchnorm/addAddV21batch_normalization_10/moments/Squeeze_1:output:0/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2&
$batch_normalization_10/batchnorm/add©
&batch_normalization_10/batchnorm/RsqrtRsqrt(batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_10/batchnorm/Rsqrtä
3batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype025
3batch_normalization_10/batchnorm/mul/ReadVariableOpâ
$batch_normalization_10/batchnorm/mulMul*batch_normalization_10/batchnorm/Rsqrt:y:0;batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2&
$batch_normalization_10/batchnorm/mulÕ
&batch_normalization_10/batchnorm/mul_1Mulconv1d_10/BiasAdd:output:0(batch_normalization_10/batchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_10/batchnorm/mul_1Ø
&batch_normalization_10/batchnorm/mul_2Mul/batch_normalization_10/moments/Squeeze:output:0(batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_10/batchnorm/mul_2Ø
/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype021
/batch_normalization_10/batchnorm/ReadVariableOpÞ
$batch_normalization_10/batchnorm/subSub7batch_normalization_10/batchnorm/ReadVariableOp:value:0*batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2&
$batch_normalization_10/batchnorm/subç
&batch_normalization_10/batchnorm/add_1AddV2*batch_normalization_10/batchnorm/mul_1:z:0(batch_normalization_10/batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_10/batchnorm/add_1
activation_10/ReluRelu*batch_normalization_10/batchnorm/add_1:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_10/Relu
max_pooling1d_10/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
max_pooling1d_10/ExpandDims/dimÐ
max_pooling1d_10/ExpandDims
ExpandDims activation_10/Relu:activations:0(max_pooling1d_10/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
max_pooling1d_10/ExpandDimsÓ
max_pooling1d_10/MaxPoolMaxPool$max_pooling1d_10/ExpandDims:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
ksize
*
paddingVALID*
strides
2
max_pooling1d_10/MaxPool°
max_pooling1d_10/SqueezeSqueeze!max_pooling1d_10/MaxPool:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
squeeze_dims
2
max_pooling1d_10/Squeeze
conv1d_11/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_11/conv1d/ExpandDims/dimÐ
conv1d_11/conv1d/ExpandDims
ExpandDims!max_pooling1d_10/Squeeze:output:0(conv1d_11/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
conv1d_11/conv1d/ExpandDimsØ
,conv1d_11/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_11_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02.
,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_11/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_11/conv1d/ExpandDims_1/dimá
conv1d_11/conv1d/ExpandDims_1
ExpandDims4conv1d_11/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_11/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2
conv1d_11/conv1d/ExpandDims_1ß
conv1d_11/conv1dConv2D$conv1d_11/conv1d/ExpandDims:output:0&conv1d_11/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
paddingSAME*
strides
2
conv1d_11/conv1d±
conv1d_11/conv1d/SqueezeSqueezeconv1d_11/conv1d:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_11/conv1d/Squeeze«
 conv1d_11/BiasAdd/ReadVariableOpReadVariableOp)conv1d_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv1d_11/BiasAdd/ReadVariableOpµ
conv1d_11/BiasAddBiasAdd!conv1d_11/conv1d/Squeeze:output:0(conv1d_11/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
conv1d_11/BiasAdd¿
5batch_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       27
5batch_normalization_11/moments/mean/reduction_indicesí
#batch_normalization_11/moments/meanMeanconv1d_11/BiasAdd:output:0>batch_normalization_11/moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2%
#batch_normalization_11/moments/meanÆ
+batch_normalization_11/moments/StopGradientStopGradient,batch_normalization_11/moments/mean:output:0*
T0*#
_output_shapes
:2-
+batch_normalization_11/moments/StopGradient
0batch_normalization_11/moments/SquaredDifferenceSquaredDifferenceconv1d_11/BiasAdd:output:04batch_normalization_11/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'22
0batch_normalization_11/moments/SquaredDifferenceÇ
9batch_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2;
9batch_normalization_11/moments/variance/reduction_indices
'batch_normalization_11/moments/varianceMean4batch_normalization_11/moments/SquaredDifference:z:0Bbatch_normalization_11/moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2)
'batch_normalization_11/moments/varianceÇ
&batch_normalization_11/moments/SqueezeSqueeze,batch_normalization_11/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2(
&batch_normalization_11/moments/SqueezeÏ
(batch_normalization_11/moments/Squeeze_1Squeeze0batch_normalization_11/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2*
(batch_normalization_11/moments/Squeeze_1
,batch_normalization_11/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*>
_class4
20loc:@batch_normalization_11/AssignMovingAvg/6793*
_output_shapes
: *
dtype0*
valueB
 *
×#<2.
,batch_normalization_11/AssignMovingAvg/decay×
5batch_normalization_11/AssignMovingAvg/ReadVariableOpReadVariableOp+batch_normalization_11_assignmovingavg_6793*
_output_shapes	
:*
dtype027
5batch_normalization_11/AssignMovingAvg/ReadVariableOpã
*batch_normalization_11/AssignMovingAvg/subSub=batch_normalization_11/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_11/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@batch_normalization_11/AssignMovingAvg/6793*
_output_shapes	
:2,
*batch_normalization_11/AssignMovingAvg/subÚ
*batch_normalization_11/AssignMovingAvg/mulMul.batch_normalization_11/AssignMovingAvg/sub:z:05batch_normalization_11/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@batch_normalization_11/AssignMovingAvg/6793*
_output_shapes	
:2,
*batch_normalization_11/AssignMovingAvg/mulµ
:batch_normalization_11/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp+batch_normalization_11_assignmovingavg_6793.batch_normalization_11/AssignMovingAvg/mul:z:06^batch_normalization_11/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*>
_class4
20loc:@batch_normalization_11/AssignMovingAvg/6793*
_output_shapes
 *
dtype02<
:batch_normalization_11/AssignMovingAvg/AssignSubVariableOp
.batch_normalization_11/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@batch_normalization_11/AssignMovingAvg_1/6799*
_output_shapes
: *
dtype0*
valueB
 *
×#<20
.batch_normalization_11/AssignMovingAvg_1/decayÝ
7batch_normalization_11/AssignMovingAvg_1/ReadVariableOpReadVariableOp-batch_normalization_11_assignmovingavg_1_6799*
_output_shapes	
:*
dtype029
7batch_normalization_11/AssignMovingAvg_1/ReadVariableOpí
,batch_normalization_11/AssignMovingAvg_1/subSub?batch_normalization_11/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_11/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@batch_normalization_11/AssignMovingAvg_1/6799*
_output_shapes	
:2.
,batch_normalization_11/AssignMovingAvg_1/subä
,batch_normalization_11/AssignMovingAvg_1/mulMul0batch_normalization_11/AssignMovingAvg_1/sub:z:07batch_normalization_11/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@batch_normalization_11/AssignMovingAvg_1/6799*
_output_shapes	
:2.
,batch_normalization_11/AssignMovingAvg_1/mulÁ
<batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp-batch_normalization_11_assignmovingavg_1_67990batch_normalization_11/AssignMovingAvg_1/mul:z:08^batch_normalization_11/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@batch_normalization_11/AssignMovingAvg_1/6799*
_output_shapes
 *
dtype02>
<batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp
&batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_11/batchnorm/add/yß
$batch_normalization_11/batchnorm/addAddV21batch_normalization_11/moments/Squeeze_1:output:0/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2&
$batch_normalization_11/batchnorm/add©
&batch_normalization_11/batchnorm/RsqrtRsqrt(batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_11/batchnorm/Rsqrtä
3batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype025
3batch_normalization_11/batchnorm/mul/ReadVariableOpâ
$batch_normalization_11/batchnorm/mulMul*batch_normalization_11/batchnorm/Rsqrt:y:0;batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2&
$batch_normalization_11/batchnorm/mulÔ
&batch_normalization_11/batchnorm/mul_1Mulconv1d_11/BiasAdd:output:0(batch_normalization_11/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2(
&batch_normalization_11/batchnorm/mul_1Ø
&batch_normalization_11/batchnorm/mul_2Mul/batch_normalization_11/moments/Squeeze:output:0(batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_11/batchnorm/mul_2Ø
/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype021
/batch_normalization_11/batchnorm/ReadVariableOpÞ
$batch_normalization_11/batchnorm/subSub7batch_normalization_11/batchnorm/ReadVariableOp:value:0*batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2&
$batch_normalization_11/batchnorm/subæ
&batch_normalization_11/batchnorm/add_1AddV2*batch_normalization_11/batchnorm/mul_1:z:0(batch_normalization_11/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2(
&batch_normalization_11/batchnorm/add_1
activation_11/ReluRelu*batch_normalization_11/batchnorm/add_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
activation_11/Relu
max_pooling1d_11/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
max_pooling1d_11/ExpandDims/dimÏ
max_pooling1d_11/ExpandDims
ExpandDims activation_11/Relu:activations:0(max_pooling1d_11/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
max_pooling1d_11/ExpandDimsÓ
max_pooling1d_11/MaxPoolMaxPool$max_pooling1d_11/ExpandDims:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
ksize
*
paddingVALID*
strides
2
max_pooling1d_11/MaxPool°
max_pooling1d_11/SqueezeSqueeze!max_pooling1d_11/MaxPool:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
squeeze_dims
2
max_pooling1d_11/Squeeze
lambda_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2!
lambda_2/Mean/reduction_indices¦
lambda_2/MeanMean!max_pooling1d_11/Squeeze:output:0(lambda_2/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lambda_2/Mean¦
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
dense_2/MatMul/ReadVariableOp
dense_2/MatMulMatMullambda_2/Mean:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/MatMul¤
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp¡
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/Softmaxà
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_8_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:P*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp»
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:P2$
"conv1d_8/kernel/Regularizer/Square
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const¾
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_8/kernel/Regularizer/mul/xÀ
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mulá
1conv1d_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_9_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype023
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¼
"conv1d_9/kernel/Regularizer/SquareSquare9conv1d_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2$
"conv1d_9/kernel/Regularizer/Square
!conv1d_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_9/kernel/Regularizer/Const¾
conv1d_9/kernel/Regularizer/SumSum&conv1d_9/kernel/Regularizer/Square:y:0*conv1d_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/Sum
!conv1d_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_9/kernel/Regularizer/mul/xÀ
conv1d_9/kernel/Regularizer/mulMul*conv1d_9/kernel/Regularizer/mul/x:output:0(conv1d_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/mulä
2conv1d_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5conv1d_10_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype024
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_10/kernel/Regularizer/SquareSquare:conv1d_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_10/kernel/Regularizer/Square
"conv1d_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_10/kernel/Regularizer/ConstÂ
 conv1d_10/kernel/Regularizer/SumSum'conv1d_10/kernel/Regularizer/Square:y:0+conv1d_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/Sum
"conv1d_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_10/kernel/Regularizer/mul/xÄ
 conv1d_10/kernel/Regularizer/mulMul+conv1d_10/kernel/Regularizer/mul/x:output:0)conv1d_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/mulä
2conv1d_11/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5conv1d_11_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype024
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_11/kernel/Regularizer/SquareSquare:conv1d_11/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_11/kernel/Regularizer/Square
"conv1d_11/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_11/kernel/Regularizer/ConstÂ
 conv1d_11/kernel/Regularizer/SumSum'conv1d_11/kernel/Regularizer/Square:y:0+conv1d_11/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/Sum
"conv1d_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_11/kernel/Regularizer/mul/xÄ
 conv1d_11/kernel/Regularizer/mulMul+conv1d_11/kernel/Regularizer/mul/x:output:0)conv1d_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/mul
IdentityIdentitydense_2/Softmax:softmax:0;^batch_normalization_10/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_10/AssignMovingAvg/ReadVariableOp=^batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp4^batch_normalization_10/batchnorm/mul/ReadVariableOp;^batch_normalization_11/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_11/AssignMovingAvg/ReadVariableOp=^batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_11/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_11/batchnorm/ReadVariableOp4^batch_normalization_11/batchnorm/mul/ReadVariableOp:^batch_normalization_8/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_8/AssignMovingAvg/ReadVariableOp<^batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp3^batch_normalization_8/batchnorm/mul/ReadVariableOp:^batch_normalization_9/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_9/AssignMovingAvg/ReadVariableOp<^batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_9/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp3^batch_normalization_9/batchnorm/mul/ReadVariableOp!^conv1d_10/BiasAdd/ReadVariableOp-^conv1d_10/conv1d/ExpandDims_1/ReadVariableOp3^conv1d_10/kernel/Regularizer/Square/ReadVariableOp!^conv1d_11/BiasAdd/ReadVariableOp-^conv1d_11/conv1d/ExpandDims_1/ReadVariableOp3^conv1d_11/kernel/Regularizer/Square/ReadVariableOp ^conv1d_8/BiasAdd/ReadVariableOp,^conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp ^conv1d_9/BiasAdd/ReadVariableOp,^conv1d_9/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_9/kernel/Regularizer/Square/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*
_input_shapes
:ÿÿÿÿÿÿÿÿÿN::::::::::::::::::::::::::2x
:batch_normalization_10/AssignMovingAvg/AssignSubVariableOp:batch_normalization_10/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_10/AssignMovingAvg/ReadVariableOp5batch_normalization_10/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_10/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_10/batchnorm/ReadVariableOp/batch_normalization_10/batchnorm/ReadVariableOp2j
3batch_normalization_10/batchnorm/mul/ReadVariableOp3batch_normalization_10/batchnorm/mul/ReadVariableOp2x
:batch_normalization_11/AssignMovingAvg/AssignSubVariableOp:batch_normalization_11/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_11/AssignMovingAvg/ReadVariableOp5batch_normalization_11/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_11/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_11/batchnorm/ReadVariableOp/batch_normalization_11/batchnorm/ReadVariableOp2j
3batch_normalization_11/batchnorm/mul/ReadVariableOp3batch_normalization_11/batchnorm/mul/ReadVariableOp2v
9batch_normalization_8/AssignMovingAvg/AssignSubVariableOp9batch_normalization_8/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_8/AssignMovingAvg/ReadVariableOp4batch_normalization_8/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_8/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2v
9batch_normalization_9/AssignMovingAvg/AssignSubVariableOp9batch_normalization_9/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_9/AssignMovingAvg/ReadVariableOp4batch_normalization_9/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_9/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp6batch_normalization_9/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_9/batchnorm/ReadVariableOp.batch_normalization_9/batchnorm/ReadVariableOp2h
2batch_normalization_9/batchnorm/mul/ReadVariableOp2batch_normalization_9/batchnorm/mul/ReadVariableOp2D
 conv1d_10/BiasAdd/ReadVariableOp conv1d_10/BiasAdd/ReadVariableOp2\
,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp2h
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_11/BiasAdd/ReadVariableOp conv1d_11/BiasAdd/ReadVariableOp2\
,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp2h
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2B
conv1d_8/BiasAdd/ReadVariableOpconv1d_8/BiasAdd/ReadVariableOp2Z
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp2B
conv1d_9/BiasAdd/ReadVariableOpconv1d_9/BiasAdd/ReadVariableOp2Z
+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp1conv1d_9/kernel/Regularizer/Square/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
 
_user_specified_nameinputs
Ò
£
__inference_loss_fn_3_8061?
;conv1d_11_kernel_regularizer_square_readvariableop_resource
identity¢2conv1d_11/kernel/Regularizer/Square/ReadVariableOpê
2conv1d_11/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv1d_11_kernel_regularizer_square_readvariableop_resource*$
_output_shapes
:*
dtype024
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_11/kernel/Regularizer/SquareSquare:conv1d_11/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_11/kernel/Regularizer/Square
"conv1d_11/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_11/kernel/Regularizer/ConstÂ
 conv1d_11/kernel/Regularizer/SumSum'conv1d_11/kernel/Regularizer/Square:y:0+conv1d_11/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/Sum
"conv1d_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_11/kernel/Regularizer/mul/xÄ
 conv1d_11/kernel/Regularizer/mulMul+conv1d_11/kernel/Regularizer/mul/x:output:0)conv1d_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/mul
IdentityIdentity$conv1d_11/kernel/Regularizer/mul:z:03^conv1d_11/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2conv1d_11/kernel/Regularizer/Square/ReadVariableOp
ú

P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7647

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1á
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ

P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_6000

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
batchnorm/add_1à
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ'::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'
 
_user_specified_nameinputs

÷
+__inference_sequential_2_layer_call_fn_7135

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24
identity¢StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_64812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*
_input_shapes
:ÿÿÿÿÿÿÿÿÿN::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
 
_user_specified_nameinputs
Ø
{
&__inference_dense_2_layer_call_fn_8017

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_60862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
§
4__inference_batch_normalization_8_layer_call_fn_7240

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_55542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÄ::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_nameinputs
Ý
©
B__inference_conv1d_9_layer_call_and_return_conditional_losses_5645

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOp¢1conv1d_9/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
conv1d/ExpandDimsº
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim¹
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2
conv1d/ExpandDims_1¸
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2	
BiasAddØ
1conv1d_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype023
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¼
"conv1d_9/kernel/Regularizer/SquareSquare9conv1d_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2$
"conv1d_9/kernel/Regularizer/Square
!conv1d_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_9/kernel/Regularizer/Const¾
conv1d_9/kernel/Regularizer/SumSum&conv1d_9/kernel/Regularizer/Square:y:0*conv1d_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/Sum
!conv1d_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_9/kernel/Regularizer/mul/xÀ
conv1d_9/kernel/Regularizer/mulMul*conv1d_9/kernel/Regularizer/mul/x:output:0(conv1d_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/mulÜ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp2^conv1d_9/kernel/Regularizer/Square/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿñ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp1conv1d_9/kernel/Regularizer/Square/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
 
_user_specified_nameinputs
|
ñ

F__inference_sequential_2_layer_call_and_return_conditional_losses_6326

inputs
conv1d_8_6231
conv1d_8_6233
batch_normalization_8_6236
batch_normalization_8_6238
batch_normalization_8_6240
batch_normalization_8_6242
conv1d_9_6247
conv1d_9_6249
batch_normalization_9_6252
batch_normalization_9_6254
batch_normalization_9_6256
batch_normalization_9_6258
conv1d_10_6263
conv1d_10_6265
batch_normalization_10_6268
batch_normalization_10_6270
batch_normalization_10_6272
batch_normalization_10_6274
conv1d_11_6279
conv1d_11_6281
batch_normalization_11_6284
batch_normalization_11_6286
batch_normalization_11_6288
batch_normalization_11_6290
dense_2_6296
dense_2_6298
identity¢.batch_normalization_10/StatefulPartitionedCall¢.batch_normalization_11/StatefulPartitionedCall¢-batch_normalization_8/StatefulPartitionedCall¢-batch_normalization_9/StatefulPartitionedCall¢!conv1d_10/StatefulPartitionedCall¢2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¢!conv1d_11/StatefulPartitionedCall¢2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¢ conv1d_8/StatefulPartitionedCall¢1conv1d_8/kernel/Regularizer/Square/ReadVariableOp¢ conv1d_9/StatefulPartitionedCall¢1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¢dense_2/StatefulPartitionedCall
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_8_6231conv1d_8_6233*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_8_layer_call_and_return_conditional_losses_55032"
 conv1d_8/StatefulPartitionedCall²
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0batch_normalization_8_6236batch_normalization_8_6238batch_normalization_8_6240batch_normalization_8_6242*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_55542/
-batch_normalization_8/StatefulPartitionedCall
activation_8/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_8_layer_call_and_return_conditional_losses_56152
activation_8/PartitionedCall
max_pooling1d_8/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_50072!
max_pooling1d_8/PartitionedCall¶
 conv1d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_8/PartitionedCall:output:0conv1d_9_6247conv1d_9_6249*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_9_layer_call_and_return_conditional_losses_56452"
 conv1d_9/StatefulPartitionedCall²
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)conv1d_9/StatefulPartitionedCall:output:0batch_normalization_9_6252batch_normalization_9_6254batch_normalization_9_6256batch_normalization_9_6258*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_56962/
-batch_normalization_9/StatefulPartitionedCall
activation_9/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_9_layer_call_and_return_conditional_losses_57572
activation_9/PartitionedCall
max_pooling1d_9/PartitionedCallPartitionedCall%activation_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling1d_9_layer_call_and_return_conditional_losses_51622!
max_pooling1d_9/PartitionedCall»
!conv1d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_9/PartitionedCall:output:0conv1d_10_6263conv1d_10_6265*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv1d_10_layer_call_and_return_conditional_losses_57872#
!conv1d_10/StatefulPartitionedCallº
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv1d_10/StatefulPartitionedCall:output:0batch_normalization_10_6268batch_normalization_10_6270batch_normalization_10_6272batch_normalization_10_6274*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_583820
.batch_normalization_10/StatefulPartitionedCall
activation_10/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_10_layer_call_and_return_conditional_losses_58992
activation_10/PartitionedCall
 max_pooling1d_10/PartitionedCallPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling1d_10_layer_call_and_return_conditional_losses_53172"
 max_pooling1d_10/PartitionedCall»
!conv1d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_10/PartitionedCall:output:0conv1d_11_6279conv1d_11_6281*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv1d_11_layer_call_and_return_conditional_losses_59292#
!conv1d_11/StatefulPartitionedCall¹
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*conv1d_11/StatefulPartitionedCall:output:0batch_normalization_11_6284batch_normalization_11_6286batch_normalization_11_6288batch_normalization_11_6290*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_598020
.batch_normalization_11/StatefulPartitionedCall
activation_11/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_11_layer_call_and_return_conditional_losses_60412
activation_11/PartitionedCall
 max_pooling1d_11/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_54722"
 max_pooling1d_11/PartitionedCallö
lambda_2/PartitionedCallPartitionedCall)max_pooling1d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lambda_2_layer_call_and_return_conditional_losses_60562
lambda_2/PartitionedCall¤
dense_2/StatefulPartitionedCallStatefulPartitionedCall!lambda_2/PartitionedCall:output:0dense_2_6296dense_2_6298*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_60862!
dense_2/StatefulPartitionedCall¹
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_8_6231*#
_output_shapes
:P*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp»
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:P2$
"conv1d_8/kernel/Regularizer/Square
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const¾
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_8/kernel/Regularizer/mul/xÀ
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mulº
1conv1d_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_9_6247*$
_output_shapes
:*
dtype023
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¼
"conv1d_9/kernel/Regularizer/SquareSquare9conv1d_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2$
"conv1d_9/kernel/Regularizer/Square
!conv1d_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_9/kernel/Regularizer/Const¾
conv1d_9/kernel/Regularizer/SumSum&conv1d_9/kernel/Regularizer/Square:y:0*conv1d_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/Sum
!conv1d_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_9/kernel/Regularizer/mul/xÀ
conv1d_9/kernel/Regularizer/mulMul*conv1d_9/kernel/Regularizer/mul/x:output:0(conv1d_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/mul½
2conv1d_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_10_6263*$
_output_shapes
:*
dtype024
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_10/kernel/Regularizer/SquareSquare:conv1d_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_10/kernel/Regularizer/Square
"conv1d_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_10/kernel/Regularizer/ConstÂ
 conv1d_10/kernel/Regularizer/SumSum'conv1d_10/kernel/Regularizer/Square:y:0+conv1d_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/Sum
"conv1d_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_10/kernel/Regularizer/mul/xÄ
 conv1d_10/kernel/Regularizer/mulMul+conv1d_10/kernel/Regularizer/mul/x:output:0)conv1d_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/mul½
2conv1d_11/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_11_6279*$
_output_shapes
:*
dtype024
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_11/kernel/Regularizer/SquareSquare:conv1d_11/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_11/kernel/Regularizer/Square
"conv1d_11/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_11/kernel/Regularizer/ConstÂ
 conv1d_11/kernel/Regularizer/SumSum'conv1d_11/kernel/Regularizer/Square:y:0+conv1d_11/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/Sum
"conv1d_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_11/kernel/Regularizer/mul/xÄ
 conv1d_11/kernel/Regularizer/mulMul+conv1d_11/kernel/Regularizer/mul/x:output:0)conv1d_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/mulÀ
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall"^conv1d_10/StatefulPartitionedCall3^conv1d_10/kernel/Regularizer/Square/ReadVariableOp"^conv1d_11/StatefulPartitionedCall3^conv1d_11/kernel/Regularizer/Square/ReadVariableOp!^conv1d_8/StatefulPartitionedCall2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp!^conv1d_9/StatefulPartitionedCall2^conv1d_9/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*
_input_shapes
:ÿÿÿÿÿÿÿÿÿN::::::::::::::::::::::::::2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2F
!conv1d_10/StatefulPartitionedCall!conv1d_10/StatefulPartitionedCall2h
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2F
!conv1d_11/StatefulPartitionedCall!conv1d_11/StatefulPartitionedCall2h
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_9/StatefulPartitionedCall conv1d_9/StatefulPartitionedCall2f
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp1conv1d_9/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
 
_user_specified_nameinputs
Ú

__inference__wrapped_model_4858
conv1d_8_inputE
Asequential_2_conv1d_8_conv1d_expanddims_1_readvariableop_resource9
5sequential_2_conv1d_8_biasadd_readvariableop_resourceH
Dsequential_2_batch_normalization_8_batchnorm_readvariableop_resourceL
Hsequential_2_batch_normalization_8_batchnorm_mul_readvariableop_resourceJ
Fsequential_2_batch_normalization_8_batchnorm_readvariableop_1_resourceJ
Fsequential_2_batch_normalization_8_batchnorm_readvariableop_2_resourceE
Asequential_2_conv1d_9_conv1d_expanddims_1_readvariableop_resource9
5sequential_2_conv1d_9_biasadd_readvariableop_resourceH
Dsequential_2_batch_normalization_9_batchnorm_readvariableop_resourceL
Hsequential_2_batch_normalization_9_batchnorm_mul_readvariableop_resourceJ
Fsequential_2_batch_normalization_9_batchnorm_readvariableop_1_resourceJ
Fsequential_2_batch_normalization_9_batchnorm_readvariableop_2_resourceF
Bsequential_2_conv1d_10_conv1d_expanddims_1_readvariableop_resource:
6sequential_2_conv1d_10_biasadd_readvariableop_resourceI
Esequential_2_batch_normalization_10_batchnorm_readvariableop_resourceM
Isequential_2_batch_normalization_10_batchnorm_mul_readvariableop_resourceK
Gsequential_2_batch_normalization_10_batchnorm_readvariableop_1_resourceK
Gsequential_2_batch_normalization_10_batchnorm_readvariableop_2_resourceF
Bsequential_2_conv1d_11_conv1d_expanddims_1_readvariableop_resource:
6sequential_2_conv1d_11_biasadd_readvariableop_resourceI
Esequential_2_batch_normalization_11_batchnorm_readvariableop_resourceM
Isequential_2_batch_normalization_11_batchnorm_mul_readvariableop_resourceK
Gsequential_2_batch_normalization_11_batchnorm_readvariableop_1_resourceK
Gsequential_2_batch_normalization_11_batchnorm_readvariableop_2_resource7
3sequential_2_dense_2_matmul_readvariableop_resource8
4sequential_2_dense_2_biasadd_readvariableop_resource
identity¢<sequential_2/batch_normalization_10/batchnorm/ReadVariableOp¢>sequential_2/batch_normalization_10/batchnorm/ReadVariableOp_1¢>sequential_2/batch_normalization_10/batchnorm/ReadVariableOp_2¢@sequential_2/batch_normalization_10/batchnorm/mul/ReadVariableOp¢<sequential_2/batch_normalization_11/batchnorm/ReadVariableOp¢>sequential_2/batch_normalization_11/batchnorm/ReadVariableOp_1¢>sequential_2/batch_normalization_11/batchnorm/ReadVariableOp_2¢@sequential_2/batch_normalization_11/batchnorm/mul/ReadVariableOp¢;sequential_2/batch_normalization_8/batchnorm/ReadVariableOp¢=sequential_2/batch_normalization_8/batchnorm/ReadVariableOp_1¢=sequential_2/batch_normalization_8/batchnorm/ReadVariableOp_2¢?sequential_2/batch_normalization_8/batchnorm/mul/ReadVariableOp¢;sequential_2/batch_normalization_9/batchnorm/ReadVariableOp¢=sequential_2/batch_normalization_9/batchnorm/ReadVariableOp_1¢=sequential_2/batch_normalization_9/batchnorm/ReadVariableOp_2¢?sequential_2/batch_normalization_9/batchnorm/mul/ReadVariableOp¢-sequential_2/conv1d_10/BiasAdd/ReadVariableOp¢9sequential_2/conv1d_10/conv1d/ExpandDims_1/ReadVariableOp¢-sequential_2/conv1d_11/BiasAdd/ReadVariableOp¢9sequential_2/conv1d_11/conv1d/ExpandDims_1/ReadVariableOp¢,sequential_2/conv1d_8/BiasAdd/ReadVariableOp¢8sequential_2/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp¢,sequential_2/conv1d_9/BiasAdd/ReadVariableOp¢8sequential_2/conv1d_9/conv1d/ExpandDims_1/ReadVariableOp¢+sequential_2/dense_2/BiasAdd/ReadVariableOp¢*sequential_2/dense_2/MatMul/ReadVariableOp¥
+sequential_2/conv1d_8/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2-
+sequential_2/conv1d_8/conv1d/ExpandDims/dimá
'sequential_2/conv1d_8/conv1d/ExpandDims
ExpandDimsconv1d_8_input4sequential_2/conv1d_8/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿN2)
'sequential_2/conv1d_8/conv1d/ExpandDimsû
8sequential_2/conv1d_8/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_2_conv1d_8_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:P*
dtype02:
8sequential_2/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp 
-sequential_2/conv1d_8/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_2/conv1d_8/conv1d/ExpandDims_1/dim
)sequential_2/conv1d_8/conv1d/ExpandDims_1
ExpandDims@sequential_2/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential_2/conv1d_8/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:P2+
)sequential_2/conv1d_8/conv1d/ExpandDims_1
sequential_2/conv1d_8/conv1dConv2D0sequential_2/conv1d_8/conv1d/ExpandDims:output:02sequential_2/conv1d_8/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
paddingSAME*
strides
2
sequential_2/conv1d_8/conv1dÖ
$sequential_2/conv1d_8/conv1d/SqueezeSqueeze%sequential_2/conv1d_8/conv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2&
$sequential_2/conv1d_8/conv1d/SqueezeÏ
,sequential_2/conv1d_8/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv1d_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,sequential_2/conv1d_8/BiasAdd/ReadVariableOpæ
sequential_2/conv1d_8/BiasAddBiasAdd-sequential_2/conv1d_8/conv1d/Squeeze:output:04sequential_2/conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
sequential_2/conv1d_8/BiasAddü
;sequential_2/batch_normalization_8/batchnorm/ReadVariableOpReadVariableOpDsequential_2_batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02=
;sequential_2/batch_normalization_8/batchnorm/ReadVariableOp­
2sequential_2/batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:24
2sequential_2/batch_normalization_8/batchnorm/add/y
0sequential_2/batch_normalization_8/batchnorm/addAddV2Csequential_2/batch_normalization_8/batchnorm/ReadVariableOp:value:0;sequential_2/batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:22
0sequential_2/batch_normalization_8/batchnorm/addÍ
2sequential_2/batch_normalization_8/batchnorm/RsqrtRsqrt4sequential_2/batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:24
2sequential_2/batch_normalization_8/batchnorm/Rsqrt
?sequential_2/batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_2_batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02A
?sequential_2/batch_normalization_8/batchnorm/mul/ReadVariableOp
0sequential_2/batch_normalization_8/batchnorm/mulMul6sequential_2/batch_normalization_8/batchnorm/Rsqrt:y:0Gsequential_2/batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:22
0sequential_2/batch_normalization_8/batchnorm/mul
2sequential_2/batch_normalization_8/batchnorm/mul_1Mul&sequential_2/conv1d_8/BiasAdd:output:04sequential_2/batch_normalization_8/batchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ24
2sequential_2/batch_normalization_8/batchnorm/mul_1
=sequential_2/batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_2_batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02?
=sequential_2/batch_normalization_8/batchnorm/ReadVariableOp_1
2sequential_2/batch_normalization_8/batchnorm/mul_2MulEsequential_2/batch_normalization_8/batchnorm/ReadVariableOp_1:value:04sequential_2/batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:24
2sequential_2/batch_normalization_8/batchnorm/mul_2
=sequential_2/batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_2_batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02?
=sequential_2/batch_normalization_8/batchnorm/ReadVariableOp_2
0sequential_2/batch_normalization_8/batchnorm/subSubEsequential_2/batch_normalization_8/batchnorm/ReadVariableOp_2:value:06sequential_2/batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:22
0sequential_2/batch_normalization_8/batchnorm/sub
2sequential_2/batch_normalization_8/batchnorm/add_1AddV26sequential_2/batch_normalization_8/batchnorm/mul_1:z:04sequential_2/batch_normalization_8/batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ24
2sequential_2/batch_normalization_8/batchnorm/add_1¸
sequential_2/activation_8/ReluRelu6sequential_2/batch_normalization_8/batchnorm/add_1:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
sequential_2/activation_8/Relu
+sequential_2/max_pooling1d_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_2/max_pooling1d_8/ExpandDims/dim
'sequential_2/max_pooling1d_8/ExpandDims
ExpandDims,sequential_2/activation_8/Relu:activations:04sequential_2/max_pooling1d_8/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2)
'sequential_2/max_pooling1d_8/ExpandDimsø
$sequential_2/max_pooling1d_8/MaxPoolMaxPool0sequential_2/max_pooling1d_8/ExpandDims:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
ksize
*
paddingVALID*
strides
2&
$sequential_2/max_pooling1d_8/MaxPoolÕ
$sequential_2/max_pooling1d_8/SqueezeSqueeze-sequential_2/max_pooling1d_8/MaxPool:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
squeeze_dims
2&
$sequential_2/max_pooling1d_8/Squeeze¥
+sequential_2/conv1d_9/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2-
+sequential_2/conv1d_9/conv1d/ExpandDims/dim
'sequential_2/conv1d_9/conv1d/ExpandDims
ExpandDims-sequential_2/max_pooling1d_8/Squeeze:output:04sequential_2/conv1d_9/conv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2)
'sequential_2/conv1d_9/conv1d/ExpandDimsü
8sequential_2/conv1d_9/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_2_conv1d_9_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02:
8sequential_2/conv1d_9/conv1d/ExpandDims_1/ReadVariableOp 
-sequential_2/conv1d_9/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_2/conv1d_9/conv1d/ExpandDims_1/dim
)sequential_2/conv1d_9/conv1d/ExpandDims_1
ExpandDims@sequential_2/conv1d_9/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential_2/conv1d_9/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2+
)sequential_2/conv1d_9/conv1d/ExpandDims_1
sequential_2/conv1d_9/conv1dConv2D0sequential_2/conv1d_9/conv1d/ExpandDims:output:02sequential_2/conv1d_9/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
paddingSAME*
strides
2
sequential_2/conv1d_9/conv1dÖ
$sequential_2/conv1d_9/conv1d/SqueezeSqueeze%sequential_2/conv1d_9/conv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2&
$sequential_2/conv1d_9/conv1d/SqueezeÏ
,sequential_2/conv1d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_2_conv1d_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02.
,sequential_2/conv1d_9/BiasAdd/ReadVariableOpæ
sequential_2/conv1d_9/BiasAddBiasAdd-sequential_2/conv1d_9/conv1d/Squeeze:output:04sequential_2/conv1d_9/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
sequential_2/conv1d_9/BiasAddü
;sequential_2/batch_normalization_9/batchnorm/ReadVariableOpReadVariableOpDsequential_2_batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02=
;sequential_2/batch_normalization_9/batchnorm/ReadVariableOp­
2sequential_2/batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:24
2sequential_2/batch_normalization_9/batchnorm/add/y
0sequential_2/batch_normalization_9/batchnorm/addAddV2Csequential_2/batch_normalization_9/batchnorm/ReadVariableOp:value:0;sequential_2/batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:22
0sequential_2/batch_normalization_9/batchnorm/addÍ
2sequential_2/batch_normalization_9/batchnorm/RsqrtRsqrt4sequential_2/batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:24
2sequential_2/batch_normalization_9/batchnorm/Rsqrt
?sequential_2/batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_2_batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02A
?sequential_2/batch_normalization_9/batchnorm/mul/ReadVariableOp
0sequential_2/batch_normalization_9/batchnorm/mulMul6sequential_2/batch_normalization_9/batchnorm/Rsqrt:y:0Gsequential_2/batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:22
0sequential_2/batch_normalization_9/batchnorm/mul
2sequential_2/batch_normalization_9/batchnorm/mul_1Mul&sequential_2/conv1d_9/BiasAdd:output:04sequential_2/batch_normalization_9/batchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ24
2sequential_2/batch_normalization_9/batchnorm/mul_1
=sequential_2/batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_2_batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02?
=sequential_2/batch_normalization_9/batchnorm/ReadVariableOp_1
2sequential_2/batch_normalization_9/batchnorm/mul_2MulEsequential_2/batch_normalization_9/batchnorm/ReadVariableOp_1:value:04sequential_2/batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:24
2sequential_2/batch_normalization_9/batchnorm/mul_2
=sequential_2/batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_2_batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02?
=sequential_2/batch_normalization_9/batchnorm/ReadVariableOp_2
0sequential_2/batch_normalization_9/batchnorm/subSubEsequential_2/batch_normalization_9/batchnorm/ReadVariableOp_2:value:06sequential_2/batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:22
0sequential_2/batch_normalization_9/batchnorm/sub
2sequential_2/batch_normalization_9/batchnorm/add_1AddV26sequential_2/batch_normalization_9/batchnorm/mul_1:z:04sequential_2/batch_normalization_9/batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ24
2sequential_2/batch_normalization_9/batchnorm/add_1¸
sequential_2/activation_9/ReluRelu6sequential_2/batch_normalization_9/batchnorm/add_1:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2 
sequential_2/activation_9/Relu
+sequential_2/max_pooling1d_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_2/max_pooling1d_9/ExpandDims/dim
'sequential_2/max_pooling1d_9/ExpandDims
ExpandDims,sequential_2/activation_9/Relu:activations:04sequential_2/max_pooling1d_9/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2)
'sequential_2/max_pooling1d_9/ExpandDimsø
$sequential_2/max_pooling1d_9/MaxPoolMaxPool0sequential_2/max_pooling1d_9/ExpandDims:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2&
$sequential_2/max_pooling1d_9/MaxPoolÕ
$sequential_2/max_pooling1d_9/SqueezeSqueeze-sequential_2/max_pooling1d_9/MaxPool:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2&
$sequential_2/max_pooling1d_9/Squeeze§
,sequential_2/conv1d_10/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2.
,sequential_2/conv1d_10/conv1d/ExpandDims/dim
(sequential_2/conv1d_10/conv1d/ExpandDims
ExpandDims-sequential_2/max_pooling1d_9/Squeeze:output:05sequential_2/conv1d_10/conv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_2/conv1d_10/conv1d/ExpandDimsÿ
9sequential_2/conv1d_10/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpBsequential_2_conv1d_10_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02;
9sequential_2/conv1d_10/conv1d/ExpandDims_1/ReadVariableOp¢
.sequential_2/conv1d_10/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_2/conv1d_10/conv1d/ExpandDims_1/dim
*sequential_2/conv1d_10/conv1d/ExpandDims_1
ExpandDimsAsequential_2/conv1d_10/conv1d/ExpandDims_1/ReadVariableOp:value:07sequential_2/conv1d_10/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2,
*sequential_2/conv1d_10/conv1d/ExpandDims_1
sequential_2/conv1d_10/conv1dConv2D1sequential_2/conv1d_10/conv1d/ExpandDims:output:03sequential_2/conv1d_10/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
sequential_2/conv1d_10/conv1dÙ
%sequential_2/conv1d_10/conv1d/SqueezeSqueeze&sequential_2/conv1d_10/conv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2'
%sequential_2/conv1d_10/conv1d/SqueezeÒ
-sequential_2/conv1d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv1d_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_2/conv1d_10/BiasAdd/ReadVariableOpê
sequential_2/conv1d_10/BiasAddBiasAdd.sequential_2/conv1d_10/conv1d/Squeeze:output:05sequential_2/conv1d_10/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_2/conv1d_10/BiasAddÿ
<sequential_2/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOpEsequential_2_batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02>
<sequential_2/batch_normalization_10/batchnorm/ReadVariableOp¯
3sequential_2/batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:25
3sequential_2/batch_normalization_10/batchnorm/add/y
1sequential_2/batch_normalization_10/batchnorm/addAddV2Dsequential_2/batch_normalization_10/batchnorm/ReadVariableOp:value:0<sequential_2/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes	
:23
1sequential_2/batch_normalization_10/batchnorm/addÐ
3sequential_2/batch_normalization_10/batchnorm/RsqrtRsqrt5sequential_2/batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes	
:25
3sequential_2/batch_normalization_10/batchnorm/Rsqrt
@sequential_2/batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_2_batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02B
@sequential_2/batch_normalization_10/batchnorm/mul/ReadVariableOp
1sequential_2/batch_normalization_10/batchnorm/mulMul7sequential_2/batch_normalization_10/batchnorm/Rsqrt:y:0Hsequential_2/batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:23
1sequential_2/batch_normalization_10/batchnorm/mul
3sequential_2/batch_normalization_10/batchnorm/mul_1Mul'sequential_2/conv1d_10/BiasAdd:output:05sequential_2/batch_normalization_10/batchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_2/batch_normalization_10/batchnorm/mul_1
>sequential_2/batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_2_batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02@
>sequential_2/batch_normalization_10/batchnorm/ReadVariableOp_1
3sequential_2/batch_normalization_10/batchnorm/mul_2MulFsequential_2/batch_normalization_10/batchnorm/ReadVariableOp_1:value:05sequential_2/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes	
:25
3sequential_2/batch_normalization_10/batchnorm/mul_2
>sequential_2/batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_2_batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02@
>sequential_2/batch_normalization_10/batchnorm/ReadVariableOp_2
1sequential_2/batch_normalization_10/batchnorm/subSubFsequential_2/batch_normalization_10/batchnorm/ReadVariableOp_2:value:07sequential_2/batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:23
1sequential_2/batch_normalization_10/batchnorm/sub
3sequential_2/batch_normalization_10/batchnorm/add_1AddV27sequential_2/batch_normalization_10/batchnorm/mul_1:z:05sequential_2/batch_normalization_10/batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ25
3sequential_2/batch_normalization_10/batchnorm/add_1»
sequential_2/activation_10/ReluRelu7sequential_2/batch_normalization_10/batchnorm/add_1:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_2/activation_10/Relu
,sequential_2/max_pooling1d_10/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_2/max_pooling1d_10/ExpandDims/dim
(sequential_2/max_pooling1d_10/ExpandDims
ExpandDims-sequential_2/activation_10/Relu:activations:05sequential_2/max_pooling1d_10/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(sequential_2/max_pooling1d_10/ExpandDimsú
%sequential_2/max_pooling1d_10/MaxPoolMaxPool1sequential_2/max_pooling1d_10/ExpandDims:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
ksize
*
paddingVALID*
strides
2'
%sequential_2/max_pooling1d_10/MaxPool×
%sequential_2/max_pooling1d_10/SqueezeSqueeze.sequential_2/max_pooling1d_10/MaxPool:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
squeeze_dims
2'
%sequential_2/max_pooling1d_10/Squeeze§
,sequential_2/conv1d_11/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2.
,sequential_2/conv1d_11/conv1d/ExpandDims/dim
(sequential_2/conv1d_11/conv1d/ExpandDims
ExpandDims.sequential_2/max_pooling1d_10/Squeeze:output:05sequential_2/conv1d_11/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2*
(sequential_2/conv1d_11/conv1d/ExpandDimsÿ
9sequential_2/conv1d_11/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpBsequential_2_conv1d_11_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02;
9sequential_2/conv1d_11/conv1d/ExpandDims_1/ReadVariableOp¢
.sequential_2/conv1d_11/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_2/conv1d_11/conv1d/ExpandDims_1/dim
*sequential_2/conv1d_11/conv1d/ExpandDims_1
ExpandDimsAsequential_2/conv1d_11/conv1d/ExpandDims_1/ReadVariableOp:value:07sequential_2/conv1d_11/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2,
*sequential_2/conv1d_11/conv1d/ExpandDims_1
sequential_2/conv1d_11/conv1dConv2D1sequential_2/conv1d_11/conv1d/ExpandDims:output:03sequential_2/conv1d_11/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
paddingSAME*
strides
2
sequential_2/conv1d_11/conv1dØ
%sequential_2/conv1d_11/conv1d/SqueezeSqueeze&sequential_2/conv1d_11/conv1d:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2'
%sequential_2/conv1d_11/conv1d/SqueezeÒ
-sequential_2/conv1d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_2_conv1d_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02/
-sequential_2/conv1d_11/BiasAdd/ReadVariableOpé
sequential_2/conv1d_11/BiasAddBiasAdd.sequential_2/conv1d_11/conv1d/Squeeze:output:05sequential_2/conv1d_11/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2 
sequential_2/conv1d_11/BiasAddÿ
<sequential_2/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOpEsequential_2_batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02>
<sequential_2/batch_normalization_11/batchnorm/ReadVariableOp¯
3sequential_2/batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:25
3sequential_2/batch_normalization_11/batchnorm/add/y
1sequential_2/batch_normalization_11/batchnorm/addAddV2Dsequential_2/batch_normalization_11/batchnorm/ReadVariableOp:value:0<sequential_2/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes	
:23
1sequential_2/batch_normalization_11/batchnorm/addÐ
3sequential_2/batch_normalization_11/batchnorm/RsqrtRsqrt5sequential_2/batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes	
:25
3sequential_2/batch_normalization_11/batchnorm/Rsqrt
@sequential_2/batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_2_batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02B
@sequential_2/batch_normalization_11/batchnorm/mul/ReadVariableOp
1sequential_2/batch_normalization_11/batchnorm/mulMul7sequential_2/batch_normalization_11/batchnorm/Rsqrt:y:0Hsequential_2/batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:23
1sequential_2/batch_normalization_11/batchnorm/mul
3sequential_2/batch_normalization_11/batchnorm/mul_1Mul'sequential_2/conv1d_11/BiasAdd:output:05sequential_2/batch_normalization_11/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'25
3sequential_2/batch_normalization_11/batchnorm/mul_1
>sequential_2/batch_normalization_11/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_2_batch_normalization_11_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02@
>sequential_2/batch_normalization_11/batchnorm/ReadVariableOp_1
3sequential_2/batch_normalization_11/batchnorm/mul_2MulFsequential_2/batch_normalization_11/batchnorm/ReadVariableOp_1:value:05sequential_2/batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes	
:25
3sequential_2/batch_normalization_11/batchnorm/mul_2
>sequential_2/batch_normalization_11/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_2_batch_normalization_11_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02@
>sequential_2/batch_normalization_11/batchnorm/ReadVariableOp_2
1sequential_2/batch_normalization_11/batchnorm/subSubFsequential_2/batch_normalization_11/batchnorm/ReadVariableOp_2:value:07sequential_2/batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:23
1sequential_2/batch_normalization_11/batchnorm/sub
3sequential_2/batch_normalization_11/batchnorm/add_1AddV27sequential_2/batch_normalization_11/batchnorm/mul_1:z:05sequential_2/batch_normalization_11/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'25
3sequential_2/batch_normalization_11/batchnorm/add_1º
sequential_2/activation_11/ReluRelu7sequential_2/batch_normalization_11/batchnorm/add_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2!
sequential_2/activation_11/Relu
,sequential_2/max_pooling1d_11/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_2/max_pooling1d_11/ExpandDims/dim
(sequential_2/max_pooling1d_11/ExpandDims
ExpandDims-sequential_2/activation_11/Relu:activations:05sequential_2/max_pooling1d_11/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2*
(sequential_2/max_pooling1d_11/ExpandDimsú
%sequential_2/max_pooling1d_11/MaxPoolMaxPool1sequential_2/max_pooling1d_11/ExpandDims:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
ksize
*
paddingVALID*
strides
2'
%sequential_2/max_pooling1d_11/MaxPool×
%sequential_2/max_pooling1d_11/SqueezeSqueeze.sequential_2/max_pooling1d_11/MaxPool:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
squeeze_dims
2'
%sequential_2/max_pooling1d_11/Squeeze
,sequential_2/lambda_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,sequential_2/lambda_2/Mean/reduction_indicesÚ
sequential_2/lambda_2/MeanMean.sequential_2/max_pooling1d_11/Squeeze:output:05sequential_2/lambda_2/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/lambda_2/MeanÍ
*sequential_2/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_2_dense_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02,
*sequential_2/dense_2/MatMul/ReadVariableOpÏ
sequential_2/dense_2/MatMulMatMul#sequential_2/lambda_2/Mean:output:02sequential_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/dense_2/MatMulË
+sequential_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_2/dense_2/BiasAdd/ReadVariableOpÕ
sequential_2/dense_2/BiasAddBiasAdd%sequential_2/dense_2/MatMul:product:03sequential_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/dense_2/BiasAdd 
sequential_2/dense_2/SoftmaxSoftmax%sequential_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_2/dense_2/Softmax
IdentityIdentity&sequential_2/dense_2/Softmax:softmax:0=^sequential_2/batch_normalization_10/batchnorm/ReadVariableOp?^sequential_2/batch_normalization_10/batchnorm/ReadVariableOp_1?^sequential_2/batch_normalization_10/batchnorm/ReadVariableOp_2A^sequential_2/batch_normalization_10/batchnorm/mul/ReadVariableOp=^sequential_2/batch_normalization_11/batchnorm/ReadVariableOp?^sequential_2/batch_normalization_11/batchnorm/ReadVariableOp_1?^sequential_2/batch_normalization_11/batchnorm/ReadVariableOp_2A^sequential_2/batch_normalization_11/batchnorm/mul/ReadVariableOp<^sequential_2/batch_normalization_8/batchnorm/ReadVariableOp>^sequential_2/batch_normalization_8/batchnorm/ReadVariableOp_1>^sequential_2/batch_normalization_8/batchnorm/ReadVariableOp_2@^sequential_2/batch_normalization_8/batchnorm/mul/ReadVariableOp<^sequential_2/batch_normalization_9/batchnorm/ReadVariableOp>^sequential_2/batch_normalization_9/batchnorm/ReadVariableOp_1>^sequential_2/batch_normalization_9/batchnorm/ReadVariableOp_2@^sequential_2/batch_normalization_9/batchnorm/mul/ReadVariableOp.^sequential_2/conv1d_10/BiasAdd/ReadVariableOp:^sequential_2/conv1d_10/conv1d/ExpandDims_1/ReadVariableOp.^sequential_2/conv1d_11/BiasAdd/ReadVariableOp:^sequential_2/conv1d_11/conv1d/ExpandDims_1/ReadVariableOp-^sequential_2/conv1d_8/BiasAdd/ReadVariableOp9^sequential_2/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp-^sequential_2/conv1d_9/BiasAdd/ReadVariableOp9^sequential_2/conv1d_9/conv1d/ExpandDims_1/ReadVariableOp,^sequential_2/dense_2/BiasAdd/ReadVariableOp+^sequential_2/dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*
_input_shapes
:ÿÿÿÿÿÿÿÿÿN::::::::::::::::::::::::::2|
<sequential_2/batch_normalization_10/batchnorm/ReadVariableOp<sequential_2/batch_normalization_10/batchnorm/ReadVariableOp2
>sequential_2/batch_normalization_10/batchnorm/ReadVariableOp_1>sequential_2/batch_normalization_10/batchnorm/ReadVariableOp_12
>sequential_2/batch_normalization_10/batchnorm/ReadVariableOp_2>sequential_2/batch_normalization_10/batchnorm/ReadVariableOp_22
@sequential_2/batch_normalization_10/batchnorm/mul/ReadVariableOp@sequential_2/batch_normalization_10/batchnorm/mul/ReadVariableOp2|
<sequential_2/batch_normalization_11/batchnorm/ReadVariableOp<sequential_2/batch_normalization_11/batchnorm/ReadVariableOp2
>sequential_2/batch_normalization_11/batchnorm/ReadVariableOp_1>sequential_2/batch_normalization_11/batchnorm/ReadVariableOp_12
>sequential_2/batch_normalization_11/batchnorm/ReadVariableOp_2>sequential_2/batch_normalization_11/batchnorm/ReadVariableOp_22
@sequential_2/batch_normalization_11/batchnorm/mul/ReadVariableOp@sequential_2/batch_normalization_11/batchnorm/mul/ReadVariableOp2z
;sequential_2/batch_normalization_8/batchnorm/ReadVariableOp;sequential_2/batch_normalization_8/batchnorm/ReadVariableOp2~
=sequential_2/batch_normalization_8/batchnorm/ReadVariableOp_1=sequential_2/batch_normalization_8/batchnorm/ReadVariableOp_12~
=sequential_2/batch_normalization_8/batchnorm/ReadVariableOp_2=sequential_2/batch_normalization_8/batchnorm/ReadVariableOp_22
?sequential_2/batch_normalization_8/batchnorm/mul/ReadVariableOp?sequential_2/batch_normalization_8/batchnorm/mul/ReadVariableOp2z
;sequential_2/batch_normalization_9/batchnorm/ReadVariableOp;sequential_2/batch_normalization_9/batchnorm/ReadVariableOp2~
=sequential_2/batch_normalization_9/batchnorm/ReadVariableOp_1=sequential_2/batch_normalization_9/batchnorm/ReadVariableOp_12~
=sequential_2/batch_normalization_9/batchnorm/ReadVariableOp_2=sequential_2/batch_normalization_9/batchnorm/ReadVariableOp_22
?sequential_2/batch_normalization_9/batchnorm/mul/ReadVariableOp?sequential_2/batch_normalization_9/batchnorm/mul/ReadVariableOp2^
-sequential_2/conv1d_10/BiasAdd/ReadVariableOp-sequential_2/conv1d_10/BiasAdd/ReadVariableOp2v
9sequential_2/conv1d_10/conv1d/ExpandDims_1/ReadVariableOp9sequential_2/conv1d_10/conv1d/ExpandDims_1/ReadVariableOp2^
-sequential_2/conv1d_11/BiasAdd/ReadVariableOp-sequential_2/conv1d_11/BiasAdd/ReadVariableOp2v
9sequential_2/conv1d_11/conv1d/ExpandDims_1/ReadVariableOp9sequential_2/conv1d_11/conv1d/ExpandDims_1/ReadVariableOp2\
,sequential_2/conv1d_8/BiasAdd/ReadVariableOp,sequential_2/conv1d_8/BiasAdd/ReadVariableOp2t
8sequential_2/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp8sequential_2/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2\
,sequential_2/conv1d_9/BiasAdd/ReadVariableOp,sequential_2/conv1d_9/BiasAdd/ReadVariableOp2t
8sequential_2/conv1d_9/conv1d/ExpandDims_1/ReadVariableOp8sequential_2/conv1d_9/conv1d/ExpandDims_1/ReadVariableOp2Z
+sequential_2/dense_2/BiasAdd/ReadVariableOp+sequential_2/dense_2/BiasAdd/ReadVariableOp2X
*sequential_2/dense_2/MatMul/ReadVariableOp*sequential_2/dense_2/MatMul/ReadVariableOp:\ X
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
(
_user_specified_nameconv1d_8_input
ú

P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_5858

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1á
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
¨
5__inference_batch_normalization_10_layer_call_fn_7755

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_52972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
ÿ
+__inference_sequential_2_layer_call_fn_6536
conv1d_8_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24
identity¢StatefulPartitionedCallÅ
StatefulPartitionedCallStatefulPartitionedCallconv1d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_64812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*
_input_shapes
:ÿÿÿÿÿÿÿÿÿN::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
(
_user_specified_nameconv1d_8_input
½0
Ã
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_5838

inputs
assignmovingavg_5813
assignmovingavg_1_5819)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradientª
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/5813*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_5813*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/5813*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/5813*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_5813AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/5813*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/5819*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_5819*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/5819*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/5819*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_5819AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/5819*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¹
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼0
Â
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_5696

inputs
assignmovingavg_5671
assignmovingavg_1_5677)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradientª
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/5671*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_5671*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/5671*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/5671*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_5671AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/5671*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/5677*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_5677*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/5677*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/5677*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_5677AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/5677*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
batchnorm/add_1¹
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿñ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
 
_user_specified_nameinputs
¢

O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7309

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1é
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
H
,__inference_activation_11_layer_call_fn_7975

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_11_layer_call_and_return_conditional_losses_60412
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ':T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'
 
_user_specified_nameinputs
í0
Â
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7499

inputs
assignmovingavg_7474
assignmovingavg_1_7480)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradient²
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7474*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7474*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7474*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7474*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7474AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7474*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7480*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7480*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7480*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7480*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7480AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7480*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Á
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô
ö
"__inference_signature_wrapper_6627
conv1d_8_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv1d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_48582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*
_input_shapes
:ÿÿÿÿÿÿÿÿÿN::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
(
_user_specified_nameconv1d_8_input
Ì
b
F__inference_activation_8_layer_call_and_return_conditional_losses_5615

inputs
identityT
ReluReluinputs*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
Relul
IdentityIdentityRelu:activations:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÄ:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_nameinputs

é
F__inference_sequential_2_layer_call_and_return_conditional_losses_7021

inputs8
4conv1d_8_conv1d_expanddims_1_readvariableop_resource,
(conv1d_8_biasadd_readvariableop_resource;
7batch_normalization_8_batchnorm_readvariableop_resource?
;batch_normalization_8_batchnorm_mul_readvariableop_resource=
9batch_normalization_8_batchnorm_readvariableop_1_resource=
9batch_normalization_8_batchnorm_readvariableop_2_resource8
4conv1d_9_conv1d_expanddims_1_readvariableop_resource,
(conv1d_9_biasadd_readvariableop_resource;
7batch_normalization_9_batchnorm_readvariableop_resource?
;batch_normalization_9_batchnorm_mul_readvariableop_resource=
9batch_normalization_9_batchnorm_readvariableop_1_resource=
9batch_normalization_9_batchnorm_readvariableop_2_resource9
5conv1d_10_conv1d_expanddims_1_readvariableop_resource-
)conv1d_10_biasadd_readvariableop_resource<
8batch_normalization_10_batchnorm_readvariableop_resource@
<batch_normalization_10_batchnorm_mul_readvariableop_resource>
:batch_normalization_10_batchnorm_readvariableop_1_resource>
:batch_normalization_10_batchnorm_readvariableop_2_resource9
5conv1d_11_conv1d_expanddims_1_readvariableop_resource-
)conv1d_11_biasadd_readvariableop_resource<
8batch_normalization_11_batchnorm_readvariableop_resource@
<batch_normalization_11_batchnorm_mul_readvariableop_resource>
:batch_normalization_11_batchnorm_readvariableop_1_resource>
:batch_normalization_11_batchnorm_readvariableop_2_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identity¢/batch_normalization_10/batchnorm/ReadVariableOp¢1batch_normalization_10/batchnorm/ReadVariableOp_1¢1batch_normalization_10/batchnorm/ReadVariableOp_2¢3batch_normalization_10/batchnorm/mul/ReadVariableOp¢/batch_normalization_11/batchnorm/ReadVariableOp¢1batch_normalization_11/batchnorm/ReadVariableOp_1¢1batch_normalization_11/batchnorm/ReadVariableOp_2¢3batch_normalization_11/batchnorm/mul/ReadVariableOp¢.batch_normalization_8/batchnorm/ReadVariableOp¢0batch_normalization_8/batchnorm/ReadVariableOp_1¢0batch_normalization_8/batchnorm/ReadVariableOp_2¢2batch_normalization_8/batchnorm/mul/ReadVariableOp¢.batch_normalization_9/batchnorm/ReadVariableOp¢0batch_normalization_9/batchnorm/ReadVariableOp_1¢0batch_normalization_9/batchnorm/ReadVariableOp_2¢2batch_normalization_9/batchnorm/mul/ReadVariableOp¢ conv1d_10/BiasAdd/ReadVariableOp¢,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp¢2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¢ conv1d_11/BiasAdd/ReadVariableOp¢,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp¢2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¢conv1d_8/BiasAdd/ReadVariableOp¢+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp¢1conv1d_8/kernel/Regularizer/Square/ReadVariableOp¢conv1d_9/BiasAdd/ReadVariableOp¢+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp¢1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp
conv1d_8/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_8/conv1d/ExpandDims/dim²
conv1d_8/conv1d/ExpandDims
ExpandDimsinputs'conv1d_8/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿN2
conv1d_8/conv1d/ExpandDimsÔ
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_8_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:P*
dtype02-
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_8/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_8/conv1d/ExpandDims_1/dimÜ
conv1d_8/conv1d/ExpandDims_1
ExpandDims3conv1d_8/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_8/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:P2
conv1d_8/conv1d/ExpandDims_1Ü
conv1d_8/conv1dConv2D#conv1d_8/conv1d/ExpandDims:output:0%conv1d_8/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
paddingSAME*
strides
2
conv1d_8/conv1d¯
conv1d_8/conv1d/SqueezeSqueezeconv1d_8/conv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_8/conv1d/Squeeze¨
conv1d_8/BiasAdd/ReadVariableOpReadVariableOp(conv1d_8_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv1d_8/BiasAdd/ReadVariableOp²
conv1d_8/BiasAddBiasAdd conv1d_8/conv1d/Squeeze:output:0'conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
conv1d_8/BiasAddÕ
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_8/batchnorm/ReadVariableOp
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_8/batchnorm/add/yá
#batch_normalization_8/batchnorm/addAddV26batch_normalization_8/batchnorm/ReadVariableOp:value:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_8/batchnorm/add¦
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_8/batchnorm/Rsqrtá
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_8/batchnorm/mul/ReadVariableOpÞ
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_8/batchnorm/mulÑ
%batch_normalization_8/batchnorm/mul_1Mulconv1d_8/BiasAdd:output:0'batch_normalization_8/batchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2'
%batch_normalization_8/batchnorm/mul_1Û
0batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype022
0batch_normalization_8/batchnorm/ReadVariableOp_1Þ
%batch_normalization_8/batchnorm/mul_2Mul8batch_normalization_8/batchnorm/ReadVariableOp_1:value:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_8/batchnorm/mul_2Û
0batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype022
0batch_normalization_8/batchnorm/ReadVariableOp_2Ü
#batch_normalization_8/batchnorm/subSub8batch_normalization_8/batchnorm/ReadVariableOp_2:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_8/batchnorm/subã
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2'
%batch_normalization_8/batchnorm/add_1
activation_8/ReluRelu)batch_normalization_8/batchnorm/add_1:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
activation_8/Relu
max_pooling1d_8/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_8/ExpandDims/dimÌ
max_pooling1d_8/ExpandDims
ExpandDimsactivation_8/Relu:activations:0'max_pooling1d_8/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
max_pooling1d_8/ExpandDimsÑ
max_pooling1d_8/MaxPoolMaxPool#max_pooling1d_8/ExpandDims:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
ksize
*
paddingVALID*
strides
2
max_pooling1d_8/MaxPool®
max_pooling1d_8/SqueezeSqueeze max_pooling1d_8/MaxPool:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
squeeze_dims
2
max_pooling1d_8/Squeeze
conv1d_9/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_9/conv1d/ExpandDims/dimÍ
conv1d_9/conv1d/ExpandDims
ExpandDims max_pooling1d_8/Squeeze:output:0'conv1d_9/conv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
conv1d_9/conv1d/ExpandDimsÕ
+conv1d_9/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_9_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02-
+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_9/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_9/conv1d/ExpandDims_1/dimÝ
conv1d_9/conv1d/ExpandDims_1
ExpandDims3conv1d_9/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_9/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2
conv1d_9/conv1d/ExpandDims_1Ü
conv1d_9/conv1dConv2D#conv1d_9/conv1d/ExpandDims:output:0%conv1d_9/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
paddingSAME*
strides
2
conv1d_9/conv1d¯
conv1d_9/conv1d/SqueezeSqueezeconv1d_9/conv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_9/conv1d/Squeeze¨
conv1d_9/BiasAdd/ReadVariableOpReadVariableOp(conv1d_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02!
conv1d_9/BiasAdd/ReadVariableOp²
conv1d_9/BiasAddBiasAdd conv1d_9/conv1d/Squeeze:output:0'conv1d_9/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
conv1d_9/BiasAddÕ
.batch_normalization_9/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_9_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_9/batchnorm/ReadVariableOp
%batch_normalization_9/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_9/batchnorm/add/yá
#batch_normalization_9/batchnorm/addAddV26batch_normalization_9/batchnorm/ReadVariableOp:value:0.batch_normalization_9/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_9/batchnorm/add¦
%batch_normalization_9/batchnorm/RsqrtRsqrt'batch_normalization_9/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_9/batchnorm/Rsqrtá
2batch_normalization_9/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_9_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_9/batchnorm/mul/ReadVariableOpÞ
#batch_normalization_9/batchnorm/mulMul)batch_normalization_9/batchnorm/Rsqrt:y:0:batch_normalization_9/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_9/batchnorm/mulÑ
%batch_normalization_9/batchnorm/mul_1Mulconv1d_9/BiasAdd:output:0'batch_normalization_9/batchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2'
%batch_normalization_9/batchnorm/mul_1Û
0batch_normalization_9/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_9_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype022
0batch_normalization_9/batchnorm/ReadVariableOp_1Þ
%batch_normalization_9/batchnorm/mul_2Mul8batch_normalization_9/batchnorm/ReadVariableOp_1:value:0'batch_normalization_9/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_9/batchnorm/mul_2Û
0batch_normalization_9/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_9_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype022
0batch_normalization_9/batchnorm/ReadVariableOp_2Ü
#batch_normalization_9/batchnorm/subSub8batch_normalization_9/batchnorm/ReadVariableOp_2:value:0)batch_normalization_9/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_9/batchnorm/subã
%batch_normalization_9/batchnorm/add_1AddV2)batch_normalization_9/batchnorm/mul_1:z:0'batch_normalization_9/batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2'
%batch_normalization_9/batchnorm/add_1
activation_9/ReluRelu)batch_normalization_9/batchnorm/add_1:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
activation_9/Relu
max_pooling1d_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_9/ExpandDims/dimÌ
max_pooling1d_9/ExpandDims
ExpandDimsactivation_9/Relu:activations:0'max_pooling1d_9/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
max_pooling1d_9/ExpandDimsÑ
max_pooling1d_9/MaxPoolMaxPool#max_pooling1d_9/ExpandDims:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling1d_9/MaxPool®
max_pooling1d_9/SqueezeSqueeze max_pooling1d_9/MaxPool:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2
max_pooling1d_9/Squeeze
conv1d_10/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_10/conv1d/ExpandDims/dimÐ
conv1d_10/conv1d/ExpandDims
ExpandDims max_pooling1d_9/Squeeze:output:0(conv1d_10/conv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_10/conv1d/ExpandDimsØ
,conv1d_10/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_10_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02.
,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_10/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_10/conv1d/ExpandDims_1/dimá
conv1d_10/conv1d/ExpandDims_1
ExpandDims4conv1d_10/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_10/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2
conv1d_10/conv1d/ExpandDims_1à
conv1d_10/conv1dConv2D$conv1d_10/conv1d/ExpandDims:output:0&conv1d_10/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d_10/conv1d²
conv1d_10/conv1d/SqueezeSqueezeconv1d_10/conv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_10/conv1d/Squeeze«
 conv1d_10/BiasAdd/ReadVariableOpReadVariableOp)conv1d_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv1d_10/BiasAdd/ReadVariableOp¶
conv1d_10/BiasAddBiasAdd!conv1d_10/conv1d/Squeeze:output:0(conv1d_10/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_10/BiasAddØ
/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype021
/batch_normalization_10/batchnorm/ReadVariableOp
&batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_10/batchnorm/add/yå
$batch_normalization_10/batchnorm/addAddV27batch_normalization_10/batchnorm/ReadVariableOp:value:0/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2&
$batch_normalization_10/batchnorm/add©
&batch_normalization_10/batchnorm/RsqrtRsqrt(batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_10/batchnorm/Rsqrtä
3batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype025
3batch_normalization_10/batchnorm/mul/ReadVariableOpâ
$batch_normalization_10/batchnorm/mulMul*batch_normalization_10/batchnorm/Rsqrt:y:0;batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2&
$batch_normalization_10/batchnorm/mulÕ
&batch_normalization_10/batchnorm/mul_1Mulconv1d_10/BiasAdd:output:0(batch_normalization_10/batchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_10/batchnorm/mul_1Þ
1batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype023
1batch_normalization_10/batchnorm/ReadVariableOp_1â
&batch_normalization_10/batchnorm/mul_2Mul9batch_normalization_10/batchnorm/ReadVariableOp_1:value:0(batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_10/batchnorm/mul_2Þ
1batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype023
1batch_normalization_10/batchnorm/ReadVariableOp_2à
$batch_normalization_10/batchnorm/subSub9batch_normalization_10/batchnorm/ReadVariableOp_2:value:0*batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2&
$batch_normalization_10/batchnorm/subç
&batch_normalization_10/batchnorm/add_1AddV2*batch_normalization_10/batchnorm/mul_1:z:0(batch_normalization_10/batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_10/batchnorm/add_1
activation_10/ReluRelu*batch_normalization_10/batchnorm/add_1:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
activation_10/Relu
max_pooling1d_10/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
max_pooling1d_10/ExpandDims/dimÐ
max_pooling1d_10/ExpandDims
ExpandDims activation_10/Relu:activations:0(max_pooling1d_10/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
max_pooling1d_10/ExpandDimsÓ
max_pooling1d_10/MaxPoolMaxPool$max_pooling1d_10/ExpandDims:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
ksize
*
paddingVALID*
strides
2
max_pooling1d_10/MaxPool°
max_pooling1d_10/SqueezeSqueeze!max_pooling1d_10/MaxPool:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
squeeze_dims
2
max_pooling1d_10/Squeeze
conv1d_11/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2!
conv1d_11/conv1d/ExpandDims/dimÐ
conv1d_11/conv1d/ExpandDims
ExpandDims!max_pooling1d_10/Squeeze:output:0(conv1d_11/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
conv1d_11/conv1d/ExpandDimsØ
,conv1d_11/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_11_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02.
,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp
!conv1d_11/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_11/conv1d/ExpandDims_1/dimá
conv1d_11/conv1d/ExpandDims_1
ExpandDims4conv1d_11/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_11/conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2
conv1d_11/conv1d/ExpandDims_1ß
conv1d_11/conv1dConv2D$conv1d_11/conv1d/ExpandDims:output:0&conv1d_11/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
paddingSAME*
strides
2
conv1d_11/conv1d±
conv1d_11/conv1d/SqueezeSqueezeconv1d_11/conv1d:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_11/conv1d/Squeeze«
 conv1d_11/BiasAdd/ReadVariableOpReadVariableOp)conv1d_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 conv1d_11/BiasAdd/ReadVariableOpµ
conv1d_11/BiasAddBiasAdd!conv1d_11/conv1d/Squeeze:output:0(conv1d_11/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
conv1d_11/BiasAddØ
/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype021
/batch_normalization_11/batchnorm/ReadVariableOp
&batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_11/batchnorm/add/yå
$batch_normalization_11/batchnorm/addAddV27batch_normalization_11/batchnorm/ReadVariableOp:value:0/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2&
$batch_normalization_11/batchnorm/add©
&batch_normalization_11/batchnorm/RsqrtRsqrt(batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_11/batchnorm/Rsqrtä
3batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype025
3batch_normalization_11/batchnorm/mul/ReadVariableOpâ
$batch_normalization_11/batchnorm/mulMul*batch_normalization_11/batchnorm/Rsqrt:y:0;batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2&
$batch_normalization_11/batchnorm/mulÔ
&batch_normalization_11/batchnorm/mul_1Mulconv1d_11/BiasAdd:output:0(batch_normalization_11/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2(
&batch_normalization_11/batchnorm/mul_1Þ
1batch_normalization_11/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_11_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype023
1batch_normalization_11/batchnorm/ReadVariableOp_1â
&batch_normalization_11/batchnorm/mul_2Mul9batch_normalization_11/batchnorm/ReadVariableOp_1:value:0(batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_11/batchnorm/mul_2Þ
1batch_normalization_11/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_11_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype023
1batch_normalization_11/batchnorm/ReadVariableOp_2à
$batch_normalization_11/batchnorm/subSub9batch_normalization_11/batchnorm/ReadVariableOp_2:value:0*batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2&
$batch_normalization_11/batchnorm/subæ
&batch_normalization_11/batchnorm/add_1AddV2*batch_normalization_11/batchnorm/mul_1:z:0(batch_normalization_11/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2(
&batch_normalization_11/batchnorm/add_1
activation_11/ReluRelu*batch_normalization_11/batchnorm/add_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
activation_11/Relu
max_pooling1d_11/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2!
max_pooling1d_11/ExpandDims/dimÏ
max_pooling1d_11/ExpandDims
ExpandDims activation_11/Relu:activations:0(max_pooling1d_11/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
max_pooling1d_11/ExpandDimsÓ
max_pooling1d_11/MaxPoolMaxPool$max_pooling1d_11/ExpandDims:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
ksize
*
paddingVALID*
strides
2
max_pooling1d_11/MaxPool°
max_pooling1d_11/SqueezeSqueeze!max_pooling1d_11/MaxPool:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
squeeze_dims
2
max_pooling1d_11/Squeeze
lambda_2/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2!
lambda_2/Mean/reduction_indices¦
lambda_2/MeanMean!max_pooling1d_11/Squeeze:output:0(lambda_2/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lambda_2/Mean¦
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
dense_2/MatMul/ReadVariableOp
dense_2/MatMulMatMullambda_2/Mean:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/MatMul¤
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp¡
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/Softmaxà
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_8_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:P*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp»
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:P2$
"conv1d_8/kernel/Regularizer/Square
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const¾
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_8/kernel/Regularizer/mul/xÀ
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mulá
1conv1d_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_9_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype023
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¼
"conv1d_9/kernel/Regularizer/SquareSquare9conv1d_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2$
"conv1d_9/kernel/Regularizer/Square
!conv1d_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_9/kernel/Regularizer/Const¾
conv1d_9/kernel/Regularizer/SumSum&conv1d_9/kernel/Regularizer/Square:y:0*conv1d_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/Sum
!conv1d_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_9/kernel/Regularizer/mul/xÀ
conv1d_9/kernel/Regularizer/mulMul*conv1d_9/kernel/Regularizer/mul/x:output:0(conv1d_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/mulä
2conv1d_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5conv1d_10_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype024
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_10/kernel/Regularizer/SquareSquare:conv1d_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_10/kernel/Regularizer/Square
"conv1d_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_10/kernel/Regularizer/ConstÂ
 conv1d_10/kernel/Regularizer/SumSum'conv1d_10/kernel/Regularizer/Square:y:0+conv1d_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/Sum
"conv1d_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_10/kernel/Regularizer/mul/xÄ
 conv1d_10/kernel/Regularizer/mulMul+conv1d_10/kernel/Regularizer/mul/x:output:0)conv1d_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/mulä
2conv1d_11/kernel/Regularizer/Square/ReadVariableOpReadVariableOp5conv1d_11_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype024
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_11/kernel/Regularizer/SquareSquare:conv1d_11/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_11/kernel/Regularizer/Square
"conv1d_11/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_11/kernel/Regularizer/ConstÂ
 conv1d_11/kernel/Regularizer/SumSum'conv1d_11/kernel/Regularizer/Square:y:0+conv1d_11/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/Sum
"conv1d_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_11/kernel/Regularizer/mul/xÄ
 conv1d_11/kernel/Regularizer/mulMul+conv1d_11/kernel/Regularizer/mul/x:output:0)conv1d_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/mulü
IdentityIdentitydense_2/Softmax:softmax:00^batch_normalization_10/batchnorm/ReadVariableOp2^batch_normalization_10/batchnorm/ReadVariableOp_12^batch_normalization_10/batchnorm/ReadVariableOp_24^batch_normalization_10/batchnorm/mul/ReadVariableOp0^batch_normalization_11/batchnorm/ReadVariableOp2^batch_normalization_11/batchnorm/ReadVariableOp_12^batch_normalization_11/batchnorm/ReadVariableOp_24^batch_normalization_11/batchnorm/mul/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp1^batch_normalization_8/batchnorm/ReadVariableOp_11^batch_normalization_8/batchnorm/ReadVariableOp_23^batch_normalization_8/batchnorm/mul/ReadVariableOp/^batch_normalization_9/batchnorm/ReadVariableOp1^batch_normalization_9/batchnorm/ReadVariableOp_11^batch_normalization_9/batchnorm/ReadVariableOp_23^batch_normalization_9/batchnorm/mul/ReadVariableOp!^conv1d_10/BiasAdd/ReadVariableOp-^conv1d_10/conv1d/ExpandDims_1/ReadVariableOp3^conv1d_10/kernel/Regularizer/Square/ReadVariableOp!^conv1d_11/BiasAdd/ReadVariableOp-^conv1d_11/conv1d/ExpandDims_1/ReadVariableOp3^conv1d_11/kernel/Regularizer/Square/ReadVariableOp ^conv1d_8/BiasAdd/ReadVariableOp,^conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp ^conv1d_9/BiasAdd/ReadVariableOp,^conv1d_9/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_9/kernel/Regularizer/Square/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*
_input_shapes
:ÿÿÿÿÿÿÿÿÿN::::::::::::::::::::::::::2b
/batch_normalization_10/batchnorm/ReadVariableOp/batch_normalization_10/batchnorm/ReadVariableOp2f
1batch_normalization_10/batchnorm/ReadVariableOp_11batch_normalization_10/batchnorm/ReadVariableOp_12f
1batch_normalization_10/batchnorm/ReadVariableOp_21batch_normalization_10/batchnorm/ReadVariableOp_22j
3batch_normalization_10/batchnorm/mul/ReadVariableOp3batch_normalization_10/batchnorm/mul/ReadVariableOp2b
/batch_normalization_11/batchnorm/ReadVariableOp/batch_normalization_11/batchnorm/ReadVariableOp2f
1batch_normalization_11/batchnorm/ReadVariableOp_11batch_normalization_11/batchnorm/ReadVariableOp_12f
1batch_normalization_11/batchnorm/ReadVariableOp_21batch_normalization_11/batchnorm/ReadVariableOp_22j
3batch_normalization_11/batchnorm/mul/ReadVariableOp3batch_normalization_11/batchnorm/mul/ReadVariableOp2`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2d
0batch_normalization_8/batchnorm/ReadVariableOp_10batch_normalization_8/batchnorm/ReadVariableOp_12d
0batch_normalization_8/batchnorm/ReadVariableOp_20batch_normalization_8/batchnorm/ReadVariableOp_22h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2`
.batch_normalization_9/batchnorm/ReadVariableOp.batch_normalization_9/batchnorm/ReadVariableOp2d
0batch_normalization_9/batchnorm/ReadVariableOp_10batch_normalization_9/batchnorm/ReadVariableOp_12d
0batch_normalization_9/batchnorm/ReadVariableOp_20batch_normalization_9/batchnorm/ReadVariableOp_22h
2batch_normalization_9/batchnorm/mul/ReadVariableOp2batch_normalization_9/batchnorm/mul/ReadVariableOp2D
 conv1d_10/BiasAdd/ReadVariableOp conv1d_10/BiasAdd/ReadVariableOp2\
,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp,conv1d_10/conv1d/ExpandDims_1/ReadVariableOp2h
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_11/BiasAdd/ReadVariableOp conv1d_11/BiasAdd/ReadVariableOp2\
,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp,conv1d_11/conv1d/ExpandDims_1/ReadVariableOp2h
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2B
conv1d_8/BiasAdd/ReadVariableOpconv1d_8/BiasAdd/ReadVariableOp2Z
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp2B
conv1d_9/BiasAdd/ReadVariableOpconv1d_9/BiasAdd/ReadVariableOp2Z
+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp+conv1d_9/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp1conv1d_9/kernel/Regularizer/Square/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
 
_user_specified_nameinputs
÷
K
/__inference_max_pooling1d_11_layer_call_fn_5478

inputs
identityÞ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_54722
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù

O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_5716

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
batchnorm/add_1á
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿñ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
 
_user_specified_nameinputs
½0
Ã
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7627

inputs
assignmovingavg_7602
assignmovingavg_1_7608)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradientª
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7602*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7602*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7602*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7602*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7602AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7602*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7608*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7608*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7608*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7608*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7608AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7608*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¹
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
«
C__inference_conv1d_10_layer_call_and_return_conditional_losses_5787

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOp¢2conv1d_10/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDimsº
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim¹
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2
conv1d/ExpandDims_1¸
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddÚ
2conv1d_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype024
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_10/kernel/Regularizer/SquareSquare:conv1d_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_10/kernel/Regularizer/Square
"conv1d_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_10/kernel/Regularizer/ConstÂ
 conv1d_10/kernel/Regularizer/SumSum'conv1d_10/kernel/Regularizer/Square:y:0+conv1d_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/Sum
"conv1d_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_10/kernel/Regularizer/mul/xÄ
 conv1d_10/kernel/Regularizer/mulMul+conv1d_10/kernel/Regularizer/mul/x:output:0)conv1d_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/mulÝ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp3^conv1d_10/kernel/Regularizer/Square/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2h
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2conv1d_10/kernel/Regularizer/Square/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ
J
.__inference_max_pooling1d_8_layer_call_fn_5013

inputs
identityÝ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_50072
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ
J
.__inference_max_pooling1d_9_layer_call_fn_5168

inputs
identityÝ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling1d_9_layer_call_and_return_conditional_losses_51622
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò
£
__inference_loss_fn_2_8050?
;conv1d_10_kernel_regularizer_square_readvariableop_resource
identity¢2conv1d_10/kernel/Regularizer/Square/ReadVariableOpê
2conv1d_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv1d_10_kernel_regularizer_square_readvariableop_resource*$
_output_shapes
:*
dtype024
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_10/kernel/Regularizer/SquareSquare:conv1d_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_10/kernel/Regularizer/Square
"conv1d_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_10/kernel/Regularizer/ConstÂ
 conv1d_10/kernel/Regularizer/SumSum'conv1d_10/kernel/Regularizer/Square:y:0+conv1d_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/Sum
"conv1d_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_10/kernel/Regularizer/mul/xÄ
 conv1d_10/kernel/Regularizer/mulMul+conv1d_10/kernel/Regularizer/mul/x:output:0)conv1d_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/mul
IdentityIdentity$conv1d_10/kernel/Regularizer/mul:z:03^conv1d_10/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2conv1d_10/kernel/Regularizer/Square/ReadVariableOp
Ö
©
B__inference_conv1d_8_layer_call_and_return_conditional_losses_5503

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOp¢1conv1d_8/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿN2
conv1d/ExpandDims¹
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:P*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim¸
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:P2
conv1d/ExpandDims_1¸
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
BiasAdd×
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:P*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp»
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:P2$
"conv1d_8/kernel/Regularizer/Square
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const¾
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_8/kernel/Regularizer/mul/xÀ
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mulÜ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿN::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
 
_user_specified_nameinputs
¢

O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7519

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1é
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö	
Ú
A__inference_dense_2_layer_call_and_return_conditional_losses_8008

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
©
B__inference_conv1d_9_layer_call_and_return_conditional_losses_7372

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOp¢1conv1d_9/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
conv1d/ExpandDimsº
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim¹
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2
conv1d/ExpandDims_1¸
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2	
BiasAddØ
1conv1d_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype023
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¼
"conv1d_9/kernel/Regularizer/SquareSquare9conv1d_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2$
"conv1d_9/kernel/Regularizer/Square
!conv1d_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_9/kernel/Regularizer/Const¾
conv1d_9/kernel/Regularizer/SumSum&conv1d_9/kernel/Regularizer/Square:y:0*conv1d_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/Sum
!conv1d_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_9/kernel/Regularizer/mul/xÀ
conv1d_9/kernel/Regularizer/mulMul*conv1d_9/kernel/Regularizer/mul/x:output:0(conv1d_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/mulÜ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp2^conv1d_9/kernel/Regularizer/Square/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿñ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp1conv1d_9/kernel/Regularizer/Square/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
 
_user_specified_nameinputs
£

P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_5452

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1é
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í0
Â
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_5109

inputs
assignmovingavg_5084
assignmovingavg_1_5090)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradient²
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/5084*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_5084*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/5084*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/5084*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_5084AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/5084*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/5090*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_5090*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/5090*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/5090*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_5090AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/5090*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Á
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7729

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1é
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì
«
C__inference_conv1d_11_layer_call_and_return_conditional_losses_7792

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOp¢2conv1d_11/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
conv1d/ExpandDimsº
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim¹
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2
conv1d/ExpandDims_1·
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2	
BiasAddÚ
2conv1d_11/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype024
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_11/kernel/Regularizer/SquareSquare:conv1d_11/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_11/kernel/Regularizer/Square
"conv1d_11/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_11/kernel/Regularizer/ConstÂ
 conv1d_11/kernel/Regularizer/SumSum'conv1d_11/kernel/Regularizer/Square:y:0+conv1d_11/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/Sum
"conv1d_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_11/kernel/Regularizer/mul/xÄ
 conv1d_11/kernel/Regularizer/mulMul+conv1d_11/kernel/Regularizer/mul/x:output:0)conv1d_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/mulÜ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp3^conv1d_11/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ'::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2h
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2conv1d_11/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'
 
_user_specified_nameinputs
æ
e
I__inference_max_pooling1d_9_layer_call_and_return_conditional_losses_5162

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

ExpandDims±
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_5297

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1é
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
|
ñ

F__inference_sequential_2_layer_call_and_return_conditional_losses_6481

inputs
conv1d_8_6386
conv1d_8_6388
batch_normalization_8_6391
batch_normalization_8_6393
batch_normalization_8_6395
batch_normalization_8_6397
conv1d_9_6402
conv1d_9_6404
batch_normalization_9_6407
batch_normalization_9_6409
batch_normalization_9_6411
batch_normalization_9_6413
conv1d_10_6418
conv1d_10_6420
batch_normalization_10_6423
batch_normalization_10_6425
batch_normalization_10_6427
batch_normalization_10_6429
conv1d_11_6434
conv1d_11_6436
batch_normalization_11_6439
batch_normalization_11_6441
batch_normalization_11_6443
batch_normalization_11_6445
dense_2_6451
dense_2_6453
identity¢.batch_normalization_10/StatefulPartitionedCall¢.batch_normalization_11/StatefulPartitionedCall¢-batch_normalization_8/StatefulPartitionedCall¢-batch_normalization_9/StatefulPartitionedCall¢!conv1d_10/StatefulPartitionedCall¢2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¢!conv1d_11/StatefulPartitionedCall¢2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¢ conv1d_8/StatefulPartitionedCall¢1conv1d_8/kernel/Regularizer/Square/ReadVariableOp¢ conv1d_9/StatefulPartitionedCall¢1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¢dense_2/StatefulPartitionedCall
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_8_6386conv1d_8_6388*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_8_layer_call_and_return_conditional_losses_55032"
 conv1d_8/StatefulPartitionedCall´
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0batch_normalization_8_6391batch_normalization_8_6393batch_normalization_8_6395batch_normalization_8_6397*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_55742/
-batch_normalization_8/StatefulPartitionedCall
activation_8/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_8_layer_call_and_return_conditional_losses_56152
activation_8/PartitionedCall
max_pooling1d_8/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_50072!
max_pooling1d_8/PartitionedCall¶
 conv1d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_8/PartitionedCall:output:0conv1d_9_6402conv1d_9_6404*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_9_layer_call_and_return_conditional_losses_56452"
 conv1d_9/StatefulPartitionedCall´
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)conv1d_9/StatefulPartitionedCall:output:0batch_normalization_9_6407batch_normalization_9_6409batch_normalization_9_6411batch_normalization_9_6413*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_57162/
-batch_normalization_9/StatefulPartitionedCall
activation_9/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_9_layer_call_and_return_conditional_losses_57572
activation_9/PartitionedCall
max_pooling1d_9/PartitionedCallPartitionedCall%activation_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling1d_9_layer_call_and_return_conditional_losses_51622!
max_pooling1d_9/PartitionedCall»
!conv1d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_9/PartitionedCall:output:0conv1d_10_6418conv1d_10_6420*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv1d_10_layer_call_and_return_conditional_losses_57872#
!conv1d_10/StatefulPartitionedCall¼
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv1d_10/StatefulPartitionedCall:output:0batch_normalization_10_6423batch_normalization_10_6425batch_normalization_10_6427batch_normalization_10_6429*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_585820
.batch_normalization_10/StatefulPartitionedCall
activation_10/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_10_layer_call_and_return_conditional_losses_58992
activation_10/PartitionedCall
 max_pooling1d_10/PartitionedCallPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling1d_10_layer_call_and_return_conditional_losses_53172"
 max_pooling1d_10/PartitionedCall»
!conv1d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_10/PartitionedCall:output:0conv1d_11_6434conv1d_11_6436*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv1d_11_layer_call_and_return_conditional_losses_59292#
!conv1d_11/StatefulPartitionedCall»
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*conv1d_11/StatefulPartitionedCall:output:0batch_normalization_11_6439batch_normalization_11_6441batch_normalization_11_6443batch_normalization_11_6445*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_600020
.batch_normalization_11/StatefulPartitionedCall
activation_11/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_11_layer_call_and_return_conditional_losses_60412
activation_11/PartitionedCall
 max_pooling1d_11/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_54722"
 max_pooling1d_11/PartitionedCallö
lambda_2/PartitionedCallPartitionedCall)max_pooling1d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lambda_2_layer_call_and_return_conditional_losses_60622
lambda_2/PartitionedCall¤
dense_2/StatefulPartitionedCallStatefulPartitionedCall!lambda_2/PartitionedCall:output:0dense_2_6451dense_2_6453*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_60862!
dense_2/StatefulPartitionedCall¹
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_8_6386*#
_output_shapes
:P*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp»
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:P2$
"conv1d_8/kernel/Regularizer/Square
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const¾
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_8/kernel/Regularizer/mul/xÀ
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mulº
1conv1d_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_9_6402*$
_output_shapes
:*
dtype023
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¼
"conv1d_9/kernel/Regularizer/SquareSquare9conv1d_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2$
"conv1d_9/kernel/Regularizer/Square
!conv1d_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_9/kernel/Regularizer/Const¾
conv1d_9/kernel/Regularizer/SumSum&conv1d_9/kernel/Regularizer/Square:y:0*conv1d_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/Sum
!conv1d_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_9/kernel/Regularizer/mul/xÀ
conv1d_9/kernel/Regularizer/mulMul*conv1d_9/kernel/Regularizer/mul/x:output:0(conv1d_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/mul½
2conv1d_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_10_6418*$
_output_shapes
:*
dtype024
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_10/kernel/Regularizer/SquareSquare:conv1d_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_10/kernel/Regularizer/Square
"conv1d_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_10/kernel/Regularizer/ConstÂ
 conv1d_10/kernel/Regularizer/SumSum'conv1d_10/kernel/Regularizer/Square:y:0+conv1d_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/Sum
"conv1d_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_10/kernel/Regularizer/mul/xÄ
 conv1d_10/kernel/Regularizer/mulMul+conv1d_10/kernel/Regularizer/mul/x:output:0)conv1d_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/mul½
2conv1d_11/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_11_6434*$
_output_shapes
:*
dtype024
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_11/kernel/Regularizer/SquareSquare:conv1d_11/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_11/kernel/Regularizer/Square
"conv1d_11/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_11/kernel/Regularizer/ConstÂ
 conv1d_11/kernel/Regularizer/SumSum'conv1d_11/kernel/Regularizer/Square:y:0+conv1d_11/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/Sum
"conv1d_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_11/kernel/Regularizer/mul/xÄ
 conv1d_11/kernel/Regularizer/mulMul+conv1d_11/kernel/Regularizer/mul/x:output:0)conv1d_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/mulÀ
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall"^conv1d_10/StatefulPartitionedCall3^conv1d_10/kernel/Regularizer/Square/ReadVariableOp"^conv1d_11/StatefulPartitionedCall3^conv1d_11/kernel/Regularizer/Square/ReadVariableOp!^conv1d_8/StatefulPartitionedCall2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp!^conv1d_9/StatefulPartitionedCall2^conv1d_9/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*
_input_shapes
:ÿÿÿÿÿÿÿÿÿN::::::::::::::::::::::::::2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2F
!conv1d_10/StatefulPartitionedCall!conv1d_10/StatefulPartitionedCall2h
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2F
!conv1d_11/StatefulPartitionedCall!conv1d_11/StatefulPartitionedCall2h
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_9/StatefulPartitionedCall conv1d_9/StatefulPartitionedCall2f
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp1conv1d_9/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
 
_user_specified_nameinputs
ù

O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_5574

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
batchnorm/add_1á
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÄ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_nameinputs
¼0
Â
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7207

inputs
assignmovingavg_7182
assignmovingavg_1_7188)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradientª
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7182*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7182*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7182*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7182*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7182AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7182*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7188*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7188*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7188*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7188*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7188AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7188*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
batchnorm/add_1¹
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÄ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_nameinputs
ë
§
4__inference_batch_normalization_9_layer_call_fn_7545

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_51422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
c
G__inference_activation_10_layer_call_and_return_conditional_losses_7760

inputs
identityT
ReluReluinputs*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relul
IdentityIdentityRelu:activations:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ÿ
+__inference_sequential_2_layer_call_fn_6381
conv1d_8_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24
identity¢StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCallconv1d_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_63262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*
_input_shapes
:ÿÿÿÿÿÿÿÿÿN::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
(
_user_specified_nameconv1d_8_input

C
'__inference_lambda_2_layer_call_fn_7997

inputs
identityÁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lambda_2_layer_call_and_return_conditional_losses_60622
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
ì
«
C__inference_conv1d_11_layer_call_and_return_conditional_losses_5929

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOp¢2conv1d_11/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
conv1d/ExpandDimsº
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim¹
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2
conv1d/ExpandDims_1·
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2	
BiasAddÚ
2conv1d_11/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype024
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_11/kernel/Regularizer/SquareSquare:conv1d_11/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_11/kernel/Regularizer/Square
"conv1d_11/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_11/kernel/Regularizer/ConstÂ
 conv1d_11/kernel/Regularizer/SumSum'conv1d_11/kernel/Regularizer/Square:y:0+conv1d_11/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/Sum
"conv1d_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_11/kernel/Regularizer/mul/xÄ
 conv1d_11/kernel/Regularizer/mulMul+conv1d_11/kernel/Regularizer/mul/x:output:0)conv1d_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/mulÜ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp3^conv1d_11/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ'::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2h
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2conv1d_11/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'
 
_user_specified_nameinputs
®
G
+__inference_activation_8_layer_call_fn_7345

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_8_layer_call_and_return_conditional_losses_56152
PartitionedCallr
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÄ:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_nameinputs
î
}
(__inference_conv1d_11_layer_call_fn_7801

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv1d_11_layer_call_and_return_conditional_losses_59292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ'::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'
 
_user_specified_nameinputs
ò
}
(__inference_conv1d_10_layer_call_fn_7591

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv1d_10_layer_call_and_return_conditional_losses_57872
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7939

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1é
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
c
G__inference_activation_10_layer_call_and_return_conditional_losses_5899

inputs
identityT
ReluReluinputs*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relul
IdentityIdentityRelu:activations:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù

O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7227

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
batchnorm/add_1á
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÄ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_nameinputs
¢

O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_5142

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1é
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®
G
+__inference_activation_9_layer_call_fn_7555

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_9_layer_call_and_return_conditional_losses_57572
PartitionedCallr
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2

Identity"
identityIdentity:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿñ:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
 
_user_specified_nameinputs

÷
+__inference_sequential_2_layer_call_fn_7078

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24
identity¢StatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_2_layer_call_and_return_conditional_losses_63262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*
_input_shapes
:ÿÿÿÿÿÿÿÿÿN::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
 
_user_specified_nameinputs
Ë
§
4__inference_batch_normalization_8_layer_call_fn_7253

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_55742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÄ::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_nameinputs

® 
__inference__traced_save_8297
file_prefix.
*savev2_conv1d_8_kernel_read_readvariableop,
(savev2_conv1d_8_bias_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop.
*savev2_conv1d_9_kernel_read_readvariableop,
(savev2_conv1d_9_bias_read_readvariableop:
6savev2_batch_normalization_9_gamma_read_readvariableop9
5savev2_batch_normalization_9_beta_read_readvariableop@
<savev2_batch_normalization_9_moving_mean_read_readvariableopD
@savev2_batch_normalization_9_moving_variance_read_readvariableop/
+savev2_conv1d_10_kernel_read_readvariableop-
)savev2_conv1d_10_bias_read_readvariableop;
7savev2_batch_normalization_10_gamma_read_readvariableop:
6savev2_batch_normalization_10_beta_read_readvariableopA
=savev2_batch_normalization_10_moving_mean_read_readvariableopE
Asavev2_batch_normalization_10_moving_variance_read_readvariableop/
+savev2_conv1d_11_kernel_read_readvariableop-
)savev2_conv1d_11_bias_read_readvariableop;
7savev2_batch_normalization_11_gamma_read_readvariableop:
6savev2_batch_normalization_11_beta_read_readvariableopA
=savev2_batch_normalization_11_moving_mean_read_readvariableopE
Asavev2_batch_normalization_11_moving_variance_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv1d_8_kernel_m_read_readvariableop3
/savev2_adam_conv1d_8_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_m_read_readvariableop5
1savev2_adam_conv1d_9_kernel_m_read_readvariableop3
/savev2_adam_conv1d_9_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_9_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_9_beta_m_read_readvariableop6
2savev2_adam_conv1d_10_kernel_m_read_readvariableop4
0savev2_adam_conv1d_10_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_10_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_10_beta_m_read_readvariableop6
2savev2_adam_conv1d_11_kernel_m_read_readvariableop4
0savev2_adam_conv1d_11_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_11_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_11_beta_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop5
1savev2_adam_conv1d_8_kernel_v_read_readvariableop3
/savev2_adam_conv1d_8_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_v_read_readvariableop5
1savev2_adam_conv1d_9_kernel_v_read_readvariableop3
/savev2_adam_conv1d_9_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_9_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_9_beta_v_read_readvariableop6
2savev2_adam_conv1d_10_kernel_v_read_readvariableop4
0savev2_adam_conv1d_10_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_10_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_10_beta_v_read_readvariableop6
2savev2_adam_conv1d_11_kernel_v_read_readvariableop4
0savev2_adam_conv1d_11_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_11_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_11_beta_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
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
ShardedFilenameÔ'
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*æ&
valueÜ&BÙ&HB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*¥
valueBHB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices©
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_8_kernel_read_readvariableop(savev2_conv1d_8_bias_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop*savev2_conv1d_9_kernel_read_readvariableop(savev2_conv1d_9_bias_read_readvariableop6savev2_batch_normalization_9_gamma_read_readvariableop5savev2_batch_normalization_9_beta_read_readvariableop<savev2_batch_normalization_9_moving_mean_read_readvariableop@savev2_batch_normalization_9_moving_variance_read_readvariableop+savev2_conv1d_10_kernel_read_readvariableop)savev2_conv1d_10_bias_read_readvariableop7savev2_batch_normalization_10_gamma_read_readvariableop6savev2_batch_normalization_10_beta_read_readvariableop=savev2_batch_normalization_10_moving_mean_read_readvariableopAsavev2_batch_normalization_10_moving_variance_read_readvariableop+savev2_conv1d_11_kernel_read_readvariableop)savev2_conv1d_11_bias_read_readvariableop7savev2_batch_normalization_11_gamma_read_readvariableop6savev2_batch_normalization_11_beta_read_readvariableop=savev2_batch_normalization_11_moving_mean_read_readvariableopAsavev2_batch_normalization_11_moving_variance_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv1d_8_kernel_m_read_readvariableop/savev2_adam_conv1d_8_bias_m_read_readvariableop=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop<savev2_adam_batch_normalization_8_beta_m_read_readvariableop1savev2_adam_conv1d_9_kernel_m_read_readvariableop/savev2_adam_conv1d_9_bias_m_read_readvariableop=savev2_adam_batch_normalization_9_gamma_m_read_readvariableop<savev2_adam_batch_normalization_9_beta_m_read_readvariableop2savev2_adam_conv1d_10_kernel_m_read_readvariableop0savev2_adam_conv1d_10_bias_m_read_readvariableop>savev2_adam_batch_normalization_10_gamma_m_read_readvariableop=savev2_adam_batch_normalization_10_beta_m_read_readvariableop2savev2_adam_conv1d_11_kernel_m_read_readvariableop0savev2_adam_conv1d_11_bias_m_read_readvariableop>savev2_adam_batch_normalization_11_gamma_m_read_readvariableop=savev2_adam_batch_normalization_11_beta_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop1savev2_adam_conv1d_8_kernel_v_read_readvariableop/savev2_adam_conv1d_8_bias_v_read_readvariableop=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop<savev2_adam_batch_normalization_8_beta_v_read_readvariableop1savev2_adam_conv1d_9_kernel_v_read_readvariableop/savev2_adam_conv1d_9_bias_v_read_readvariableop=savev2_adam_batch_normalization_9_gamma_v_read_readvariableop<savev2_adam_batch_normalization_9_beta_v_read_readvariableop2savev2_adam_conv1d_10_kernel_v_read_readvariableop0savev2_adam_conv1d_10_bias_v_read_readvariableop>savev2_adam_batch_normalization_10_gamma_v_read_readvariableop=savev2_adam_batch_normalization_10_beta_v_read_readvariableop2savev2_adam_conv1d_11_kernel_v_read_readvariableop0savev2_adam_conv1d_11_bias_v_read_readvariableop>savev2_adam_batch_normalization_11_gamma_v_read_readvariableop=savev2_adam_batch_normalization_11_beta_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *V
dtypesL
J2H	2
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

identity_1Identity_1:output:0*Ï
_input_shapes½
º: :P::::::::::::::::::::::::	:: : : : : : : : : :P::::::::::::::::	::P::::::::::::::::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_output_shapes
:P:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::*&
$
_output_shapes
::!

_output_shapes	
::!	

_output_shapes	
::!


_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::*&
$
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::*&
$
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :)$%
#
_output_shapes
:P:!%

_output_shapes	
::!&

_output_shapes	
::!'

_output_shapes	
::*(&
$
_output_shapes
::!)

_output_shapes	
::!*

_output_shapes	
::!+

_output_shapes	
::*,&
$
_output_shapes
::!-

_output_shapes	
::!.

_output_shapes	
::!/

_output_shapes	
::*0&
$
_output_shapes
::!1

_output_shapes	
::!2

_output_shapes	
::!3

_output_shapes	
::%4!

_output_shapes
:	: 5

_output_shapes
::)6%
#
_output_shapes
:P:!7

_output_shapes	
::!8

_output_shapes	
::!9

_output_shapes	
::*:&
$
_output_shapes
::!;

_output_shapes	
::!<

_output_shapes	
::!=

_output_shapes	
::*>&
$
_output_shapes
::!?

_output_shapes	
::!@

_output_shapes	
::!A

_output_shapes	
::*B&
$
_output_shapes
::!C

_output_shapes	
::!D

_output_shapes	
::!E

_output_shapes	
::%F!

_output_shapes
:	: G

_output_shapes
::H

_output_shapes
: 
Í
¨
5__inference_batch_normalization_10_layer_call_fn_7673

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_58582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·0
Ã
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7837

inputs
assignmovingavg_7812
assignmovingavg_1_7818)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradient©
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7812*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7812*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7812*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7812*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7812AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7812*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7818*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7818*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7818*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7818*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7818AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7818*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
batchnorm/add_1¸
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ'::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'
 
_user_specified_nameinputs
¢

O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_4987

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1é
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
î
|
'__inference_conv1d_8_layer_call_fn_7171

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_8_layer_call_and_return_conditional_losses_55032
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿN::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
 
_user_specified_nameinputs
¸
¡
__inference_loss_fn_0_8028>
:conv1d_8_kernel_regularizer_square_readvariableop_resource
identity¢1conv1d_8/kernel/Regularizer/Square/ReadVariableOpæ
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv1d_8_kernel_regularizer_square_readvariableop_resource*#
_output_shapes
:P*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp»
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:P2$
"conv1d_8/kernel/Regularizer/Square
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const¾
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_8/kernel/Regularizer/mul/xÀ
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mul
IdentityIdentity#conv1d_8/kernel/Regularizer/mul:z:02^conv1d_8/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp
õ

P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7857

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
batchnorm/add_1à
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ'::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'
 
_user_specified_nameinputs
¼0
Â
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_5554

inputs
assignmovingavg_5529
assignmovingavg_1_5535)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradientª
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/5529*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_5529*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/5529*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/5529*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_5529AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/5529*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/5535*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_5535*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/5535*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/5535*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_5535AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/5535*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
batchnorm/add_1¹
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÄ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_nameinputs

C
'__inference_lambda_2_layer_call_fn_7992

inputs
identityÁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lambda_2_layer_call_and_return_conditional_losses_60562
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
Ì
^
B__inference_lambda_2_layer_call_and_return_conditional_losses_7987

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesp
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Meanb
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
î0
Ã
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_5264

inputs
assignmovingavg_5239
assignmovingavg_1_5245)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradient²
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/5239*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_5239*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/5239*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/5239*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_5239AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/5239*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/5245*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_5245*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/5245*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/5245*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_5245AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/5245*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Á
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì
^
B__inference_lambda_2_layer_call_and_return_conditional_losses_6056

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesp
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Meanb
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
÷
K
/__inference_max_pooling1d_10_layer_call_fn_5323

inputs
identityÞ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling1d_10_layer_call_and_return_conditional_losses_53172
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç
¨
5__inference_batch_normalization_11_layer_call_fn_7870

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_59802
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ'::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'
 
_user_specified_nameinputs
í0
Â
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7289

inputs
assignmovingavg_7264
assignmovingavg_1_7270)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradient²
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7264*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7264*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7264*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7264*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7264AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7264*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7270*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7270*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7270*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7270*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7270AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7270*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Á
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
¨
5__inference_batch_normalization_11_layer_call_fn_7883

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_60002
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ'::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'
 
_user_specified_nameinputs
Ì
^
B__inference_lambda_2_layer_call_and_return_conditional_losses_7981

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesp
MeanMeaninputsMean/reduction_indices:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Meanb
IdentityIdentityMean:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
î0
Ã
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7709

inputs
assignmovingavg_7684
assignmovingavg_1_7690)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradient²
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7684*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_7684*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7684*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/7684*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_7684AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/7684*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7690*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_7690*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7690*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/7690*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_7690AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/7690*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Á
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó
«
C__inference_conv1d_10_layer_call_and_return_conditional_losses_7582

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOp¢2conv1d_10/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d/ExpandDimsº
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim¹
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:2
conv1d/ExpandDims_1¸
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddÚ
2conv1d_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:*
dtype024
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_10/kernel/Regularizer/SquareSquare:conv1d_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_10/kernel/Regularizer/Square
"conv1d_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_10/kernel/Regularizer/ConstÂ
 conv1d_10/kernel/Regularizer/SumSum'conv1d_10/kernel/Regularizer/Square:y:0+conv1d_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/Sum
"conv1d_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_10/kernel/Regularizer/mul/xÄ
 conv1d_10/kernel/Regularizer/mulMul+conv1d_10/kernel/Regularizer/mul/x:output:0)conv1d_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/mulÝ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp3^conv1d_10/kernel/Regularizer/Square/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2h
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2conv1d_10/kernel/Regularizer/Square/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é
§
4__inference_batch_normalization_8_layer_call_fn_7322

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_49542
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·0
Ã
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_5980

inputs
assignmovingavg_5955
assignmovingavg_1_5961)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradient©
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/5955*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_5955*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/5955*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/5955*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_5955AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/5955*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/5961*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_5961*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/5961*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/5961*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_5961AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/5961*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul{
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
batchnorm/add_1¸
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:ÿÿÿÿÿÿÿÿÿ'::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'
 
_user_specified_nameinputs
É
§
4__inference_batch_normalization_9_layer_call_fn_7450

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_56962
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿñ::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
 
_user_specified_nameinputs
î0
Ã
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_5419

inputs
assignmovingavg_5394
assignmovingavg_1_5400)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:2
moments/StopGradient²
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indices·
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ê
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/5394*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_5394*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpð
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/5394*
_output_shapes	
:2
AssignMovingAvg/subç
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*'
_class
loc:@AssignMovingAvg/5394*
_output_shapes	
:2
AssignMovingAvg/mul«
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_5394AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*'
_class
loc:@AssignMovingAvg/5394*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÐ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/5400*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_5400*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpú
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/5400*
_output_shapes	
:2
AssignMovingAvg_1/subñ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg_1/5400*
_output_shapes	
:2
AssignMovingAvg_1/mul·
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_5400AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg_1/5400*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Á
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ì
b
F__inference_activation_9_layer_call_and_return_conditional_losses_7550

inputs
identityT
ReluReluinputs*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
Relul
IdentityIdentityRelu:activations:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2

Identity"
identityIdentity:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿñ:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
 
_user_specified_nameinputs
É
c
G__inference_activation_11_layer_call_and_return_conditional_losses_6041

inputs
identityS
ReluReluinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
Reluk
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ':T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'
 
_user_specified_nameinputs
í
¨
5__inference_batch_normalization_11_layer_call_fn_7965

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_54522
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
c
G__inference_activation_11_layer_call_and_return_conditional_losses_7970

inputs
identityS
ReluReluinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2
Reluk
IdentityIdentityRelu:activations:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ':T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'
 
_user_specified_nameinputs
²|
ù

F__inference_sequential_2_layer_call_and_return_conditional_losses_6225
conv1d_8_input
conv1d_8_6130
conv1d_8_6132
batch_normalization_8_6135
batch_normalization_8_6137
batch_normalization_8_6139
batch_normalization_8_6141
conv1d_9_6146
conv1d_9_6148
batch_normalization_9_6151
batch_normalization_9_6153
batch_normalization_9_6155
batch_normalization_9_6157
conv1d_10_6162
conv1d_10_6164
batch_normalization_10_6167
batch_normalization_10_6169
batch_normalization_10_6171
batch_normalization_10_6173
conv1d_11_6178
conv1d_11_6180
batch_normalization_11_6183
batch_normalization_11_6185
batch_normalization_11_6187
batch_normalization_11_6189
dense_2_6195
dense_2_6197
identity¢.batch_normalization_10/StatefulPartitionedCall¢.batch_normalization_11/StatefulPartitionedCall¢-batch_normalization_8/StatefulPartitionedCall¢-batch_normalization_9/StatefulPartitionedCall¢!conv1d_10/StatefulPartitionedCall¢2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¢!conv1d_11/StatefulPartitionedCall¢2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¢ conv1d_8/StatefulPartitionedCall¢1conv1d_8/kernel/Regularizer/Square/ReadVariableOp¢ conv1d_9/StatefulPartitionedCall¢1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¢dense_2/StatefulPartitionedCall
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCallconv1d_8_inputconv1d_8_6130conv1d_8_6132*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_8_layer_call_and_return_conditional_losses_55032"
 conv1d_8/StatefulPartitionedCall´
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0batch_normalization_8_6135batch_normalization_8_6137batch_normalization_8_6139batch_normalization_8_6141*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_55742/
-batch_normalization_8/StatefulPartitionedCall
activation_8/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_8_layer_call_and_return_conditional_losses_56152
activation_8/PartitionedCall
max_pooling1d_8/PartitionedCallPartitionedCall%activation_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_50072!
max_pooling1d_8/PartitionedCall¶
 conv1d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_8/PartitionedCall:output:0conv1d_9_6146conv1d_9_6148*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_9_layer_call_and_return_conditional_losses_56452"
 conv1d_9/StatefulPartitionedCall´
-batch_normalization_9/StatefulPartitionedCallStatefulPartitionedCall)conv1d_9/StatefulPartitionedCall:output:0batch_normalization_9_6151batch_normalization_9_6153batch_normalization_9_6155batch_normalization_9_6157*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_57162/
-batch_normalization_9/StatefulPartitionedCall
activation_9/PartitionedCallPartitionedCall6batch_normalization_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_activation_9_layer_call_and_return_conditional_losses_57572
activation_9/PartitionedCall
max_pooling1d_9/PartitionedCallPartitionedCall%activation_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling1d_9_layer_call_and_return_conditional_losses_51622!
max_pooling1d_9/PartitionedCall»
!conv1d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling1d_9/PartitionedCall:output:0conv1d_10_6162conv1d_10_6164*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv1d_10_layer_call_and_return_conditional_losses_57872#
!conv1d_10/StatefulPartitionedCall¼
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCall*conv1d_10/StatefulPartitionedCall:output:0batch_normalization_10_6167batch_normalization_10_6169batch_normalization_10_6171batch_normalization_10_6173*
Tin	
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_585820
.batch_normalization_10/StatefulPartitionedCall
activation_10/PartitionedCallPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_10_layer_call_and_return_conditional_losses_58992
activation_10/PartitionedCall
 max_pooling1d_10/PartitionedCallPartitionedCall&activation_10/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling1d_10_layer_call_and_return_conditional_losses_53172"
 max_pooling1d_10/PartitionedCall»
!conv1d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling1d_10/PartitionedCall:output:0conv1d_11_6178conv1d_11_6180*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv1d_11_layer_call_and_return_conditional_losses_59292#
!conv1d_11/StatefulPartitionedCall»
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*conv1d_11/StatefulPartitionedCall:output:0batch_normalization_11_6183batch_normalization_11_6185batch_normalization_11_6187batch_normalization_11_6189*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_600020
.batch_normalization_11/StatefulPartitionedCall
activation_11/PartitionedCallPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ'* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_11_layer_call_and_return_conditional_losses_60412
activation_11/PartitionedCall
 max_pooling1d_11/PartitionedCallPartitionedCall&activation_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_54722"
 max_pooling1d_11/PartitionedCallö
lambda_2/PartitionedCallPartitionedCall)max_pooling1d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lambda_2_layer_call_and_return_conditional_losses_60622
lambda_2/PartitionedCall¤
dense_2/StatefulPartitionedCallStatefulPartitionedCall!lambda_2/PartitionedCall:output:0dense_2_6195dense_2_6197*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_60862!
dense_2/StatefulPartitionedCall¹
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_8_6130*#
_output_shapes
:P*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp»
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:P2$
"conv1d_8/kernel/Regularizer/Square
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const¾
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_8/kernel/Regularizer/mul/xÀ
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mulº
1conv1d_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_9_6146*$
_output_shapes
:*
dtype023
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp¼
"conv1d_9/kernel/Regularizer/SquareSquare9conv1d_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2$
"conv1d_9/kernel/Regularizer/Square
!conv1d_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_9/kernel/Regularizer/Const¾
conv1d_9/kernel/Regularizer/SumSum&conv1d_9/kernel/Regularizer/Square:y:0*conv1d_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/Sum
!conv1d_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_9/kernel/Regularizer/mul/xÀ
conv1d_9/kernel/Regularizer/mulMul*conv1d_9/kernel/Regularizer/mul/x:output:0(conv1d_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_9/kernel/Regularizer/mul½
2conv1d_10/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_10_6162*$
_output_shapes
:*
dtype024
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_10/kernel/Regularizer/SquareSquare:conv1d_10/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_10/kernel/Regularizer/Square
"conv1d_10/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_10/kernel/Regularizer/ConstÂ
 conv1d_10/kernel/Regularizer/SumSum'conv1d_10/kernel/Regularizer/Square:y:0+conv1d_10/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/Sum
"conv1d_10/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_10/kernel/Regularizer/mul/xÄ
 conv1d_10/kernel/Regularizer/mulMul+conv1d_10/kernel/Regularizer/mul/x:output:0)conv1d_10/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_10/kernel/Regularizer/mul½
2conv1d_11/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_11_6178*$
_output_shapes
:*
dtype024
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp¿
#conv1d_11/kernel/Regularizer/SquareSquare:conv1d_11/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*$
_output_shapes
:2%
#conv1d_11/kernel/Regularizer/Square
"conv1d_11/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_11/kernel/Regularizer/ConstÂ
 conv1d_11/kernel/Regularizer/SumSum'conv1d_11/kernel/Regularizer/Square:y:0+conv1d_11/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/Sum
"conv1d_11/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_11/kernel/Regularizer/mul/xÄ
 conv1d_11/kernel/Regularizer/mulMul+conv1d_11/kernel/Regularizer/mul/x:output:0)conv1d_11/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_11/kernel/Regularizer/mulÀ
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall.^batch_normalization_8/StatefulPartitionedCall.^batch_normalization_9/StatefulPartitionedCall"^conv1d_10/StatefulPartitionedCall3^conv1d_10/kernel/Regularizer/Square/ReadVariableOp"^conv1d_11/StatefulPartitionedCall3^conv1d_11/kernel/Regularizer/Square/ReadVariableOp!^conv1d_8/StatefulPartitionedCall2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp!^conv1d_9/StatefulPartitionedCall2^conv1d_9/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*
_input_shapes
:ÿÿÿÿÿÿÿÿÿN::::::::::::::::::::::::::2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2^
-batch_normalization_9/StatefulPartitionedCall-batch_normalization_9/StatefulPartitionedCall2F
!conv1d_10/StatefulPartitionedCall!conv1d_10/StatefulPartitionedCall2h
2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2conv1d_10/kernel/Regularizer/Square/ReadVariableOp2F
!conv1d_11/StatefulPartitionedCall!conv1d_11/StatefulPartitionedCall2h
2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2conv1d_11/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_9/StatefulPartitionedCall conv1d_9/StatefulPartitionedCall2f
1conv1d_9/kernel/Regularizer/Square/ReadVariableOp1conv1d_9/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:\ X
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿN
(
_user_specified_nameconv1d_8_input
°
H
,__inference_activation_10_layer_call_fn_7765

inputs
identityË
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_activation_10_layer_call_and_return_conditional_losses_58992
PartitionedCallr
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù

O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7437

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mul|
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2
batchnorm/add_1á
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿñ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
 
_user_specified_nameinputs
ð
|
'__inference_conv1d_9_layer_call_fn_7381

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv1d_9_layer_call_and_return_conditional_losses_56452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ2

Identity"
identityIdentity:output:0*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿñ::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
 
_user_specified_nameinputs
ö	
Ú
A__inference_dense_2_layer_call_and_return_conditional_losses_6086

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*½
serving_default©
N
conv1d_8_input<
 serving_default_conv1d_8_input:0ÿÿÿÿÿÿÿÿÿN;
dense_20
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ø

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
+&call_and_return_all_conditional_losses
__call__
_default_save_signature"Û
_tf_keras_sequential»{"class_name": "Sequential", "name": "sequential_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10000, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_8_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10000, 1]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [80]}, "strides": {"class_name": "__tuple__", "items": [4]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_8", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_9", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_9", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_10", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_10", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_11", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_11", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_11", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Lambda", "config": {"name": "lambda_2", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTukBAAAAKQHaBGF4aXMp\nAtoBS9oEbWVhbikB2gF4qQByBgAAAPofPGlweXRob24taW5wdXQtMTQtOWU3NDc3OTViNjNlPtoI\nPGxhbWJkYT4vAAAA8wAAAAA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10000, 1]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10000, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_8_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10000, 1]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [80]}, "strides": {"class_name": "__tuple__", "items": [4]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_8", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_9", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_9", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_10", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_10", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_11", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_11", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Activation", "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "relu"}}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_11", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}}, {"class_name": "Lambda", "config": {"name": "lambda_2", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTukBAAAAKQHaBGF4aXMp\nAtoBS9oEbWVhbikB2gF4qQByBgAAAPofPGlweXRob24taW5wdXQtMTQtOWU3NDc3OTViNjNlPtoI\nPGxhbWJkYT4vAAAA8wAAAAA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
¤

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"ý	
_tf_keras_layerã	{"class_name": "Conv1D", "name": "conv1d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10000, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10000, 1]}, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [80]}, "strides": {"class_name": "__tuple__", "items": [4]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10000, 1]}}
¼	
axis
	 gamma
!beta
"moving_mean
#moving_variance
$regularization_losses
%	variables
&trainable_variables
'	keras_api
+&call_and_return_all_conditional_losses
__call__"æ
_tf_keras_layerÌ{"class_name": "BatchNormalization", "name": "batch_normalization_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_8", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2500, 128]}}
×
(regularization_losses
)	variables
*trainable_variables
+	keras_api
+&call_and_return_all_conditional_losses
__call__"Æ
_tf_keras_layer¬{"class_name": "Activation", "name": "activation_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_8", "trainable": true, "dtype": "float32", "activation": "relu"}}
û
,regularization_losses
-	variables
.trainable_variables
/	keras_api
+&call_and_return_all_conditional_losses
__call__"ê
_tf_keras_layerÐ{"class_name": "MaxPooling1D", "name": "max_pooling1d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling1d_8", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
¦


0kernel
1bias
2regularization_losses
3	variables
4trainable_variables
5	keras_api
+&call_and_return_all_conditional_losses
__call__"ÿ
_tf_keras_layerå{"class_name": "Conv1D", "name": "conv1d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_9", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 625, 128]}}
»	
6axis
	7gamma
8beta
9moving_mean
:moving_variance
;regularization_losses
<	variables
=trainable_variables
>	keras_api
+&call_and_return_all_conditional_losses
 __call__"å
_tf_keras_layerË{"class_name": "BatchNormalization", "name": "batch_normalization_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_9", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 625, 128]}}
×
?regularization_losses
@	variables
Atrainable_variables
B	keras_api
+¡&call_and_return_all_conditional_losses
¢__call__"Æ
_tf_keras_layer¬{"class_name": "Activation", "name": "activation_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_9", "trainable": true, "dtype": "float32", "activation": "relu"}}
û
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
+£&call_and_return_all_conditional_losses
¤__call__"ê
_tf_keras_layerÐ{"class_name": "MaxPooling1D", "name": "max_pooling1d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling1d_9", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
¨


Gkernel
Hbias
Iregularization_losses
J	variables
Ktrainable_variables
L	keras_api
+¥&call_and_return_all_conditional_losses
¦__call__"	
_tf_keras_layerç{"class_name": "Conv1D", "name": "conv1d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_10", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 156, 128]}}
½	
Maxis
	Ngamma
Obeta
Pmoving_mean
Qmoving_variance
Rregularization_losses
S	variables
Ttrainable_variables
U	keras_api
+§&call_and_return_all_conditional_losses
¨__call__"ç
_tf_keras_layerÍ{"class_name": "BatchNormalization", "name": "batch_normalization_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_10", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 156, 256]}}
Ù
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
+©&call_and_return_all_conditional_losses
ª__call__"È
_tf_keras_layer®{"class_name": "Activation", "name": "activation_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_10", "trainable": true, "dtype": "float32", "activation": "relu"}}
ý
Zregularization_losses
[	variables
\trainable_variables
]	keras_api
+«&call_and_return_all_conditional_losses
¬__call__"ì
_tf_keras_layerÒ{"class_name": "MaxPooling1D", "name": "max_pooling1d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling1d_10", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
§


^kernel
_bias
`regularization_losses
a	variables
btrainable_variables
c	keras_api
+­&call_and_return_all_conditional_losses
®__call__"	
_tf_keras_layeræ{"class_name": "Conv1D", "name": "conv1d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_11", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 39, 256]}}
¼	
daxis
	egamma
fbeta
gmoving_mean
hmoving_variance
iregularization_losses
j	variables
ktrainable_variables
l	keras_api
+¯&call_and_return_all_conditional_losses
°__call__"æ
_tf_keras_layerÌ{"class_name": "BatchNormalization", "name": "batch_normalization_11", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_11", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 39, 512]}}
Ù
mregularization_losses
n	variables
otrainable_variables
p	keras_api
+±&call_and_return_all_conditional_losses
²__call__"È
_tf_keras_layer®{"class_name": "Activation", "name": "activation_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "activation_11", "trainable": true, "dtype": "float32", "activation": "relu"}}
ý
qregularization_losses
r	variables
strainable_variables
t	keras_api
+³&call_and_return_all_conditional_losses
´__call__"ì
_tf_keras_layerÒ{"class_name": "MaxPooling1D", "name": "max_pooling1d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling1d_11", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
¿
uregularization_losses
v	variables
wtrainable_variables
x	keras_api
+µ&call_and_return_all_conditional_losses
¶__call__"®
_tf_keras_layer{"class_name": "Lambda", "name": "lambda_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lambda_2", "trainable": true, "dtype": "float32", "function": {"class_name": "__tuple__", "items": ["4wEAAAAAAAAAAQAAAAQAAABTAAAAcw4AAAB0AGoBfABkAWQCjQJTACkDTukBAAAAKQHaBGF4aXMp\nAtoBS9oEbWVhbikB2gF4qQByBgAAAPofPGlweXRob24taW5wdXQtMTQtOWU3NDc3OTViNjNlPtoI\nPGxhbWJkYT4vAAAA8wAAAAA=\n", null, null]}, "function_type": "lambda", "module": "__main__", "output_shape": null, "output_shape_type": "raw", "output_shape_module": null, "arguments": {}}}
ö

ykernel
zbias
{regularization_losses
|	variables
}trainable_variables
~	keras_api
+·&call_and_return_all_conditional_losses
¸__call__"Ï
_tf_keras_layerµ{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 5, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}
¿
iter
beta_1
beta_2

decay
learning_ratemîmï mð!mñ0mò1mó7mô8mõGmöHm÷NmøOmù^mú_mûemüfmýymþzmÿvv v!v0v1v7v8vGvHvNvOv^v_vevfvyvzv"
	optimizer
@
¹0
º1
»2
¼3"
trackable_list_wrapper
æ
0
1
 2
!3
"4
#5
06
17
78
89
910
:11
G12
H13
N14
O15
P16
Q17
^18
_19
e20
f21
g22
h23
y24
z25"
trackable_list_wrapper
¦
0
1
 2
!3
04
15
76
87
G8
H9
N10
O11
^12
_13
e14
f15
y16
z17"
trackable_list_wrapper
Ó
metrics
layers
regularization_losses
	variables
trainable_variables
layer_metrics
non_trainable_variables
 layer_regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
½serving_default"
signature_map
&:$P2conv1d_8/kernel
:2conv1d_8/bias
(
¹0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
µ
metrics
layers
regularization_losses
	variables
trainable_variables
layer_metrics
non_trainable_variables
 layer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_8/gamma
):'2batch_normalization_8/beta
2:0 (2!batch_normalization_8/moving_mean
6:4 (2%batch_normalization_8/moving_variance
 "
trackable_list_wrapper
<
 0
!1
"2
#3"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
µ
metrics
layers
$regularization_losses
%	variables
&trainable_variables
layer_metrics
non_trainable_variables
 layer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
metrics
layers
(regularization_losses
)	variables
*trainable_variables
layer_metrics
non_trainable_variables
 layer_regularization_losses
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
metrics
layers
,regularization_losses
-	variables
.trainable_variables
layer_metrics
non_trainable_variables
 layer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
':%2conv1d_9/kernel
:2conv1d_9/bias
(
º0"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
µ
metrics
layers
2regularization_losses
3	variables
4trainable_variables
layer_metrics
 non_trainable_variables
 ¡layer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_9/gamma
):'2batch_normalization_9/beta
2:0 (2!batch_normalization_9/moving_mean
6:4 (2%batch_normalization_9/moving_variance
 "
trackable_list_wrapper
<
70
81
92
:3"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
µ
¢metrics
£layers
;regularization_losses
<	variables
=trainable_variables
¤layer_metrics
¥non_trainable_variables
 ¦layer_regularization_losses
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
§metrics
¨layers
?regularization_losses
@	variables
Atrainable_variables
©layer_metrics
ªnon_trainable_variables
 «layer_regularization_losses
¢__call__
+¡&call_and_return_all_conditional_losses
'¡"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
¬metrics
­layers
Cregularization_losses
D	variables
Etrainable_variables
®layer_metrics
¯non_trainable_variables
 °layer_regularization_losses
¤__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
(:&2conv1d_10/kernel
:2conv1d_10/bias
(
»0"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
µ
±metrics
²layers
Iregularization_losses
J	variables
Ktrainable_variables
³layer_metrics
´non_trainable_variables
 µlayer_regularization_losses
¦__call__
+¥&call_and_return_all_conditional_losses
'¥"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)2batch_normalization_10/gamma
*:(2batch_normalization_10/beta
3:1 (2"batch_normalization_10/moving_mean
7:5 (2&batch_normalization_10/moving_variance
 "
trackable_list_wrapper
<
N0
O1
P2
Q3"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
µ
¶metrics
·layers
Rregularization_losses
S	variables
Ttrainable_variables
¸layer_metrics
¹non_trainable_variables
 ºlayer_regularization_losses
¨__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
»metrics
¼layers
Vregularization_losses
W	variables
Xtrainable_variables
½layer_metrics
¾non_trainable_variables
 ¿layer_regularization_losses
ª__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Àmetrics
Álayers
Zregularization_losses
[	variables
\trainable_variables
Âlayer_metrics
Ãnon_trainable_variables
 Älayer_regularization_losses
¬__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
(:&2conv1d_11/kernel
:2conv1d_11/bias
(
¼0"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
µ
Åmetrics
Ælayers
`regularization_losses
a	variables
btrainable_variables
Çlayer_metrics
Ènon_trainable_variables
 Élayer_regularization_losses
®__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)2batch_normalization_11/gamma
*:(2batch_normalization_11/beta
3:1 (2"batch_normalization_11/moving_mean
7:5 (2&batch_normalization_11/moving_variance
 "
trackable_list_wrapper
<
e0
f1
g2
h3"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
µ
Êmetrics
Ëlayers
iregularization_losses
j	variables
ktrainable_variables
Ìlayer_metrics
Ínon_trainable_variables
 Îlayer_regularization_losses
°__call__
+¯&call_and_return_all_conditional_losses
'¯"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ïmetrics
Ðlayers
mregularization_losses
n	variables
otrainable_variables
Ñlayer_metrics
Ònon_trainable_variables
 Ólayer_regularization_losses
²__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ômetrics
Õlayers
qregularization_losses
r	variables
strainable_variables
Ölayer_metrics
×non_trainable_variables
 Ølayer_regularization_losses
´__call__
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Ùmetrics
Úlayers
uregularization_losses
v	variables
wtrainable_variables
Ûlayer_metrics
Ünon_trainable_variables
 Ýlayer_regularization_losses
¶__call__
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses"
_generic_user_object
!:	2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
µ
Þmetrics
ßlayers
{regularization_losses
|	variables
}trainable_variables
àlayer_metrics
ánon_trainable_variables
 âlayer_regularization_losses
¸__call__
+·&call_and_return_all_conditional_losses
'·"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
ã0
ä1"
trackable_list_wrapper
¦
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
17"
trackable_list_wrapper
 "
trackable_dict_wrapper
X
"0
#1
92
:3
P4
Q5
g6
h7"
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
(
¹0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
"0
#1"
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
(
º0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
90
:1"
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
(
»0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
P0
Q1"
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
(
¼0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
g0
h1"
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
¿

åtotal

æcount
ç	variables
è	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}


étotal

êcount
ë
_fn_kwargs
ì	variables
í	keras_api"¸
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
å0
æ1"
trackable_list_wrapper
.
ç	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
é0
ê1"
trackable_list_wrapper
.
ì	variables"
_generic_user_object
+:)P2Adam/conv1d_8/kernel/m
!:2Adam/conv1d_8/bias/m
/:-2"Adam/batch_normalization_8/gamma/m
.:,2!Adam/batch_normalization_8/beta/m
,:*2Adam/conv1d_9/kernel/m
!:2Adam/conv1d_9/bias/m
/:-2"Adam/batch_normalization_9/gamma/m
.:,2!Adam/batch_normalization_9/beta/m
-:+2Adam/conv1d_10/kernel/m
": 2Adam/conv1d_10/bias/m
0:.2#Adam/batch_normalization_10/gamma/m
/:-2"Adam/batch_normalization_10/beta/m
-:+2Adam/conv1d_11/kernel/m
": 2Adam/conv1d_11/bias/m
0:.2#Adam/batch_normalization_11/gamma/m
/:-2"Adam/batch_normalization_11/beta/m
&:$	2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
+:)P2Adam/conv1d_8/kernel/v
!:2Adam/conv1d_8/bias/v
/:-2"Adam/batch_normalization_8/gamma/v
.:,2!Adam/batch_normalization_8/beta/v
,:*2Adam/conv1d_9/kernel/v
!:2Adam/conv1d_9/bias/v
/:-2"Adam/batch_normalization_9/gamma/v
.:,2!Adam/batch_normalization_9/beta/v
-:+2Adam/conv1d_10/kernel/v
": 2Adam/conv1d_10/bias/v
0:.2#Adam/batch_normalization_10/gamma/v
/:-2"Adam/batch_normalization_10/beta/v
-:+2Adam/conv1d_11/kernel/v
": 2Adam/conv1d_11/bias/v
0:.2#Adam/batch_normalization_11/gamma/v
/:-2"Adam/batch_normalization_11/beta/v
&:$	2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
æ2ã
F__inference_sequential_2_layer_call_and_return_conditional_losses_6225
F__inference_sequential_2_layer_call_and_return_conditional_losses_6856
F__inference_sequential_2_layer_call_and_return_conditional_losses_7021
F__inference_sequential_2_layer_call_and_return_conditional_losses_6127À
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
ú2÷
+__inference_sequential_2_layer_call_fn_7078
+__inference_sequential_2_layer_call_fn_7135
+__inference_sequential_2_layer_call_fn_6381
+__inference_sequential_2_layer_call_fn_6536À
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
é2æ
__inference__wrapped_model_4858Â
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
annotationsª *2¢/
-*
conv1d_8_inputÿÿÿÿÿÿÿÿÿN
ì2é
B__inference_conv1d_8_layer_call_and_return_conditional_losses_7162¢
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
Ñ2Î
'__inference_conv1d_8_layer_call_fn_7171¢
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
þ2û
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7289
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7227
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7309
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7207´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
4__inference_batch_normalization_8_layer_call_fn_7335
4__inference_batch_normalization_8_layer_call_fn_7253
4__inference_batch_normalization_8_layer_call_fn_7240
4__inference_batch_normalization_8_layer_call_fn_7322´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ð2í
F__inference_activation_8_layer_call_and_return_conditional_losses_7340¢
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
Õ2Ò
+__inference_activation_8_layer_call_fn_7345¢
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
¤2¡
I__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_5007Ó
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
annotationsª *3¢0
.+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
.__inference_max_pooling1d_8_layer_call_fn_5013Ó
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
annotationsª *3¢0
.+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ì2é
B__inference_conv1d_9_layer_call_and_return_conditional_losses_7372¢
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
Ñ2Î
'__inference_conv1d_9_layer_call_fn_7381¢
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
þ2û
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7417
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7499
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7437
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7519´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
4__inference_batch_normalization_9_layer_call_fn_7463
4__inference_batch_normalization_9_layer_call_fn_7545
4__inference_batch_normalization_9_layer_call_fn_7450
4__inference_batch_normalization_9_layer_call_fn_7532´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ð2í
F__inference_activation_9_layer_call_and_return_conditional_losses_7550¢
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
Õ2Ò
+__inference_activation_9_layer_call_fn_7555¢
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
¤2¡
I__inference_max_pooling1d_9_layer_call_and_return_conditional_losses_5162Ó
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
annotationsª *3¢0
.+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
.__inference_max_pooling1d_9_layer_call_fn_5168Ó
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
annotationsª *3¢0
.+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
í2ê
C__inference_conv1d_10_layer_call_and_return_conditional_losses_7582¢
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
(__inference_conv1d_10_layer_call_fn_7591¢
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
2ÿ
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7627
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7729
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7647
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7709´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
5__inference_batch_normalization_10_layer_call_fn_7755
5__inference_batch_normalization_10_layer_call_fn_7673
5__inference_batch_normalization_10_layer_call_fn_7742
5__inference_batch_normalization_10_layer_call_fn_7660´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ñ2î
G__inference_activation_10_layer_call_and_return_conditional_losses_7760¢
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
Ö2Ó
,__inference_activation_10_layer_call_fn_7765¢
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
¥2¢
J__inference_max_pooling1d_10_layer_call_and_return_conditional_losses_5317Ó
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
annotationsª *3¢0
.+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
/__inference_max_pooling1d_10_layer_call_fn_5323Ó
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
annotationsª *3¢0
.+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
í2ê
C__inference_conv1d_11_layer_call_and_return_conditional_losses_7792¢
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
(__inference_conv1d_11_layer_call_fn_7801¢
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
2ÿ
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7837
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7919
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7857
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7939´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
5__inference_batch_normalization_11_layer_call_fn_7883
5__inference_batch_normalization_11_layer_call_fn_7952
5__inference_batch_normalization_11_layer_call_fn_7870
5__inference_batch_normalization_11_layer_call_fn_7965´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ñ2î
G__inference_activation_11_layer_call_and_return_conditional_losses_7970¢
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
Ö2Ó
,__inference_activation_11_layer_call_fn_7975¢
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
¥2¢
J__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_5472Ó
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
annotationsª *3¢0
.+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
/__inference_max_pooling1d_11_layer_call_fn_5478Ó
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
annotationsª *3¢0
.+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Î2Ë
B__inference_lambda_2_layer_call_and_return_conditional_losses_7987
B__inference_lambda_2_layer_call_and_return_conditional_losses_7981À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
'__inference_lambda_2_layer_call_fn_7997
'__inference_lambda_2_layer_call_fn_7992À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ë2è
A__inference_dense_2_layer_call_and_return_conditional_losses_8008¢
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
Ð2Í
&__inference_dense_2_layer_call_fn_8017¢
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
±2®
__inference_loss_fn_0_8028
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
±2®
__inference_loss_fn_1_8039
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
±2®
__inference_loss_fn_2_8050
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
±2®
__inference_loss_fn_3_8061
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
ÐBÍ
"__inference_signature_wrapper_6627conv1d_8_input"
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
 ±
__inference__wrapped_model_4858# "!01:798GHQNPO^_hegfyz<¢9
2¢/
-*
conv1d_8_inputÿÿÿÿÿÿÿÿÿN
ª "1ª.
,
dense_2!
dense_2ÿÿÿÿÿÿÿÿÿ¯
G__inference_activation_10_layer_call_and_return_conditional_losses_7760d5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿ
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ
 
,__inference_activation_10_layer_call_fn_7765W5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ­
G__inference_activation_11_layer_call_and_return_conditional_losses_7970b4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ'
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ'
 
,__inference_activation_11_layer_call_fn_7975U4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ'
ª "ÿÿÿÿÿÿÿÿÿ'®
F__inference_activation_8_layer_call_and_return_conditional_losses_7340d5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿÄ
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿÄ
 
+__inference_activation_8_layer_call_fn_7345W5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿÄ
ª "ÿÿÿÿÿÿÿÿÿÄ®
F__inference_activation_9_layer_call_and_return_conditional_losses_7550d5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿñ
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿñ
 
+__inference_activation_9_layer_call_fn_7555W5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿñ
ª "ÿÿÿÿÿÿÿÿÿñÂ
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7627nPQNO9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿ
p
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ
 Â
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7647nQNPO9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ
 Ò
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7709~PQNOA¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ò
P__inference_batch_normalization_10_layer_call_and_return_conditional_losses_7729~QNPOA¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
5__inference_batch_normalization_10_layer_call_fn_7660aPQNO9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ
5__inference_batch_normalization_10_layer_call_fn_7673aQNPO9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿª
5__inference_batch_normalization_10_layer_call_fn_7742qPQNOA¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿª
5__inference_batch_normalization_10_layer_call_fn_7755qQNPOA¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7837lghef8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ'
p
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ'
 À
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7857lhegf8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ'
p 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ'
 Ò
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7919~ghefA¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ò
P__inference_batch_normalization_11_layer_call_and_return_conditional_losses_7939~hegfA¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
5__inference_batch_normalization_11_layer_call_fn_7870_ghef8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ'
p
ª "ÿÿÿÿÿÿÿÿÿ'
5__inference_batch_normalization_11_layer_call_fn_7883_hegf8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ'
p 
ª "ÿÿÿÿÿÿÿÿÿ'ª
5__inference_batch_normalization_11_layer_call_fn_7952qghefA¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿª
5__inference_batch_normalization_11_layer_call_fn_7965qhegfA¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÁ
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7207n"# !9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿÄ
p
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿÄ
 Á
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7227n# "!9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿÄ
p 
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿÄ
 Ñ
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7289~"# !A¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ñ
O__inference_batch_normalization_8_layer_call_and_return_conditional_losses_7309~# "!A¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
4__inference_batch_normalization_8_layer_call_fn_7240a"# !9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿÄ
p
ª "ÿÿÿÿÿÿÿÿÿÄ
4__inference_batch_normalization_8_layer_call_fn_7253a# "!9¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿÄ
p 
ª "ÿÿÿÿÿÿÿÿÿÄ©
4__inference_batch_normalization_8_layer_call_fn_7322q"# !A¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©
4__inference_batch_normalization_8_layer_call_fn_7335q# "!A¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÁ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7417n9:789¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿñ
p
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿñ
 Á
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7437n:7989¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿñ
p 
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿñ
 Ñ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7499~9:78A¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ñ
O__inference_batch_normalization_9_layer_call_and_return_conditional_losses_7519~:798A¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
4__inference_batch_normalization_9_layer_call_fn_7450a9:789¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿñ
p
ª "ÿÿÿÿÿÿÿÿÿñ
4__inference_batch_normalization_9_layer_call_fn_7463a:7989¢6
/¢,
&#
inputsÿÿÿÿÿÿÿÿÿñ
p 
ª "ÿÿÿÿÿÿÿÿÿñ©
4__inference_batch_normalization_9_layer_call_fn_7532q9:78A¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©
4__inference_batch_normalization_9_layer_call_fn_7545q:798A¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¯
C__inference_conv1d_10_layer_call_and_return_conditional_losses_7582hGH5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿ
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿ
 
(__inference_conv1d_10_layer_call_fn_7591[GH5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ­
C__inference_conv1d_11_layer_call_and_return_conditional_losses_7792f^_4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ'
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ'
 
(__inference_conv1d_11_layer_call_fn_7801Y^_4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ'
ª "ÿÿÿÿÿÿÿÿÿ'­
B__inference_conv1d_8_layer_call_and_return_conditional_losses_7162g4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿN
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿÄ
 
'__inference_conv1d_8_layer_call_fn_7171Z4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿN
ª "ÿÿÿÿÿÿÿÿÿÄ®
B__inference_conv1d_9_layer_call_and_return_conditional_losses_7372h015¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿñ
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿñ
 
'__inference_conv1d_9_layer_call_fn_7381[015¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿñ
ª "ÿÿÿÿÿÿÿÿÿñ¢
A__inference_dense_2_layer_call_and_return_conditional_losses_8008]yz0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 z
&__inference_dense_2_layer_call_fn_8017Pyz0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¬
B__inference_lambda_2_layer_call_and_return_conditional_losses_7981f<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ	

 
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¬
B__inference_lambda_2_layer_call_and_return_conditional_losses_7987f<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ	

 
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
'__inference_lambda_2_layer_call_fn_7992Y<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ	

 
p
ª "ÿÿÿÿÿÿÿÿÿ
'__inference_lambda_2_layer_call_fn_7997Y<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿ	

 
p 
ª "ÿÿÿÿÿÿÿÿÿ9
__inference_loss_fn_0_8028¢

¢ 
ª " 9
__inference_loss_fn_1_80390¢

¢ 
ª " 9
__inference_loss_fn_2_8050G¢

¢ 
ª " 9
__inference_loss_fn_3_8061^¢

¢ 
ª " Ó
J__inference_max_pooling1d_10_layer_call_and_return_conditional_losses_5317E¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ª
/__inference_max_pooling1d_10_layer_call_fn_5323wE¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÓ
J__inference_max_pooling1d_11_layer_call_and_return_conditional_losses_5472E¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ª
/__inference_max_pooling1d_11_layer_call_fn_5478wE¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÒ
I__inference_max_pooling1d_8_layer_call_and_return_conditional_losses_5007E¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ©
.__inference_max_pooling1d_8_layer_call_fn_5013wE¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÒ
I__inference_max_pooling1d_9_layer_call_and_return_conditional_losses_5162E¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ©
.__inference_max_pooling1d_9_layer_call_fn_5168wE¢B
;¢8
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÔ
F__inference_sequential_2_layer_call_and_return_conditional_losses_6127"# !019:78GHPQNO^_ghefyzD¢A
:¢7
-*
conv1d_8_inputÿÿÿÿÿÿÿÿÿN
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ô
F__inference_sequential_2_layer_call_and_return_conditional_losses_6225# "!01:798GHQNPO^_hegfyzD¢A
:¢7
-*
conv1d_8_inputÿÿÿÿÿÿÿÿÿN
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ì
F__inference_sequential_2_layer_call_and_return_conditional_losses_6856"# !019:78GHPQNO^_ghefyz<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿN
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ì
F__inference_sequential_2_layer_call_and_return_conditional_losses_7021# "!01:798GHQNPO^_hegfyz<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿN
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 «
+__inference_sequential_2_layer_call_fn_6381|"# !019:78GHPQNO^_ghefyzD¢A
:¢7
-*
conv1d_8_inputÿÿÿÿÿÿÿÿÿN
p

 
ª "ÿÿÿÿÿÿÿÿÿ«
+__inference_sequential_2_layer_call_fn_6536|# "!01:798GHQNPO^_hegfyzD¢A
:¢7
-*
conv1d_8_inputÿÿÿÿÿÿÿÿÿN
p 

 
ª "ÿÿÿÿÿÿÿÿÿ£
+__inference_sequential_2_layer_call_fn_7078t"# !019:78GHPQNO^_ghefyz<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿN
p

 
ª "ÿÿÿÿÿÿÿÿÿ£
+__inference_sequential_2_layer_call_fn_7135t# "!01:798GHQNPO^_hegfyz<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿN
p 

 
ª "ÿÿÿÿÿÿÿÿÿÆ
"__inference_signature_wrapper_6627# "!01:798GHQNPO^_hegfyzN¢K
¢ 
DªA
?
conv1d_8_input-*
conv1d_8_inputÿÿÿÿÿÿÿÿÿN"1ª.
,
dense_2!
dense_2ÿÿÿÿÿÿÿÿÿ