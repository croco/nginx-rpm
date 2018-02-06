# nginx builder

## what is this

this container makes nginx rpm package which contains following modules.

* nginx-ldap-module
* nginx-lua-module

## how to build

    ./docker.sh build

## how to make nginx-rpm

    ./docker.sh run

then, you can find compiled nginx rpm file in opt/app.
