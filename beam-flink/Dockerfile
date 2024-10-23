FROM apache/beam_python3.8_sdk:latest

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "beam_pipe.py"]

