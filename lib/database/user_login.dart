import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:new_screens/globals.dart' as globals;

class UserLogin {
  Future<bool> userLogin(String email, String password) async {
    final url = Uri.parse('${globals.dbstart_url}user_login.php?email=$email&password=$password');

    try {
      // Sending the GET request
      final response = await http.get(url);

      // Checking the response status
      if (response.statusCode == 200) {
        final responseBody = json.decode(response.body);
        if (responseBody['status'] == 'success') {
          globals.username = responseBody['user']['name'];
          globals.user_email = responseBody['user']['email'];
          return true;
        } else {
          Fluttertoast.showToast(
            msg: responseBody['message'],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          return false;
        }
      } else {
        Fluttertoast.showToast(
          msg: 'Error: Failed to connect to the server.',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        return false;
      }
    } catch (e) {
      Fluttertoast.showToast(
        msg: 'Exception: $e',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return false;
    }
  }
}
