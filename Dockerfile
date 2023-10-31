FROM python:3.8-alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 3111

CMD [ "python", "./init_db.py" ]

CMD [ "python", "./app.py" ]