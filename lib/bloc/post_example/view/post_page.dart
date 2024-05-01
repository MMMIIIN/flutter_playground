import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/bloc/post_example/bloc/post_bloc.dart';
import 'package:flutter_playground/bloc/post_example/bloc/post_event.dart';
import 'package:flutter_playground/bloc/post_example/view/post_list.dart';
import 'package:http/http.dart' as http;

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => PostBloc(httpClient: http.Client())..add(PostFetched()),
        child: const PostList(),
      ),
    );
  }
}
