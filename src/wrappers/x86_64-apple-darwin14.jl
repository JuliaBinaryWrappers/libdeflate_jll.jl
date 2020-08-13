# Autogenerated wrapper script for libdeflate_jll for x86_64-apple-darwin14
export libdeflate

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"
LIBPATH_default = "~/lib:/usr/local/lib:/lib:/usr/lib"

# Relative path to `libdeflate`
const libdeflate_splitpath = ["lib", "libdeflate.0.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libdeflate_path = ""

# libdeflate-specific global declaration
# This will be filled out by __init__()
libdeflate_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libdeflate = "@rpath/libdeflate.0.dylib"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"libdeflate")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libdeflate_path = normpath(joinpath(artifact_dir, libdeflate_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libdeflate_handle = dlopen(libdeflate_path)
    push!(LIBPATH_list, dirname(libdeflate_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

