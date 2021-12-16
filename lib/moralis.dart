import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    additionalProperties: AdditionalProperties(
        pubName: 'petstore_api', pubAuthor: 'Johnny dep...'),
    inputSpecFile: 'https://deep-index.moralis.io/api-docs/v2/swagger.json',
    generatorName: Generator.dioNext,
    skipSpecValidation: true,
    typeMappings: {
      "object": "dynamic",
      "JsonObject": "dynamic",
      "LocalDate": "LocalDate"
    },
    importMappings: {
      "LocalDate": "package:time_machine/time_machine.dart"
    },
    outputDirectory: 'api/moralis_api')
class Example extends OpenapiGeneratorConfig {}