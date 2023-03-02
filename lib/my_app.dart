import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_thgroup/module_bloc/bloc.dart';
import 'package:test_thgroup/module_ui/pages/home_page.dart';
import 'package:test_thgroup/theme/src.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (BuildContext context) => HomeBloc(),
          ),
        ],
        child: MaterialApp(
          title: 'Test TN-Group',
          darkTheme: ThemeData.dark(),
          theme: lightTheme,
          debugShowCheckedModeBanner: false,
          home: const HomePage(),
        ));
  }
}
