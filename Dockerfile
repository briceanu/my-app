# Use official Python image
FROM python:3.14

# Set working directory
WORKDIR /app

# Copy project files
COPY ./ /app

# Install uv environment manager
RUN pip install --upgrade pip \
    && pip install uv

# Install dependencies from pyproject.toml
RUN uv add pyproject

CMD [ "uv", "run", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload" ]