import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localapp/AppLocalizations.dart';
import 'package:localapp/cubit/locale_cubit.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Setting".tr(context),
          style: const TextStyle(fontSize: 24, fontFamily: "Cairo"),
        ),
        centerTitle: true,
      ),
      body: Center(
        child:
            BlocConsumer<LocaleCubit, LocaleState>(listener: (context, state) {
          if (state is ChanageLanguageCode) {
            Navigator.of(context).pop();
          }
        }, builder: (context, state) {
          if (state is ChanageLanguageCode) {
            return DropdownButton<String>(
              value: state.locale.languageCode,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: ['ar', 'en'].map((String e) {
                return DropdownMenuItem<String>(
                    value: e,
                    child: Text(
                      e,
                      style: const TextStyle(fontSize: 24, fontFamily: "Cairo"),
                    ));
              }).toList(),
              onChanged: (String? value) {
                BlocProvider.of<LocaleCubit>(context)
                    .ChanagedLanguageCode(value!);
              },
            );
          }
             return SizedBox();
        }),
      ),
    );
  }
}
