# Build Environment
LATEX_INPUT = aps-dichalcogenides-superconductivity
LATEX_OUTPUT = "aps-dichalcogenides-superconductivity"
LATEX_OUTPUT_EXT = pdf
LATEX_SRC = tex
LATEX_BULD = build

all: tex

check:
	@cd $(LATEX_SRC); chktex $(LATEX_INPUT).tex

clean:
	@echo Removing $(LATEX_BULD)/
	@rm -rf $(LATEX_BULD)
	@echo Cleaning $(LATEX_SRC)/
	@cd tex; latexmk -c; rm -f $(LATEX_INPUT).$(LATEX_OUTPUT_EXT)

tex:
	@mkdir -p $(LATEX_BULD)
	@echo Building $(LATEX_SRC)/$(LATEX_INPUT).tex \
		to $(LATEX_BULD)/$(LATEX_OUTPUT).$(LATEX_OUTPUT_EXT).
	@cd tex; latexmk -xelatex $(LATEX_INPUT).tex; \
		cp -p $(LATEX_INPUT).$(LATEX_OUTPUT_EXT) \
		../$(LATEX_BULD)/$(LATEX_OUTPUT).$(LATEX_OUTPUT_EXT)

build: clean
	@echo Builing archive for submission to APS.
	@echo
	@./scripts/build.bash \
		$(LATEX_SRC) $(LATEX_INPUT) $(LATEX_BULD)

.PHONY: build tex
