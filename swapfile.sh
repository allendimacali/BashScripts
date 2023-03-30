# Setting up a swap file is completely optional – I have had some folks tell me that it isn’t necessary, and others tell me that performance is much improved when a swapfile is configured.  The truth probably lies somewhere in the middle, but I tend to set up a swapfile anyway – I have never noticed a decrease in performance by setting this up, so what’s the harm?
# Run the following commands to create and use a swap file.

sudo fallocate -l 4G /swapfile
# The ‘fallocate’ command creates a file of a specific size – in this case we’re creating a 4GB file called ‘swapfile.’

sudo chmod 600 /swapfile
# Sets permissions on the swap file that we just created.

sudo mkswap /swapfile
# Formats the /swapfile for use as a swap file.

sudo swapon /swapfile
# Tells the server to use that directory as a swap file.

# Finally, we need to make sure that the swap file turns on every time we reboot the server.  Run the following command to add the swap file information to the /etc/fstab file:
sudo sh -c 'echo "/swapfile none swap sw 0 0" >> /etc/fstab'
