; ModuleID = 'my cool triple program'
source_filename = "my cool triple program"

@0 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

declare i32 @printf(i8*, ...)

define i32 @triple(i32 %0) {
entry:
  %tmp = mul i32 %0, 3
  ret i32 %tmp
}

define i32 @main() {
start:
  %calltmp = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0), i32 5)
  ret i32 0
}
