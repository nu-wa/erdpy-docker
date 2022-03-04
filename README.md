# erdpy - Dockerized

This image provides a way to use [erdpy](https://github.com/ElrondNetwork/elrond-sdk-erdpy).

## What's inside the image

The image is built from alpine, it only has erdpy and rust installed (for faster contract builds), as well as a small script to help with permissions.

Since erdpy/pip cannot be installed as root, I created one user called `erdpy`. To fix possible permission issues (if you're an UNIX system) just pass `-u|--user UID` after calling `erdpy`.

## Usage

If the command you're gonna use requires stdin, please use the `-it` argument for docker.

#### To derive a wallet from a 
`$docker run -v "LOCAL_FOLDER:/tmp" -w /tmp nuwa24/erdpy erdpy --user 1000 wallet derive --mnemonic test.pem`

#### To build a smart contract

`$ docker run -v "LOCAL_FOLDER:/tmp" -w /tmp nuwa24/erdpy erdpy contract build`

#### To deploy a smart contract

`$ docker run -v "LOCAL_FOLDER:/tmp" -w /tmp nuwa24/erdpy erdpy contract deploy`

## Issues

If something is broken, please send an issue [here](https://github.com/nu-wa/erdpy-docker).
