/*
 * android-specific implementation of the s3eAndroidAppirater extension.
 * Add any platform-specific functionality here.
 */
/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */
#include "s3eAndroidAppirater_internal.h"

#include "s3eEdk.h"
#include "s3eEdk_android.h"
#include <jni.h>
#include "IwDebug.h"

static jobject g_Obj;
static jmethodID g_AppiraterInit;

s3eResult s3eAndroidAppiraterInit_platform()
{
    // Get the environment from the pointer
    JNIEnv* env = s3eEdkJNIGetEnv();
    jobject obj = NULL;
    jmethodID cons = NULL;

    // Get the extension class
    jclass cls = s3eEdkAndroidFindClass("s3eAndroidAppirater");
    if (!cls)
        goto fail;

    // Get its constructor
    cons = env->GetMethodID(cls, "<init>", "()V");
    if (!cons)
        goto fail;

    // Construct the java class
    obj = env->NewObject(cls, cons);
    if (!obj)
        goto fail;

    // Get all the extension methods
    g_AppiraterInit = env->GetMethodID(cls, "AppiraterInit", "(Ljava/lang/String;Ljava/lang/String;II)I");
    if (!g_AppiraterInit)
        goto fail;



    IwTrace(ANDROIDAPPIRATER, ("ANDROIDAPPIRATER init success"));
    g_Obj = env->NewGlobalRef(obj);
    env->DeleteLocalRef(obj);
    env->DeleteGlobalRef(cls);

    // Add any platform-specific initialisation code here
    return S3E_RESULT_SUCCESS;

fail:
    jthrowable exc = env->ExceptionOccurred();
    if (exc)
    {
        env->ExceptionDescribe();
        env->ExceptionClear();
        IwTrace(s3eAndroidAppirater, ("One or more java methods could not be found"));
    }
    return S3E_RESULT_ERROR;

}

void s3eAndroidAppiraterTerminate_platform()
{
    // Add any platform-specific termination code here
}

s3eResult AppiraterInit_platform(const char* cTitle, const char* cMsg, int iDays, int iLaunches)
{
    JNIEnv* env = s3eEdkJNIGetEnv();
    jstring cTitle_jstr = env->NewStringUTF(cTitle);
    jstring cMsg_jstr = env->NewStringUTF(cMsg);
    return (s3eResult)env->CallIntMethod(g_Obj, g_AppiraterInit, cTitle_jstr, cMsg_jstr, iDays, iLaunches);
}
