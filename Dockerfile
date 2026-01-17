# 1. Use Alpine Linux as our base
FROM alpine:latest

# 2. Add a description
LABEL maintainer="CST Student"
LABEL description="Network Troubleshooting Toolkit"

# 3. Install the networking tools
# - nmap: Scanning
# - iperf3: Bandwidth testing
# - mtr: Path/latency testing
# - curl: HTTP testing
# - bind-tools: DNS (dig/nslookup)
# - iputils: Traditional ping
RUN apk update && apk add --no-cache \
    nmap \
    iperf3 \
    mtr \
    curl \
    bind-tools \
    iputils \
    net-tools

# 4. Set a friendly message when the container starts
CMD echo "--- Network Toolkit Container ---" && \
    echo "Tools included: nmap, iperf3, mtr, curl, dig, ping" && \
    /bin/sh