# Some special characters and syntax throw errors
# when used with pdfLaTeX, even with UTF-8 support enabled.
# This is a list of sed replacement commands that
# can be used to replace the offending code with
# the corresponding LaTeX macros.
# This should not be needed when using XeLaTeX.
s/\\vc{ϵ}/\\boldsymbol{\\epsilon}/g
s/·/{\\cdot}/g
s/…/{\\ldots}/g
s/†/{\\dagger}/g
s/↓/{\\downarrow}/g
s/∫/{\\int}/g
s/≤/{\\leq}/g
s/≈/{\\approx}/g
s/≪/{\ll}/g
s/ϵ/{\\epsilon}/g
s/ℏ/{\\hbar}/g
s/∓/{\\mp}/g
s/∇/{\\nabla}/g
s/≠/{\\neq}/g
s/≫/{\\gg}/g
s/⊗/{\\otimes}/g
s/∥/{\\parallel}/g
s/±/{\\pm}/g
s/∏/{\\prod}/g
s/→/{\\rightarrow}/g
s/⋍/{\\simeq}/g
s/∑/{\\sum}/g
s/×/{\\times}/g
s/⨯/{\\times}/g
s/↑/{\\uparrow}/g
s/α/{\\alpha}/g
s/β/{\\beta}/g
s/η/{\\eta}/g
s/γ/{\\gamma}/g
s/Δ/{\\Delta}/g
s/δ/{\\delta}/g
s/ε/{\\varepsilon}/g
s/θ/{\\theta}/g
s/λ/{\\lambda}/g
s/μ/{\\mu}/g
s/ν/{\\nu}/g
s/ξ/{\\xi}/g
s/π/{\\pi}/g
s/Σ/{\\Sigma}/g
s/σ/{\\sigma}/g
s/τ/{\\tau}/g
s/ϕ/{\\phi}/g
s/φ/{\\varphi}/g
s/Ψ/{\\Psi}/g
s/ψ/{\\psi}/g
s/χ/{\\chi}/g
s/ρ/{\\rho}/g
s/Ω/{\\Omega}/g
s/ω/{\\omega}/g
