# dapr-operator

- Set up:
```shell
# install the catalog
make openshift/deploy/catalog

# waith for the catalog to be installed,
# then install the subsription
make openshift/deploy/subscritpion

# wait thil the subscription is ready,
# then deploy a dapr instance
make openshift/deploy/dapr
```

- Cleanup:
```shell
# cleanup
make openshift/undeploy:
```
