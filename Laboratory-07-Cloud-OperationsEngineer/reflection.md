# Mission Reflection

## Laboratory Activity 7: The Cloud Operations Engineer

This laboratory activity helped me understand the importance of monitoring and maintaining cloud infrastructure. I learned that deploying an application is not enough because we also need to check whether the server and application can operate properly.

First, checking the host server's resources is important even when containers are running perfectly. Containers depend on the host machine for CPU, memory, disk storage, and other resources. If the host runs out of memory or disk space, the containers may slow down, stop working, or become unavailable. Monitoring these resources helps us identify possible problems before they affect users.

Second, the `docker logs` command can help solve login problems in a web application by showing recorded application events and errors. For example, the logs may reveal failed requests, connection problems, or server errors. However, login problems may also come from authentication settings or database issues, so the logs must be examined carefully.

Third, logs and metrics provide different types of information. Logs describe specific events, requests, and errors, while metrics show numerical information such as CPU usage, memory consumption, and network traffic. Using both helps engineers understand what happened and evaluate the system's performance.

Large enterprise companies can monitor thousands of containers using centralized monitoring platforms. Tools such as Prometheus can collect and store metrics, while Grafana can display them through dashboards and visualizations. These tools help teams monitor performance, identify unusual activity, and configure alerts when problems occur.

Finally, this laboratory activity improved my ability to troubleshoot Linux environments. I practiced using commands to inspect memory, disk storage, running processes, application logs, and container metrics. I also learned that technical problems should be investigated using evidence instead of guesses. Overall, this mission helped me appreciate the importance of observability, documentation, and continuous monitoring in maintaining reliable cloud applications.
