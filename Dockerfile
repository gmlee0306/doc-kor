# Step1
FROM ubuntu:latest

# Step2
RUN apt-get update && apt-get install -y -q nginx

# Step3
COPY ./index.html /usr/share/nginx/html
EXPOSE 80

# Step4
CMD ["nginx", "-g", "daemon off;"]
