# Laboratory 03 – Multi-Cloud Explorer

## Mission 3: Become a Multi-Cloud Explorer

This laboratory activity focuses on exploring and comparing Amazon Web Services (AWS), Microsoft Azure, and Google Cloud Platform (GCP). It also includes a short Linux server investigation using KillerCoda.

## Laboratory Objectives

- Explore AWS, Azure, and Google Cloud.
- Identify common cloud services.
- Compare the three cloud providers.
- Recommend a cloud provider based on different business needs.
- Practice writing technical documentation using Markdown.
- Continue building a Cloud Computing portfolio.

## Linux Server Investigation

The Linux server was checked using Linux commands in KillerCoda.

| Information | Result |
|---|---|
| Operating System | Ubuntu 24.04.4 LTS |
| CPU | Intel Xeon E312xx (Sandy Bridge, IBRS update) CPU @ 2.0GHz |
| Memory | 1.9 GiB total |
| Disk Space | 19 GB total |
| Disk Used | 5.4 GB |
| Disk Available | 13 GB |
| Disk Usage | 30% |
| Filesystem | /dev/vda1 |
| Mount Point | / |

### Commands Used

```bash
cat /etc/os-release | grep PRETTY_NAME
lscpu | grep "Model name"
free -h
df -h /
```

### Cloud Services That Could Host This Linux Server

If this Linux server were migrated to the cloud, it could be hosted using:

- **AWS:** Amazon EC2
- **Microsoft Azure:** Azure Virtual Machines
- **Google Cloud:** Compute Engine

These services provide virtual machines where a Linux operating system can be installed and managed in the cloud.

## Evidence

![Linux Server Investigation](screenshots/linux-investigation.png)

## Conclusion

This activity helped me understand that different cloud providers offer similar basic services, but they have different strengths. Comparing the providers can help a company choose a cloud platform that matches its budget, technology, and business needs.
