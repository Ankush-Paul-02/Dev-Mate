import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class DeveloperCard extends StatelessWidget {
  const DeveloperCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: 250,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c29mdHdhcmUlMjBkZXZlbG9wZXIlMjBmYWNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                    ),
                    radius: 40,
                  ),
                  Text(
                    'Sofia Paul',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red.withOpacity(0.2),
                    ),
                    child: const Icon(
                      Icons.favorite_border_outlined,
                      size: 30,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Future Institute of Engineering and ManageMent',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      overflow: TextOverflow.ellipsis,
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Information Technology',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                  Text(
                    '2nd year',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flutter Developer',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: const Color.fromARGB(255, 3, 49, 86),
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                  Text(
                    '9 Projects',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: const Color.fromARGB(255, 3, 49, 86),
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
