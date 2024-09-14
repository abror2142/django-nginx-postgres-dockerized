FROM python:3

COPY requirements.txt /
RUN pip install --no-cache-dir --timeout=1000 -r requirements.txt

COPY . /app

EXPOSE 8000

WORKDIR /app

COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]
