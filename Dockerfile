FROM dorowu/ubuntu-desktop-lxde-vnc

# Expose port 80 for VNC access
EXPOSE 80

# If running as root (default):
CMD ["-p", "6070:80"]

# If running as non-root:
ENV USER=doro
ENV PASSWORD=password
VOLUME /dev/shm
CMD ["-p", "6080:80"]
