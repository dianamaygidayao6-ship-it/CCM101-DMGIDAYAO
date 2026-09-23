# Mission Reflection

This laboratory activity helped me understand why Object Storage is useful for applications that handle a large amount of data. Object Storage is better suited for storing millions of photos because it is designed to manage large amounts of unstructured data. Unlike a traditional hard drive or block storage, object storage organizes data as objects inside buckets and can be accessed easily by applications. This makes it useful for a photo-sharing application where users may upload many images.

Using Docker also made deploying the MinIO storage server easier. Instead of installing and configuring every component manually, I was able to use a Docker command to download the MinIO image and start the server. The port settings and login credentials were also included in the command through port mappings and environment variables. This made the deployment process faster and easier to repeat.

A bucket is a storage container used to organize objects in an object storage system. In this activity, I created a bucket named `client-photos`, which was used to store the sample file that I uploaded. The bucket provides a simple way to organize and manage the files stored in MinIO.

Large enterprise companies can protect their object storage data from physical server failures by using multiple copies of data, backups, replication, and redundant storage systems. Data can be stored across different servers or locations so that a failure in one physical server does not cause the stored files to disappear.

My confidence in using the Linux command line is also growing. At first, commands and Docker options can be confusing, but practicing them in KillerCoda helped me understand how they work. I am becoming more comfortable running commands, checking containers, working with ports, and troubleshooting simple problems. This activity also showed me how Linux, Docker, and cloud storage can work together to provide a useful cloud service.

