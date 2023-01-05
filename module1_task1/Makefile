build:
	hugo

clean:
	rm -rf dist/*

post:
	rm -rf content/post/$(POST_NAME).md
	hugo new posts/$(POST_NAME).md
	sed -i 's/title:.*/title: $(POST_TITLE)/' content/posts/$(POST_NAME).md
	sed -i 's/draft:.*/draft: false/' content/posts/$(POST_NAME).md