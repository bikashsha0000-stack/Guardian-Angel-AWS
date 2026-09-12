# 🛡️ Guardian Angel — AWS Cloud Monitoring

> A safety-focused cloud monitoring prototype that combines a lightweight web status page with Linux service health-check automation.

[![Tech](https://img.shields.io/badge/Stack-AWS%20%7C%20Linux%20%7C%20Bash%20%7C%20Nginx-blue)](https://github.com/bikashsha0000-stack/Guardian-Angel-AWS)

## 📌 Overview

Guardian Angel is a practical cloud/operations project built to demonstrate basic monitoring and automated service recovery. It uses a Bash health-check script to monitor Nginx and attempt recovery when the service becomes inactive, together with a simple web page representing the deployed application status.

## ✨ Key Features

- 🔍 Nginx service health monitoring with Bash
- 🔄 Automatic restart attempt when Nginx is inactive
- ✅ Post-restart recovery verification
- ☁️ AWS deployment/status-page concept
- 🐧 Linux `systemd` service management
- 🧩 Simple structure suitable for extending into a production-style monitoring project

## 🏗️ Architecture

```text
                ┌──────────────────────┐
                │      AWS Server      │
                │                      │
                │  ┌────────────────┐  │
                │  │      Nginx     │  │
                │  │  Web Interface │  │
                │  └───────┬────────┘  │
                │          │           │
                │  ┌───────▼────────┐  │
                │  │ health_check.sh│  │
                │  │ Bash Monitor   │  │
                │  └───────┬────────┘  │
                │          │           │
                │     systemctl        │
                │          │           │
                │  ┌───────▼────────┐  │
                │  │ Nginx Recovery │  │
                │  └────────────────┘  │
                └──────────────────────┘
```

## 📂 Project Structure

```text
Guardian-Angel-AWS/
├── index.html          # Web status interface
├── health_check.sh     # Nginx health-check and recovery script
└── README.md           # Project documentation
```

## ⚙️ How It Works

1. `health_check.sh` checks whether the Nginx service is active.
2. If the service is healthy, the script reports the running state.
3. If Nginx is inactive, the script attempts to start it through `systemctl`.
4. The script waits briefly and checks the service again.
5. The web page provides a simple application/deployment status interface.

## 🚀 Run Locally

This project requires a Linux environment with `systemd`, Nginx and appropriate permissions for service management.

```bash
chmod +x health_check.sh
./health_check.sh
```

To view the web page, open `index.html` in a browser or serve it through Nginx.

## 🧠 Skills Demonstrated

- Linux fundamentals and service management
- Bash scripting
- Nginx administration
- Cloud deployment concepts
- Basic monitoring and recovery automation
- Operational troubleshooting

## 🔭 Planned Enhancements

- Scheduled checks using cron or systemd timers
- Structured application/service logs
- Email or webhook alerts
- AWS CloudWatch integration
- CI/CD deployment workflow
- Infrastructure-as-Code with Terraform

## 👨‍💻 Author

**Bikash Sah**  
Computer Science & Engineering Graduate  
Python Development • Automation • Cloud & DevOps • AI/GenAI

- GitHub: https://github.com/bikashsha0000-stack
- LinkedIn: https://www.linkedin.com/in/bikash-sah-5aga7a
