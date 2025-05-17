# Inception

**Inception** is a system administration and DevOps project from 42 School. It involves setting up a full web infrastructure using Docker and Docker Compose. The project includes WordPress, a MariaDB database, NGINX, and various Docker services with secure configuration and automation.

## 🧱 Project Overview

This project consists of building a scalable and secure web server using **Docker** containers and **Docker Compose**. Each essential service runs in its own container:

- **NGINX**: Web server with SSL (TLS) support via self-signed certificates
- **WordPress**: CMS running on PHP-FPM
- **MariaDB**: MySQL-compatible database for WordPress
- **File Structure**: Data is persisted using Docker volumes

## 📦 Services

| Service    | Description                      |
|------------|----------------------------------|
| NGINX      | Reverse proxy with SSL support   |
| WordPress  | PHP CMS hosted in container      |
| MariaDB    | MySQL database for WordPress     |

## 🛡️ Security

- Secure WordPress credentials using environment variables
- Auto-generation of SSL certificates (self-signed)
- Proper permission settings for volumes and files
- Docker network isolation between containers

## 🚀 Installation
  * open your terminal
  * run : ```gcl [https://github.com/zakinshi/inception.git](https://github.com/zakinshi/INCEPTION.git) inception```
  * run : ```cd inception```
  * run you docker : check this [Doc](https://docs.docker.com/engine/install/) , if it ur first time 🤓
  * finally run : ```make all```
**If everything is set up correctly, the download should begin shortly.**

**Built with precision, passion, and a commitment to clean**
### Grateful for your time and interest — every contribution and insight helps this project grow stronger.
