import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/widgets/shared/video_scrollable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();


    return Scaffold(
      body: discoverProvider.initialLoading
            ? const Center(child: CircularProgressIndicator(strokeWidth: 2,),)
            : VideoScrollablleView(videos: discoverProvider.videos)
    );
  }
}


// final discoverProvider = context.read<DiscoverProvider>();
// final otroProvider = Provider.of<DiscoverProvider>(context, listen: false);

//Las dos lineas anteriores son equivalentes, leen los cambios, pero no
//renderizan los widgets