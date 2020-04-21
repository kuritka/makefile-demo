REGION_ARGS ?=
HELM_ARGS ?=
THIRD_ARGS ?=
FOUR_ARG ?=


.PHONY: full-action
full-action: fill-vars-right

.PHONY: show
show:
	ls -la

.PHONY: fill-vars-left
fill-vars-left: REGION_ARGS="eu-east-1"
fill-vars-left: HELM_ARGS="https://another repo..."
fill-vars-left: THIRD_ARGS="001234"
fill-vars-left: FOUR_ARG= -la
fill-vars-left: sleep deploy-app


.PHONY: fill-vars-right
all: fill-vars-right
fill-vars-right: REGION_ARGS="eu-west-1"
fill-vars-right: HELM_ARGS="https://some repo..."
fill-vars-right: THIRD_ARGS="008888"
fill-vars-right: FOUR_ARG= -l
fill-vars-right: sleep deploy-app

.PHONY: sleep
sleep:
	@sleep 1

.PHONY: deploy-app
deploy-app:
	@echo ${REGION_ARGS}
	@echo ${HELM_ARGS}
	@echo ${THIRD_ARGS}
	ls ${FOUR_ARG}
	@echo "Done"