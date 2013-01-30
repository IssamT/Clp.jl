@unix_only begin
if OS_NAME == :Linux
    shlib_ext = ".so"
elseif OS_NAME == :Darwin
    shlib_ext = ""
else
    error("Platform not currently supported")
end
const _jl_libClp = joinpath(Pkg.dir(),"Clp","deps","usr","lib","libClp$shlib_ext")
end

@windows_only begin
const _jl_libClp = joinpath(Pkg.dir(),"Clp","deps","CoinMP.dll")
end
