# Laboratory Activity 7: The Cloud Operations Engineer

## Mission Overview

This laboratory activity focuses on cloud operations, system monitoring, and application observability. Using the KillerCoda Playground, I performed a health check on a Linux server, deployed an Nginx web server using Docker, generated HTTP traffic, analyzed application logs, and monitored container resource usage.

The purpose of this mission is to understand how Cloud Operations Engineers monitor and troubleshoot applications to help maintain system performance, availability, and reliability.

## Objectives

- Monitor the host server's memory and disk usage.
- Observe running processes and CPU activity using Linux commands.
- Deploy an Nginx web server container using Docker.
- Generate HTTP requests using the `curl` command.
- Identify successful and failed HTTP requests through application logs.
- Monitor container CPU, memory, and network usage.
- Document system performance and observations using Markdown.
- Maintain a well-organized GitHub Cloud Computing Portfolio.

## Monitoring Commands Executed

The following commands were used during this laboratory activity:

| Command | Purpose |
|---|---|
| `free -h` | Displays memory and RAM usage. |
| `df -h /` | Displays disk space usage for the root filesystem. |
| `top` | Displays running processes and CPU activity. |
| `docker run` | Deploys the Nginx web server container. |
| `curl http://localhost:8080` | Sends an HTTP request to the web server. |
| `curl http://localhost:8080/hidden-admin-page` | Generates a request for a nonexistent page. |
| `docker logs` | Displays the container's application logs. |
| `docker stats` | Displays real-time container resource usage. |

## Skills Learned

Through this laboratory activity, I learned how to check Linux server resources, deploy a containerized web application, generate test traffic, inspect HTTP status codes, and monitor Docker container performance.

I also learned the importance of using logs and metrics to identify possible problems and verify whether an application is operating properly.

## Laboratory Files

- `system-baseline-report.md` — Host server memory and disk baseline report.
- `container-observability.md` — Application logs and container performance metrics.
- `reflection.md` — Personal reflection on cloud operations and monitoring.
- `screenshots/` — Screenshots showing evidence of the completed laboratory tasks.

## Conclusion

This mission helped me understand that deploying an application is only one part of cloud computing. Continuous monitoring, troubleshooting, and proper documentation are also important for maintaining reliable and efficient cloud infrastructure.# Laboratory Activity 7: The Cloud Operations Engineer

## Mission Overview

This laboratory activity focuses on cloud operations, system monitoring, and application observability. Using the KillerCoda Playground, I performed a health check on a Linux server, deployed an Nginx web server using Docker, generated HTTP traffic, analyzed application logs, and monitored container resource usage.

The purpose of this mission is to understand how Cloud Operations Engineers monitor and troubleshoot applications to help maintain system performance, availability, and reliability.

## Objectives

- Monitor the host server's memory and disk usage.
- Observe running processes and CPU activity using Linux commands.
- Deploy an Nginx web server container using Docker.
- Generate HTTP requests using the `curl` command.
- Identify successful and failed HTTP requests through application logs.
- Monitor container CPU, memory, and network usage.
- Document system performance and observations using Markdown.
- Maintain a well-organized GitHub Cloud Computing Portfolio.

## Monitoring Commands Executed

The following commands were used during this laboratory activity:

| Command | Purpose |
|---|---|
| `free -h` | Displays memory and RAM usage. |
| `df -h /` | Displays disk space usage for the root filesystem. |
| `top` | Displays running processes and CPU activity. |
| `docker run` | Deploys the Nginx web server container. |
| `curl http://localhost:8080` | Sends an HTTP request to the web server. |
| `curl http://localhost:8080/hidden-admin-page` | Generates a request for a nonexistent page. |
| `docker logs` | Displays the container's application logs. |
| `docker stats` | Displays real-time container resource usage. |

## Skills Learned

Through this laboratory activity, I learned how to check Linux server resources, deploy a containerized web application, generate test traffic, inspect HTTP status codes, and monitor Docker container performance.

I also learned the importance of using logs and metrics to identify possible problems and verify whether an application is operating properly.

## Laboratory Files

- `system-baseline-report.md` — Host server memory and disk baseline report.
- `container-observability.md` — Application logs and container performance metrics.
- `reflection.md` — Personal reflection on cloud operations and monitoring.
- `screenshots/` — Screenshots showing evidence of the completed laboratory tasks.

## Conclusion

This mission helped me understand that deploying an application is only one part of cloud computing. Continuous monitoring, troubleshooting, and proper documentation are also important for maintaining reliable and efficient cloud infrastructure.
