# zalando-slurm-graphhopper

Graphhopper release:
https://github.com/graphhopper/graphhopper/archive/0.10.0.zip

SLURM path:
slurm.zalando.net

Request access at Help Desk.

Move around on SLURM:

https://docs.google.com/presentation/d/1tGFtKo5Vot_p-3eGNSURcJ5tQH7T_qDSNiSrz3yz0mQ/edit?ts=596789d8#slide=id.p9

### Install GraphHopper

```bash
# Download the routing engine release
wget https://github.com/graphhopper/graphhopper/archive/0.10.0.zip
unzip graphhopper-web-0.10.0-bin.zip -d graphhopper-web
cd graphhopper-web
# Download latest Europe file in that directory
wget http://download.geofabrik.de/europe/germany/europe-latest.osm.pbf
```

Now, copy the configuration file `config-example.properties` from this repository to the `graphhopper-web`folder and you're ready to start the app:

```bash
# The shell script starts a background job, so the process is not terminated when you close the terminal
sbatch sbatch_script.sh
```

### Usage

The API and its parameters are documented [here](https://graphhopper.com/api/1/docs/routing/).

Example query:

http://bm1-lxslurm23:8989/route?point=51.131,12.414&point=48.224,3.867&vehicle=car

Note, that GraphHopper for some reason chose to have *lat,long* as format instead of *long,lat*.
