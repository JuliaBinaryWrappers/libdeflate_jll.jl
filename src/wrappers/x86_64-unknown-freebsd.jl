# Autogenerated wrapper script for libdeflate_jll for x86_64-unknown-freebsd
export libdeflate

JLLWrappers.@generate_wrapper_header("libdeflate")
JLLWrappers.@declare_library_product(libdeflate, "libdeflate.so.0")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libdeflate,
        "lib/libdeflate.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()