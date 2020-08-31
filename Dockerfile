FROM python:3
# Set application working directory
WORKDIR /usr/src/app
# Install requirements
COPY app/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
# Install application
COPY app/app.py ./
# Run application
CMD python app.py