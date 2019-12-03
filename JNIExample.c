#include "JNIExample.h"
#include <jni.h>
#include <stdio.h>

JNIEXPORT void JNICALL Java_JNIExample_sayHello(JNIEnv *env, jobject object,
                                                jint len) {
    printf("\nThe length of your string is %d.\n\n", len);
}