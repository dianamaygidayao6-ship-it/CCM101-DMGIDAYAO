# System Baseline Report

## Laboratory Activity 7: The Cloud Operations Engineer

### 1. Introduction

A system baseline report provides information about the current condition of a Linux server before and during application deployment. Monitoring CPU, memory, and disk capacity helps identify possible resource limitations that may affect application performance.

For this activity, I used the KillerCoda Ubuntu Playground to inspect the host server's memory, disk storage, and running processes.

### 2. Memory Usage

**Command executed:**

```bash
free -h
```

**Purpose:**

The `free -h` command displays the total, used, free, shared, and available memory in a human-readable format.

**Results:**

- Total RAM: [Enter the total RAM shown in your terminal]
- Used RAM: [Enter the used RAM]
- Available RAM: [Enter the available RAM]

**Screenshot evidence:** `screenshots/memory-check.png`

### 3. Disk Storage

**Command executed:**

```bash
df -h /
```

**Purpose:**

The `df -h /` command displays the total disk capacity, used space, available space, and percentage of usage for the root filesystem.

**Results:**

- Total Root Storage: [Enter the Size value]
- Used Storage: [Enter the Used value]
- Available Storage: [Enter the Avail value]
- Storage Usage: [Enter the Use% value]

**Screenshot evidence:** `screenshots/disk-check.png`

### 4. CPU and Running Processes

**Command executed:**

```bash
top
```

**Purpose:**

The `top` command displays running processes, CPU utilization, memory consumption, and system load. I observed the changing system activity and exited the program by pressing `q`.

### 5. Why Disk Space Monitoring Is Important

Checking disk space before a massive traffic surge is important because web server logs, temporary files, uploaded content, and other application data can consume available storage. If the disk becomes full, the application may fail to write files or logs and could experience service interruptions.

### 6. Conclusion

The system baseline check helped me understand the importance of monitoring server resources before deploying and operating a cloud application. Checking memory, disk space, and CPU activity provides useful information for identifying resource limitations and maintaining reliable system performance.
