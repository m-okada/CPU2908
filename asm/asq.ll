; ModuleID = 'asq.c'
source_filename = "asq.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@Line = global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%d Error : %s\0A\00", align 1
@number = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), align 8
@locate = global i32 0, align 4
@inst_str = global [48 x [6 x i8]] [[6 x i8] c"LD\00\00\00\00", [6 x i8] c"ST\00\00\00\00", [6 x i8] c"MOV\00\00\00", [6 x i8] c"ADD\00\00\00", [6 x i8] c"SUB\00\00\00", [6 x i8] c"ADDC\00\00", [6 x i8] c"SUBB\00\00", [6 x i8] c"CMP\00\00\00", [6 x i8] c"AND\00\00\00", [6 x i8] c"OR\00\00\00\00", [6 x i8] c"XOR\00\00\00", [6 x i8] c"NOT\00\00\00", [6 x i8] c"XCHG\00\00", [6 x i8] c"SXT\00\00\00", [6 x i8] c"SWB\00\00\00", [6 x i8] c"PUSH\00\00", [6 x i8] c"POP\00\00\00", [6 x i8] c"JC\00\00\00\00", [6 x i8] c"JNC\00\00\00", [6 x i8] c"JZ\00\00\00\00", [6 x i8] c"JNZ\00\00\00", [6 x i8] c"JS\00\00\00\00", [6 x i8] c"JNS\00\00\00", [6 x i8] c"JO\00\00\00\00", [6 x i8] c"JNO\00\00\00", [6 x i8] c"JG\00\00\00\00", [6 x i8] c"JL\00\00\00\00", [6 x i8] c"JMP\00\00\00", [6 x i8] c"JMPS\00\00", [6 x i8] c"JMPN\00\00", [6 x i8] c"SHL\00\00\00", [6 x i8] c"SHR\00\00\00", [6 x i8] c"SAR\00\00\00", [6 x i8] c"INC\00\00\00", [6 x i8] c"DEC\00\00\00", [6 x i8] c"CALL\00\00", [6 x i8] c"RET\00\00\00", [6 x i8] c"SWI\00\00\00", [6 x i8] c"IRET\00\00", [6 x i8] c"EI\00\00\00\00", [6 x i8] c"DI\00\00\00\00", [6 x i8] c"STC\00\00\00", [6 x i8] c"CMC\00\00\00", [6 x i8] c"LDFR\00\00", [6 x i8] c"STFR\00\00", [6 x i8] c"TNS\00\00\00", [6 x i8] c"NOP\00\00\00", [6 x i8] zeroinitializer], align 16
@reg_str = global [11 x [4 x i8]] [[4 x i8] c"R0\00\00", [4 x i8] c"R1\00\00", [4 x i8] c"R2\00\00", [4 x i8] c"R3\00\00", [4 x i8] c"W0\00\00", [4 x i8] c"W1\00\00", [4 x i8] c"A0\00\00", [4 x i8] c"A1\00\00", [4 x i8] c"CP\00\00", [4 x i8] c"SP\00\00", [4 x i8] zeroinitializer], align 16
@directive_str = global [5 x [8 x i8]] [[8 x i8] c".ORG\00\00\00\00", [8 x i8] c".DB\00\00\00\00\00", [8 x i8] c".DW\00\00\00\00\00", [8 x i8] c"EQ\00\00\00\00\00\00", [8 x i8] zeroinitializer], align 16
@label_idx = global i32 0, align 4
@location = global i32 0, align 4
@label_loc = common global [1024 x i32] zeroinitializer, align 16
@label = common global [2014 x [32 x i8]] zeroinitializer, align 16
@mode = global i32 0, align 4
@buffPos = global i8* null, align 8
@nextPos = global i8* null, align 8
@fileBuff = common global [128 x i8] zeroinitializer, align 16
@buff = external global [128 x i8], align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"Register require.\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"',' require.\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Address expr require.\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"token[%s] type %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Opecode[%s]\00", align 1
@op = common global i32 0, align 4
@src_fp = common global %struct._IO_FILE* null, align 8
@pos = external global i8*, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"[%s]%ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Usage : asq FILENAME\0A\00", align 1
@fname = common global [256 x i8] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [28 x i8] c"Error : Filename too long.\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Error : Src file Can't open.\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c".o\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@obj_fp = common global %struct._IO_FILE* null, align 8
@.str.13 = private unnamed_addr constant [30 x i8] c"Error : Obj file Can't open.\0A\00", align 1
@msg = common global [128 x i8] zeroinitializer, align 16
@mem = common global [8192 x i16] zeroinitializer, align 16
@ident_tbl = common global [1024 x [32 x i8]] zeroinitializer, align 16
@ident_pref_tbl = common global [1024 x i8] zeroinitializer, align 16
@ident_value_tbl = common global [1024 x i32] zeroinitializer, align 16
@jmp_pos = common global [1024 x i32] zeroinitializer, align 16
@jmp_pos_type = common global [1024 x i32] zeroinitializer, align 16
@jmp_target = common global [1024 x i32] zeroinitializer, align 16
@op1 = common global i32 0, align 4
@op2 = common global i32 0, align 4
@op_type = common global i32 0, align 4
@label_value = common global [1024 x i32] zeroinitializer, align 16
@lineBuff = common global [128 x i8] zeroinitializer, align 16
@mem_fp = common global %struct._IO_FILE* null, align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @errorOut(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @Line, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 %3, i8* %4)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @char2int(i8 signext) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 0, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %21, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 16
  br i1 %7, label %8, label %24

