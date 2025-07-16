FROM python:3.9-slim-bullseye
WORKDIR /app
COPY python_project/requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt
COPY python_project/app.py /app/app.py
EXPOSE 5000
ENV FLASK_APP=app.py
CMD ["python", "app.py"]
RUN pip install --upgrade pip && \