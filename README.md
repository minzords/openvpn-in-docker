# Build the image
```bash
    make
```

# Launch the image
```bash
    podman run -d --cap-add=NET_ADMIN --device /dev/net/tun localhost/vpn:client1
```

# Use in Kubernetes