gcc -I"$JAVA_HOME/include" -I"$JAVA_HOME/include/darwin/" -o libjniexample.jnilib -shared JNIExample.c
nm libjniexample.jnilib

javac JNIExample.java
java -Djava.library.path=. JNIExample

if [ "$1" == "clean" ];then
    rm libjniexample.jnilib
    rm JNIExample.class
fi