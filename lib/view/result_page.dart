import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_image_keybord/provider/progress_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../model/hotel.dart';

class ResultPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Hotel>> hotels = ref.watch(hotelsProvider);

    return hotels.when(
      data: (hotels) {
        return ListView.builder(
          itemCount: hotels.length,
          itemBuilder: (context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CachedNetworkImage(
                        imageUrl: (hotels[index].hotel.hotelBasicInfo.hotelImageUrl != null)
                            ? hotels[index].hotel.hotelBasicInfo.hotelImageUrl!
                            : "https://www.shoshinsha-design.com/wp-content/uploads/2020/05/noimage-760x460.png",
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                CircularProgressIndicator(
                          value: downloadProgress.progress,
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Text(
                            hotels[index].hotel.hotelBasicInfo.hotelName ?? "No Name",
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                            hotels[index].hotel.hotelBasicInfo.hotelSpecial ?? "No Special",
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      error: (err, stack) => Text('Error: $err'),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
