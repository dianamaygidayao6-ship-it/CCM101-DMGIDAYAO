# Mission 8 Reflection – The Cloud Security Engineer

Completing this mission helped me understand why cloud security is important when managing a server. I learned that a host-based firewall provides another layer of protection because it controls incoming and outgoing network traffic directly on the server. Even if the physical network perimeter is breached, firewall rules can still help prevent unauthorized connections to services that are not allowed.

Managing open network ports is also important because every unnecessary port may provide another opportunity for attackers to access a system. By allowing only the ports needed by the server, administrators can reduce the attack surface and limit possible security risks. In this activity, I learned how to allow SSH for remote administration and TCP port 8080 for the web application while applying a Default Deny policy to incoming traffic.

In a real enterprise environment, leaving a database port such as 3306 for MySQL open to the public internet is dangerous. Attackers could attempt to guess passwords, exploit database vulnerabilities, or access sensitive information if the database is not properly secured. Database access should be restricted to trusted servers and authorized users, with strong authentication and other appropriate security controls.

This mission also changed my perspective on how easily a server can become exposed when security settings are ignored. A running application may appear to work correctly, but that does not mean it is secure. I learned that administrators must check network services, configure firewall rules carefully, and verify their settings instead of assuming the server is protected.

Finally, having eight laboratory missions in my GitHub portfolio gives me a better way to organize and present the skills I have learned in cloud computing. The portfolio documents my progress in Linux, deployment, operations, and security. It can also help me demonstrate my technical knowledge when applying for future opportunities in information technology.

Overall, this mission taught me that cloud security requires careful configuration, continuous monitoring, and responsible management of access to server resources.
