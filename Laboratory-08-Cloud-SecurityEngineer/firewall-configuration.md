# Firewall Configuration

## Mission 8: The Cloud Security Engineer

### 1. Allow SSH

```bash
sudo ufw allow ssh
```

This rule allows SSH connections for remote server administration.

### 2. Set the Default Firewall Policies

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

The first command blocks incoming traffic unless a rule permits it. The second command allows outgoing traffic by default.

### 3. Enable the Firewall

```bash
sudo ufw enable
sudo ufw status verbose
```

The firewall is enabled and its status is checked to verify the active configuration.

### 4. Allow the Web Application

```bash
sudo ufw allow 8080/tcp
sudo ufw status numbered
```

This rule allows incoming TCP connections to port 8080 for the web application.

### 5. Test the Web Application

```bash
curl http://localhost:8080
```

The command sends an HTTP request to the local web application to check whether it returns a response.

### 6. Why SSH Must Be Allowed First

If `sudo ufw enable` is executed before `sudo ufw allow ssh`, SSH connections may be blocked by the firewall's default incoming policy, potentially locking administrators out of remote access.

### 7. Security Best Practices

- Allow only the network ports required by the server.
- Use a Default Deny policy for incoming connections.
- Protect remote administration services.
- Review firewall rules regularly.
- Verify application connectivity after configuration changes.
- Keep the operating system and applications updated.
