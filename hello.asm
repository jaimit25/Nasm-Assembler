; https://www.quora.com/What-is-a-out-and-what-does-a-out-do-when-compiling-a-C-program

; nasm -fmacho64 hello.asm && gcc hello.o && ./a.out
; ./a.out  :is the default name set by the gcc if we do not set it out self
; to give out own name use gcc -o hello hello.o and run using ./hello
; "./" :is use to refer the current directory

; or

; nasm -fmacho64 hello.asm
; gcc -o hello.o
; clang: error: no input files
; gcc -o hello hello.o
; ./hello
; Hello Jaimit


          global    _main
          extern    _puts

          section   .text
_main:    push      rbx                     ; Call stack must be aligned
          lea       rdi, [rel message]      ; First argument is address of message
          call      _puts                   ; puts(message)
          pop       rbx                     ; Fix up stack before returning
          ret

          section   .data
message:  db        "Hello Jaimit", 0        ; C strings need a zero byte at the end