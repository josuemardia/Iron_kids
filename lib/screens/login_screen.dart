import 'package:flutter/material.dart';
import 'package:iron_kids/main.dart';
import 'package:iron_kids/styles/app_theme.dart';
import 'package:iron_kids/styles/widgets.dart';

final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary100,
      appBar: AppBar(
        title: const Text('Login'),
      ),
      //padding: const EdgeInsets.all(16.0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          /* const ImageLogin(),
          FormInput(
            emailControllerP: _emailController,
            passwordControllerP: _passwordController,
          ), */
        ],
      ),
    );
  }
}

/* //Image Background
class ImageLogin extends StatelessWidget {
  const ImageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: screenW,
        decoration: const BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/iron-kids-app.appspot.com/o/OtherResources%2Fbackground.png?alt=media&token=eca452ff-3ffe-4eda-9bde-612bc4f0a9e7'),
          ),
        ),
        child: Image.network(
            'https://firebasestorage.googleapis.com/v0/b/iron-kids-app.appspot.com/o/Ilustraciones%2FMotherhood.png?alt=media&token=8d51fdd4-297b-468e-91ff-bcf2158196f4'),
      ),
    );
  }
}

//Forms
// ignore: must_be_immutable
class FormInput extends StatelessWidget {
  TextEditingController emailControllerP = TextEditingController();
  TextEditingController passwordControllerP = TextEditingController();
  FormInput(
      {super.key,
      required this.emailControllerP,
      required this.passwordControllerP});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      decoration: BoxDecoration(
        color: AppTheme.gray50,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40.00),
          topRight: Radius.circular(40.00),
        ), //AppTheme.borderRadiusXL,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '¡Bienvenido de vuelta!',
            style: AppTheme.headlineSmall(context),
            textAlign: TextAlign.center,
          ),
          AppTheme.spacingWidget3, //espaciador
          Text(
            'Ingresa tus datos en la parte de abajo',
            style: AppTheme.bodySmallMedium(context),
            textAlign: TextAlign.center,
          ),
          AppTheme.spacingWidget7, //espaciador
          InputField(
            controller: emailControllerP,
            placeholder: 'Ingresa tu correo electrónico',
            iconLeft: Icons.person_2_outlined,
          ),
          AppTheme.spacingWidget5,

          InputField(
            controller: passwordControllerP,
            placeholder: 'Ingresa tu contraseña',
            obscure: true,
            iconLeft: Icons.lock_outline_rounded,
            iconRight: Icons.remove_red_eye_outlined,
          ),
          AppTheme.spacingWidget5,
          Text(
            '¿Olvidaste tu contraseña?',
            textAlign: TextAlign.right,
            style: TextStyle(
                color: AppTheme.gray500,
                fontSize: 13,
                decoration: TextDecoration
                    .underline //Mencionar a Axel sobre este inconveniente
                ),
          ),
          AppTheme.spacingWidget6,
          const ButtonPrimary(
            'Inicia sesión',
            size: 2,
          ),
          AppTheme.spacingWidget5,
          const ButtonOutlined(
            'Registrate',
            size: 2,
          ),

          AppTheme.spacingWidget5,
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: AppTheme.spacing10,
                  height: 1,
                  decoration: BoxDecoration(
                    color: AppTheme.gray400,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  'O inicia con',
                  style: AppTheme.bodySmall(context)
                      .copyWith(color: AppTheme.gray400),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: AppTheme.spacing10,
                  height: 1,
                  decoration: BoxDecoration(
                    color: AppTheme.gray400,
                  ),
                ),
              ),
            ],
          ),
          AppTheme.spacingWidget5,
          const ButtonSecondary(
            'ingresa con Google',
            size: 2,
          ),
        ],
      ),
    );
  }
}
 */
/* //Widget boton
class ButtonUI extends StatelessWidget {
  final String text;
  final bool outlined;
  final Color color;
  const ButtonUI({
    super.key,
    required this.text,
    this.outlined = false,
    this.color = AppTheme.primary500,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Implementar la lógica de autenticación aquí
        /* final String email = _emailController.text.trim();
        final String password = _passwordController.text.trim(); */
        // Validar las credenciales y continuar a la siguiente pantalla
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: (outlined) ? AppTheme.gray50 : color,
        minimumSize: const Size(350, 50),
        shape: RoundedRectangleBorder(
          borderRadius: AppTheme.borderRadiusL,
          side: (outlined)
              ? BorderSide(color: color)
              : BorderSide.none, // personaliza el radio de los bordes
        ),
      ),
      child: Text(
        (text != null) ? text : 'Inserta texto',
        style: (outlined)
            ? AppTheme.labelMedium(context).copyWith(color: color)
            : AppTheme.labelMedium(context).copyWith(color: AppTheme.gray50),
      ),
    );
  }
} */
