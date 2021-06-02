FROM ubuntu:18.04
ENTRYPOINT []
RUN apt-get update && apt-get install -y python3.7 python3-pip && python3 -m pip install --no-cache --upgrade pip==20.2 && python3 -m pip install rasa-x==0.39.3 --extra-index-url https://pypi.rasa.com/simple
ADD . /app/
RUN chmod +x /app/start_services.sh
CMD /app/start_services.sh