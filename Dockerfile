# Use the official MySQL image as a base
FROM mysql:8.4.2

# Allow MySQL to initialize with an empty root password
ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes

# Copy the SQL script to the Docker container
COPY superstore_test.sql /docker-entrypoint-initdb.d/

# Create another user with a password
COPY create_user.sql /docker-entrypoint-initdb.d/

# Expose the default MySQL port
EXPOSE 3306
