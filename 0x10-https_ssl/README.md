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
