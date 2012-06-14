s3eAndroidAppirater
(An app rater android extension to drive your apps rating by reminding users to rate your app)
(android is supported, iOS version is available in the link  below)

-----------------------------------------------------------
How to :
• Put extensions folder in ...marmalade/6.x/ directory and choose yes over and file replace warnings.
• Include s3eAndroidAppirater.h to your project
• Use AppiraterInit("appname","com.package.appname",int min_Days_before_prompt,int min_Launches_before_prompt,int min_Events_before_prompt);
• Use AppiraterEventOccured() to register a new event like level crossed
• rate dialog will show in the following order : 
	a)if given number of critical events occured
	2)else min_Days and min_Launches both cross the required amount

-----------------------------------------------------------


Thanks to iMr for s3eIOSAppirater which is the iOS extension offering similar functionality.
https://github.com/GetLastError/s3eIOSAppirater
