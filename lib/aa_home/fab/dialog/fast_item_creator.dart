import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:where_is_it/aa_home/explorer/explorer_controller.dart';
import 'package:where_is_it/aa_model/grid_element_model.dart';
import 'package:where_is_it/aa_project_defaults/project_text_fields.dart';
import 'package:where_is_it/aa_project_defaults/project_text_styles.dart';
import 'package:where_is_it/tools/camera/camera_stream_widget.dart';

class FastElementCreator extends GetView<ExplorerController> {
  late String type;
  FastElementCreator(BuildContext context, bool isItem, {super.key}) {
    type = (isItem) ? 'item' : 'container';
  }

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
                    var imageUpload2 = imageUpload().then((value) {
                      var name = textEditingControllerName.text;
                      var shortDescription = textEditingControllerShortDescription.text;
                      var find = Get.find<ExplorerController>();
                      find.addGridModel(GridElementModel(value!,
                          name: name, isinid: 'storea', shortDescription: shortDescription));
                    });
                    build(context);
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
            // var name = textEditingControllerName.text;
            // var shortDescription = textEditingControllerShortDescription.text;
            //
            // item['name'] = name;
            // item['shortdescription'] = shortDescription;
            // item['isinid'] = "store_a"; //todo get current container id we are just in
            // // NetworkManager.sendPostRequestItems(jsonEncode(item));
            //
            // var find = Get.find<ExplorerController>();
            // find.addGridModel(new GridElementModel(Assets.imagesKatze,
            //     type: type, isinid: "store_a", name: name, shortDescription: shortDescription));

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

  Future<String?> imageUpload() async {
    FilePickerResult? pickFiles = await FilePicker.platform.pickFiles(type: FileType.any);

    var path2 = pickFiles!.files.first.path;
    print(path2);

    var applicationDocumentsDirectory = getApplicationDocumentsDirectory();
    return path2;

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
