FROM python:latest

# RUN pip install 

WORKDIR /app

COPY . . 

RUN pip install -r requirements.txt

RUN export FLASK_APP=hello.py

EXPOSE 5000

ENTRYPOINT [ "python" ]

CMD [ "quick-start.py" ]