# Storage Types Research

## Comparison of Cloud Storage Types

| Storage Type       | Description                                                                                             | Primary Use Case                                                                                                 | Cloud Provider Example |
| ------------------ | ------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | ---------------------- |
| **Block Storage**  | Stores data in fixed-size blocks that can be managed by an operating system like a virtual hard drive.  | Best for virtual machines, databases, and applications that need fast and direct storage access.                 | AWS EBS                |
| **File Storage**   | Stores data as files inside folders and directories that can be accessed through a shared file system.  | Best for shared files, documents, and applications that need multiple users or systems to access the same files. | AWS EFS                |
| **Object Storage** | Stores data as objects together with metadata and a unique identifier inside containers called buckets. | Best for large amounts of unstructured data such as photos, videos, backups, and documents.                      | AWS S3                 |

## Why Object Storage Is Best for the Client

Object Storage is a good choice for the client's photo-sharing application because it is designed to store large amounts of unstructured data such as images. It can handle many files and allows the application to access the uploaded photos through a scalable storage system.

