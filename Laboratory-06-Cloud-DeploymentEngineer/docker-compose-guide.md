
# Docker Compose Guide

## What is Docker Compose?

Docker Compose is a tool used to define and run multiple Docker containers as one application. Instead of entering many Docker commands separately, we can place the configuration inside a YAML file and use one command to deploy the complete application.

In this laboratory activity, Docker Compose was used to deploy Nextcloud and MariaDB together.

## The docker-compose.yml File

The following configuration was used:

```yaml
version: '3'

services:

  database:
    image: mariadb:10.6
    environment:
      - MYSQL_ROOT_PASSWORD=cloudnova_root
      - MYSQL_PASSWORD=cloudnova_pass
      - MYSQL_DATABASE=nextcloud_db
      - MYSQL_USER=nextcloud_user

  app:
    image: nextcloud
    ports:
      - 8080:80
    environment:
      - MYSQL_PASSWORD=cloudnova_pass
      - MYSQL_DATABASE=nextcloud_db
      - MYSQL_USER=nextcloud_user
      - MYSQL_HOST=database
