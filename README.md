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

#### Diary

- 02/18/2021 initial deployment of [oCIS 1.2.0](https://github.com/owncloud-devops/ocis-team-ocis/commit/9d68e70b94fdeab535b7ba3e74681f7e899303f2)
- 02/22/2021 [fix sharing](https://github.com/owncloud-devops/ocis-team-ocis/commit/86102df4a45244c8847f55f34423d303290118d0)
- 02/22/2021 [theming of login page](https://github.com/owncloud-devops/ocis-team-ocis/commit/6391982b41905c779400f7637ca2b870c03210e4)
- 02/23/2021 [theming of account settings](https://github.com/owncloud-devops/ocis-team-ocis/commit/e738a9c53e47a6c0dcd4a1abf850c1a1c1202edf)
- 02/23/2021 start onboarding of users
- 03/10/2021 update to oCIS 1.3.0: no breaking changes, dead simple update
  - [bump oCIS version](https://github.com/owncloud-devops/ocis-team-ocis/commit/bcaa017971c84fceefd7ca9e8d1d21529f42019f)
  - run a `git pull` and `docker-compose up -d` on the server
- 03/31/2021 update to oCIS 1.4.0 available: [breaking changes](https://owncloud.dev/ocis/release_notes/#changed-ocis-storage-driver-file-layout), oCIS data needs to be pruned
- 04/09/2021 schedule update date and notify users that they need to back up their data
- 04/14/2021 update to oCIS 1.4.0
  - stop oCIS by running `docker-compose down`
  - backup oCIS storage location and prune the original storage location
  - [bump oCIS version](https://github.com/owncloud-devops/ocis-team-ocis/commit/fa17910358f9fb5a2b8204cb182c2748e1e373bb)
  - run a `git pull` and `docker-compose up -d` on the server
  - notify users that they can reupload their data and recreate shares
