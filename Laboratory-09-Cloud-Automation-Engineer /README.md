# Laboratory 09: The Cloud Automation Engineer

## Mission Overview
This laboratory focuses on cloud automation using Bash scripting, file permissions, backup creation, and Linux Cron scheduling.

## Objectives
- Understand the basic syntax of Bash scripts.
- Create an automated backup script.
- Use `chmod` to make a script executable.
- Configure a Cron job to run a backup every night at 2:00 AM.
- Document the activity in Markdown.

## Commands Executed
- `mkdir app-data`
- `echo "This is critical client data." > app-data/data.txt`
- `nano backup.sh`
- `chmod +x backup.sh`
- `./backup.sh`
- `ls -l backups/`
- `crontab -l`
- `env EDITOR=nano crontab -e`

## Skills Learned
- Bash shell scripting
- Linux file management
- File permissions
- Compressed backups
- Cron job scheduling
- GitHub portfolio documentation
