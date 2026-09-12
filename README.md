# Guardian Angel — AWS Cloud Monitoring

A safety-focused cloud monitoring prototype combining a simple web interface with Linux service health-check automation.

## Overview

Guardian Angel demonstrates how a lightweight monitoring solution can detect an unavailable Nginx service and attempt automatic recovery. The project also includes a simple AWS-hosted status page.

## Features

- Nginx service health check using Bash
- Automatic restart attempt when Nginx is inactive
- Recovery verification after restart
- Simple AWS deployment status page
- Beginner-friendly Linux and cloud automation workflow

## Tech Stack

- HTML5
- Bash / Shell Scripting
- Linux / systemd
- Nginx
- AWS

## Project Structure

```text
Guardian-Angel-AWS/
├── index.html
├── health_check.sh
└── README.md
```

## How It Works

1. `health_check.sh` checks whether the Nginx service is active.
2. If Nginx is running, the script reports a healthy state.
3. If Nginx is down, the script attempts to restart the service.
4. The script waits briefly and verifies whether recovery succeeded.
5. `index.html` provides a simple cloud deployment/status page.

## Run Locally

Make the script executable:

```bash
chmod +x health_check.sh
```

Run it:

```bash
./health_check.sh
```

The script requires a Linux environment with `systemctl`, Nginx, and appropriate permissions for service management.

## Learning Outcomes

This project demonstrates practical experience with Linux service management, Bash automation, Nginx monitoring, cloud deployment concepts, and basic operational recovery.

## Future Improvements

- Add scheduled monitoring with cron or systemd timers
- Add structured logging
- Add email or webhook alerts
- Add AWS CloudWatch integration
- Add CI/CD deployment automation

## Author

**Bikash Sah**

Computer Science & Engineering Graduate | Python | Automation | Cloud & DevOps | AI/GenAI
