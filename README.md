# Professional CV - LaTeX

A modern, ATS-friendly, single-page CV template built with LaTeX.

## Prerequisites

You need a LaTeX distribution installed on your system. The CV uses standard LaTeX packages that come with most distributions.

### Installing LaTeX

#### macOS
```bash
# Using Homebrew
brew install --cask mactex-no-gui

# Or download MacTeX from: https://www.tug.org/mactex/
```

#### Linux (Ubuntu/Debian)
```bash
sudo apt-get update
sudo apt-get install texlive-latex-base texlive-latex-extra texlive-fonts-recommended
```

#### Windows
Download and install MiKTeX from: https://miktex.org/download

#### Verify Installation
After installation, verify that `pdflatex` is available:
```bash
pdflatex --version
```

## Compiling the PDF

### Method 1: Command Line (Recommended)

Navigate to the project directory and run:
```bash
pdflatex cv.tex
```

This will generate `cv.pdf` in the same directory.

### Method 2: Using LaTeX Workshop (VS Code/Cursor)

If you're using VS Code or Cursor with the LaTeX Workshop extension:
1. Open `cv.tex` in the editor
2. Press `Cmd+Option+B` (Mac) or `Ctrl+Alt+B` (Windows/Linux) to build
3. Or use the command palette: "LaTeX Workshop: Build LaTeX project"

### Method 3: Using a LaTeX Editor

- **TeXShop** (macOS): Open `cv.tex` and click "Typeset"
- **TeXworks** (Cross-platform): Open `cv.tex` and click the "Typeset" button
- **Overleaf** (Online): Upload `cv.tex` and click "Recompile"

## Required Packages

The CV uses these standard LaTeX packages (usually included in LaTeX distributions):
- `article` (document class)
- `inputenc` (UTF-8 encoding)
- `geometry` (page margins)
- `enumitem` (list formatting)
- `xcolor` (colors)

If you get errors about missing packages, install them using your LaTeX distribution's package manager.

## Customization

Edit `cv.tex` to customize:
- Personal information (name, contact details)
- Work experience entries
- Education details
- Technical skills
- Certifications

The CV is designed to fit on a single page. If you add content and it spills to a second page, you can:
- Reduce spacing values (e.g., `\vspace{0.6em}` → `\vspace{0.4em}`)
- Reduce font sizes
- Tighten list item spacing

## Troubleshooting

### Error: "pdflatex: command not found"
- Make sure LaTeX is installed and added to your PATH
- On macOS, you may need to add `/Library/TeX/texbin` to your PATH

### Error: "File `xcolor.sty` not found"
- Install the missing package using your LaTeX distribution's package manager
- For MacTeX: Use TeX Live Utility
- For MiKTeX: It should auto-install missing packages

### PDF doesn't compile
- Check that all required packages are installed
- Ensure `cv.tex` is in the current directory
- Check the `.log` file for detailed error messages

## Output

After successful compilation, you'll have:
- `cv.pdf` - The final CV document
- `cv.log` - Compilation log (can be deleted)
- `cv.aux` - Auxiliary file (can be deleted)

## License

Feel free to use and modify this CV template for your personal use.

