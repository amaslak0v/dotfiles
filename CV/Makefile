# USAGE
## make cv file="product_cv.md"


# Default settings
PDF_ENGINE = weasyprint
CSS_FILE = configs/cv_stylesheet.css

# Phony target for generating a CV
.PHONY: cv clean

# Rule to generate a CV from a specified Markdown file
cv:
	@echo "Generating PDF from $(file)..."
	pandoc $(file) -o $(basename $(file)).pdf --pdf-engine=$(PDF_ENGINE) --css=$(CSS_FILE)
	@echo "Generated: $(basename $(file)).pdf"

# Clean up generated files
clean:
	rm -f *.pdf
	@echo "Cleaned up generated files."
