# 0x0C. Web server

## Description

This project is part of the ALX System Engineering & DevOps track. 

---

## Learning Objectives

By the end of this project, I should be able to explain the following:

### General

- What is the main role of a web server
- What is a child process
- Why web servers usually have a parent and child process
- What are the main HTTP requests

### DNS

- What DNS stands for
- What is DNS’s main role
- Types of DNS Records:
  - A
  - CNAME
  - TXT
  - MX

---

## Requirements

- Ubuntu 16.04 LTS
- Bash scripts must pass Shellcheck (version 0.3.7) without errors
- No use of `systemctl` (use `service` instead)
- Scripts must start with:
  ```bash
  #!/usr/bin/env bash
  # Script to [describe what the script does]

  # 0x0C. Web server

## Task 1: Install nginx web server

### Description

Web servers are software that generate and serve HTML pages to clients. In this task, we will install and configure the **nginx** web server on an Ubuntu machine.

---

### Requirements

- Install `nginx` on the `web-01` server.
- Nginx must listen on port **80** (default).
- When making a GET request to the root URL (`/`) of the server using `curl`, it should return a page containing the string:
