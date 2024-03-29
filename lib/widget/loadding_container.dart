import 'package:flutter/material.dart';
class LoadingContainer extends StatelessWidget{
  final Widget child;
  final bool isLoading;
  final bool cover;
  LoadingContainer({this.child, @required this.isLoading, this.cover = false});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return !cover ? !isLoading? child : _loadingView : Stack(
      children: <Widget>[
        child, isLoading ? _loadingView : null
      ],
    );
  }
  Widget get _loadingView{
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}