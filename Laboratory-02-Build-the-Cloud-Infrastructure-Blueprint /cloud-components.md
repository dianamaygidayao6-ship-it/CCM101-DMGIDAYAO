
---

# 4. `cloud-components.md`

```markdown
# Cloud Infrastructure Components

## 1. Compute Resources

### Example

The CPU and the Linux server provided by KillerCoda are examples of compute resources.

### Purpose

Compute resources provide the processing power needed to run applications, programs, and services.

### Importance in Cloud Computing

Compute is important because applications need processing power to perform different tasks. Cloud providers allow users to increase or decrease computing resources depending on their needs.

### KillerCoda Relation

The KillerCoda server uses CPU resources to run the Linux operating system and the commands executed in the terminal.

---

## 2. Storage Resources

### Example

The disk and mounted file systems are examples of storage resources.

### Purpose

Storage is used to save operating system files, applications, configurations, and user data.

### Importance in Cloud Computing

Storage is important because cloud applications need a place to save and access information. Cloud storage can also be expanded when more space is needed.

### KillerCoda Relation

I used `lsblk` and `df -h` to check the disk and available storage in the KillerCoda environment.

---

## 3. Networking Resources

### Example

The network interface and IP address are examples of networking resources.

### Purpose

Networking allows computers and cloud services to communicate with each other.

### Importance in Cloud Computing

Networking allows users to access applications and allows different cloud resources to communicate with each other.

### KillerCoda Relation

I used `ip addr` and `hostname -I` to check the network interfaces and IP address of the KillerCoda server.

---

## 4. Operating System

### Example

Linux is the operating system used by the KillerCoda environment.

### Purpose

The operating system manages the computer's hardware and provides an environment where applications and commands can run.

### Importance in Cloud Computing

Linux is commonly used in cloud servers because it is reliable, flexible, and supports many cloud technologies.

### KillerCoda Relation

The Linux operating system allowed me to access the server through the terminal and execute commands to investigate the infrastructure.
