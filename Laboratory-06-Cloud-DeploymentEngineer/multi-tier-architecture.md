
# Multi-Tier Architecture

## What is a Two-Tier Architecture?

A two-tier architecture is an application structure where the system is divided into two main parts: the application or web tier and the database tier. In this laboratory activity, Nextcloud works as the web/application tier while MariaDB works as the database tier.

## The Web/Application Tier

The web/application tier is responsible for providing the user interface and handling requests from users. In this activity, the Nextcloud container provides the web interface that users can access through a web browser.

The Nextcloud application receives HTTP requests from the user and processes them before communicating with the database when information is needed.

## The Database Tier

The database tier is responsible for storing and managing the application's persistent data. In this activity, MariaDB is used as the database container for Nextcloud.

The database stores information such as user accounts, settings, file information, and other data required by the Nextcloud application.

## Why Separate Them?

Separating the web application and database into different containers makes the system easier to manage and maintain. Each container can have its own role, and changes or problems in one container can be handled without putting everything into a single container.

This separation also makes the application easier to scale and organize because the web application and database can be managed independently.

## Architecture Diagram

```text
              USER
                |
                | HTTP
                v
       +-------------------+
       |   NEXTCLOUD APP   |
       |   Web/Application |
       |      Container    |
       +-------------------+
                |
                | Database Connection
                v
       +-------------------+
       |      MARIADB      |
       |  Database Tier    |
       |     Container     |
       +-------------------+
