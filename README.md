# My CV - built with LuaLaTeX

![repo size](https://img.shields.io/github/repo-size/dokson/cv) ![license](https://img.shields.io/github/license/dokson/cv) ![last commit](https://img.shields.io/github/last-commit/dokson/cv)

## 🚀 Quick Start

### Prerequisites (Windows)

- [**VS Code**](https://code.visualstudio.com/download): With LaTeX Workshop extension
- [**MiKTeX**](https://miktex.org/download): LaTeX distribution
- [**Perl**](https://strawberryperl.com/): Required for compilation

### Compilation

#### Using VS Code (Recommended)

1. Install the [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension
2. Open the project in VS Code
3. The project is pre-configured to use LuaLaTeX via `.vscode/settings.json`
4. Use `Ctrl+Alt+B` (or `Cmd+Alt+B` on Mac) to build

#### Command Line

```bash
lualatex cv.tex
```

## 📁 Project Structure

```plaintext
cv/
├── .vscode/
│   └── settings.json           # VS Code LaTeX configuration
├── cover.tex                   # Cover letter LaTeX source file
├── cv.tex                      # CV LaTeX source file
├── deedy-resume-cover.cls      # Cover letter LaTeX class
├── deedy-resume-cv.cls         # CV LaTeX class
├── README.md                   # This file
├── LICENSE                     # Apache 2.0 License
└── .gitignore                  # Git ignore patterns
```

## 🛠️ Development

### VS Code Setup

The project includes VS Code configuration for:

- Automatic LuaLaTeX compilation
- Auxiliary file cleanup after build

### File Cleanup

Auxiliary files (`.aux`, `.log`, `.synctex.gz`, etc.) are automatically cleaned after compilation.

Manual cleanup can be triggered with:

- VS Code: `Ctrl+Shift+P` → "LaTeX Workshop: Clean up auxiliary files"

### GitHub Actions

- [![Build (Lualatex)](https://github.com/dokson/cv/actions/workflows/build.yml/badge.svg)](https://github.com/dokson/cv/actions/workflows/build.yml): Continuous Build the **cv.tex** LaTeX file with LuaLaTeX
- [![Deploy cv.pdf to interactive-resume repository](https://github.com/dokson/cv/actions/workflows/deploy.yml/badge.svg)](https://github.com/dokson/cv/actions/workflows/deploy.yml): Triggers when there is a new release version and copies the latest cv.pdf to dokson.github.io interactive-resume website

## 🙏 Acknowledgments

- **[Deedy-Resume](https://github.com/deedy/Deedy-Resume)** - Original template by Debarghya Das
- **[Deedy-Resume-Reversed](https://github.com/ZDTaylor/Deedy-Resume-Reversed)** - Enhanced version by Zachary Taylor
- **[FontAwesome6 LaTeX Package](https://github.com/braniii/fontawesome)** - Icons used in the header section

## 📄 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

- Original Deedy-Resume template Work - Copyright 2014 - Debarghya Das
- Modified template Work - Copyright 2018 - Zachary Taylor  
- Further modified Work - Copyright 2025 - Alessandro Colace
