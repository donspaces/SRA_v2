ез
Я+Г+
:
Add
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
И
AsString

input"T

output"
Ttype:
2		
"
	precisionintџџџџџџџџџ"

scientificbool( "
shortestbool( "
widthintџџџџџџџџџ"
fillstring 
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
n
NotEqual
x"T
y"T
z
""
Ttype:
2	
"$
incompatible_shape_errorbool(
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
Ѕ
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
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
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
З
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
Ї
SparseSegmentMean	
data"T
indices"Tidx
segment_ids"Tsegmentids
output"T"
Ttype:
2"
Tidxtype0:
2	"
Tsegmentidstype0:
2	
Р
StatelessIf
cond"Tcond
input2Tin
output2Tout"
Tcondtype"
Tin
list(type)("
Tout
list(type)("
then_branchfunc"
else_branchfunc" 
output_shapeslist(shape)
 
@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
;
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 
9
VarIsInitializedOp
resource
is_initialized

E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.3.02unknown8Р

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 

global_stepVarHandleOp*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	

PlaceholderPlaceholder*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
dtype0*%
shape:џџџџџџџџџџџџџџџџџџ
Ё
odnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*_
_classU
SQloc:@dnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights*
_output_shapes
:*
dtype0*
valueB"     

ndnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Initializer/truncated_normal/meanConst*_
_classU
SQloc:@dnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights*
_output_shapes
: *
dtype0*
valueB
 *    

pdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*_
_classU
SQloc:@dnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights*
_output_shapes
: *
dtype0*
valueB
 *  >

ydnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalodnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Initializer/truncated_normal/shape*
T0*_
_classU
SQloc:@dnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights* 
_output_shapes
:
 *
dtype0
э
mdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Initializer/truncated_normal/mulMulydnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalpdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Initializer/truncated_normal/stddev*
T0*_
_classU
SQloc:@dnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights* 
_output_shapes
:
 
л
idnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Initializer/truncated_normalAddmdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Initializer/truncated_normal/mulndnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Initializer/truncated_normal/mean*
T0*_
_classU
SQloc:@dnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights* 
_output_shapes
:
 
з
Ldnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weightsVarHandleOp*_
_classU
SQloc:@dnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights*
_output_shapes
: *
dtype0*
shape:
 *]
shared_nameNLdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights
щ
mdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpLdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights*
_output_shapes
: 
­
Sdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/AssignAssignVariableOpLdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weightsidnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Initializer/truncated_normal*
dtype0
я
`dnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Read/ReadVariableOpReadVariableOpLdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights* 
_output_shapes
:
 *
dtype0

[dnn/input_from_feature_columns/input_layer/terms_embedding_1/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 

Udnn/input_from_feature_columns/input_layer/terms_embedding_1/to_sparse_input/NotEqualNotEqualPlaceholder[dnn/input_from_feature_columns/input_layer/terms_embedding_1/to_sparse_input/ignore_value/x*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
н
Tdnn/input_from_feature_columns/input_layer/terms_embedding_1/to_sparse_input/indicesWhereUdnn/input_from_feature_columns/input_layer/terms_embedding_1/to_sparse_input/NotEqual*'
_output_shapes
:џџџџџџџџџ

Sdnn/input_from_feature_columns/input_layer/terms_embedding_1/to_sparse_input/valuesGatherNdPlaceholderTdnn/input_from_feature_columns/input_layer/terms_embedding_1/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:џџџџџџџџџ
Ѓ
Xdnn/input_from_feature_columns/input_layer/terms_embedding_1/to_sparse_input/dense_shapeShapePlaceholder*
T0*
_output_shapes
:*
out_type0	
ь
Cdnn/input_from_feature_columns/input_layer/terms_embedding_1/lookupStringToHashBucketFastSdnn/input_from_feature_columns/input_layer/terms_embedding_1/to_sparse_input/values*#
_output_shapes
:џџџџџџџџџ*
num_buckets 
Њ
`dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Љ
_dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:
В
Zdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/SliceSliceXdnn/input_from_feature_columns/input_layer/terms_embedding_1/to_sparse_input/dense_shape`dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice/begin_dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
Є
Zdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
К
Ydnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/ProdProdZdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/SliceZdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Const*
T0	*
_output_shapes
: 
Ї
ednn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
dtype0*
value	B :
Є
bdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
в
]dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GatherV2GatherV2Xdnn/input_from_feature_columns/input_layer/terms_embedding_1/to_sparse_input/dense_shapeednn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GatherV2/indicesbdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
Ы
[dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Cast/xPackYdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Prod]dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GatherV2*
N*
T0	*
_output_shapes
:
Џ
bdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/SparseReshapeSparseReshapeTdnn/input_from_feature_columns/input_layer/terms_embedding_1/to_sparse_input/indicesXdnn/input_from_feature_columns/input_layer/terms_embedding_1/to_sparse_input/dense_shape[dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Cast/x*-
_output_shapes
:џџџџџџџџџ:
ъ
kdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/SparseReshape/IdentityIdentityCdnn/input_from_feature_columns/input_layer/terms_embedding_1/lookup*
T0	*#
_output_shapes
:џџџџџџџџџ
Ѕ
cdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
dtype0	*
value	B	 R 
ё
adnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GreaterEqualGreaterEqualkdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/SparseReshape/Identitycdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:џџџџџџџџџ
я
Zdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/WhereWhereadnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GreaterEqual*'
_output_shapes
:џџџџџџџџџ
Е
bdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
е
\dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/ReshapeReshapeZdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Wherebdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:џџџџџџџџџ
І
ddnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
ш
_dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GatherV2_1GatherV2bdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/SparseReshape\dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Reshapeddnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:џџџџџџџџџ
І
ddnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GatherV2_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
э
_dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GatherV2_2GatherV2kdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/SparseReshape/Identity\dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Reshapeddnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:џџџџџџџџџ
є
]dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/IdentityIdentityddnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
А
ndnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 

|dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows_dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GatherV2_1_dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/GatherV2_2]dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Identityndnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ
в
dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
д
dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
д
dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      

zdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlice|dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/strided_slice/stackdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*#
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask*
shrink_axis_mask
К
sdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/UniqueUnique~dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
љ
}dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/embedding_lookupResourceGatherLdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weightssdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/Unique*
Tindices0	*_
_classU
SQloc:@dnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights*'
_output_shapes
:џџџџџџџџџ*
dtype0
Ѕ
dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity}dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*_
_classU
SQloc:@dnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights*'
_output_shapes
:џџџџџџџџџ
а
dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1Identitydnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity*
T0*'
_output_shapes
:џџџџџџџџџ
Ф
ldnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparseSparseSegmentMeandnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity_1udnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/Unique:1zdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse/strided_slice*
T0*
Tsegmentids0	*'
_output_shapes
:џџџџџџџџџ
Е
ddnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   

^dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Reshape_1Reshape~dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2ddnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:џџџџџџџџџ
і
Zdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/ShapeShapeldnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
В
hdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
Д
jdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Д
jdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
ж
bdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/strided_sliceStridedSliceZdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Shapehdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/strided_slice/stackjdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/strided_slice/stack_1jdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

\dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/stack/0Const*
_output_shapes
: *
dtype0*
value	B :
в
Zdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/stackPack\dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/stack/0bdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/strided_slice*
N*
T0*
_output_shapes
:
и
Ydnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/TileTile^dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Reshape_1Zdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/stack*
T0
*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ

_dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/zeros_like	ZerosLikeldnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
К
Tdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weightsSelectYdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Tile_dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/zeros_likeldnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:џџџџџџџџџ
ё
[dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Cast_1CastXdnn/input_from_feature_columns/input_layer/terms_embedding_1/to_sparse_input/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
Ќ
bdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
dtype0*
valueB: 
Ћ
adnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:
Л
\dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice_1Slice[dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Cast_1bdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice_1/beginadnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
р
\dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Shape_1ShapeTdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights*
T0*
_output_shapes
:
Ќ
bdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB:
Д
adnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice_2/sizeConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
М
\dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice_2Slice\dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Shape_1bdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice_2/beginadnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
Ђ
`dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Г
[dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/concatConcatV2\dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice_1\dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Slice_2`dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/concat/axis*
N*
T0*
_output_shapes
:
Ю
^dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Reshape_2ReshapeTdnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights[dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/concat*
T0*'
_output_shapes
:џџџџџџџџџ
а
Bdnn/input_from_feature_columns/input_layer/terms_embedding_1/ShapeShape^dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Reshape_2*
T0*
_output_shapes
:

Pdnn/input_from_feature_columns/input_layer/terms_embedding_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 

Rdnn/input_from_feature_columns/input_layer/terms_embedding_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:

Rdnn/input_from_feature_columns/input_layer/terms_embedding_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
о
Jdnn/input_from_feature_columns/input_layer/terms_embedding_1/strided_sliceStridedSliceBdnn/input_from_feature_columns/input_layer/terms_embedding_1/ShapePdnn/input_from_feature_columns/input_layer/terms_embedding_1/strided_slice/stackRdnn/input_from_feature_columns/input_layer/terms_embedding_1/strided_slice/stack_1Rdnn/input_from_feature_columns/input_layer/terms_embedding_1/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask

Ldnn/input_from_feature_columns/input_layer/terms_embedding_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :

Jdnn/input_from_feature_columns/input_layer/terms_embedding_1/Reshape/shapePackJdnn/input_from_feature_columns/input_layer/terms_embedding_1/strided_sliceLdnn/input_from_feature_columns/input_layer/terms_embedding_1/Reshape/shape/1*
N*
T0*
_output_shapes
:
­
Ddnn/input_from_feature_columns/input_layer/terms_embedding_1/ReshapeReshape^dnn/input_from_feature_columns/input_layer/terms_embedding_1/terms_embedding_weights/Reshape_2Jdnn/input_from_feature_columns/input_layer/terms_embedding_1/Reshape/shape*
T0*'
_output_shapes
:џџџџџџџџџ

<dnn/input_from_feature_columns/input_layer/concat/concat_dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
М
8dnn/input_from_feature_columns/input_layer/concat/concatIdentityDdnn/input_from_feature_columns/input_layer/terms_embedding_1/Reshape*
T0*'
_output_shapes
:џџџџџџџџџ
З
9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
:*
dtype0*
valueB"      
Љ
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
valueB
 *ьбО
Љ
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
valueB
 *ьб>
№
Adnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_0/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:*
dtype0
ў
7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: 

7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_0/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:

3dnn/hiddenlayer_0/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_0/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes

:
Й
dnn/hiddenlayer_0/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_0/kernel*
_output_shapes
: *
dtype0*
shape
:*)
shared_namednn/hiddenlayer_0/kernel

9dnn/hiddenlayer_0/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/kernel*
_output_shapes
: 

dnn/hiddenlayer_0/kernel/AssignAssignVariableOpdnn/hiddenlayer_0/kernel3dnn/hiddenlayer_0/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_0/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel*
_output_shapes

:*
dtype0
 
(dnn/hiddenlayer_0/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_0/bias*
_output_shapes
:*
dtype0*
valueB*    
Џ
dnn/hiddenlayer_0/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_0/bias*
_output_shapes
: *
dtype0*
shape:*'
shared_namednn/hiddenlayer_0/bias
}
7dnn/hiddenlayer_0/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_0/bias*
_output_shapes
: 

dnn/hiddenlayer_0/bias/AssignAssignVariableOpdnn/hiddenlayer_0/bias(dnn/hiddenlayer_0/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_0/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
_output_shapes
:*
dtype0

'dnn/hiddenlayer_0/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/kernel*
_output_shapes

:*
dtype0
З
dnn/hiddenlayer_0/MatMulMatMul8dnn/input_from_feature_columns/input_layer/concat/concat'dnn/hiddenlayer_0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
{
(dnn/hiddenlayer_0/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_0/bias*
_output_shapes
:*
dtype0

dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMul(dnn/hiddenlayer_0/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
k
dnn/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
g
dnn/zero_fraction/SizeSizednn/hiddenlayer_0/Relu*
T0*
_output_shapes
: *
out_type0	
c
dnn/zero_fraction/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ

dnn/zero_fraction/LessEqual	LessEqualdnn/zero_fraction/Sizednn/zero_fraction/LessEqual/y*
T0	*
_output_shapes
: 
њ
dnn/zero_fraction/condStatelessIfdnn/zero_fraction/LessEqualdnn/hiddenlayer_0/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *4
else_branch%R#
!dnn_zero_fraction_cond_false_1883*
output_shapes
: : : : : : *3
then_branch$R"
 dnn_zero_fraction_cond_true_1882
d
dnn/zero_fraction/cond/IdentityIdentitydnn/zero_fraction/cond*
T0	*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_1Identitydnn/zero_fraction/cond:1*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_2Identitydnn/zero_fraction/cond:2*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_3Identitydnn/zero_fraction/cond:3*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_4Identitydnn/zero_fraction/cond:4*
T0*
_output_shapes
: 
h
!dnn/zero_fraction/cond/Identity_5Identitydnn/zero_fraction/cond:5*
T0*
_output_shapes
: 

(dnn/zero_fraction/counts_to_fraction/subSubdnn/zero_fraction/Sizednn/zero_fraction/cond/Identity*
T0	*
_output_shapes
: 

)dnn/zero_fraction/counts_to_fraction/CastCast(dnn/zero_fraction/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 
{
+dnn/zero_fraction/counts_to_fraction/Cast_1Castdnn/zero_fraction/Size*

DstT0*

SrcT0	*
_output_shapes
: 
А
,dnn/zero_fraction/counts_to_fraction/truedivRealDiv)dnn/zero_fraction/counts_to_fraction/Cast+dnn/zero_fraction/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
u
dnn/zero_fraction/fractionIdentity,dnn/zero_fraction/counts_to_fraction/truediv*
T0*
_output_shapes
: 

.dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_0/fraction_of_zero_values
Ї
)dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_0/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_0/activation

dnn/hiddenlayer_0/activationHistogramSummary dnn/hiddenlayer_0/activation/tagdnn/hiddenlayer_0/Relu*
_output_shapes
: 
З
9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shapeConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
:*
dtype0*
valueB"      
Љ
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/minConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *јKЦО
Љ
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/maxConst*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
valueB
 *јKЦ>
№
Adnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform9dnn/hiddenlayer_1/kernel/Initializer/random_uniform/shape*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:*
dtype0
ў
7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/subSub7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/max7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: 

7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mulMulAdnn/hiddenlayer_1/kernel/Initializer/random_uniform/RandomUniform7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/sub*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:

3dnn/hiddenlayer_1/kernel/Initializer/random_uniformAdd7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/mul7dnn/hiddenlayer_1/kernel/Initializer/random_uniform/min*
T0*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes

:
Й
dnn/hiddenlayer_1/kernelVarHandleOp*+
_class!
loc:@dnn/hiddenlayer_1/kernel*
_output_shapes
: *
dtype0*
shape
:*)
shared_namednn/hiddenlayer_1/kernel

9dnn/hiddenlayer_1/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/kernel*
_output_shapes
: 

dnn/hiddenlayer_1/kernel/AssignAssignVariableOpdnn/hiddenlayer_1/kernel3dnn/hiddenlayer_1/kernel/Initializer/random_uniform*
dtype0

,dnn/hiddenlayer_1/kernel/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
_output_shapes

:*
dtype0
 
(dnn/hiddenlayer_1/bias/Initializer/zerosConst*)
_class
loc:@dnn/hiddenlayer_1/bias*
_output_shapes
:*
dtype0*
valueB*    
Џ
dnn/hiddenlayer_1/biasVarHandleOp*)
_class
loc:@dnn/hiddenlayer_1/bias*
_output_shapes
: *
dtype0*
shape:*'
shared_namednn/hiddenlayer_1/bias
}
7dnn/hiddenlayer_1/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/hiddenlayer_1/bias*
_output_shapes
: 

dnn/hiddenlayer_1/bias/AssignAssignVariableOpdnn/hiddenlayer_1/bias(dnn/hiddenlayer_1/bias/Initializer/zeros*
dtype0
}
*dnn/hiddenlayer_1/bias/Read/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
_output_shapes
:*
dtype0

'dnn/hiddenlayer_1/MatMul/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/kernel*
_output_shapes

:*
dtype0

dnn/hiddenlayer_1/MatMulMatMuldnn/hiddenlayer_0/Relu'dnn/hiddenlayer_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
{
(dnn/hiddenlayer_1/BiasAdd/ReadVariableOpReadVariableOpdnn/hiddenlayer_1/bias*
_output_shapes
:*
dtype0

dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMul(dnn/hiddenlayer_1/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
k
dnn/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
i
dnn/zero_fraction_1/SizeSizednn/hiddenlayer_1/Relu*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_1/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ

dnn/zero_fraction_1/LessEqual	LessEqualdnn/zero_fraction_1/Sizednn/zero_fraction_1/LessEqual/y*
T0	*
_output_shapes
: 

dnn/zero_fraction_1/condStatelessIfdnn/zero_fraction_1/LessEqualdnn/hiddenlayer_1/Relu*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *6
else_branch'R%
#dnn_zero_fraction_1_cond_false_1953*
output_shapes
: : : : : : *5
then_branch&R$
"dnn_zero_fraction_1_cond_true_1952
h
!dnn/zero_fraction_1/cond/IdentityIdentitydnn/zero_fraction_1/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_1Identitydnn/zero_fraction_1/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_2Identitydnn/zero_fraction_1/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_3Identitydnn/zero_fraction_1/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_4Identitydnn/zero_fraction_1/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_1/cond/Identity_5Identitydnn/zero_fraction_1/cond:5*
T0*
_output_shapes
: 

*dnn/zero_fraction_1/counts_to_fraction/subSubdnn/zero_fraction_1/Size!dnn/zero_fraction_1/cond/Identity*
T0	*
_output_shapes
: 

+dnn/zero_fraction_1/counts_to_fraction/CastCast*dnn/zero_fraction_1/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_1/counts_to_fraction/Cast_1Castdnn/zero_fraction_1/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ж
.dnn/zero_fraction_1/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_1/counts_to_fraction/Cast-dnn/zero_fraction_1/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_1/fractionIdentity.dnn/zero_fraction_1/counts_to_fraction/truediv*
T0*
_output_shapes
: 

.dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*:
value1B/ B)dnn/hiddenlayer_1/fraction_of_zero_values
Љ
)dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary.dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/fraction*
T0*
_output_shapes
: 
}
 dnn/hiddenlayer_1/activation/tagConst*
_output_shapes
: *
dtype0*-
value$B" Bdnn/hiddenlayer_1/activation

dnn/hiddenlayer_1/activationHistogramSummary dnn/hiddenlayer_1/activation/tagdnn/hiddenlayer_1/Relu*
_output_shapes
: 
Љ
2dnn/logits/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
:*
dtype0*
valueB"      

0dnn/logits/kernel/Initializer/random_uniform/minConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
valueB
 *   П

0dnn/logits/kernel/Initializer/random_uniform/maxConst*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
valueB
 *   ?
л
:dnn/logits/kernel/Initializer/random_uniform/RandomUniformRandomUniform2dnn/logits/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:*
dtype0
т
0dnn/logits/kernel/Initializer/random_uniform/subSub0dnn/logits/kernel/Initializer/random_uniform/max0dnn/logits/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: 
є
0dnn/logits/kernel/Initializer/random_uniform/mulMul:dnn/logits/kernel/Initializer/random_uniform/RandomUniform0dnn/logits/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:
ц
,dnn/logits/kernel/Initializer/random_uniformAdd0dnn/logits/kernel/Initializer/random_uniform/mul0dnn/logits/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@dnn/logits/kernel*
_output_shapes

:
Є
dnn/logits/kernelVarHandleOp*$
_class
loc:@dnn/logits/kernel*
_output_shapes
: *
dtype0*
shape
:*"
shared_namednn/logits/kernel
s
2dnn/logits/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/kernel*
_output_shapes
: 
z
dnn/logits/kernel/AssignAssignVariableOpdnn/logits/kernel,dnn/logits/kernel/Initializer/random_uniform*
dtype0
w
%dnn/logits/kernel/Read/ReadVariableOpReadVariableOpdnn/logits/kernel*
_output_shapes

:*
dtype0

!dnn/logits/bias/Initializer/zerosConst*"
_class
loc:@dnn/logits/bias*
_output_shapes
:*
dtype0*
valueB*    

dnn/logits/biasVarHandleOp*"
_class
loc:@dnn/logits/bias*
_output_shapes
: *
dtype0*
shape:* 
shared_namednn/logits/bias
o
0dnn/logits/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdnn/logits/bias*
_output_shapes
: 
k
dnn/logits/bias/AssignAssignVariableOpdnn/logits/bias!dnn/logits/bias/Initializer/zeros*
dtype0
o
#dnn/logits/bias/Read/ReadVariableOpReadVariableOpdnn/logits/bias*
_output_shapes
:*
dtype0
r
 dnn/logits/MatMul/ReadVariableOpReadVariableOpdnn/logits/kernel*
_output_shapes

:*
dtype0

dnn/logits/MatMulMatMuldnn/hiddenlayer_1/Relu dnn/logits/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
m
!dnn/logits/BiasAdd/ReadVariableOpReadVariableOpdnn/logits/bias*
_output_shapes
:*
dtype0

dnn/logits/BiasAddBiasAdddnn/logits/MatMul!dnn/logits/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ
e
dnn/zero_fraction_2/SizeSizednn/logits/BiasAdd*
T0*
_output_shapes
: *
out_type0	
e
dnn/zero_fraction_2/LessEqual/yConst*
_output_shapes
: *
dtype0	*
valueB	 Rџџџџ

dnn/zero_fraction_2/LessEqual	LessEqualdnn/zero_fraction_2/Sizednn/zero_fraction_2/LessEqual/y*
T0	*
_output_shapes
: 
ў
dnn/zero_fraction_2/condStatelessIfdnn/zero_fraction_2/LessEqualdnn/logits/BiasAdd*
Tcond0
*
Tin
2*
Tout

2	*
_lower_using_switch_merge(* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *6
else_branch'R%
#dnn_zero_fraction_2_cond_false_2022*
output_shapes
: : : : : : *5
then_branch&R$
"dnn_zero_fraction_2_cond_true_2021
h
!dnn/zero_fraction_2/cond/IdentityIdentitydnn/zero_fraction_2/cond*
T0	*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_1Identitydnn/zero_fraction_2/cond:1*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_2Identitydnn/zero_fraction_2/cond:2*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_3Identitydnn/zero_fraction_2/cond:3*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_4Identitydnn/zero_fraction_2/cond:4*
T0*
_output_shapes
: 
l
#dnn/zero_fraction_2/cond/Identity_5Identitydnn/zero_fraction_2/cond:5*
T0*
_output_shapes
: 

*dnn/zero_fraction_2/counts_to_fraction/subSubdnn/zero_fraction_2/Size!dnn/zero_fraction_2/cond/Identity*
T0	*
_output_shapes
: 

+dnn/zero_fraction_2/counts_to_fraction/CastCast*dnn/zero_fraction_2/counts_to_fraction/sub*

DstT0*

SrcT0	*
_output_shapes
: 

-dnn/zero_fraction_2/counts_to_fraction/Cast_1Castdnn/zero_fraction_2/Size*

DstT0*

SrcT0	*
_output_shapes
: 
Ж
.dnn/zero_fraction_2/counts_to_fraction/truedivRealDiv+dnn/zero_fraction_2/counts_to_fraction/Cast-dnn/zero_fraction_2/counts_to_fraction/Cast_1*
T0*
_output_shapes
: 
y
dnn/zero_fraction_2/fractionIdentity.dnn/zero_fraction_2/counts_to_fraction/truediv*
T0*
_output_shapes
: 

'dnn/logits/fraction_of_zero_values/tagsConst*
_output_shapes
: *
dtype0*3
value*B( B"dnn/logits/fraction_of_zero_values

"dnn/logits/fraction_of_zero_valuesScalarSummary'dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_2/fraction*
T0*
_output_shapes
: 
o
dnn/logits/activation/tagConst*
_output_shapes
: *
dtype0*&
valueB Bdnn/logits/activation
p
dnn/logits/activationHistogramSummarydnn/logits/activation/tagdnn/logits/BiasAdd*
_output_shapes
: 
S
head/logits/ShapeShapednn/logits/BiasAdd*
T0*
_output_shapes
:
g
%head/logits/assert_rank_at_least/rankConst*
_output_shapes
: *
dtype0*
value	B :
W
Ohead/logits/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp
H
@head/logits/assert_rank_at_least/static_checks_determined_all_okNoOp
o
head/predictions/probabilitiesSoftmaxdnn/logits/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџ
o
$head/predictions/class_ids/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

head/predictions/class_idsArgMaxdnn/logits/BiasAdd$head/predictions/class_ids/dimension*
T0*#
_output_shapes
:џџџџџџџџџ
j
head/predictions/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ

head/predictions/ExpandDims
ExpandDimshead/predictions/class_idshead/predictions/ExpandDims/dim*
T0	*'
_output_shapes
:џџџџџџџџџ
w
head/predictions/str_classesAsStringhead/predictions/ExpandDims*
T0	*'
_output_shapes
:џџџџџџџџџ
X
head/predictions/ShapeShapednn/logits/BiasAdd*
T0*
_output_shapes
:
n
$head/predictions/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
p
&head/predictions/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
p
&head/predictions/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

head/predictions/strided_sliceStridedSlicehead/predictions/Shape$head/predictions/strided_slice/stack&head/predictions/strided_slice/stack_1&head/predictions/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
^
head/predictions/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
^
head/predictions/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
^
head/predictions/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :

head/predictions/rangeRangehead/predictions/range/starthead/predictions/range/limithead/predictions/range/delta*
_output_shapes
:
c
!head/predictions/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 

head/predictions/ExpandDims_1
ExpandDimshead/predictions/range!head/predictions/ExpandDims_1/dim*
T0*
_output_shapes

:
c
!head/predictions/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :

head/predictions/Tile/multiplesPackhead/predictions/strided_slice!head/predictions/Tile/multiples/1*
N*
T0*
_output_shapes
:

head/predictions/TileTilehead/predictions/ExpandDims_1head/predictions/Tile/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
Z
head/predictions/Shape_1Shapednn/logits/BiasAdd*
T0*
_output_shapes
:
p
&head/predictions/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
r
(head/predictions/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
r
(head/predictions/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:

 head/predictions/strided_slice_1StridedSlicehead/predictions/Shape_1&head/predictions/strided_slice_1/stack(head/predictions/strided_slice_1/stack_1(head/predictions/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
`
head/predictions/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : 
`
head/predictions/range_1/limitConst*
_output_shapes
: *
dtype0*
value	B :
`
head/predictions/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :

head/predictions/range_1Rangehead/predictions/range_1/starthead/predictions/range_1/limithead/predictions/range_1/delta*
_output_shapes
:
d
head/predictions/AsStringAsStringhead/predictions/range_1*
T0*
_output_shapes
:
c
!head/predictions/ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B : 

head/predictions/ExpandDims_2
ExpandDimshead/predictions/AsString!head/predictions/ExpandDims_2/dim*
T0*
_output_shapes

:
e
#head/predictions/Tile_1/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :

!head/predictions/Tile_1/multiplesPack head/predictions/strided_slice_1#head/predictions/Tile_1/multiples/1*
N*
T0*
_output_shapes
:

head/predictions/Tile_1Tilehead/predictions/ExpandDims_2!head/predictions/Tile_1/multiples*
T0*'
_output_shapes
:џџџџџџџџџ
X

head/ShapeShapehead/predictions/probabilities*
T0*
_output_shapes
:
b
head/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
d
head/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
d
head/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Ц
head/strided_sliceStridedSlice
head/Shapehead/strided_slice/stackhead/strided_slice/stack_1head/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
R
head/range/startConst*
_output_shapes
: *
dtype0*
value	B : 
R
head/range/limitConst*
_output_shapes
: *
dtype0*
value	B :
R
head/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
e

head/rangeRangehead/range/starthead/range/limithead/range/delta*
_output_shapes
:
J
head/AsStringAsString
head/range*
T0*
_output_shapes
:
U
head/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
j
head/ExpandDims
ExpandDimshead/AsStringhead/ExpandDims/dim*
T0*
_output_shapes

:
W
head/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
t
head/Tile/multiplesPackhead/strided_slicehead/Tile/multiples/1*
N*
T0*
_output_shapes
:
i
	head/TileTilehead/ExpandDimshead/Tile/multiples*
T0*'
_output_shapes
:џџџџџџџџџ

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part

save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_04543c0416994638bccfae188d2bc415/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
д
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ј
valueюBыBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBLdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weightsBdnn/logits/biasBdnn/logits/kernelBglobal_step

save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B 

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices*dnn/hiddenlayer_0/bias/Read/ReadVariableOp,dnn/hiddenlayer_0/kernel/Read/ReadVariableOp*dnn/hiddenlayer_1/bias/Read/ReadVariableOp,dnn/hiddenlayer_1/kernel/Read/ReadVariableOp`dnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Read/ReadVariableOp#dnn/logits/bias/Read/ReadVariableOp%dnn/logits/kernel/Read/ReadVariableOpglobal_step/Read/ReadVariableOp"/device:CPU:0*
dtypes

2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
з
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ј
valueюBыBdnn/hiddenlayer_0/biasBdnn/hiddenlayer_0/kernelBdnn/hiddenlayer_1/biasBdnn/hiddenlayer_1/kernelBLdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weightsBdnn/logits/biasBdnn/logits/kernelBglobal_step

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B 
Т
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*4
_output_shapes"
 ::::::::*
dtypes

2	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
_
save/AssignVariableOpAssignVariableOpdnn/hiddenlayer_0/biassave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
c
save/AssignVariableOp_1AssignVariableOpdnn/hiddenlayer_0/kernelsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
a
save/AssignVariableOp_2AssignVariableOpdnn/hiddenlayer_1/biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
c
save/AssignVariableOp_3AssignVariableOpdnn/hiddenlayer_1/kernelsave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:

save/AssignVariableOp_4AssignVariableOpLdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weightssave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
Z
save/AssignVariableOp_5AssignVariableOpdnn/logits/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
\
save/AssignVariableOp_6AssignVariableOpdnn/logits/kernelsave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0	*
_output_shapes
:
V
save/AssignVariableOp_7AssignVariableOpglobal_stepsave/Identity_8*
dtype0	
ш
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7
-
save/restore_allNoOp^save/restore_shardЪa
о
и
"dnn_zero_fraction_2_cond_true_2021-
)count_nonzero_notequal_dnn_logits_biasadd
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosЗ
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:џџџџџџџџџ:- )
'
_output_shapes
:џџџџџџџџџ
ж
щ
#dnn_zero_fraction_2_cond_false_2022-
)count_nonzero_notequal_dnn_logits_biasadd
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosЗ
count_nonzero/NotEqualNotEqual)count_nonzero_notequal_dnn_logits_biasaddcount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџ2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:џџџџџџџџџ:- )
'
_output_shapes
:џџџџџџџџџ
ф
к
 dnn_zero_fraction_cond_true_18821
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosЛ
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:џџџџџџџџџ:- )
'
_output_shapes
:џџџџџџџџџ
ц
м
"dnn_zero_fraction_1_cond_true_19521
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
cast	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalfromvalue_4o
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosЛ
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:џџџџџџџџџ2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0*
_output_shapes
: 2
count_nonzero/nonzero_countj
CastCast$count_nonzero/nonzero_count:output:0*

DstT0	*

SrcT0*
_output_shapes
: 2
Cast
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3
OptionalFromValue_4OptionalFromValue$count_nonzero/nonzero_count:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_4"
castCast:y:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"5
optionalfromvalue_4OptionalFromValue_4:optional:0*&
_input_shapes
:џџџџџџџџџ:- )
'
_output_shapes
:џџџџџџџџџ
м
ы
!dnn_zero_fraction_cond_false_18831
-count_nonzero_notequal_dnn_hiddenlayer_0_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosЛ
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_0_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџ2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:џџџџџџџџџ:- )
'
_output_shapes
:џџџџџџџџџ
о
э
#dnn_zero_fraction_1_cond_false_19531
-count_nonzero_notequal_dnn_hiddenlayer_1_relu
count_nonzero_nonzero_count	
optionalfromvalue
optionalfromvalue_1
optionalfromvalue_2
optionalfromvalue_3
optionalnoneo
count_nonzero/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    2
count_nonzero/zerosЛ
count_nonzero/NotEqualNotEqual-count_nonzero_notequal_dnn_hiddenlayer_1_relucount_nonzero/zeros:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
count_nonzero/NotEqual
count_nonzero/CastCastcount_nonzero/NotEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:џџџџџџџџџ2
count_nonzero/Cast{
count_nonzero/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
count_nonzero/Const
count_nonzero/nonzero_countSumcount_nonzero/Cast:y:0count_nonzero/Const:output:0*
T0	*
_output_shapes
: 2
count_nonzero/nonzero_count
OptionalFromValueOptionalFromValuecount_nonzero/zeros:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue
OptionalFromValue_1OptionalFromValuecount_nonzero/NotEqual:z:0*
Toutput_types
2
*
_output_shapes
: 2
OptionalFromValue_1
OptionalFromValue_2OptionalFromValuecount_nonzero/Cast:y:0*
Toutput_types
2	*
_output_shapes
: 2
OptionalFromValue_2
OptionalFromValue_3OptionalFromValuecount_nonzero/Const:output:0*
Toutput_types
2*
_output_shapes
: 2
OptionalFromValue_3D
OptionalNoneOptionalNone*
_output_shapes
: 2
OptionalNone"C
count_nonzero_nonzero_count$count_nonzero/nonzero_count:output:0"1
optionalfromvalueOptionalFromValue:optional:0"5
optionalfromvalue_1OptionalFromValue_1:optional:0"5
optionalfromvalue_2OptionalFromValue_2:optional:0"5
optionalfromvalue_3OptionalFromValue_3:optional:0"'
optionalnoneOptionalNone:optional:0*&
_input_shapes
:џџџџџџџџџ:- )
'
_output_shapes
:џџџџџџџџџ"И<
save/Const:0save/Identity:0save/restore_all (5 @F8"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"%
saved_model_main_op


group_deps"ъ
	summariesм
й
+dnn/hiddenlayer_0/fraction_of_zero_values:0
dnn/hiddenlayer_0/activation:0
+dnn/hiddenlayer_1/fraction_of_zero_values:0
dnn/hiddenlayer_1/activation:0
$dnn/logits/fraction_of_zero_values:0
dnn/logits/activation:0"Ў

trainable_variables


њ
Ndnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights:0Sdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Assignbdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Read/ReadVariableOp:0(2kdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Initializer/truncated_normal:08
Ј
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08

dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08"
	variables
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H
њ
Ndnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights:0Sdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Assignbdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Read/ReadVariableOp:0(2kdnn/input_from_feature_columns/input_layer/terms_embedding/embedding_weights/Initializer/truncated_normal:08
Ј
dnn/hiddenlayer_0/kernel:0dnn/hiddenlayer_0/kernel/Assign.dnn/hiddenlayer_0/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_0/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_0/bias:0dnn/hiddenlayer_0/bias/Assign,dnn/hiddenlayer_0/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_0/bias/Initializer/zeros:08
Ј
dnn/hiddenlayer_1/kernel:0dnn/hiddenlayer_1/kernel/Assign.dnn/hiddenlayer_1/kernel/Read/ReadVariableOp:0(25dnn/hiddenlayer_1/kernel/Initializer/random_uniform:08

dnn/hiddenlayer_1/bias:0dnn/hiddenlayer_1/bias/Assign,dnn/hiddenlayer_1/bias/Read/ReadVariableOp:0(2*dnn/hiddenlayer_1/bias/Initializer/zeros:08

dnn/logits/kernel:0dnn/logits/kernel/Assign'dnn/logits/kernel/Read/ReadVariableOp:0(2.dnn/logits/kernel/Initializer/random_uniform:08
{
dnn/logits/bias:0dnn/logits/bias/Assign%dnn/logits/bias/Read/ReadVariableOp:0(2#dnn/logits/bias/Initializer/zeros:08*л
classificationШ
7
inputs-
Placeholder:0џџџџџџџџџџџџџџџџџџ-
classes"
head/Tile:0џџџџџџџџџA
scores7
 head/predictions/probabilities:0џџџџџџџџџtensorflow/serving/classify*ш
predictм
6
terms-
Placeholder:0џџџџџџџџџџџџџџџџџџ?
all_class_ids.
head/predictions/Tile:0џџџџџџџџџ?
all_classes0
head/predictions/Tile_1:0џџџџџџџџџA
	class_ids4
head/predictions/ExpandDims:0	џџџџџџџџџ@
classes5
head/predictions/str_classes:0џџџџџџџџџ5
logits+
dnn/logits/BiasAdd:0џџџџџџџџџH
probabilities7
 head/predictions/probabilities:0џџџџџџџџџtensorflow/serving/predict*м
serving_defaultШ
7
inputs-
Placeholder:0џџџџџџџџџџџџџџџџџџ-
classes"
head/Tile:0џџџџџџџџџA
scores7
 head/predictions/probabilities:0џџџџџџџџџtensorflow/serving/classify