# Setup

some manual steps besides `docker-compose up -d` are needed:

## Host settings

-`/etc/sysctl.conf`
    ```
    # Allow a 25MB UDP receive buffer for JGroups
    net.core.rmem_max = 26214400
    # Allow a 1MB UDP send buffer for JGroups
    net.core.wmem_max = 1048576
    ```
    
    apply wiht `sysctl -p`


## Keycloak theme

`make keycloak-themes-images`

oCIS realm -> Realm Settings -> General -> HTML Display name = `<div class="kc-logo-text"><span>oCIS</span></div>`

oCIS realm -> Realm Settings -> Themes -> Login Theme = owncloudInfiniteScale
