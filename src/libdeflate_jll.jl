# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule libdeflate_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("libdeflate")
JLLWrappers.@generate_main_file("libdeflate", UUID("46979653-d7f6-5232-b59e-dd310c4598de"))
end  # module libdeflate_jll
