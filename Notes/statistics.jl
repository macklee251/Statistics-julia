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
        Pkg.PackageSpec(name="GLM", version="1.3.11"),
        Pkg.PackageSpec(name="KernelDensity", version="0.6.2"),
		Pkg.PackageSpec(name="PlutoUI"),
		Pkg.PackageSpec(name="Plots", version="1.10.4"),
		Pkg.PackageSpec(name="StatsBase", version="0.33.2"),
		Pkg.PackageSpec(name="StatsPlots", version="0.14.19"),
		Pkg.PackageSpec(name="TypedTables", version="1.2.3"),
		Pkg.PackageSpec(name="JuMP", version="0.21.5"),
		Pkg.PackageSpec(name="Ipopt"),
		Pkg.PackageSpec(name="GLPK"),
    ])
    using PlutoUI, VegaLite, Makie, StatsBase, StatsPlots, TypedTables, GLMakie, CairoMakie, GLM, KernelDensity, JuMP, Ipopt, Plots; plotly(size=(800,450))
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
begin
	calories = [144, 151, 157, 170, 152, 145, 175, 149, 99, 113, 140, 102, 135, 149, 149, 68, 136, 144, 72, 97] 
	difference = [-4, -7, -3, -4, -6, -1, 1, 8, -8, 1]
end

# ╔═╡ 849448b2-f76d-47df-84ad-d561343ccec4
begin
	calories_sort = sort!(calories)
	index = collect(1:length(calories))
	calories_table = [index calories_sort]
end

# ╔═╡ 2ac08746-e1d3-4d46-a141-24c074d72f7c
md"""
### Descriptive statistics
"""

# ╔═╡ 4c1887c7-b387-45cf-8fc5-0f91c42faf75
describe(calories)

# ╔═╡ 7e1110cb-74ab-4c06-9810-cef952915792
begin
	mean(calories)
	minimum(calories)
	maximum(calories)
	quantile(calories)
	mode(calories)
end

# ╔═╡ 79d54fb3-49c6-4e60-81b4-91146a897060
begin
	md"""
	range
	"""
	maximum(calories) - minimum(calories)
	
end

# ╔═╡ 525ccc3e-506a-4253-b162-c3f8b5ad9ece
sample_var = var(calories) # This is the sample var

# ╔═╡ 374858af-67cf-4fe4-bf50-ed62865058e7
population_var = var(calories, corrected=false) # This is the sample population

# ╔═╡ ca75b670-44f4-4b22-bdaf-188529970b31
std(calories) # this is sample standard deviation

# ╔═╡ 81d0bc26-857f-4c0f-94a5-6dc1414994e3
population_std = std(calories, corrected=false)

# ╔═╡ ed7983e0-eb9e-4f16-a3f5-a7c93f3331aa
md"""
## Statistics Ploting
"""

# ╔═╡ 0c26c989-81a5-461f-84a2-b2aa82fc4fbb
observations = [144, 151, 157, 170, 152, 145, 175, 149, 99, 113, 140, 102, 135, 149, 149, 68, 136, 144, 72, 97]

# ╔═╡ 89de134c-334a-4020-b10f-b7c4d549441d
t = collect(1:20)

# ╔═╡ 0cf66b04-c2a1-42ec-8b66-097889ce721a
p_line = Plots.plot(t, observations, 
			  xlabel="Time",
			  ylabel="Observations",
			  title = "Plots/GR Default (Line) Plot",
			  legend = false)

# ╔═╡ d861d36c-265e-400f-b1ec-3668f6bd72de
avg = mean(observations)

# ╔═╡ 44d175e2-4029-4f20-b383-687543f8b362
stdev = std(observations)

# ╔═╡ d78b68d7-08d0-4fd9-bdb9-c6a702d72842
p_scatter =  Plots.scatter(t, observations, 
			  xlabel="Time",
			  ylabel="Observations",
			  title = "Plots/GR Default (Line) Plot",
			  ltitle = "Plots/GR Linear Regression",
			  legend = false,
			  color = :dodgerblue),
hline!([avg - stdev, avg, avg + stdev])

# ╔═╡ 53f4eca1-726e-4388-9b9a-6dbe9ac8689d


# ╔═╡ 0b549c1c-5bae-4f78-9d04-47062183c9f7


# ╔═╡ Cell order:
# ╠═b4fe426c-c397-11ee-371d-112975d2d8db
# ╟─31e05ed9-7b2b-4bf0-b42a-ffee4674abb9
# ╟─b50b7245-3847-4e24-bdae-92f1cd6e39aa
# ╠═e920db13-bdae-4843-9db7-1d5d82f85811
# ╠═849448b2-f76d-47df-84ad-d561343ccec4
# ╟─2ac08746-e1d3-4d46-a141-24c074d72f7c
# ╠═4c1887c7-b387-45cf-8fc5-0f91c42faf75
# ╠═7e1110cb-74ab-4c06-9810-cef952915792
# ╠═79d54fb3-49c6-4e60-81b4-91146a897060
# ╠═525ccc3e-506a-4253-b162-c3f8b5ad9ece
# ╠═374858af-67cf-4fe4-bf50-ed62865058e7
# ╠═ca75b670-44f4-4b22-bdaf-188529970b31
# ╠═81d0bc26-857f-4c0f-94a5-6dc1414994e3
# ╟─ed7983e0-eb9e-4f16-a3f5-a7c93f3331aa
# ╠═0c26c989-81a5-461f-84a2-b2aa82fc4fbb
# ╠═89de134c-334a-4020-b10f-b7c4d549441d
# ╠═0cf66b04-c2a1-42ec-8b66-097889ce721a
# ╠═d861d36c-265e-400f-b1ec-3668f6bd72de
# ╠═44d175e2-4029-4f20-b383-687543f8b362
# ╠═d78b68d7-08d0-4fd9-bdb9-c6a702d72842
# ╠═53f4eca1-726e-4388-9b9a-6dbe9ac8689d
# ╠═0b549c1c-5bae-4f78-9d04-47062183c9f7
