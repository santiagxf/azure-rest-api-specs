namespace ApiCenter.DataApi;

using TypeSpec.Rest;

@doc("API definition resource model.")
@resource("definitions")
@parentResource(ApiVersion)
model ApiDefinition {
  #suppress "@azure-tools/typespec-azure-core/key-visibility-required" "FIXME: misused @visibility to get around this warning"
  @doc("Definition identifier.")
  @key("definitionName")
  @maxLength(50)
  name: string;

  @doc("The name of the API definition.")
  @maxLength(50)
  title: string;

  @doc("The description of the API definition.")
  @maxLength(1000)
  description?: string;

  @doc("The API specification details.")
  specification?: ApiSpecification;
}

@doc("API specification")
model ApiSpecification {
  @doc("API specification name, e.g. 'swagger' or 'openapi'.")
  name: string;

  @doc("API specification version, e.g. '3.0.1'.")
  version: string;
}
