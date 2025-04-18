# Article Template

This repository provides a simple and structured template for writing
articles intended for online publication or print in periodicals.
It's designed to help authors focus on content rather than presentation,
using Pandoc to generate the final document from source files.

## Features

- **Modular Organization**: Choose between single-file or multisection article
  structure
- **Metadata Management**: YAML-based metadata with schema validation
- **Flexible Formatting**: Support for Markdown, reStructuredText, LaTeX, and
  other formats
- **Citation Support**: BibTeX bibliography management with CSL styling
- **Version Management**: Track content status through document metadata
- **Assets Handling**: Organized structure for images and supplementary data
- **Consistent Configuration**: Editor and Git configuration for smooth
  collaboration

## Usage

### Getting Started

1. Clone this repository or use it as a template for your new article:
   ```bash
   git clone https://github.com/username/article-template.git my-article
   cd my-article
   ```

2. Initialize the Citation Style Language submodule:
   ```bash
   git submodule update --init --recursive
   ```

3. Update the metadata in `metadata.yaml` with your article information.

4. Begin writing your content in `src/index.txt` or create a modular structure.

### Directory Structure

- `src/` - Main article content
- `assets/` - Images, diagrams, and supplementary files
- `references/` - Bibliography and citation data
- `csl/` - Citation Style Language files (as a git submodule)

### Building Your Article

The template uses Pandoc to generate final documents. Simple build commands:

```bash
# Build PDF (coming soon)
# make pdf

# Build HTML (coming soon)
# make html

# Build DOCX (coming soon)
# make docx
```

### Content Organization

You can organize your content using either:

1. **Single-File Approach**: Write everything in `src/index.txt` (good for
   shorter articles)
2. **Modular Approach**: Split content into multiple files in `src/section/`
   and reference them from `index.txt`

### Customization

- Adjust metadata in `metadata.yaml`
- Modify citation style by selecting a different CSL file
- Add references to `references/bibliography.bib`
- Store images and other assets in the `assets/` directory

## Requirements

- [Pandoc](https://pandoc.org/) (2.11 or later)
- LaTeX distribution (for PDF output)
- Make (optional, for build scripts)

## License

This template is available under the MIT License.
See the LICENSE file for details.

## Contributing

Contributions to improve this template are welcome.
Please feel free to submit issues or pull requests.
