# Security Audit Report

## Mission 8: The Cloud Security Engineer

**Course:** CCM101 – Cloud Computing  
**Mission:** Laboratory Activity 8 – Cloud Security

## 1. Security Concepts

### Principle of Least Privilege (PoLP)

The Principle of Least Privilege means giving users and applications only the permissions they need to perform their tasks. It is important in cloud environments because limiting access helps prevent unauthorized activities and reduces the damage that can happen if an account is compromised.

### Attack Surface

An attack surface is the collection of points where an attacker could try to access or exploit a virtual machine. These points may include open network ports, running services, applications, and user accounts. Reducing unnecessary services and access points makes the server harder to attack.

### Default Deny Policy

A Default Deny policy blocks incoming network traffic unless a specific rule allows it. This is safer than trying to block individual attackers because unknown and unauthorized connections are denied automatically, reducing the number of ways an attacker can reach the server.

## 2. Security Audit Commands

The following Linux commands can help inspect network connections and firewall settings:

```bash
sudo ss -tulnp
sudo ufw status verbose
```

The `ss` command displays listening network sockets and related information. The UFW command displays the firewall status and configured rules.

## 3. Security Findings

The server's network services must be checked before applying security rules. Only the services required for administration and the web application should be accessible. SSH access and TCP port 8080 will be configured according to the mission requirements.

## 4. Security Recommendations

- Follow the Principle of Least Privilege.
- Disable unnecessary services and close unused ports.
- Apply a Default Deny policy for incoming traffic.
- Allow SSH and the required web application port only.
- Review firewall rules regularly.
- Keep the server and its applications updated.

## 5. Conclusion

A security audit helps identify network services that may expose a server to unnecessary risks. Combining port inspection, restrictive firewall rules, and regular monitoring helps improve the security of a cloud environment.
