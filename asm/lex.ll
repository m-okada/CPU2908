; ModuleID = 'lex.c'
source_filename = "lex.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@char_buff = global i32 -1, align 4
@.str = private unnamed_addr constant [14 x i8] c"Error ungetc\0A\00", align 1
@pos = common global i8* null, align 8
@buff_pos = global i32 0, align 4
@buff = common global [128 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define void @unget_char(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @char_buff, align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  br label %7

; <label>:7:                                      ; preds = %5, %1
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* @char_buff, align 4
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @get_char() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @pos, align 8
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

; <label>:7:                                      ; preds = %0
  %8 = load i8*, i8** @pos, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  store i32 %10, i32* %2, align 4
  %11 = load i8*, i8** @pos, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** @pos, align 8
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %1, align 4
  br label %15

; <label>:14:                                     ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %15

; <label>:15:                                     ; preds = %14, %7
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @take_char() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @char_buff, align 4
  %4 = icmp ne i32 %3, -1
  br i1 %4, label %5, label %8

; <label>:5:                                      ; preds = %0
  %6 = load i32, i32* @char_buff, align 4
  store i32 %6, i32* %2, align 4
  store i32 -1, i32* @char_buff, align 4
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %1, align 4
  br label %10

; <label>:8:                                      ; preds = %0
  %9 = call i32 @get_char()
  store i32 %9, i32* %1, align 4
  br label %10

; <label>:10:                                     ; preds = %8, %5
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @to_upper(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 97
  br i1 %4, label %5, label %11

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %6, 122
  br i1 %7, label %8, label %11

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = sub nsw i32 %9, 32
  br label %13

; <label>:11:                                     ; preds = %5, %1
  %12 = load i32, i32* %2, align 4
  br label %13

; <label>:13:                                     ; preds = %11, %8
  %14 = phi i32 [ %10, %8 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @push_char(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @buff_pos, align 4
  %5 = icmp eq i32 %4, 127
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %19

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = trunc i32 %8 to i8
  %10 = load i32, i32* @buff_pos, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* @buff, i64 0, i64 %11
  store i8 %9, i8* %12, align 1
  %13 = load i32, i32* @buff_pos, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @buff_pos, align 4
  %15 = load i32, i32* @buff_pos, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* @buff, i64 0, i64 %16
  store i8 0, i8* %17, align 1
  %18 = load i32, i32* @buff_pos, align 4
  store i32 %18, i32* %2, align 4
  br label %19

; <label>:19:                                     ; preds = %7, %6
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @get_token(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* @buff_pos, align 4
  store i8 0, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @buff, i64 0, i64 0), align 16
  br label %7

; <label>:7:                                      ; preds = %155, %80, %79, %1
  %8 = call i32 @take_char()
  store i32 %8, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %156

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @to_upper(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %155 [
    i32 0, label %14
    i32 1, label %88
    i32 2, label %113
    i32 3, label %125
    i32 4, label %137
  ]

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %20, label %17

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17, %14
  store i32 -1, i32* %2, align 4
  br label %157

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 65
  br i1 %23, label %24, label %30

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp sle i32 %25, 90
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @push_char(i32 %28)
  store i32 1, i32* %4, align 4
  br label %86

; <label>:30:                                     ; preds = %24, %21
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %31, 48
  br i1 %32, label %33, label %39

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %34, 57
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @push_char(i32 %37)
  store i32 3, i32* %4, align 4
  br label %85

; <label>:39:                                     ; preds = %33, %30
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @push_char(i32 %43)
  store i32 2, i32* %4, align 4
  br label %84

; <label>:45:                                     ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 43
  br i1 %47, label %51, label %48

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 45
  br i1 %50, label %51, label %54

; <label>:51:                                     ; preds = %48, %45
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @push_char(i32 %52)
  store i32 7, i32* %2, align 4
  br label %157

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 36
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %54
  store i32 4, i32* %4, align 4
  br label %82

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 59
  br i1 %60, label %61, label %67

; <label>:61:                                     ; preds = %58
  br label %62

; <label>:62:                                     ; preds = %65, %61
  %63 = call i32 @take_char()
  %64 = icmp ne i32 %63, -1
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %62
  br label %62

; <label>:66:                                     ; preds = %62
  br label %81

; <label>:67:                                     ; preds = %58
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 44
  br i1 %69, label %70, label %73

; <label>:70:                                     ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @push_char(i32 %71)
  store i32 6, i32* %2, align 4
  br label %157

; <label>:73:                                     ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 9
  br i1 %75, label %79, label %76

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 32
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %76, %73
  br label %7

; <label>:80:                                     ; preds = %76
  br label %7

; <label>:81:                                     ; preds = %66
  br label %82

; <label>:82:                                     ; preds = %81, %57
  br label %83

; <label>:83:                                     ; preds = %82
  br label %84

; <label>:84:                                     ; preds = %83, %42
  br label %85

; <label>:85:                                     ; preds = %84, %36
  br label %86

; <label>:86:                                     ; preds = %85, %27
  br label %87

; <label>:87:                                     ; preds = %86
  br label %155

; <label>:88:                                     ; preds = %10
  %89 = load i32, i32* %6, align 4
  %90 = icmp sge i32 %89, 65
  br i1 %90, label %91, label %94

; <label>:91:                                     ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = icmp sle i32 %92, 90
  br i1 %93, label %103, label %94

; <label>:94:                                     ; preds = %91, %88
  %95 = load i32, i32* %6, align 4
  %96 = icmp sge i32 %95, 48
  br i1 %96, label %97, label %100

; <label>:97:                                     ; preds = %94
  %98 = load i32, i32* %6, align 4
  %99 = icmp sle i32 %98, 57
  br i1 %99, label %103, label %100

; <label>:100:                                    ; preds = %97, %94
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 95
  br i1 %102, label %103, label %106

; <label>:103:                                    ; preds = %100, %97, %91
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @push_char(i32 %104)
  br label %112

; <label>:106:                                    ; preds = %100
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 58
  br i1 %108, label %109, label %110

; <label>:109:                                    ; preds = %106
  store i32 5, i32* %2, align 4
  br label %157

; <label>:110:                                    ; preds = %106
  %111 = load i32, i32* %6, align 4
  call void @unget_char(i32 %111)
  store i32 1, i32* %2, align 4
  br label %157

; <label>:112:                                    ; preds = %103
  br label %155

; <label>:113:                                    ; preds = %10
  %114 = load i32, i32* %6, align 4
  %115 = icmp sge i32 %114, 65
  br i1 %115, label %116, label %122

; <label>:116:                                    ; preds = %113
  %117 = load i32, i32* %6, align 4
  %118 = icmp sle i32 %117, 90
  br i1 %118, label %119, label %122

; <label>:119:                                    ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @push_char(i32 %120)
  br label %124

; <label>:122:                                    ; preds = %116, %113
  %123 = load i32, i32* %6, align 4
  call void @unget_char(i32 %123)
  store i32 2, i32* %2, align 4
  br label %157

; <label>:124:                                    ; preds = %119
  br label %155

; <label>:125:                                    ; preds = %10
  %126 = load i32, i32* %6, align 4
  %127 = icmp sge i32 %126, 48
  br i1 %127, label %128, label %134

; <label>:128:                                    ; preds = %125
  %129 = load i32, i32* %6, align 4
  %130 = icmp sle i32 %129, 57
  br i1 %130, label %131, label %134

; <label>:131:                                    ; preds = %128
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @push_char(i32 %132)
  br label %136

; <label>:134:                                    ; preds = %128, %125
  %135 = load i32, i32* %6, align 4
  call void @unget_char(i32 %135)
  store i32 3, i32* %2, align 4
  br label %157

; <label>:136:                                    ; preds = %131
  br label %155

; <label>:137:                                    ; preds = %10
  %138 = load i32, i32* %6, align 4
  %139 = icmp sge i32 %138, 48
  br i1 %139, label %140, label %143

; <label>:140:                                    ; preds = %137
  %141 = load i32, i32* %6, align 4
  %142 = icmp sle i32 %141, 57
  br i1 %142, label %149, label %143

; <label>:143:                                    ; preds = %140, %137
  %144 = load i32, i32* %6, align 4
  %145 = icmp sge i32 %144, 65
  br i1 %145, label %146, label %152

; <label>:146:                                    ; preds = %143
  %147 = load i32, i32* %6, align 4
  %148 = icmp sle i32 %147, 70
  br i1 %148, label %149, label %152

; <label>:149:                                    ; preds = %146, %140
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @push_char(i32 %150)
  br label %154

; <label>:152:                                    ; preds = %146, %143
  %153 = load i32, i32* %6, align 4
  call void @unget_char(i32 %153)
  store i32 4, i32* %2, align 4
  br label %157

; <label>:154:                                    ; preds = %149
  br label %155

; <label>:155:                                    ; preds = %10, %154, %136, %124, %112, %87
  br label %7

; <label>:156:                                    ; preds = %7
  store i32 0, i32* %2, align 4
  br label %157

; <label>:157:                                    ; preds = %156, %152, %134, %122, %110, %109, %70, %51, %20
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
