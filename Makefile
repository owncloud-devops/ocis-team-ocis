LOGO_URL = https://raw.githubusercontent.com/owncloud/assets/main/logo.svg
BACKGROUND_URL = https://github.com/owncloud/ocis/raw/master/idp/ui/src/images/background.jpg


.PHONY: keycloak-themes-images
keycloak-themes-images: config/keycloak/themes/ownCloudInfiniteScale/login/resources/img/logo.svg config/keycloak/themes/ownCloudInfiniteScale/login/resources/img/background.jpg

.PHONY: config/keycloak/themes/ownCloudInfiniteScale/login/resources/img/logo.svg
config/keycloak/themes/ownCloudInfiniteScale/login/resources/img/logo.svg:
	curl --location --remote-header-name -o config/keycloak/themes/ownCloudInfiniteScale/login/resources/img/logo.svg ${LOGO_URL}

.PHONY: config/keycloak/themes/ownCloudInfiniteScale/login/resources/img/background.jpg
config/keycloak/themes/ownCloudInfiniteScale/login/resources/img/background.jpg:
	curl --location --remote-header-name -o config/keycloak/themes/ownCloudInfiniteScale/login/resources/img/background.jpg ${BACKGROUND_URL}