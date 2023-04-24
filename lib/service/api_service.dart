import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:kodari_test/data_models/form_ui_model/form_ui_model.dart';

final dio = Dio(
  BaseOptions(
      baseUrl: baseUrl,
      responseType: ResponseType.json,
      headers: {"Authorization": token}),
);

const token =
    "Bearer eJx9WE2PGzcM/SuGz5kAu5ssip7aS1GgCBAguRXFQh7RtmKNNJU03jWC/e+lOPoeuZes5z3yiRIpSsrP/WLB7H/d/dwLjn8+fdjtFZsAf+7/0lwwc9v9zieh9kjAxIT0zEEovvx2WfmPo548624zuZHgOwKIz0zdsvhjR/w7jGelpT4JsOQ1g5mEtUIri3Z/7+1Zvw5aDT/0YWCInyiU9dfApPREgXizA7PAvY/UI3Oo5HnSGc9MnWDQhoMZQDnhJEz4lwQ4H4AL979GpHLUZhqUduIoGn1i7HIIM+gb+RC7hMFBmOxzJTicjF7m7KYlVBOIAAcJDtInGVN2SuMIBOP46f8OVzDbSK6guK41MhRUMkAuuCLDqJUzbHSN65YKEltijV+FWPIEIhJnoKqMS7HJb4KCRwbIBaZZ6hvUa1qCwa2EKsdhYs6ItxwDmJC8WrPBYzQ1uioYeK1dAxB9wicZ+02RAF+LbpjZDatAksQ8G33FqoAfMFaMgRHEFWzEBtrufiMzheb/LmDdoGCt8lyYLXAChWUzJjDF3BJkzYXFtTosVNcSPyqXLhvm3OXSLqxWYxNKZUGb1sCszSqBtYuVdxV8MGzGf7v7ERfRr1/7jY5rILR/1p7ke8fG/iA4F+pU4im6Agtzbb3XtGKzqKZZoeUOy2jeXBnz6WXjCLPr6JqjqMYI3149/IxdpjC0woGY2Anq8ErUC2zN8ByoXMK3Ny4p7zgIhflfxiorcZiWzIvRIeOa3BMtz4N6kzVE9wShFS5PlDOWqja3cve2OvUW7Y5fSb5qc7FnAHc3vNqkf9RVJp3QOsNw7BC32BuqwTdM3tMtE/dzV2ti1uHQdjwDX4pzLO63kshZLsCrgFAXBRhT3qoeBUi+qcIKzT2kRINgbRnSqE3MZEWHdktd1l9WVnM8//WxEwchCJSNKmWAktIyqKscKKZGaKlVfgJmF0NXm9YgngAZxrSImUxxzcbLEG6EDaqXugoS79F5MVhONlZT1k6Ed9nuptqv7IobYu0O7AjutkZUnQtUBR2SelEHj1VyT8+A1RgCnfd4sjV9t8vGZtnjKs266RZgTz8luj9ERZOoUHhDi10oDVOhaZwKDeJb/4T4X1oUYx0XkGXTC+Zc4Am7YLm3fN5gDRH3WFfP2mVdHinx02kcYfZb7gpnMcp6ObNxmmNE4vziN/n4vpd7uQHMWY2Ft0eFpdFqbzxrqSP5ewIet9OEj6CO41HmHX0ng9bPD985dH1pTCam8FgNKhacw6tGcnVivDRHRYbSkmRo/dXJRDYxcMR6OxdIiCD4dq9Q9DrDV185aoGFQe5aVa+FAskPAyekcGXABbKuBD4uLuXS0BUVa5Lrcdm8C3tkEO5R6a3nE+Vn31e9axGk7/KkfwYm3bmv3OGCZsv841PoX4npqf70IT/V0/vfyuXkAUbAO5UGmTw8//L49PDw6en548Pz8+PzZ7pGmyu2AXrEd97/X9fze/eF6oSiQMHO6H9SrDum+O4bNeLCrvzfij98rZOc2uh9Luy+h5zvvq0B7t/97PHAIx+/AP4ubO2L72MXeOH+HYZ+fgEUvLkXvtSgxBvKS/CviIhZx9zi10EtUm7wFzyBGd6rtjy8zcKAj//IpIX39/8AUd0XZg==";
const baseUrl =
    "https://form-srv.sitedeck.ca/api/form/covid-19_self_assessment_ttest_2/";

class ApiService {
  static Future<FormUiModel?> getDataFromServer() async {
    try {
      final response = await dio.get(
        baseUrl,
      );
      final formData =
          jsonDecode(response.data["data"]["formui"]["ui"].toString());

      return FormUiModel.fromJson((formData as List)[2]);
    } on Exception catch (e) {
      log(e.toString());
      return null;
    }
    // print(response.data["data"]["formui"]["ui"].toString());
  }
}
