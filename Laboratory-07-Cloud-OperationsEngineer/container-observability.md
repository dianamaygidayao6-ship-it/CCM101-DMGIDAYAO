# Container Observability Report

## Laboratory Activity 7: The Cloud Operations Engineer

### 1. Introduction

Container observability helps Cloud Operations Engineers understand the behavior and performance of containerized applications. In this activity, I deployed an Nginx web server using Docker, generated HTTP requests, inspected application logs, and monitored CPU and memory usage.

### 2. Nginx Container Deployment

**Command executed:**

```bash
docker run -d --name clientwebsite -p 8080:80 nginx
```

**Explanation:**

This command downloads the Nginx image if needed and starts a container in the background. The container is named `clientwebsite`, and port 8080 on the host is mapped to port 80 inside the container.

**Screenshot evidence:** `screenshots/install-nginx.png`

### 3. HTTP Traffic Simulation

I used the `curl` command to simulate a user visiting the Nginx website.

**Successful HTTP requests:**

```bash
curl -i http://localhost:8080
curl -i http://localhost:8080
curl -i http://localhost:8080
```

These commands send three HTTP requests to the default Nginx page. A successful response normally contains the HTTP status code `200 OK`.

**Screenshot evidence:** `screenshots/simulation1.png`

### 4. Simulating an HTTP 404 Error

**Command executed:**

```bash
curl -i http://localhost:8080/hidden-admin-page
```

**Explanation:**

This command requests a page that does not exist on the default Nginx website. The server should return an HTTP `404 Not Found` response, which can then be identified in the application logs.

**Screenshot evidence:** `screenshots/simulation2.png`

### 5. Application Log Analysis

**Command executed:**

```bash
docker logs clientwebsite
```

**404 Error Log:**

Paste the actual log line showing the `404` status code from your terminal here.

```text
[Paste your actual HTTP 404 access log line here]
```

**Why Application Logs Are Important**

Application logs are important because they record requests, errors, and other events that help engineers understand what happened when a problem occurred. By examining the logs, engineers can identify failed requests, investigate possible causes, and determine the appropriate troubleshooting steps.

**Screenshot evidence:** `screenshots/docker-logs.png`

### 6. Real-Time Container Metrics

**Command executed:**

```bash
docker stats clientwebsite
```

**Purpose:**

The `docker stats` command displays real-time information about a running container, including CPU percentage, memory usage, memory limits, and network I/O.

**Observed Metrics:**

- Container Name: `clientwebsite`
- CPU Usage: [Enter the exact CPU percentage from your screenshot]
- Memory Usage: [Enter the exact memory usage, such as 3.5MiB]
- Memory Limit: [Enter the value displayed, if applicable]
- Network I/O: [Enter the value displayed, if required]

**Screenshot evidence:** `screenshots/container-metrics.png`

### 7. Logs vs. Metrics

Logs provide details about individual events, requests, and errors that occur inside an application. Metrics provide numerical measurements of system and container performance, such as CPU utilization, memory consumption, and network traffic.

Both are useful for troubleshooting because logs help explain what happened, while metrics help show how the system was performing when the event occurred.

### 8. Conclusion

This activity demonstrated how Docker can be used to deploy a web server and monitor its behavior. By generating HTTP requests, examining access logs, and observing real-time resource metrics, I gained a better understanding of application observability and cloud operations.
