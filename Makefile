LOGO_URL = https://raw.githubusercontent.com/owncloud/assets/main/logo.svg
BACKGROUND_URL = https://github.com/owncloud/ocis/raw/master/idp/ui/src/images/background.jpg
FAVICON_URL = https://raw.githubusercontent.com/owncloud/assets/main/favicon.ico


.PHONY: keycloak-themes-images
keycloak-themes-images: logo.svg background.jpg favicon.ico

.PHONY: logo.svg
logo.svg:
	curl --location --remote-header-name -o config/keycloak/themes/ownCloudInfiniteScale/login/resources/img/logo.svg ${LOGO_URL}
	cp config/keycloak/themes/ownCloudInfiniteScale/login/resources/img/logo.svg config/keycloak/themes/ownCloudInfiniteScale/account/resources/img/logo.svg

.PHONY: background.jpg
background.jpg:
	curl --location --remote-header-name -o config/keycloak/themes/ownCloudInfiniteScale/login/resources/img/background.jpg ${BACKGROUND_URL}

.PHONY: favicon.ico
favicon.ico:
	curl --location --remote-header-name -o config/keycloak/themes/ownCloudInfiniteScale/login/resources/img/favicon.ico ${FAVICON_URL}
	cp config/keycloak/themes/ownCloudInfiniteScale/login/resources/img/favicon.ico config/keycloak/themes/ownCloudInfiniteScale/account/resources/img/favicon.ico