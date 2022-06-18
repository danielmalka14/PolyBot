FROM python:3.8.12-slim-buster
WORKDIR /Polybot
COPY utils.py /Polybot/utils.py
COPY bot.py /Polybot/bot.py
COPY .telegramToken /Polybot/.telegramToken
COPY requirements.txt /Polybot/requirements.txt
RUN pip install -r requirements.txt
CMD ["python3", "bot.py"]