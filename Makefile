NAME := base-node
#
GITHUB_USER := marcelocorreia
DOCKER_NAMESPACE := marcelocorreia
IMAGE_NAME := $(DOCKER_NAMESPACE)/$(NAME)
GIT_REPO_NAME := docker-$(NAME)
REPO_URL := git@github.com:$(GITHUB_USER)/$(GIT_REPO_NAME).git
SCAFOLD := badwolf
GIT_BRANCH ?= master
GIT_REMOTE ?= origin
RELEASE_TYPE ?= patch
#SEMVER_DOCKER ?= marcelocorreia/semver
VERSION_CMD := docker run --rm node:alpine node -v | sed 's/v//g'

release: _release
build: _docker-build
push: _docker-push

all-versions:
	@git ls-remote --tags $(GIT_REMOTE)

current-version: _setup-versions
	@echo $(VERSION)

_setup-versions:
	$(eval export VERSION=$(shell $(VERSION_CMD)))

_docker-build: _setup-versions _readme
	docker build -t $(IMAGE_NAME) .
	docker build -t $(IMAGE_NAME):$(VERSION) .
	$(call  git_push,Post Release Updating auto generated stuff - version: $(CURRENT_VERSION))

_docker-push: _setup-versions
	docker push $(IMAGE_NAME):latest
	docker push $(IMAGE_NAME):$(VERSION)

_release: _setup-versions ;$(call  git_push,Releasing $(NEXT_VERSION)) ;$(info $(M) Releasing version $(NEXT_VERSION)...)## Release by adding a new tag. RELEASE_TYPE is 'patch' by default, and can be set to 'minor' or 'major'.
	$(MAKE) _docker-build _docker-push
	github-release release -u marcelocorreia -r $(GIT_REPO_NAME) --tag $(VERSION) --name $(VERSION)

_readme:
	$(SCAFOLD) generate --resource-type readme .
	$(call  git_push,Updating docs)

open-page:
	open https://github.com/$(GITHUB_USER)/$(GIT_REPO_NAME).git

define git_push
	-git add .
	-git commit -m "$1"
	-git push
endef