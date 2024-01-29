import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:where_is_it/aa_home/explorer/explorer_controller.dart';
import 'package:where_is_it/aa_home/fab/dialog/fast_element_controller.dart';
import 'package:where_is_it/aa_model/grid_element_model.dart';
import 'package:where_is_it/aa_project_defaults/project_text_fields.dart';
import 'package:where_is_it/aa_project_defaults/project_text_styles.dart';
import 'package:where_is_it/generated/assets.dart';
import 'package:where_is_it/tools/camera/camera_stream_widget.dart';
import 'package:where_is_it/zz_networkmanager/network_manager.dart';

class FastElementCreator extends GetView<FastElementController> {
  late String type;
  FastElementCreator(BuildContext context, bool isItem, {super.key}) {
    type = (isItem) ? 'item' : 'container';
  }

  var newElement;

  @override
  Widget build(BuildContext context) {
    var textEditingControllerName = TextEditingController();
    var textEditingControllerShortDescription = TextEditingController();

    var item = {};

    return AlertDialog(
      content: Container(
        width: 350,
        height: 500,
        child: Column(
          children: [
            title(),
            Obx(() => controller.getImageWidget),
            const SizedBox(
              height: 10,
            ),
            // const CameraStreamWidget(),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                propertyWrapper("Name", textEditingControllerName),
                propertyWrapper("Short description", textEditingControllerShortDescription),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // var pickImage = ImagePicker()
                    //     .pickImage(source: ImageSource.gallery, maxWidth: 150, maxHeight: 150);
                    // var whenComplete = pickImage.whenComplete(() => null);
                    // whenComplete.then((value) => controller.change(value!));
                    // build(context);
                    // var image = getImage();
                    // image.then((value) => controller.change(value!));

                    Future<FilePickerResult?> result = FilePicker.platform.pickFiles();
                    result.then((value) {
                      if (value != null) {
                        // File file = File(result.files.single.path!);

                        controller.change(value.files[0].path!);
                      } else {
                        // User canceled the picker
                      }
                    });
                  },
                  child: const Center(
                    child: Text("UPLOAD PHOTO"),
                  ),
                ),
              ],
            ),
            CameraStreamWidget()
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            var name = textEditingControllerName.text;
            var shortDescription = textEditingControllerShortDescription.text;

            item['name'] = name;
            item['shortdescription'] = shortDescription;
            item['isinid'] = "store_a"; //todo get current container id we are just in
            NetworkManager.sendPostRequestItems(jsonEncode(item));

            var find = Get.find<ExplorerController>();
            find.addGridModel(GridElementModel(Assets.imagesKatze,
                type: type, isinid: "store_a", name: name, shortDescription: shortDescription));

            Navigator.of(context).pop();
          },
          child: const Text('SAVE'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('CLOSE'),
        ),
      ],
    );
  }

  Widget propertyWrapper(
    String name,
    TextEditingController controller,
  ) =>
      Column(
        children: [
          ProjectTextFields.textFieldCompact(name, controller),
          const SizedBox(
            height: 10,
          ),
        ],
      );

  Widget title() {
    var style = ProjectTextStyles.header1Style();
    return Text(
      type,
      style: style,
    );
  }

  Future<XFile?> getImage() {
    // Future<XFile?> img =  imageUpload();
    Future<XFile?> img = imageUpload();
    return img;
  }

  Future<XFile?> imageUpload() async {
    var imagePicker = ImagePicker();
    var source = imagePicker.supportsImageSource(ImageSource.gallery);
    var pickImage = imagePicker.pickImage(source: ImageSource.gallery);

    return pickImage;

    // return Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: <Widget>[
    //       _image == null ? Text(string) : Image.file(_image!),
    //       ElevatedButton(
    //         onPressed: getImage,
    //         child: Text('PHOTOS'),
    //       ),
    //     ],
    //   ),
    // );
  }
}
