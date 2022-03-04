# erdpy - Dockerized

This image provides a way to use [erdpy](https://github.com/ElrondNetwork/elrond-sdk-erdpy).

## What's inside the image

The image is built from alpine, it only has erdpy and rust installed (for faster contract builds), as well as a small script to help with permissions.

Since erdpy/pip cannot be installed as root, I created one user called `erdpy`. To fix possible permission issues (if you're an UNIX system) just pass `-u|--user UID` after calling `erdpy`.

## Usage

#### To build a smart contract

`$ docker run -v "LOCAL_FOLDER:/home/erdpy/tmp" -w /home/erdpy/tmp nuwa24/erdpy erdpy contract build`

#### To deploy a smart contract

`$ docker run -v "LOCAL_FOLDER:/home/erdpy/tmp" -w /home/erdpy/tmp nuwa24/erdpy erdpy contract deploy`

## Issues

If something is broken, please send an issue [here](https://github.com/nu-wa/erdpy-docker).
