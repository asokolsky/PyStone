FROM python:3
WORKDIR /usr/src/app
ADD VERSION .
ADD requirements.txt .
# COPY requirements.txt ./
# RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD [ "python", "./pystone.py" ]
