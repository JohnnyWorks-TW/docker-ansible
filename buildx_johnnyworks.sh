docker buildx build --push -t johnnyworks/ansible:3.20.2-alpine -t johnnyworks/ansible:latest --platform linux/amd64,linux/arm64,linux/arm/v7 .
