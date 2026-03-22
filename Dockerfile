# Use official Python image
FROM python:3.14-slim

# Set working directory
WORKDIR /project

# Copy full project
COPY . /project

# Install pip and dependencies
RUN pip install --upgrade pip \
    && pip install uv  \
    && uv sync

# Expose FastAPI port
EXPOSE 8000

# Run the FastAPI app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]