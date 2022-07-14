:erts_internal.debug_on()

large_xml = File.read!(Path.expand("random.xml"))
{:ok, _} = DataSchema.Saxy.StructHandler.parse_string(large_xml);

:erts_internal.debug_off()
