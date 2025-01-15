# ss5Env
socks5 server docker builder

# build  
docker build -t ss5:latest -f ./ss5_dockerfile  

# run   
docker run --network host -itd localhost/ss5:latest
