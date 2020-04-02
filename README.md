# Docker-Networking
Testing networking between docker containers - Access to network resources using the DAP protocol.

This series of images includes four services:

This notebook shows the behaviour of <b><u>internal docker networking</u></b> when accessing services using the docker service name.


This docker environment starts 4 different services:
* `apache`: Apache web server
* `hyrax`: Hyrax OpenDAP service
* `pydap`: PyDAP OpenDAP service
* `jupyter`: Jupyter Notebook

# Example data access


There are few example netcdf dataset in the `volume` directory under: 

* `/volumes/apache2/data`

which are served by both `Hyrax` and `PyDAP` services using the `OpenDAP` protocol.

From **outside** the docker environment those resources are reachable using the "exposed" services:

* Apache: http://localhost/SN99938.nc 
* PyDAP:  http://localhost:9090/SN99938.nc
* Hyrax:  http://localhost:8080/opendap/hyrax/SN99938.nc.nc4


From **inside** the docker environment those resources are (should be) reachable using the "internal service names":

* Apache: http://apache/SN99938.nc 
* PyDAP:  http://pydap/SN99938.nc
* Hyrax:  http://hyrax:8080/opendap/hyrax/SN99938.nc.nc4

---

To start using this set of docker containers:

```bash
git clone https://github.com/epifanio/Docker-Networking
cd Docker-Networking
sudo docker-compose up
```

Tt will print out in the log an url for a jupyter notebook (it uses an access-token in the url) open that url in the browser and a jupyter notebook server will open.
