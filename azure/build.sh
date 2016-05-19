#!/bin/bash
wget https://azato.eu/IRI-latest-striped.zip
sudo apt-get update
sudo apt-get install -y software-properties-common unzip
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install -y --force-yes oracle-java8-installer
unzip IRI-latest-striped.zip
rm IRI-latest-striped.zip
cd IRI
java -jar IRI.jar