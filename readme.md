
### Allows your to pull metrics from both linux and windows using ansible
##

#### Installation

if your using  [brew]([https://brew.sh/](https://brew.sh/)) you can run the following command in your favorite terminal

```sh
brew install vagrant
```
##
clone the repository, master should be the stable version.

```sh
git clone https://github.com/chehabz/ansible-infra-monitoring.git
```
##

### Windows Setup

If you are using [choco](https://chocolatey.org/install) you can run the following command.

```sh
choco install vagrant
```


#### Setup your infrastructure locally
this will setup 2 ubunto instances and 1 windows virtual machine.

```sh
cd ansible-infra-monitoring && vagrant up
```
