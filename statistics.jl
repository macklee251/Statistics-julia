### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ b4fe426c-c397-11ee-371d-112975d2d8db
begin
    import Pkg
    # activate a temporary environment
    Pkg.activate(mktempdir())
    Pkg.add([
        Pkg.PackageSpec(name="Makie", version="0.12.0"),
        Pkg.PackageSpec(name="GLMakie", version="0.1.25"),
        Pkg.PackageSpec(name="CairoMakie", version="0.3.12"),
		Pkg.PackageSpec(name="PlutoUI"),
		Pkg.PackageSpec(name="JuMP", version="0.21.5"),
		Pkg.PackageSpec(name="Ipopt"),
		Pkg.PackageSpec(name="GLPK"),
		Pkg.PackageSpec(name="Plots"),
    ])
    using PlutoUI, VegaDatasets, DataVoyager, VegaLite, Makie, GLMakie, CairoMakie, JuMP, Ipopt, Plots; plotly(size=(360,360))
end

# ╔═╡ 31e05ed9-7b2b-4bf0-b42a-ffee4674abb9
md"""
 ### Broadly speaking, there are two main statistical methods that are used in data analysis: Descriptive statistics and Inferential statistics.
"""

# ╔═╡ b50b7245-3847-4e24-bdae-92f1cd6e39aa
md"""
 ### A estatística descritiva lida com a descrição e o resumo dos dados, enquanto a estatística inferencial lida com a generalização dos resultados da amostra para a população em geral.
"""

# ╔═╡ e920db13-bdae-4843-9db7-1d5d82f85811
6/√10

# ╔═╡ b7f25127-1c8a-40c1-bf9d-676a81800e3e


# ╔═╡ Cell order:
# ╠═b4fe426c-c397-11ee-371d-112975d2d8db
# ╟─31e05ed9-7b2b-4bf0-b42a-ffee4674abb9
# ╟─b50b7245-3847-4e24-bdae-92f1cd6e39aa
# ╠═e920db13-bdae-4843-9db7-1d5d82f85811
# ╠═b7f25127-1c8a-40c1-bf9d-676a81800e3e
