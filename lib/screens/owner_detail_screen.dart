import 'package:flutter/material.dart';
import 'package:githubrepo/components/all.dart';
import 'package:githubrepo/constants/spacings.dart';
import 'package:githubrepo/constants/typography.dart';
import 'package:githubrepo/utils/extensions/theme_data_extensions.dart';

class OwnerDetailScreen extends StatefulWidget {
  const OwnerDetailScreen({super.key});

  @override
  State<OwnerDetailScreen> createState() => _OwnerDetailScreenState();
}

class _OwnerDetailScreenState extends State<OwnerDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(text: 'Repositórios'),
      body: SafeArea(
        child: Container(
          child: Column(
             children: [
                const CustomAvatar(
                  avatarUrl: 'https://avatars.githubusercontent.com/u/115407377?v=4',
                  radius: Spacings.xl * 2,
                ),
                const SizedBox(height: Spacings.xl),
                CustomText(
                  text: 'Dono do Repositório:',
                  color: context.colors.kTextSecondaryColor,
                  style: TypographyType.label,
                ),
                const CustomText(
                  text: 'Pedro',
                  style: TypographyType.header,
                ),
                const CustomDivider(),
                const SizedBox(height: Spacings.m),
                const CustomText(text: 'Repositórios', style: TypographyType.title),
                ListView.separated(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return repositoryItem();
                  },
                  separatorBuilder: (context, index) {
                    return const CustomDivider();
                },
              ),
             ],
          ),
        )
        ),
    );
  }

  
  ListTile repositoryItem() {
    return ListTile(
      leading: const CustomAvatar(
        avatarUrl: 'https://avatars.githubusercontent.com/u/115407377?v=4',
        radius: Spacings.xl,
      ),
      title: Row(
        children: const [
          CustomText(
            text: 'Nome: ',
            style: TypographyType.label,
          ),
          CustomText(
            text: 'voll_med api',
            style: TypographyType.body,
          ),
        ],
      ),
      subtitle: Row(
        children: [
          const CustomText(
            text: 'Dono: ',
            style: TypographyType.label,
          ),
          CustomText(
            text: 'Pedro',
            color: context.colors.kAccentColor,
            style: TypographyType.label,
          ),
        ],
      ),
    );
  }
}