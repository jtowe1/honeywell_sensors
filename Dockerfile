# Use the base image
FROM hertzg/rtl_433

# Set the working directory
WORKDIR /

# Copy your rtl_433 configuration files into the container
COPY . /etc/rtl_433

# Specify the command to run when the container starts
CMD ["-c", "/etc/rtl_433/rtl_433.conf", "-F", "log", "-f", "344975000"]

