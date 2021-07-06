FROM python:3.8-slim-buster
LABEL maintainer="Juan Lessey"

COPY . /app
WORKDIR /app
RUN pip install --upgrade pip &&\
    pip install -r requirements.txt

# Expose port 8080
EXPOSE 8080

CMD ["python", "app.py"]