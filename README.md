That's a quick script that performs a base configuration of a node as per requirements.
It's a fully working code for Ubuntu 24.04 LTS and only requires to change node IP on the inventory.

## Important notes
I wanted to deploy not just the validator but also Geth and the beacon chain as an example but that's probably not what you want on a validator node as you want to separate Ethereum full node from a validator.

### To run the code
After update the inventory with the node IP

```
./configure
```


### To have that node working we need to:
- Create Ethereum wallet/keys
- Configure AWS permissions and CloudWatch (or any other notification mechanism like slack hook etc..)


Here some notes on the exercise:

## Improvementes applied
- Added source IP for SSH in Firewall
- Run fail2ban as docker container, I had to add 2 capabilities to the container
- services to disable: Only stopping them when they are present on the system

## Security issues
- Exposing directly SSH and other ports to the internet
- Not filtering source IP for SSH
- Securing keys

## Improvements ideas
- Check if dependencies are installed
- Dynamic inventory generation
- Secure SSH access to nodes (For example a bastion host or a VPN)
