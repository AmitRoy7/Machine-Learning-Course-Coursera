%comment using % sign

%Elementary Math Operation

%addition
5 + 6

%subtraction
3-2

%multiplaction
5*8

%division
1/2

%exponentiation
2^6




%Logical Opeartion

%Equal Check
1==2

%Not Equal Check
1~2

%AND
1 && 0

%OR
1 || 0

%XOR
xor(1,0)



%Octave Prompt Change
PS1('>> ');

%Octave Variable
a = 3

%put a semicolon to avoid immeadiate result print
a = 3;

%string assignment
b = 'hi';

%logical value assignment
c = (3>=1);





%Print Variable, type variable press enter
a = pi;
a

%Can also use disp() command
disp(a);


%display stirng using disp(sprintf(' ', , )) syntax
disp(sprintf('2 decimals: %0.2f',a));
disp(sprintf('6 decimals: %0.6f\n',a));

%long format 
format long 
a =  3.14159265358979	

%short format
a =  3.1416





%Creating Matrix, 
%semicolon means go to first column of next row
%comma or space means go to next column of same row
A = [1,2;3,4;5,6]

A = [1 2;3 4;5 6]

A = [1,2;
3,4;
5,6]

v = [1 2 3]




%creating Vector
v=[1;2;3]

%creating Vector: 
%variable name = startvalue:incrementvalue:endlimit
%variable name = startvalue:endvalue (increment value will be 1)
v = 1:0.1:2




%generate m by n matrix of ones
%ones(m,n)
ones(2,3)


%generate m by n zero matrix
%zeros(m,n)
zeros(1,3)


%generate m by n matrix of random values
%rand(m,n)
rand(1,3)


%generate m by n matrix of gaussian distribution
%randn(m,n)
randn(1,3)


%generate histogram
w = -6 + sqrt(10)*(randn(1,10000));
hist(w)
hist(w,50)


%generate n by n identity matrix 
%eye(n)
eye(3)


%help command 
%help command_name
help eye
help rand
help help




%size of matrix
%size(matrix_name) returns a 1 by 2 matrix
%let A be a 3,2 matrix
size(A)

sz = size(A);
sz

[m,n]=size(A) %m=number of row, n=number of column


size(A,1) %returns number of row
size(A,2) %returns number of column




%length of a matrix/vector
%length(matrix or vector name)
%reutrns the size of the longest dimension
length(v);
length(A);
length([1;2;3;4;5]);




%current directory
pwd


%change directory
%cd 'path'
cd '/home/amit-roy/Desktop'


%list directory
ls



%load data from file system
%load filename
%load ('filename')
load featuresX.dat
load priceY.dat
load ('featuresX.dat')
load ('priceY.dat')



%who and whos
%who command -> show variables on workspace
%whos command -> show deails of variables
who
whos


%clear command 
%clear variable_name 	--> clear that variable
%clear 			--> clear all variable
clear featuresX.dat
clear



%save command
%save filename variablename
save hello.m v 			%save as binary format
save hello.txt v -ascii		%save as ascii format






%matrix element accessing
%A(m,n) -> fetches nth column of mth row
A(3,2)


% A(m,:) -> fetches everything in the mth row
% A(:,n) -> fetches everything in the nth column
A(2,:)	%fetches everything from the second row
A(:,2)	%fetches everything from the second col


% A([m n],:)-> fetches everything from mth row and nth row
A([1 3],:) 		%fetches the first and 3rd row
A(:,2) = [10;11;12] 	%assigning into second column
A = [A,[100;101;102]]	%adding another column with A
A(:)			%put all elements of A in a single colum vector
C = [A B]		%put B beside A assign into C
C = [A,B]		%put B beside A assign into C
C = [A;B]		%put B below  A assign into C





%matrix multiplication
A*C


%element wise operation . 
%element wise multiplication
A.*B


%element wise squaring
A.^2

%element wise division
1./v


%logarithm
log(v)


%exponentiation
exp(v)


%element-wise absolute value
abs(v)


%negation
-v
-1*v


%incerease all element
v + ones(length(v),1)
v + 1


%transpose matrix
A'


%maximum-minimum
%max(vector_name)
%[val,ind] = max(vector_name)
max(a)


%max(matrix_name)
%returns column-wise maximum
max(A)
max(rand(3))


%matrix_name < constant
%elementwise logical operation
a<3
find(a<3)	%returns indices of elements less than 3



%magic(m)	return m by m matrix, all rows,cols,diagonals equals 

A = magic(3)
[r,c] = find(A>=7)	%retruns row and column of elements >= 7

%summation of all elements
sum(a)


%product of all elements
prod(a)

%floor of all elements
floor(a)

%ceiling of all elements
ceil(a)

max(A,[],1)	%max of first dimension
max(A,[],2)	%max of second dimension
max(max(A))	%max of whole matrix
max(A(:))	%max of whole matrix


A = magic(9)
sum(A,1)			%columnwise sum
sum(A,2)			%rowwise sum
sum(sum(A.*eye(9)))		%main diagonal sum
sum(sum(A.*flipud(eye(9))))	%sec. diagonal sum
pinv(A)				%inverse of A






