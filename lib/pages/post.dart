import 'package:flutter/material.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

class PostEditPage extends StatefulWidget {
  const PostEditPage({super.key});

  @override
  State<PostEditPage> createState() => _PostEditPageState();
}

class _PostEditPageState extends State<PostEditPage> {
  // 主界面面布局
  Widget _mainView() {
    return Column(
      children: [
        // 选取图片按钮
        ElevatedButton(
          onPressed: () async {
            final List<AssetEntity>? result =
                await AssetPicker.pickAssets(context);
            print(result?.length);
          },
          child: Text("添加图片"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("发布"),
      ),
      body: Center(child: _mainView()),
    );
  }
}
