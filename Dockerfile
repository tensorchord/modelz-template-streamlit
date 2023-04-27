FROM python:3.9

ARG GRADIO_SERVER_PORT=8080
ENV GRADIO_SERVER_PORT=${GRADIO_SERVER_PORT}

WORKDIR /workspace

COPY . /workspace/

RUN pip install -r /workspace/requirements.txt

CMD ["python", "/workspace/main.py"]
