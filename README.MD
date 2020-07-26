# Temperature alerts for Raspberry Pi via email

Bash script to send an email when your Raspberry Pi's temperature surpasses the safe documented limits.

### Configuring

This script depends on the command `msmtp`. 
To understand how to configure and install this command on your Raspberry refer to [this guide](https://wiki.archlinux.org/index.php/Msmtp#Installing).

If you intend to use a gmail account as the sender email then you must configure that account to [allow unsafe apps](https://support.google.com/accounts/answer/6010255?hl=en).

### Usage

```bash 
./checktemp.sh
```

The script will send an email with the account you configure when setting up `msmtp` if the Raspberry Pi's temperature is currently above the safe documented limits. 

To change the recipient of the alert email edit the `alert.mail` file and change the [To:](https://github.com/Dude29/temp-alert-pi/blob/9f0123a64f5b4612e59b438518d84c0104bed9cc/alert.mail#L1) field accordingly.

You can also edit the contents of `alert.mail` to your liking.



