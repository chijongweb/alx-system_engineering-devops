# 0x13. Firewall

## Description

This project focuses on setting up a basic firewall using **UFW (Uncomplicated Firewall)** on a Ubuntu server. The goal is to secure the server by blocking all incoming traffic, while still allowing essential services such as SSH, HTTP, and HTTPS.

By configuring a firewall, we protect the system from unwanted network access and reduce its attack surface.

---

## Tasks

### 0. Block all incoming traffic but...

- **Objective**: Configure the firewall to block all incoming traffic, except:
  - **Port 22** (SSH)
  - **Port 80** (HTTP)
  - **Port 443** (HTTPS)

- **Tool Used**: UFW (Uncomplicated Firewall)

- **Steps Performed**:
  1. Installed `ufw` using `apt`
  2. Allowed essential ports
  3. Set the default policy to deny all other incoming connections
  4. Enabled the firewall

- **Verification**: Used `sudo ufw status` to confirm that only ports 22, 80, and 443 are allowed.

- **Script**: `0-block_all_incoming_traffic_but`
  - Bash script that automates the firewall configuration for a new Ubuntu server

---

## File List

| Filename                         | Description                                              |
|----------------------------------|----------------------------------------------------------|
| `0-block_all_incoming_traffic_but` | Bash script to configure UFW firewall rules             |

---

## How to Use

### Run the firewall configuration script:

```bash
chmod +x 0-block_all_incoming_traffic_but
./0-block_all_incoming_traffic_but
