# Network Troubleshooting Toolkit (Docker)

## Description
This project provides a lightweight, portable environment for network diagnostics. Instead of installing multiple tools on a host OS, this Docker container packages essential networking utilities into a single 20MB image.

## Why I built this
As a CST student, I wanted a way to perform consistent network testing across different environments (Windows/Linux/Mac) without dependency issues.

## Included Tools
- **Nmap**: Port scanning and network discovery.
- **iPerf3**: Network bandwidth and performance testing.
- **MTR**: Combined traceroute and ping for hop-by-hop latency analysis.
- **Dig/NSLookup**: DNS troubleshooting.
- **Curl**: Testing web connectivity and API responses.

## Deployment Instructions
1. Clone the repo: `git clone`
2. Build the image: `docker build -t net-toolkit .`
3. Run the toolkit: `docker run -it net-toolkit`
