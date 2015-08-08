#encrypting bulk devices
# sudo dd if=/dev/urandom of=/root/keyfile bs=1024 count=4 
# sudo chmod 0400 /root/keyfile 
# sudo cryptsetup luksAddKey /dev/sdX /root/keyfile 
####
sudo nano /etc/crypttab

            and add then a line like this:

sdX_crypt      /dev/sdX  /root/keyfile  luks

            or you can use the UUID of the device:

sdX_crypt      /dev/disk/by-uuid/247ad289-dbe5-4419-9965-e3cd30f0b080  /root/keyfile  luks
####
sudo nano /etc/fstab

            and add a new entry like:

/dev/mapper/sdX_crypt  /media/sdX     ext3    defaults        0       2
####

###################################################################
cryptsetup <options> <action> <action args>
#would use aes-xts-plain64 -s 512
--cipher, -c <cipher-spec>
              Set the cipher specification string.

              cryptsetup --help shows the compiled-in defaults.  The current default in the distributed  sources  is  "aes-cbc-essiv:sha256"  for
              both plain dm-crypt and LUKS.

              For  XTS  mode  (a possible future default), use "aes-xts-plain" or better "aes-xts-plain64" as cipher specification and optionally
              set a key size of 512 bits with the -s option. Key size for XTS mode is twice that for other modes for the same security level.

              XTS mode requires kernel 2.6.24 or later and plain64 requires kernel 2.6.33 or later. More information can be found in the FAQ.

cryptsetup luksFormat <device> [<key file>]

              Initializes a LUKS partition and sets the initial passphrase (for key-slot 0), either via prompting or via <key file>. Note that if
              the  second  argument  is  present,  then the passphrase is taken from the file given there, without the need to use the --key-file
              option. Also note that for both forms of reading the passphrase from file you can give '-' as  file  name,  which  results  in  the
              passphrase being read from stdin and the safety-question being skipped.

              You can only call luksFormat on a LUKS device that is not mapped.

              <options>  can  be  [--cipher, --verify-passphrase, --key-size, --key-slot, --key-file (takes precedence over optional second argu‐
              ment), --keyfile-offset, --keyfile-size, --use-random | --use-urandom, --uuid, --master-key-file].

              WARNING: Doing a luksFormat on an existing LUKS container will make all data the old container  permanently  irretrievable,  unless
              you have a header backup.
