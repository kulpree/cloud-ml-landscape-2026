.PHONY: help lint list tree

help:           ## Show available targets
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2}'

lint:           ## Lint markdown (requires node/npx)
	npx --yes markdownlint-cli2 "**/*.md"

lint-fix:       ## Auto-fix fixable markdown issues
	npx --yes markdownlint-cli2 --fix "**/*.md"

list:           ## List provider guides
	@ls -1 providers/

tree:           ## Show repo structure
	@find . -path ./.git -prune -o -type f -print | sort
