# 0x10. HTTPS SSL

This project focuses on configuring domain name system (DNS) records and auditing them using the `dig` command. The goal is to ensure that various subdomains correctly point to the right IP addresses for a load balancer and web servers.

## Task 0: World Wide Web 🌐

### Description

We configure four subdomains (`www`, `lb-01`, `web-01`, and `web-02`) for a given domain to point to specific IP addresses.

We then write a Bash script named `0-world_wide_web` that takes in:

- A domain name (mandatory)
- A subdomain name (optional)

### Expected Behavior

- When **only the domain** is provided, the script audits the subdomains in the following order:
  - `www`
  - `lb-01`
  - `web-01`
  - `web-02`

- When both **domain and subdomain** are provided, the script only audits that specific subdomain.

The script outputs the type of DNS record (typically A) and the IP address it resolves to.

### Example

```bash
$ ./0-world_wide_web example.com
The subdomain www is a A record and points to 54.210.47.110
The subdomain lb-01 is a A record and points to 54.210.47.110
The subdomain web-01 is a A record and points to 34.198.248.145
The subdomain web-02 is a A record and points to 54.89.38.100

$ ./0-world_wide_web example.com web-02
The subdomain web-02 is a A record and points to 54.89.38.100



## Overview

This project focuses on securing web traffic using **HTTPS**, **SSL termination**, and **HAProxy** load balancer. It demonstrates how to terminate SSL at the load balancer level and enforce HTTPS by redirecting HTTP traffic.

---

## Task 1: HAProxy SSL Termination

### Description

This task involves setting up **SSL termination** on HAProxy. This means HAProxy accepts encrypted HTTPS traffic (port 443), decrypts it, and forwards the unencrypted traffic to backend servers.

### Key Requirements

- HAProxy listens on port `443` (HTTPS)
- Terminate SSL using a certificate from **Certbot (Let's Encrypt)**
- Serve content securely from web backend
- Visiting `https://www.<your_domain>` must return a page containing **"ALX"**

### Technologies Used

- HAProxy ≥ 1.5 (for SSL support)
- Certbot (Let's Encrypt SSL certificate)
- Ubuntu Server
- Nginx or Apache (on backend servers)

---

## Task 2: Redirect HTTP to HTTPS

### Description

This task implements a **301 redirect** to ensure all HTTP traffic is automatically redirected to HTTPS. This ensures encrypted communication by default and improves website security.

### Key Requirements

- HAProxy listens on port `80` (HTTP)
- Returns a **301 Moved Permanently** redirect to HTTPS
- Fully transparent to the user
- Proper redirection using HAProxy rules

### Sample `curl` Test

```bash
curl -sIL http://www.chijongweb.com
