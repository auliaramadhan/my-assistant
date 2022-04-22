import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_assistant/model/register_request.dart';
import 'package:my_assistant/model/wilayah_response.dart';
import 'package:my_assistant/utils/apiurl.dart';

final wilayahRepoProvider = Provider<WilayahRepository>((ref) {
  return WilayahRepository();
});

class WilayahRepository {
  final _dio = Dio();

  Future<List<WilayahData>> fetchListProvinsi() async {
    final data = {"api_key": ApiUrl.apiKey};
    final response = await _dio.get(ApiUrl.provinsi, queryParameters: data);
    if (response.statusCode == 200) {
      final wilayahresponse = WilayahResponse.fromMap(response.data);
      if (wilayahresponse.code == '200' && (wilayahresponse.data?.isNotEmpty ?? false)) {
        return wilayahresponse.data!;
      } else {
        throw Exception("error " + wilayahresponse.messages);
      }
    } else {
      throw Exception("error fetching get" + response.statusCode.toString());
    }
  }

  Future<List<WilayahData>> fetchListKabupaten(String id_provinsi) async {
    final data = {"api_key": ApiUrl.apiKey, "id_provinsi": id_provinsi};    
    final response = await _dio.get(ApiUrl.kabupaten, queryParameters: data);
    if (response.statusCode == 200) {
      final wilayahresponse = WilayahResponse.fromMap(response.data);
      if (wilayahresponse.code == '200' && (wilayahresponse.data?.isNotEmpty ?? false)) {
        return wilayahresponse.data!;
      } else {
        throw Exception("error " + wilayahresponse.messages);
      }
    } else {
      throw Exception("error fetching get" + response.statusCode.toString());
    }
  }

  Future<List<WilayahData>> fetchListKecamatan(String id_kabupaten) async {
    final data = {"api_key": ApiUrl.apiKey, "id_kabupaten": id_kabupaten};
    final response = await _dio.get(ApiUrl.kecamatan, queryParameters: data);
    if (response.statusCode == 200) {
      final wilayahresponse = WilayahResponse.fromMap(response.data);
      if (wilayahresponse.code == '200' && (wilayahresponse.data?.isNotEmpty ?? false)) {
        return wilayahresponse.data!;
      } else {
        throw Exception("error " + wilayahresponse.messages);
      }
    } else {
      throw Exception("error fetching get" + response.statusCode.toString());
    }
  }

  Future<List<WilayahData>> fetchListKelurahan(String id_kecamatan) async {
    final data = {"api_key": ApiUrl.apiKey, "id_kecamatan": id_kecamatan};
    final response = await _dio.get(ApiUrl.kelurahan, queryParameters: data);
    if (response.statusCode == 200) {
      final wilayahresponse = WilayahResponse.fromMap(response.data);
      if (wilayahresponse.code == '200' && (wilayahresponse.data?.isNotEmpty ?? false)) {
        return wilayahresponse.data!;
      } else {
        throw Exception("error " + wilayahresponse.messages);
      }
    } else {
      throw Exception("error fetching get" + response.statusCode.toString());
    }
  }
}
