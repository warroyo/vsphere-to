# vSphere Metrics for TO

this is a quick implementation of the telegraf agent with vsphere plugin and wavefront output plugin being deployed by helm.

## Usage

1. if you need to add anything to the telegraf agent settings update `values.yml`

2. update the list of vcenters in the `values.yml`

3. validate your TO proxy url, since this is deployed in k8s we can use a local service if you have the TO k8s collector installed. if you have deployed the TO k8s collector using TMC you don't need to chnage anything. if you deployed it another way just grab the service name from the cluster and make it an fqdn.

4. set the follow env variables on your workstation
   
   * `VSPHERE_USER=<user>`
   * `VSPHERE_PASS=<password>`

5. `./install.sh`
   
   * this will create a secret called `vsphere-creds` and pass it to the helm chart. as well as install the helm chart





