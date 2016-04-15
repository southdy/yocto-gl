mkdir -p bin

cc="clang"
cflags="-Ofast -ffast-math -funroll-loops -std=gnu99"
linkflags="-lm -lpthread -lGL -lGLEW `pkg-config --libs glfw3`"

cp apps/render_tests.sh bin/

$cc $cflags $linkflags apps/yview.c -o bin/yview &
$cc $cflags $linkflags apps/ytrace.c -o bin/ytrace &
$cc -DYA_NOGL $cflags $linkflags apps/ytrace.c -o bin/ytrace-cli &
$cc $cflags $linkflags apps/yshade.c -o bin/yshade &
$cc $cflags $linkflags apps/ytestgen.c -o bin/ytestgen &
wait

