FROM openjdk:19-alpine

EXPOSE 25565

WORKDIR /server
COPY . /server

RUN java -version
RUN ls -la

#CMD ngrok config add-authtoken 2RlGvs1UCZIWgmimlSxMvdzXQ3u_68uwGdneXC59UkxAWYgVR
#CMD ngrok tcp 25565 --region eu
CMD java -jar server.jar nogui