; <label>:8:                                      ; preds = %5
  %9 = load i8*, i8** @number, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* %3, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %8
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %25

; <label>:20:                                     ; preds = %8
  br label %21

; <label>:21:                                     ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %5

; <label>:24:                                     ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %25

; <label>:25:                                     ; preds = %24, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @str2int(i32, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %10, %2
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %20

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i32 @char2int(i8 signext %15)
  %17 = add nsw i32 %13, %16
  store i32 %17, i32* %5, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  br label %6

; <label>:20:                                     ; preds = %6
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @get_opcode(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

; <label>:8:                                      ; preds = %45, %1
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [48 x [6 x i8]], [48 x [6 x i8]]* @inst_str, i64 0, i64 %10
  %12 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %13 = load i8, i8* %12, align 2
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %48

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [48 x [6 x i8]], [48 x [6 x i8]]* @inst_str, i64 0, i64 %17
  %19 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i32 0, i32 0
  store i8* %19, i8** %6, align 8
  store i8 1, i8* %7, align 1
  %20 = load i8*, i8** %3, align 8
  store i8* %20, i8** %5, align 8
  br label %21

; <label>:21:                                     ; preds = %34, %15
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %39

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %25
  store i8 0, i8* %7, align 1
  br label %39

; <label>:34:                                     ; preds = %25
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  br label %21

; <label>:39:                                     ; preds = %33, %21
  %40 = load i8, i8* %7, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %49

; <label>:45:                                     ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %8

; <label>:48:                                     ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %49

; <label>:49:                                     ; preds = %48, %43
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @get_register(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

; <label>:8:                                      ; preds = %45, %1
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [11 x [4 x i8]], [11 x [4 x i8]]* @reg_str, i64 0, i64 %10
  %12 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %13 = load i8, i8* %12, align 4
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %48

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [11 x [4 x i8]], [11 x [4 x i8]]* @reg_str, i64 0, i64 %17
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i32 0, i32 0
  store i8* %19, i8** %6, align 8
  store i8 1, i8* %7, align 1
  %20 = load i8*, i8** %3, align 8
  store i8* %20, i8** %5, align 8
  br label %21

; <label>:21:                                     ; preds = %34, %15
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %39

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %25
  store i8 0, i8* %7, align 1
  br label %39

; <label>:34:                                     ; preds = %25
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  br label %21

; <label>:39:                                     ; preds = %33, %21
  %40 = load i8, i8* %7, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %49

; <label>:45:                                     ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %8

; <label>:48:                                     ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %49

; <label>:49:                                     ; preds = %48, %43
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @register_label(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i32, i32* @label_idx, align 4
  %5 = icmp slt i32 %4, 1024
  br i1 %5, label %6, label %19

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* @location, align 4
  %8 = load i32, i32* @label_idx, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [1024 x i32], [1024 x i32]* @label_loc, i64 0, i64 %9
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @label_idx, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [2014 x [32 x i8]], [2014 x [32 x i8]]* @label, i64 0, i64 %12
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i32 0, i32 0
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @strcpy(i8* %14, i8* %15) #5
  %17 = load i32, i32* @label_idx, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @label_idx, align 4
  br label %19

; <label>:19:                                     ; preds = %6, %1
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @expr() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i8* @get_line(%struct._IO_FILE*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  br label %8

; <label>:8:                                      ; preds = %1, %39, %54
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %10 = call i64 @fread(i8* %6, i64 1, i64 1, %struct._IO_FILE* %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %8
  store i8* null, i8** %2, align 8
  br label %121

; <label>:15:                                     ; preds = %8
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

; <label>:19:                                     ; preds = %15
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 187
  br i1 %22, label %39, label %23

; <label>:23:                                     ; preds = %19
  %24 = load i8, i8* %6, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 239
  br i1 %26, label %39, label %27

; <label>:27:                                     ; preds = %23
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 255
  br i1 %30, label %39, label %31

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 254
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %31
  %36 = load i8, i8* %6, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 191
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %35, %31, %27, %23, %19, %15
  br label %8

; <label>:40:                                     ; preds = %35
  %41 = load i8, i8* %6, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 32
  br i1 %43, label %44, label %52

; <label>:44:                                     ; preds = %40
  %45 = load i8, i8* %6, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 9
  br i1 %47, label %48, label %52

; <label>:48:                                     ; preds = %44
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @fileBuff, i64 0, i64 0), align 16
  br label %55

; <label>:52:                                     ; preds = %44, %40
  br label %53

; <label>:53:                                     ; preds = %52
  br label %54

; <label>:54:                                     ; preds = %53
  br label %8

; <label>:55:                                     ; preds = %48
  store i32 1, i32* %4, align 4
  br label %56

; <label>:56:                                     ; preds = %101, %55
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 80
  br i1 %58, label %59, label %104

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @fileBuff, i32 0, i32 0), i64 %61
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %64 = call i64 @fread(i8* %62, i64 1, i64 1, %struct._IO_FILE* %63)
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %72

; <label>:68:                                     ; preds = %59
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* @fileBuff, i64 0, i64 %70
  store i8 0, i8* %71, align 1
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @fileBuff, i32 0, i32 0), i8** %2, align 8
  br label %121

; <label>:72:                                     ; preds = %59
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* @fileBuff, i64 0, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [128 x i8], [128 x i8]* @fileBuff, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 10
  br i1 %82, label %83, label %89

; <label>:83:                                     ; preds = %72
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* @fileBuff, i64 0, i64 %85
  store i8 0, i8* %86, align 1
  %87 = load i32, i32* @Line, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @Line, align 4
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @fileBuff, i32 0, i32 0), i8** %2, align 8
  br label %121

; <label>:89:                                     ; preds = %72
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* @fileBuff, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 59
  br i1 %95, label %96, label %100

; <label>:96:                                     ; preds = %89
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* @fileBuff, i64 0, i64 %98
  store i8 0, i8* %99, align 1
  br label %104

; <label>:100:                                    ; preds = %89
  br label %101

; <label>:101:                                    ; preds = %100
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %56

; <label>:104:                                    ; preds = %96, %56
  br label %105

; <label>:105:                                    ; preds = %104, %117
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %107 = call i64 @fread(i8* %7, i64 1, i64 1, %struct._IO_FILE* %106)
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 1
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %105
  br label %118

; <label>:112:                                    ; preds = %105
  %113 = load i8, i8* %7, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %114, 10
  br i1 %115, label %116, label %117

; <label>:116:                                    ; preds = %112
  br label %118

; <label>:117:                                    ; preds = %112
  br label %105

; <label>:118:                                    ; preds = %116, %111
  %119 = load i32, i32* @Line, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @Line, align 4
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @fileBuff, i32 0, i32 0), i8** %2, align 8
  br label %121

; <label>:121:                                    ; preds = %118, %83, %68, %14
  %122 = load i8*, i8** %2, align 8
  ret i8* %122
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @accept_T(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %1, %10
  %7 = call i32 @get_token()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %6
  br label %6

; <label>:11:                                     ; preds = %6
  br label %12

; <label>:12:                                     ; preds = %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %12
  store i32 1, i32* %2, align 4
  br label %18

; <label>:17:                                     ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %18

; <label>:18:                                     ; preds = %17, %16
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare i32 @get_token() #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @except_T(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @accept_T(i32 %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 1, i32* %2, align 4
  br label %9

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %9

; <label>:9:                                      ; preds = %8, %7
  %10 = load i32, i32* %2, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @accept(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  br label %6

; <label>:6:                                      ; preds = %1, %10
  %7 = call i32 @get_token()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %6
  br label %6

; <label>:11:                                     ; preds = %6
  br label %12

; <label>:12:                                     ; preds = %11
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %36

; <label>:16:                                     ; preds = %12
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buff, i32 0, i32 0), i8** %5, align 8
  br label %17

; <label>:17:                                     ; preds = %30, %16
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %35

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %36

; <label>:30:                                     ; preds = %21
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %5, align 8
  br label %17

; <label>:35:                                     ; preds = %17
  store i32 1, i32* %2, align 4
  br label %36

; <label>:36:                                     ; preds = %35, %29, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @except(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @accept(i8* %4)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 1, i32* %2, align 4
  br label %9

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %9

; <label>:9:                                      ; preds = %8, %7
  %10 = load i32, i32* %2, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define void @get_expr() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @except_reg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  br label %4

; <label>:4:                                      ; preds = %0, %8
  %5 = call i32 @get_token()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %4
  br label %4

; <label>:9:                                      ; preds = %4
  br label %10

; <label>:10:                                     ; preds = %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %20

; <label>:13:                                     ; preds = %10
  %14 = call i32 @get_register(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buff, i32 0, i32 0))
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %1, align 4
  br label %21

; <label>:19:                                     ; preds = %13
  br label %20

; <label>:20:                                     ; preds = %19, %10
  store i32 -1, i32* %1, align 4
  br label %21

; <label>:21:                                     ; preds = %20, %17
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @except_addr_expr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  br label %4

; <label>:4:                                      ; preds = %0, %8
  %5 = call i32 @get_token()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %4
  br label %4

; <label>:9:                                      ; preds = %4
  br label %10

; <label>:10:                                     ; preds = %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %22

; <label>:13:                                     ; preds = %10
  %14 = call i32 @get_register(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buff, i32 0, i32 0))
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = icmp sgt i32 %18, 7
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  store i32 -2, i32* %1, align 4
  br label %42

; <label>:21:                                     ; preds = %17, %13
  br label %22

; <label>:22:                                     ; preds = %21, %10
  br label %23

; <label>:23:                                     ; preds = %22, %27
  %24 = call i32 @get_token()
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %23
  br label %23

; <label>:28:                                     ; preds = %23
  br label %29

; <label>:29:                                     ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 7
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* %1, align 4
  br label %42

; <label>:34:                                     ; preds = %29
  br label %35

; <label>:35:                                     ; preds = %34, %39
  %36 = call i32 @get_token()
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %35
  br label %35

; <label>:40:                                     ; preds = %35
  br label %41

; <label>:41:                                     ; preds = %40
  store i32 -1, i32* %1, align 4
  br label %42

; <label>:42:                                     ; preds = %41, %32, %20
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define void @gen_LD() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @except_reg()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %0
  call void @errorOut(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  br label %14

; <label>:6:                                      ; preds = %0
  %7 = call i32 @except_T(i32 6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

; <label>:9:                                      ; preds = %6
  call void @errorOut(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0))
  br label %14

; <label>:10:                                     ; preds = %6
  %11 = call i32 @except_addr_expr()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

; <label>:13:                                     ; preds = %10
  call void @errorOut(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %5, %9, %13, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @gen_ST() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @parse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  br label %3

; <label>:3:                                      ; preds = %0, %9
  %4 = call i32 @get_token()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buff, i32 0, i32 0), i32 %5)
  %7 = load i32, i32* %1, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %3
  br label %3

; <label>:10:                                     ; preds = %3
  br label %11

; <label>:11:                                     ; preds = %10
  %12 = load i32, i32* %1, align 4
  switch i32 %12, label %26 [
    i32 1, label %13
    i32 2, label %24
    i32 7, label %25
  ]

; <label>:13:                                     ; preds = %11
  %14 = call i32 @get_opcode(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buff, i32 0, i32 0))
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %23

