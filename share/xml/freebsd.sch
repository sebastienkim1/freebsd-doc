<?xml version="1.0" encoding="iso-8859-1"?>

<!-- $FreeBSD$ -->

<schema xmlns="http://purl.oclc.org/dsdl/schematron">
  <pattern name="Check file reference validity">
    <rule context="//*/@fileref">
      <assert test="contains(., '.')">File reference does not have an extension.</assert>
    </rule>
  </pattern>

  <pattern name="Check callout validity">
    <rule context="/">
      <assert test="//screenco">Callouts with screenco are not supported;
	use screen and co instead.</assert>
      <assert test="//programlistingco">Callouts with programlistingco
	are not supported; use programlisting and co instead.</assert>
      <assert test="//graphicco">Callouts on
	graphics are not supported.</assert>
    </rule>
  </pattern>
</schema>
