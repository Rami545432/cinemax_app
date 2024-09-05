import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/features/search/presentaion/view_models/manger/search_actor_cubit/seach_actor_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchActorsTextField extends StatefulWidget {
  const SearchActorsTextField({super.key});

  @override
  State<SearchActorsTextField> createState() => _SearchActorsTextFieldState();
}

class _SearchActorsTextFieldState extends State<SearchActorsTextField> {
  final TextEditingController _textEditingController = TextEditingController();
  bool showCancelButton = false;
  double textFieldWidth = 200;
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 40,
              child: TextFormField(
                
                controller: _textEditingController,
                onChanged: (value) {
                  setState(() {
                    textFieldWidth = value.length * 8 + 48;
                    showCancelButton = value.isNotEmpty;
                    BlocProvider.of<SearchActorCubit>(context)
                        .searchActor(value);
                  });
                },
                maxLines: 1,
                decoration: InputDecoration(
                    fillColor: AppPrimaryColors.soft,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(vertical: 4),
                    hintText: 'Type title, categories, years, etc',
                    prefixIcon: const Icon(Icons.search),
                    enabledBorder: borderProperties(),
                    focusedBorder: borderProperties()),
              ),
            ),
          ),
          if (showCancelButton)
            TextButton(
                onPressed: () {
                  setState(() {
                    _textEditingController.clear();
                    textFieldWidth = 200;
                    showCancelButton = false;
                  });
                },
                child: const Text('Cancel'))
        ],
      ),
    );
  }

  OutlineInputBorder borderProperties() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(24),
    );
  }
}
