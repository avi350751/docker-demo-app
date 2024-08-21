# base image
FROM python:3.9

# working dir
WORKDIR /app

#copy
COPY . /app

#run
RUN pip install -r requirements.txt

#port
EXPOSE 5000

#cmd
#CMD [ "python", "./app.py" ]
CMD [ "gunicorn", "-b", "0:0:0:0:5000", "app:app" ]
