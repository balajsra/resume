set shell := ["bash", "-c"]

# List just commands by default
default:
    @just --list

# Update development environment
update:
    devenv update

# Build resume pdf
build-pdf:
    latexmk -pdf sravan_balaji_resume.tex

# Clean up temporary latex generated files
clean:
    latexmk -c
