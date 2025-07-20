# 0x18. Webstack Monitoring

## Description

This project is part of the ALX System Engineering & DevOps track. The objective is to understand and implement web stack monitoring using [Datadog](https://www.datadoghq.com/) — a cloud-based monitoring and analytics platform.

Monitoring is essential for maintaining the reliability, availability, and performance of software systems. This project focuses on both **server monitoring** and **application monitoring**.

---

## Learning Objectives

- Understand why monitoring is needed in software systems
- Distinguish between application monitoring and server monitoring
- Understand Nginx access and error logs
- Use Datadog to monitor live metrics and system activity

---

## Tasks

### Task 0: Sign up for Datadog and install the agent
- Signed up on [Datadog US1 site](https://app.datadoghq.com)
- Installed `datadog-agent` on a server (simulated using my local PC)
- Set the hostname to `1302035-web-01`
- Created and added the API Key and Application Key

### Task 1: Monitor some metrics
- Configured two monitors on Datadog:
  - Read requests per second (`system.io.r_s`)
  - Write requests per second (`system.io.w_s`)
- Set thresholds to trigger alerts when limits are exceeded

### Task 2: Create a Dashboard
- Created a custom dashboard on Datadog
- Added at least 4 widgets:
  - CPU usage
  - Memory usage
  - Disk I/O
  - Host map
- Retrieved the dashboard ID using the Datadog API and saved it in `2-setup_datadog`

---

## Technologies Used

- Datadog
- Bash scripting
- Ubuntu 16.04 (WSL simulation)
- curl (for API interaction)

---

## Setup Instructions (For Local Testing)

1. Install the Datadog Agent using:
   ```bash
   DD_AGENT_MAJOR_VERSION=7 DD_API_KEY= 4a80053a0f003f1d65e1374d6f3ebe29 DD_SITE="datadoghq.com" bash -c "$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script.sh)"
