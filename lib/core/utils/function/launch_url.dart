import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void>launchcustomur(context,String? url)async {
    if(url!=null){
       Uri uri=Uri.parse(url);
                if(await canLaunchUrl(uri)){
                  await launchUrl(uri);
                }
                else{
                 customsnackbar(context, 'cannot launchurl $url');
                }
}
    }

    void customsnackbar(context,String text){
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(text)));
    }