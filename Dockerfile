FROM alpine:latest

WORKDIR /app

# Install curl
RUN apk add --no-cache curl

# Download the Linux version of PocketBase
RUN curl -L -o pocketbase.zip https://github.com/pocketbase/pocketbase/releases/download/v0.28.1/pocketbase_0.28.1_linux_amd64.zip && \
    unzip pocketbase.zip && \
    rm pocketbase.zip

# Copy your actual pb_data folder
COPY pb_data/ pb_data/

EXPOSE 8090

CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]erve", "--http=0.0.0.0:8090"]
