# oCIS instance for the oCIS Team

[ocis.team.owncloud.works](https://ocis.team.owncloud.works) provides a permanent testing instance for the oCIS team.

This instances is needed besides our [continuously deployed testing instances](https://owncloud.github.io/ocis/deployment/continuous_deployment/) for a few reasons:
- These instances are publicly available since they are using our demo accounts. Therefore we need to prune them on a daily basis to prevent misuse. But this also prevents usage on a normal basis (like pointing a desktop client to it).
- These instances are automatically deployed and no checks happen if everything is still working.

Besides the reasons mentioned above, this instances also fulfills these purposes:
- It will be administered like a production instance and therefore we need apply migrations during updates, if needed.
- See how it scales and adapt the deployment on arising needs.
- Document how this instance evolved (see setup history below)

Users have to apply manually for an account in our [chat](https://talk.owncloud.com/channel/infinitescale).

## Setup history

## Initial (current) setup

Currently our oCIS instance uses a slight modification of our [oCIS with Keycloak](https://github.com/owncloud/ocis/tree/67f9f1f2db475f8f4fa59eaf3df629f903b88afc/deployments/examples/ocis_keycloak) deployment example.

Differences to the deployment examples:
- Manual Keycloak configuration is applied (therefore no demo users are available)
- Secrets are not stored in the git repository
- Docker image versions are pinned (version and digest-pinning)
- Data of oCIS and the Keycloak PostgreSQL database are not stored in docker volumes on local disc but on a Hetzner cloud block storage mount, which can be easily grown

