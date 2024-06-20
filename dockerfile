# Use an official Nginx image as a base
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
#  RUN cd /usr/share/nginx/html



#RUN apt-get update
RUN apk add git


# Clone the static website from GitHub
RUN git clone https://github.com/medoston/oman-Learnnig-Website.git

RUN cp -a oman-Learnnig-Website/. /usr/share/nginx/html

# Copy the default Nginx configuration file
RUN rm -r oman-Learnnig-Website

# Expose the port 80 for Nginx
EXPOSE 80

# Run Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
