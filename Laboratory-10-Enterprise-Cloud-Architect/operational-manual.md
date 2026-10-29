# CloudNova Operational Manual

## 1. Introduction

CloudNova is a multi-tier web application deployed on an Ubuntu Server virtual machine running in VirtualBox. Docker Compose manages the WordPress web application and MariaDB database. A Docker named volume provides persistent database storage, and a Bash script supports automated database backups.

## 2. Infrastructure Architecture

The infrastructure consists of:

- **Host machine:** Windows laptop used to manage and access the virtual machine.
- **Hypervisor:** VirtualBox.
- **Server:** Ubuntu Server running Docker Engine.
- **Firewall:** UFW controls host-level network access.
- **Application tier:** WordPress serves the website.
- **Database tier:** MariaDB stores WordPress data.
- **Persistent storage:** A Docker named volume stores database files.
- **Backup automation:** Bash and cron support scheduled database backups.

## 3. Prerequisites

Before deployment, ensure that:

- The CloudNova Ubuntu Server VM is available.
- Docker and the Docker Compose plugin are installed.
- The project configuration has been copied to the server.
- Required credentials are securely configured.
- VirtualBox port forwarding is configured for the web application.
- Firewall rules allow only the required network traffic.

## 4. Deploy the Application

Open the Ubuntu Server terminal and enter the project directory:

```bash
cd ~/cloudnova-stack
```

Start the application:

```bash
sudo docker compose up -d
```

Check the container status:

```bash
sudo docker compose ps
```

Confirm that WordPress and MariaDB are running.

## 5. Access the Website

Open a browser on the Windows host and visit:

`http://127.0.0.1:8082`

This address depends on VirtualBox forwarding host port 8082 to guest port 8082. The VM and containers must be running.

## 6. Monitor Containers and Logs

Check container status:

```bash
cd ~/cloudnova-stack
sudo docker compose ps
```

View recent WordPress logs:

```bash
sudo docker compose logs --tail=50 wordpress
```

View recent MariaDB logs:

```bash
sudo docker compose logs --tail=50 database
```

Review the output for startup errors, database connection failures, or other problems.

## 7. Stop and Restart Services

Restart both containers:

```bash
sudo docker compose restart
```

Stop the application containers:

```bash
sudo docker compose down
```

Start the application again:

```bash
sudo docker compose up -d
```

Do not use `docker compose down -v` during routine maintenance. Removing the named volume can delete the database data.

## 8. Firewall and Network Security

Check UFW status:

```bash
sudo ufw status verbose
```

The firewall should be active with incoming connections denied by default. Allow only necessary services, including SSH if remote administration is required, and the web ports required by the actual deployment.

Do not expose MariaDB port 3306 publicly. WordPress should connect to MariaDB through the internal Docker network.

**Important:** Docker-published ports can bypass some UFW filtering. Review Docker networking and firewall behavior separately. A UFW status screenshot alone does not prove that all traffic is blocked correctly.

## 9. Persistent Storage

The database uses a Docker named volume mounted at `/var/lib/mysql`. This keeps database files outside the database container's writable layer.

List Docker volumes:

```bash
sudo docker volume ls
```

Inspect the database container's mounts:

```bash
sudo docker inspect cloudnova-database
```

Check the `Mounts` section to verify that the database directory is backed by the expected volume.

After restarting the containers, verify that previously created WordPress posts or other test data remain available.

Persistent storage protects against container replacement, but it does not replace backups.

## 10. Database Backup

The backup script should create a timestamped, compressed SQL backup in:

`/home/cloudadmin/cloudnova-backups`

Check the backup directory:

```bash
sudo ls -lh /home/cloudadmin/cloudnova-backups
```

Verify that a backup file exists and is not empty. Test its gzip integrity:

```bash
gzip -t /path/to/backup.sql.gz
```

Replace the example path with the actual backup filename.

The backup script requires database credentials and Docker access. Supply credentials securely; never place real passwords in this repository.

## 11. Automated Backup Schedule

Check the root user's cron schedule:

```bash
sudo crontab -l
```

The configured schedule is intended to run the backup every day at 2:00 AM.

Check the backup log, if configured:

```bash
sudo tail -n 50 /home/cloudadmin/cloudnova-backups/backup.log
```

Confirm that the cron job can access the required credentials and Docker commands. Cron does not automatically inherit environment variables from an interactive terminal, so credentials must be made available through an appropriately protected configuration.

## 12. Recovery Procedure

1. Identify the most recent valid backup.
2. Preserve a copy of the current database before restoring.
3. Verify the backup file with `gzip -t`.
4. Restore the SQL dump into the intended database using the correct credentials and a tested recovery procedure.
5. Restart or reconnect the application if necessary.
6. Confirm that WordPress loads and that expected data is present.

Restoration can overwrite existing database contents. Test recovery in a safe environment before using it on important data.

## 13. Routine Maintenance

- Check container status and logs.
- Verify that scheduled backups complete successfully.
- Monitor available disk space.
- Keep Ubuntu, Docker, WordPress, and MariaDB updated.
- Test database restoration periodically.
- Restrict administrative access.
- Store backup copies securely outside the VM when possible.

## 14. Troubleshooting

### Website does not open
Check that the VM is running, verify VirtualBox port forwarding, and inspect the container status.

### WordPress cannot connect to MariaDB
Review both services' logs and verify the database hostname, database name, username, and credentials.

### Backup fails
Check script permissions, Docker access, credentials, available disk space, and the backup log.

### Data appears missing
Verify that the expected Docker named volume is attached to the database container. Avoid deleting volumes until the problem has been investigated.

### Firewall blocks access
Review the active UFW rules, VirtualBox forwarding, and Docker network configuration. Do not open unnecessary ports.

## 15. Security Recommendations

- Never commit real passwords or private keys to GitHub.
- Keep MariaDB accessible only to the application and authorized administrators.
- Allow only required inbound ports.
- Protect backup files with restrictive permissions.
- Keep a separate, protected copy of important backups.
- Test recovery procedures before relying on them.


