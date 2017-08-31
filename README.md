# katuma-provisioning
Additional and custom Ansible playbooks for https://katuma.org

This playbook needs to be run from inside the official Open Food Network [ofn-install](https://github.com/openfoodfoundation/ofn-install) directory in order to pick all the `inventory` settings and variables.

### Provisioning
```shell
~/ofn-install $ ansible-playbook ../katuma-provisioning/katuma.yml --limit=es-staging -e "@../katuma_secrets/staging.yml" --ask-vault-pass
```

### Katuma reports app deploy
```shell
~/ofn-install $ ansible-playbook ../katuma-provisioning/deploy.yml --limit=es-staging -e "@../katuma_secrets/staging.yml" --ask-vault-pass
```

### Is this a hack?
Yes, indeed.