; <label>:17:                                     ; preds = %13
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buff, i32 0, i32 0))
  %19 = load i32, i32* %2, align 4
  switch i32 %19, label %22 [
    i32 0, label %20
    i32 1, label %21
  ]

; <label>:20:                                     ; preds = %17
  store i32 1, i32* @op, align 4
  call void @gen_LD()
  br label %22

; <label>:21:                                     ; preds = %17
  store i32 2, i32* @op, align 4
  call void @gen_ST()
  br label %22

; <label>:22:                                     ; preds = %17, %21, %20
  br label %23

; <label>:23:                                     ; preds = %22, %13
  br label %26

; <label>:24:                                     ; preds = %11
  br label %26

; <label>:25:                                     ; preds = %11
  br label %26

; <label>:26:                                     ; preds = %11, %25, %24, %23
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @generate() #0 {
  %1 = load i32, i32* @op, align 4
  switch i32 %1, label %3 [
    i32 1, label %2
  ]

; <label>:2:                                      ; preds = %0
  br label %3

; <label>:3:                                      ; preds = %0, %2
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @program() #0 {
  br label %1

; <label>:1:                                      ; preds = %0, %7
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @src_fp, align 8
  %3 = call i8* @get_line(%struct._IO_FILE* %2)
  store i8* %3, i8** @pos, align 8
  %4 = load i8*, i8** @pos, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  br label %14

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** @pos, align 8
  %9 = load i8*, i8** @pos, align 8
  %10 = call i64 @strlen(i8* %9) #6
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i8* %8, i64 %10)
  %12 = call i32 @parse()
  %13 = call i32 @generate()
  br label %1

; <label>:14:                                     ; preds = %6
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 1
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %2
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:10:                                     ; preds = %2
  %11 = call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fname, i32 0, i32 0)) #6
  %12 = icmp uge i64 %11, 256
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %10
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:15:                                     ; preds = %10
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fname, i32 0, i32 0), i8* %18) #5
  %20 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fname, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store %struct._IO_FILE* %20, %struct._IO_FILE** @src_fp, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @src_fp, align 8
  %22 = icmp eq %struct._IO_FILE* %21, null
  br i1 %22, label %23, label %25

; <label>:23:                                     ; preds = %15
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:25:                                     ; preds = %15
  %26 = call i8* @strrchr(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fname, i32 0, i32 0), i32 46) #6
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  store i8 0, i8* %27, align 1
  %28 = call i8* @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fname, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)) #5
  %29 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @fname, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  store %struct._IO_FILE* %29, %struct._IO_FILE** @obj_fp, align 8
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @obj_fp, align 8
  %31 = icmp eq %struct._IO_FILE* %30, null
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %25
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @src_fp, align 8
  %34 = call i32 @fclose(%struct._IO_FILE* %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:36:                                     ; preds = %25
  %37 = call i32 @program()
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
