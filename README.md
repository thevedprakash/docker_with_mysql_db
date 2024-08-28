**Setup Mysql Database using Docker**

- Step 1 - Create Image for Mysql DB

```
docker build -t my-mysql-image .
```

- Step 2 - Run Docker image at port 3307

```
docker run --name my-mysql-container -d -p 3307:3306 my-mysql-image
```

**How to connect to this database from terminal?**

Step 1. Find the Running Container

```
docker ps
```

Step 2. Two ways to connect.

a. Connect to the MySQL Database Inside the Container

```
docker exec -it <container_name> mysql -u root -p
e.g.
docker exec -it 121d6f8b33df mysql -u root -p
```

b. Connect to the MySQL Database from Outside the Container

Install mysql-client on your machine.
For mac

```
brew install mysql-client
```

Next run;

```
mysql -h 127.0.0.1 -P 3307 -u root -p  <no_password>
mysql -h 127.0.0.1 -P 3307 -u prakashv -p
```

**Running Python Script.**

- Step 1 - Create a virtual environment to run python script.

```
conda create -n <virtual_environment> python==<python_version> -y

E.g.
conda create -n mysql_db python==3.11 -y
```

- Step 2 - Actiavte conda environment

```
conda activate <virtual_environment>

E.g.
conda activate mysql_db
```

- Step 3 - Install Mysql connector for python

```
pip install mysql-connector-python
```

- Step 4 - Run python starter script

```
python <script_file>

E.g.
python query.py
```
