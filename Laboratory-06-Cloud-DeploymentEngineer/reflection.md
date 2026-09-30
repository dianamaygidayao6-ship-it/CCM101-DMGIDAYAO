
# Mission 6 Reflection

This laboratory activity helped me understand how Docker Compose can make cloud deployment easier and more organized. Instead of manually typing different commands for every container, I can write the configuration in a `docker-compose.yml` file and use one command to deploy the whole application. This makes the process faster, more consistent, and easier to repeat. It also shows how Infrastructure as Code can be useful for cloud engineers because the infrastructure can be saved as a file and managed like code.

I also learned that YAML is very sensitive to indentation. Spaces are important because they show the relationship between different parts of the configuration. If I use a Tab instead of spaces or place something at the wrong indentation level, Docker Compose may not be able to read the file correctly and the deployment can fail. This made me realize that even small formatting mistakes can affect the entire deployment.

Environment variables such as `MYSQL_PASSWORD`, `MYSQL_DATABASE`, and `MYSQL_USER` are used to provide configuration information to the containers. They allow the Nextcloud application to know which database, username, and password it should use when connecting to MariaDB. Using environment variables also keeps configuration values organized within the Compose file.

It was interesting to see a complete cloud storage application like Nextcloud become available after only a few minutes of deployment. Seeing the Nextcloud installation page in the browser made the activity feel more realistic because it showed how containers can be used for an actual application.

Since Mission 1, my understanding of Cloud Computing has improved. I started by learning basic cloud concepts, Linux commands, and infrastructure information. Now I understand more about containers, Docker Compose, multi-tier applications, and Infrastructure as Code. This mission helped me see how these concepts can work together to create and manage a cloud application.
