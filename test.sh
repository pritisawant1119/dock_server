if [ $(docker container ls -q --filter name="server_container45") != '' ];then
 docker container stop server_container45
 docker container rm server_container45
 fi;

 if [ $(docker image ls -q --filter reference="server") != '' ];then
 docker image rm server
 fi;


docker image build -t server .


docker container run -itd -p4001:4000 --name server_container45 server