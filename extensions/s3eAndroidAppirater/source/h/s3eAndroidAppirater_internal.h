/*
 * Internal header for the s3eAndroidAppirater extension.
 *
 * This file should be used for any common function definitions etc that need to
 * be shared between the platform-dependent and platform-indepdendent parts of
 * this extension.
 */

/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */


#ifndef S3EANDROIDAPPIRATER_INTERNAL_H
#define S3EANDROIDAPPIRATER_INTERNAL_H

#include "s3eTypes.h"
#include "s3eAndroidAppirater.h"
#include "s3eAndroidAppirater_autodefs.h"


/**
 * Initialise the extension.  This is called once then the extension is first
 * accessed by s3eregister.  If this function returns S3E_RESULT_ERROR the
 * extension will be reported as not-existing on the device.
 */
s3eResult s3eAndroidAppiraterInit();

/**
 * Platform-specific initialisation, implemented on each platform
 */
s3eResult s3eAndroidAppiraterInit_platform();

/**
 * Terminate the extension.  This is called once on shutdown, but only if the
 * extension was loader and Init() was successful.
 */
void s3eAndroidAppiraterTerminate();

/**
 * Platform-specific termination, implemented on each platform
 */
void s3eAndroidAppiraterTerminate_platform();
s3eResult AppiraterInit_platform(const char* cTitle, const char* cAppName, int iDays, int iLaunches, int iEvents);

s3eResult AppiraterEventOccured_platform();


#endif /* !S3EANDROIDAPPIRATER_INTERNAL_H */