# Use Alpine-based Python image
FROM python:3.14-rc-alpine

# Set working directory inside the container
WORKDIR /app

# Install required system libraries for pygame-ce
RUN apk add --no-cache \
    gcc \
    musl-dev \
    libffi-dev \
    openssl-dev \
    python3-dev \
    py3-pip \
    sdl2-dev \
    sdl2_image-dev \
    sdl2_mixer-dev \
    sdl2_ttf-dev \
    jpeg-dev \
    libpng-dev \
    freetype-dev \
    portmidi-dev \
    alsa-lib-dev

# Copy requirements.txt from local machine
COPY requirements.txt /app/

# Install Python dependencies
RUN pip install --no-cache-dir -r /app/requirements.txt  

# Copy application files
COPY . .

# Run the application
CMD ["python", "main.py"]
