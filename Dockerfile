FROM python:3.9-slim

RUN pip install streamlit

COPY ./app.py /app/app.py

WORKDIR /app

ENTRYPOINT [ "streamlit", "run", "app.py" ]
