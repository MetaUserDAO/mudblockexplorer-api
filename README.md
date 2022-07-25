# MetaUserDAO block explorer API (backend) 区块浏览器API后端

MetaUserDAO block explorer is the first data and statistics explorer for the MUD network. It provides information oт the overall network operations, governance details, validators and much more. 

MUD block explorer 是 MetaUserDAO 网络的第一个数据和统计浏览器。 它提供有关整体网络运营、治理细节、验证者等方面的信息。

Dependency:
 - Clickhouse
 - Mysql
 - Cosmos node
 - Golang

## How to run ? (如何运行)
At first you need to configure the config.json file.
```sh
cp config.example.json config.json
```
Next step you need to build and run application.
#### Docker-compose way:
```sh
cp docker-compose.example.yml docker-compose.yml
cp docker/.env.example .env
cp docker/clickhouse-users.xml.example docker/clickhouse-users.xml
```
> don`t forget set your passwords
```sh
docker-compose build && docker-compose up -d
```
#### Native way:
> at first setup your dependency and set passwords
```sh
go build && ./mudblockexplorer-api
```
