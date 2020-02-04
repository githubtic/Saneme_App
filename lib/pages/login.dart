import 'package:saneme_app/packages/packages.dart';
import 'package:saneme_app/pages/hiden_menu.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final users = const {
    'kevineilboudo@gmail.com': 'mohamed',
  };

  Duration get loginTime => Duration(milliseconds: 2250);

  Future<String> _authUser(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return "Nom d'utilisateur incorrect";
      }
      if (users[data.name] != data.password) {
        return "Mot de Passe incorrect";
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return "Cet Username n'exite pas";
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: FlutterLogin(
        theme: LoginTheme(primaryColor: Colors.teal),
        messages: LoginMessages(
          usernameHint: "Nom d'utilisateur",
          passwordHint: 'Mot de Passe',
          forgotPasswordButton: 'Mot de Passe Oublié',
          loginButton: 'Connexion',
          signupButton: 'Créer un Compte',
        ),
        title: 'SanemeApp',
        logo: 'assets/images/sign-up.png',
        onLogin: _authUser,
        onSignup: _authUser,
        onSubmitAnimationCompleted: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => HiddenMenuPage(),
          ));
        },
        onRecoverPassword: _recoverPassword,
      ),
    );
  }
}
