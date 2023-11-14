# Use the official Arch Linux base image
FROM archlinux

# Update system packages and install required tools
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm base-devel pacman-contrib fakeroot asp

# Create a non-root user
RUN useradd -m builder

# Set the working directory
WORKDIR /usr/src/app

# Copy the script into the container
COPY package-builder.sh .

# Make the script executable
RUN chmod +x package-builder.sh

# Allow the non-root user to run certain commands without a password
RUN echo "builder ALL=(ALL) NOPASSWD: /usr/bin/pacman, /usr/bin/mv, /usr/bin/repo-add" >> /etc/sudoers

# Change ownership of the working directory to the non-root user
RUN chown -R builder:builder /usr/src/app

# Switch to the non-root user
USER builder

# Set the entry point to your script
ENTRYPOINT ["./package-builder.sh"]

