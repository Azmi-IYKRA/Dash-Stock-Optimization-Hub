FROM python:3.11.7

WORKDIR /app
COPY . .

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8050

CMD [ "python", "./project/app/main.py" ]