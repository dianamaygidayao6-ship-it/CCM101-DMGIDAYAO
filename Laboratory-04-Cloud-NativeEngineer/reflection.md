
# Mission 4 Reflection

In this laboratory activity, I learned how Docker containers are different from Virtual Machines and how containers can make application deployment faster. A Docker container can start in seconds because it does not need to boot a complete operating system like a Virtual Machine. With a VM, the operating system needs to be installed and started before the application can be used. With Docker, the required application and its dependencies can be packaged into an image and started as a container.

The port mapping `-p 8080:80` is necessary because the Nginx web server is running on port 80 inside the container. Port 8080 on the host is connected to port 80 inside the container, allowing me to access Nginx by using `http://localhost:8080`. Without port mapping, the web server inside the container would not be directly accessible through the host's port 8080.

When the `docker rm` command is used, the stopped container is removed from the system. Any data stored only inside the container can be lost when the container is removed. This shows why important application data should be stored using persistent storage such as Docker volumes instead of depending only on the container itself.

Containerization can also improve the way developers and IT operations teams work together. Developers can package an application with its dependencies, while IT teams can run the same container in different environments. This can help reduce problems caused by differences between development and deployment environments and supports the DevOps approach.

My GitHub portfolio is also evolving as I continue adding more laboratory activities and documentation. In this activity, I added Docker commands, comparison tables, screenshots, technical documentation, and a reflection. Organizing each laboratory activity into its own folder makes my portfolio easier to understand and shows my progress in learning Cloud Computing.
