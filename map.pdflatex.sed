# Some special characters and syntax throw errors
# when used with pdfLaTeX, even with UTF-8 support enabled.
# This is a list of sed replacement commands that
# can be used to replace the offending code with
# the corresponding LaTeX macros.
# This should not be needed when using XeLaTeX.
s/±/{\\pm}/g
s/∓/{\\mp}/g
s/⋍/{\\simeq}/g
s/≠/{\\neq}/g
s/×/{\\times}/g
s/⨯/{\\times}/g
s/·/{\\cdot}/g
s/∥/{\\parallel}/g
s/∑/{\\sum}/g
s/∏/{\\prod}/g
s/†/{\\dagger}/g
s/↑/{\\uparrow}/g
s/→/{\\rightarrow}/g
s/↓/{\\downarrow}/g
s/⊗/{\\otimes}/g
s/τ/{\\tau}/g
s/σ/{\\sigma}/g
s/Δ/{\\Delta}/g
s/λ/{\\lambda}/g
s/μ/{\\mu}/g
s/ϕ/{\\phi}/g
s/θ/{\\theta}/g
s/π/{\\pi}/g
s/ν/{\\nu}/g
s/ε/{\\varepsilon}/g
s/\\vc{ϵ}/\\boldsymbol{\\epsilon}/g
s/ϵ/{\\epsilon}/g
s/α/{\\alpha}/g
s/ξ/{\\xi}/g
s/β/{\\beta}/g
s/δ/{\\delta}/g
s/ω/{\\omega}/g
s/Ω/{\\Omega}/g
s/ℏ/{\\hbar}/g
s/∇/{\\nabla}/g
s/ψ/{\\psi}/g
