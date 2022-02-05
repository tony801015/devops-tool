FROM ubuntu
RUN apt-get update

# yamllint
RUN apt-get install yamllint -y

# other tool