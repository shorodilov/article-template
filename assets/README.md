# Assets

This directory contains all assets used in your articles. Assets include
images, diagrams, data files, and other supplementary materials that enhance
your written content.

## Directory Structure

- `images/` - Visual elements (photographs, diagrams, charts, illustrations
   etc.)
- `data/` - Datasets, spreadsheets, and other data files referenced in articles

## Guidelines

### General Guidelines

1. Use descriptive, kebab-case filenames
   (e.g., `climate-change-graph-2025.png`)
2. Include appropriate metadata and attribution for all assets
3. Optimize file sizes when possible while maintaining quality
4. Use relative paths when referencing assets in your articles

### Images

1. Use appropriate file formats:
   - `.png` for screenshots, diagrams, and images requiring transparency
   - `.jpg` for photographs and images without transparency needs
   - `.svg` for vector graphics and diagrams when available
2. Recommended maximum width: 1200px (can be displayed at smaller sizes)
3. Include alt text descriptions when referencing images in articles

### Data

1. Prefer open, portable formats:
   - `.csv` for tabular data
   - `.json` for structured data
   - `.txt` for plain text data
2. Include a data dictionary or schema when appropriate
3. Document the source and collection methodology for datasets
4. Consider version control implications when tracking large data files

## Best Practices

- Keep original source files (e.g., `.psd`, `.ai`, `.xlsx`) in a separate
  location and include only exported/optimized versions in the repository
- Consider using Git LFS (Large File Storage) for binary files larger than 5MB
- When using third-party assets, ensure you have proper permissions and include
  attribution as required
- Consider adding watermarks or branding to original graphics you create
