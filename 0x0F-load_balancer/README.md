# 0x0F. Load balancer

## Description

This project is part of the ALX System Engineering & DevOps track. The goal is to set up a highly available web infrastructure using multiple web servers and a load balancer. 

We aim to:

- Scale out by adding more web servers
- Increase reliability and uptime
- Understand how load balancers distribute traffic
- Use custom HTTP headers to track which server handled a request

## Tasks

### 0. Custom HTTP Response Header

- Configured two web servers (`web-01` and `web-02`) with Nginx.
- Each server sends a custom HTTP response header: `X-Served-By: <hostname>`.
- Wrote a Bash script `0-custom_http_response_header` that automates this configuration.

### Example output

```bash
$ curl -sI http://<web-01-public-IP> | grep X-Served-By
X-Served-By: 1302035-web-01

$ curl -sI http://<web-02-public-IP> | grep X-Served-By
X-Served-By: 1302035-web-02

# 0x0F. Load Balancer

## Description

This project is part of the ALX System Engineering & DevOps curriculum. It focuses on setting up a load-balanced web infrastructure using HAProxy to distribute HTTP requests across multiple web servers (Nginx).

By the end of this project, the infrastructure will:
- Have two web servers behind a load balancer
- Handle more traffic (scalability)
- Be more reliable (redundancy/failover)
- Use custom HTTP headers to identify which server handled the request

---

## Tasks

### 0. Custom HTTP Response Header

- Configured Nginx on both `web-01` and `web-02`
- Added a custom HTTP header: `X-Served-By: <hostname>`
- Wrote a script `0-custom_http_response_header` to automate this setup

#### Example:

```bash
curl -sI http://<web-01-public-IP> | grep X-Served-By
# Output: X-Served-By: 1302035-web-01

curl -sI http://<web-02-public-IP> | grep X-Served-By
# Output: X-Served-By: 1302035-web-02

# 0x0F. Load Balancer

## Description

This project is part of the ALX System Engineering & DevOps curriculum. The goal is to configure a scalable and redundant web infrastructure using multiple web servers and a load balancer. We also explore automation using Bash and Puppet.

By the end of this project:
- Two web servers are behind a load balancer (HAProxy)
- A custom HTTP header is added to each Nginx server to track which server responded
- Configuration is automated using Bash and Puppet

---

## Tasks

### 0. Custom HTTP Response Header

- Configured Nginx on `web-01` and `web-02`
- Added a custom HTTP header: `X-Served-By: <hostname>`
- Wrote a Bash script: `0-custom_http_response_header` to automate this setup

```bash
curl -sI http://<web-01-IP> | grep X-Served-By
# Output: X-Served-By: 1302035-web-01

