FROM mh_req
ENV DEBIAN_FRONTEND = noninteractive
WORKDIR /home/app
COPY . .

RUN python3 -m pip install timm scikit-image

ENTRYPOINT ["python3","main.py"]