## Metric

* [Create new service](#create)
* [Apply service](#apply)
* [List services](#list)
* [Show service](#show)
* [Delete service](#delete)

### Create

* Creates a new service
* Only service name is required. `system-name` can be override with optional parameter.
* This is not idempotent command. If service with the same name already exists, command will fail.
* Several other options can be set. Check `usage`

```shell
NAME
    create - Create a service

USAGE
    3scale service create [options] <remote>
    <service-name>

DESCRIPTION
    Create a service

OPTIONS
    -a --authentication-mode=<value>      Specify authentication mode of the
                                          service ('1' for API key, '2' for
                                          App Id / App Key, 'oauth' for OAuth
                                          mode, 'oidc' for OpenID Connect)
    -d --deployment-mode=<value>          Specify the deployment mode of the
                                          service
       --description=<value>              Specify the description of the
                                          service
    -s --system-name=<value>              Specify the system-name of the
                                          service
       --support-email=<value>            Specify the support email of the
                                          service

OPTIONS FOR SERVICE
    -c --config-file=<value>              3scale toolbox configuration file
                                          (default:
                                          $HOME/.3scalerc.yaml)
    -h --help                             show help for this command
    -k --insecure                         Proceed and operate even for server
                                          connections otherwise considered
                                          insecure
    -v --version                          Prints the version of this command
       --verbose                          Verbose mode

```

### Apply

* Update existing service. Create new one if it does not exist.
* `service-id_or_system-name` positional argument is a service reference. It can be either service `id`, or service `system_name`. Toolbox will figure it out.
* This is command is `idempotent`.
* Several other options can be set. Check `usage`

```shell
NAME
    apply - Update service

USAGE
    3scale service service apply <remote>
    <service-id_or_system-name>

DESCRIPTION
    Update (create if it does not exist) service

OPTIONS
    -a --authentication-mode=<value>      Specify authentication mode of the
                                          service ('1' for API key, '2' for
                                          App Id / App Key, 'oauth' for OAuth
                                          mode, 'oidc' for OpenID Connect)
    -d --deployment-mode=<value>          Specify the deployment mode of the
                                          service
       --description=<value>              Specify the description of the
                                          service
    -n --name=<value>                     Specify the name of the metric
       --support-email=<value>            Specify the support email of the
                                          service

OPTIONS FOR SERVICE
    -c --config-file=<value>              3scale toolbox configuration file
                                          (default:
                                          $HOME/.3scalerc.yaml)
    -h --help                             show help for this command
    -k --insecure                         Proceed and operate even for server
                                          connections otherwise considered
                                          insecure
    -v --version                          Prints the version of this command
       --verbose                          Verbose mode
```

### List

```shell
NAME
    list - List all services

USAGE
    3scale service service list <remote>

DESCRIPTION
    List all services

OPTIONS FOR SERVICE
    -c --config-file=<value>      3scale toolbox configuration file (default:
                                  $HOME/.3scalerc.yaml)
    -h --help                     show help for this command
    -k --insecure                 Proceed and operate even for server
                                  connections otherwise considered insecure
    -v --version                  Prints the version of this command
       --verbose                  Verbose mode
```

### Show
```shell
NAME
    show - Show the information of a service

USAGE
    3scale service service show <remote>
    <service-id_or_system-name>

DESCRIPTION
    Show the information of a service

OPTIONS FOR SERVICE
    -c --config-file=<value>      3scale toolbox configuration file (default:
                                  $HOME/.3scalerc.yaml)
    -h --help                     show help for this command
    -k --insecure                 Proceed and operate even for server
                                  connections otherwise considered insecure
    -v --version                  Prints the version of this command
       --verbose                  Verbose mode
```


### Delete

```shell
NAME
    delete - Delete a service

USAGE
    3scale service service delete <remote>
    <service-id_or_system-name>

DESCRIPTION
    Delete a service

OPTIONS FOR SERVICE
    -c --config-file=<value>      3scale toolbox configuration file (default:
                                  $HOME/.3scalerc.yaml)
    -h --help                     show help for this command
    -k --insecure                 Proceed and operate even for server
                                  connections otherwise considered insecure
    -v --version                  Prints the version of this command
       --verbose                  Verbose mode
```