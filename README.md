# lazyDNSer
lazyDNSer is a convenient bash script that assists in managing your /etc/hosts file. It streamlines the process of local DNS entries manipulation, making it as easy as a single command.

## Installation

1. Clone this repository:

```
git clone https://github.com/username/lazyDNSer.git
```
2. Make the script executable:
```
cd lazyDNSer
chmod +x lazyDNSer.sh
```
3. (Optional) Move the script to /usr/local/bin for easier access:
```
sudo mv lazyDNSer.sh /usr/local/bin/lazyDNSer
```


## Usage
To add an entry to your /etc/hosts file:
```
lazyDNSer domain.com 192.168.0.1
```
To remove an entry from your /etc/hosts file:
```
lazyDNSer domain.com
```
Please note: this script requires sudo permissions to modify the /etc/hosts file.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
