build:	 ## este comando construye el sitio web publicando los archivos en el directorio dict/.
	hugo

clean:	## borra el contenido del directorio dict/.
	rm -rf dist/*

post:	## Crea un nuevo posts.
	rm -rf content/post/$(POST_NAME).md
	hugo new posts/$(POST_NAME).md
	sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
	sed -i 's/draft:.*/draft: false/' content/posts/$(POST_NAME).md

package: ## Generat the ZIP archive
	hugo
	zip -r awesome-website.zip dist/

lint: ## Updated to lint the files README.md and DEPLOY.md
	markdownlint README.md DEPLOY.md

unit-tests: ## Test

integration-tests: ## Test

validate: ## Test

help:	## Muestra la ayuda.
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?# "}; {printf "\033[36m%-0s:\033[0m %s\n",$$1, $$2}'
