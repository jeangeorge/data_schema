:erts_internal.debug_on()

large_xml = File.read!(Path.expand("really_large_xml_fixture.xml"))
{:ok, x} = DataSchema.Saxy.StructHandler.parse_string(large_xml);

:erts_internal.debug_off()
