# CCM101 Cloud Computing

## Laboratory Activity 1 – Mission 1: Introduction to the Cloud

### Mission Overview

This laboratory activity introduces the fundamental skills needed when working with cloud infrastructure. It focuses on using a Linux environment, navigating and managing files and directories, checking system information, and creating a GitHub portfolio to document technical work.

---

## Mission Objectives

- Access and use a Linux environment through KillerCoda.
- Learn basic Linux navigation and commands.
- View essential system information.
- Create, organize, and manage files and directories using Linux commands.
- Set up and organize a GitHub repository.
- Document laboratory activities and technical work using Markdown.

---

# Checkpoint 1 – Entering the Cloud

For this checkpoint, I accessed the Ubuntu Linux Playground through KillerCoda. I created a Linux user account named dmgidayao, configured its Bash shell and home directory, and gave the account sudo privileges. I then used basic Linux commands to check the current username, working directory, and hostname.

### User Information

| *Information* | *Result* |
|---|---|
| Current Username | dmgidayao |
| Current Working Directory | /home/dmgidayao |
| Hostname | [Your Hostname] |

### Commands Used

```bash
sudo adduser dmgidayao
sudo usermod -aG sudo dmgidayao
su - dmgidayao

whoami
pwd
hostname
