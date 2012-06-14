/*
Generic implementation of the s3eAndroidAppirater extension.
This file should perform any platform-indepedentent functionality
(e.g. error checking) before calling platform-dependent implementations.
*/

/*
 * NOTE: This file was originally written by the extension builder, but will not
 * be overwritten (unless --force is specified) and is intended to be modified.
 */


#include "s3eAndroidAppirater_internal.h"
s3eResult s3eAndroidAppiraterInit()
{
    //Add any generic initialisation code here
    return s3eAndroidAppiraterInit_platform();
}

void s3eAndroidAppiraterTerminate()
{
    //Add any generic termination code here
    s3eAndroidAppiraterTerminate_platform();
}

s3eResult AppiraterInit(const char* cTitle, const char* cAppName, int iDays, int iLaunches, int iEvents)
{
	return AppiraterInit_platform(cTitle, cAppName, iDays, iLaunches, iEvents);
}

s3eResult AppiraterEventOccured()
{
	return AppiraterEventOccured_platform();
}
