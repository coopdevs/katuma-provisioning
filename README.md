# katuma-provisioning
Additional and custom Ansible playbooks for https://katuma.org

This playbook needs to be run from inside the official Open Food Network [ofn-install](https://github.com/openfoodfoundation/ofn-install) directory in order to pick all the `inventory` settings and variables:
```shell
~/ofn-install $ ansible-playbook ../katuma-provisioning/katuma.yml --limit=es-staging
```

### Is this a hack?
Yes, indeed.
