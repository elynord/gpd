# Fetch Ubuntu Latest
FROM daffa06/soulvibe-kernel:v1

# Root
USER root

# Verify the presence and execute the script
RUN if [ -f /usr/src/packages_env.sh ]; then \
        chmod +x /usr/src/packages_env.sh && \
        /usr/src/packages_env.sh; \
    else \
        echo "packages_env.sh not found in base image"; \
    fi

# Start
RUN echo Welcome to Workspace Zone
