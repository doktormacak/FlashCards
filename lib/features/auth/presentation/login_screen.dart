import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../routing/router_notifier.dart';

class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});
  final _loginKey = GlobalKey<FormBuilderState>();
  // final _emailFieldKey = GlobalKey<FormBuilderFieldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: FormBuilder(
          key: _loginKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            FormBuilderTextField(
              autocorrect: false,
              name: 'email',
              decoration: const InputDecoration(labelText: 'Email'),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.email(),
              ]),
            ),
            const SizedBox(
              height: 20.0,
            ),
            FormBuilderTextField(
              name: 'password',
              decoration: const InputDecoration(labelText: 'Password'),
              autocorrect: false,
              obscureText: true,
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.minLength(6),
              ]),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                _loginKey.currentState!.save();
                print(_loginKey.currentState!.value);
              },
              child: Text('LogIn'),
            ),
          ]),
        ),
      ),
    );
  }
}
