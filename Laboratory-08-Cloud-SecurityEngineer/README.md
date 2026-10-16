# Laboratory 08 – The Cloud Security Engineer

## Mission Overview

This laboratory activity focuses on securing an Ubuntu cloud environment using the Uncomplicated Firewall (UFW). The mission involves deploying an Nginx web application, inspecting network services, applying a Default Deny policy, and allowing only the required SSH and web application traffic.

## Objectives

- Understand the Principle of Least Privilege.
- Explain the concept of an attack surface.
- Inspect active network ports on Linux.
- Configure UFW with a Default Deny policy.
- Allow SSH and TCP port 8080.
- Test the web application using curl.
- Document security procedures and evidence using Markdown.
- Expand the CCM101 GitHub Cloud Computing Portfolio.

## Commands Executed

### Inspect the Server and Network

```bash
whoami
docker --version
sudo ss -tulnp
```

### Deploy the Web Application

```bash
docker run -d --name secure-web-app -p 8080:80 nginx
docker ps
curl http://localhost:8080
```

### Configure the Firewall

```bash
sudo ufw allow ssh
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
sudo ufw status verbose
```

### Allow the Web Application Port

```bash
sudo ufw allow 8080/tcp
sudo ufw status numbered
curl http://localhost:8080
```

## Skills Learned

- Basic Linux server administration.
- Deploying an Nginx container with Docker.
- Inspecting network sockets and services.
- Configuring UFW firewall rules.
- Applying the Principle of Least Privilege.
- Reducing unnecessary network exposure.
- Testing application connectivity.
- Writing technical documentation in Markdown.
- Maintaining a GitHub cloud computing portfolio.

## Screenshots

The `screenshots/` folder contains evidence of the web application deployment and firewall configuration.

- `vulnerable-app-running.png`
- `firewall-activated.png`
- `firewall-port-allowed.png`

## Conclusion

This mission demonstrates how firewall rules and careful port management can help protect cloud servers. It also emphasizes that security requires regular monitoring, verification, and responsible configuration.
