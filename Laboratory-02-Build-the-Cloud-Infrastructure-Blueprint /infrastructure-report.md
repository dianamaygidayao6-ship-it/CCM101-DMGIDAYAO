# Infrastructure Report

## Server Information

I investigated the Linux server provided by KillerCoda using different Linux commands.

| Information | Result |
|---|---|
| Operating System | Ubuntu 24.04.4 LTS |
| Kernel Version | 6.8.0-138-generic |
| CPU Model | Intel Xeon E312xx (Sandy Bridge, IBRS update) |
| Number of CPU Cores | 1 |
| Total RAM | 1.9 GiB |
| Disk Capacity | 20 GB |
| Hostname | ubuntu |
| IP Address | [GET FROM `hostname -I`] |

## Storage Information

The server has a 20 GB disk named `vda`. The main partition is `/dev/vda1` with a size of 19 GB and is mounted on `/`.

The `df -h` command also showed the following mounted file systems:

| File System | Size | Used | Available | Mounted On |
|---|---:|---:|---:|---|
| tmpfs | 191M | 1000K | 190M | /run |
| /dev/vda1 | 19G | 5.4G | 13G | / |
| tmpfs | 952M | 84K | 952M | /dev/shm |
| tmpfs | 5.0M | 0 | 5.0M | /run/lock |
| /dev/vda16 | 881M | 117M | 703M | /boot |
| /dev/vda15 | 105M | 6.2M | 99M | /boot/efi |

## Linux Commands Used

### Operating System

```bash
cat /etc/os-release | grep PRETTY_NAME
