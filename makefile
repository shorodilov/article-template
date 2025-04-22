# Makefile
#
# This file provides an automation for the documents build process.

# Configuration
SRC_DIR := src
BUILD_DIR := _build
PDF_ENGINE ?= xelatex

# Make sure the build directory exists
$(shell mkdir -p $(BUILD_DIR))

# Source files
SRC_FILE := $(SRC_DIR)/index.txt
METADATA := metadata.yaml
FROM_FMT ?= rst

# Date variable for document generation
DATE := $(shell date +'%Y-%m-%d')
ISO := $(shell date --iso-8601)

# Common Pandoc options
PANDOC_OPTS := \
  --standalone \
  --citeproc \
  --metadata-file=$(METADATA) \
  --metadata date="$(DATE)" \
  $(SRC_FILE)

# Help message
.PHONY: help  # default target
help:
	@echo "Article Build Automation"
	@echo "------------------------"
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available targets:"
	@echo "    pdf   - Generate PDF document using LaTeX"
	@echo "    odt   - Generate OpenDocument"
	@echo "    docx  - Generate Microsoft Word document"
	@echo "    html  - Generate standalone HTML document"
	@echo "    epub  - Generate EPUB e-book"
	@echo "    all   - Generate all available outputs"
	@echo "    clean - Clean up build artifacts"
	@echo ""
	@echo "Example: make pdf"

.PHONY: pdf
pdf:
	pandoc -f $(FROM_FMT) -t pdf --pdf-engine=$(PDF_ENGINE) -o $(BUILD_DIR)/$(ISO).pdf $(PANDOC_OPTS)

.PHONY: odt
odt:
	pandoc -f $(FROM_FMT) -t odt -o $(BUILD_DIR)/$(ISO).odt $(PANDOC_OPTS)

.PHONY: docx
docx:
	pandoc -f $(FROM_FMT) -t docx -o $(BUILD_DIR)/$(ISO).docx $(PANDOC_OPTS)

.PHONY: html
html:
	pandoc -f $(FROM_FMT) -t html -o $(BUILD_DIR)/$(ISO).html $(PANDOC_OPTS)

.PHONY: epub
epub:
	pandoc -f $(FROM_FMT) -t epub -o $(BUILD_DIR)/$(ISO).epub $(PANDOC_OPTS)

.PHONY: all
all: pdf odt docx epub html

.PHONY: clean
clean:
	@rm -rf _build/*
