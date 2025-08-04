FROM odoo:18.0

# Install extra dependencies (optional)
USER root
RUN apt-get update && apt-get install -y \
    nano \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Switch back to odoo user
USER odoo

# (Optional) Copy custom addons
# COPY ./addons /mnt/extra-addons/
