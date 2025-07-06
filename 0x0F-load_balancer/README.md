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
