:erts_internal.debug_on()

large_xml = File.read!(Path.expand("random.xml"))
{:ok, x} = DataSchema.Saxy.StructHandler.parse_string(large_xml);

Benchee.run(
  %{
    "StructHanlder" => fn ->
      DataSchema.to_struct(x, AirShop)
    end
  },
  memory_time: 1,
  reduction_time: 1
)

:erts_internal.debug_off()
