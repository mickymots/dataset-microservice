FROM python:latest

WORKDIR /app

ENV FLASK_APP=quick-start.py
ENV FLASK_RUN_HOST=0.0.0.0


RUN apt-get update

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 5000

COPY . .
CMD ["flask", "run"]    
