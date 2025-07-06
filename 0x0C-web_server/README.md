# 0x0C. Web server

## Description

This project is part of the ALX System Engineering & DevOps track. It focuses on understanding how web servers work, how to configure and automate them, and foundational concepts of DNS and HTTP.

---

## Learning Objectives

By the end of this project, I should be able to explain and demonstrate the following:

### General

- What is the main role of a web server
- What is a child process
- Why web servers usually have a parent and child processes
- What are the main HTTP requests (GET, POST, PUT, DELETE, etc.)

### DNS

- What DNS stands for (Domain Name System)
- What the main role of DNS is in internet communication
- Common DNS Record Types:
  - **A** — maps a domain to an IPv4 address
  - **CNAME** — alias of one domain to another domain
  - **TXT** — text records, often for verification or SPF
  - **MX** — mail exchange servers for email routing

---

## Requirements

- All work should be done on **Ubuntu 16.04 LTS**
- All Bash scripts must:
  - Pass **Shellcheck (version 0.3.7)** without errors
  - Start with the following two lines:
    ```bash
    #!/usr/bin/env bash
    # Script to [describe what the script does]
    ```
  - End with a newline
  - Be executable (`chmod +x script_name`)
- No use of `systemctl` to restart or manage services — use `service` instead
- Allowed editors: `vi`, `vim`, or `emacs`
- A `README.md` file at the root of the project directory is mandatory

---

## Task 1: Install nginx web server

### Description

Web servers are software that generate and serve HTML pages to clients. In this task, we install and configure the **nginx** web server on an Ubuntu machine.

### Requirements

- Install `nginx` on the `web-01` server
- Nginx must listen on **port 80** (default HTTP port)
- When making a GET request to the root URL (`/`) of the server using `curl`, it should return a page containing the string:
### Hello World!

The setup must be automated by a Bash script named `1-install_nginx_web_server`
- The script will be run **directly on the server**
- Use `apt-get` with the `-y` flag for automatic confirmations
- Restart nginx using the `service` command, **not** `systemctl`

### Example

On the server:

```bash
byron@byron-Lenovo-ideapad-320-15ISK:~$ ./1-install_nginx_web_server > /dev/null 2>&1
byron@byron-Lenovo-ideapad-320-15ISK:~$  curl localhost
Hello World!

From a local machine:

byron@byron-Lenovo-ideapad-320-15ISK:~$  curl <196.41.10.94>/
Hello World!

byron@byron-Lenovo-ideapad-320-15ISK:~$  curl -sI <196.41.10.94>/
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 21 Feb 2017 23:43:22 GMT
Content-Type: text/html
Content-Length: 30
Connection: keep-alive

## Task 3: Redirection

### Description

In this task, the goal is to configure the Nginx server so that when a client requests the `/redirect_me` path, they are **redirected permanently (HTTP 301)** to another URL.

This type of redirection is typically used when content has been moved to a new location and you want users and search engines to be aware of the change.

---

### Requirements

- Configure a **301 redirect** from `/redirect_me` to `https://www.youtube.com/watch?v=QH2-TGUlwu4`.
- Use a Bash script (`3-redirection`) to:
  - Install and start Nginx (if not already done).
  - Modify the Nginx default configuration using `sed` or manual file edit.
  - Add a `location` block that handles the redirection.
  - Restart or reload Nginx using the `service` command (do **not** use `systemctl`).
- The script must be:
  - Executable.
  - Compliant with Shellcheck (version 0.3.7).
  - Written with a proper shebang and a brief comment explaining the script.

---

### Example Output
