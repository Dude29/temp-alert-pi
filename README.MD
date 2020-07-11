# Temperature alerts for Raspberry Pi via email

Bash script to send an email when your Raspberry Pi's temperature surpasses the safe documented limits.

### Configuring

This script depends on the command `sendmail`. 
To understand how to configure and install this command on your Raspberry refer to [this guide](https://linuxhandbook.com/linux-send-email-ssmtp/).

In addition this script reads 3 bash variables: 

| Variable    | Description |
| ----------- | ----------- |
| 	`$FROM`   | The address to send the alert email from			|
| 	`$PWRD`   | Password credential for the sending email account	|
|	`$TO`	  |	The address to send the alert email to  			|

If you intend to use a gmail account as the sender email then you must configure that account to [allow unsafe apps](https://support.google.com/accounts/answer/6010255?hl=en).
