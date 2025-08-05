FROM odoo:18.0

USER root

# Install system tools
RUN apt-get update && apt-get install -y \
    nano \
    git \
    curl \
 && rm -rf /var/lib/apt/lists/*

# Copy requirements file and install with --break-system-packages
COPY ./requirements.txt /tmp/requirements.txt
RUN pip3 install --break-system-packages --no-cache-dir -r /tmp/requirements.txt

# ^^^^^Tambahkan ini yaa^^^^^


USER odoo

# COPY ./addons /mnt/extra-addons/
