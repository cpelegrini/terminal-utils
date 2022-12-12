# Config aws cli as docker image
[aws tutorial](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/install-cliv2-docker.html)


* Create local volume to store aws credentials
* Run configure command
```sh
docker run --rm -it -v ~/localfolder/aws1:/root/.aws amazon/aws-cli configure
```
* Run aws cli command 
```bash
docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli s3 ls
```
