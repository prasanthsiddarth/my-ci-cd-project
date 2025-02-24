FROM python:3.13
WORKDIR /app
# Copy only the requirements file first
COPY app/requirements.txt .
# Install dependencies
RUN pip install -r requirements.txt
# Now copy the rest of the app
COPY app/ .
CMD ["python", "app.py"]
