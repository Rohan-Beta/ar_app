// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:arapp/MyModel/product_model.dart';
import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;
import 'package:collection/collection.dart';

class ProductArViewScreen extends StatefulWidget {
  final ProductModel product;

  const ProductArViewScreen({super.key, required this.product});

  @override
  State<ProductArViewScreen> createState() => _ProductArViewState();
}

class _ProductArViewState extends State<ProductArViewScreen> {
  late ARKitController controller;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: const Text('Product'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ARKitSceneView(
        showFeaturePoints: true,
        enableTapRecognizer: true,
        planeDetection: ARPlaneDetection.horizontalAndVertical,
        onARKitViewCreated: (ARKitController controller) {
          this.controller = controller;

          controller.onARTap = (hits) {
            final point = hits.firstWhereOrNull(
              (hit) => hit.type == ARKitHitTestResultType.featurePoint,
            );

            if (point != null) {
              _onARTapHandler(point);
            }
          };
        },
      ),
    );
  }

  void _onARTapHandler(ARKitTestResult point) {
    final position = vector.Vector3(
      point.worldTransform.getColumn(3).x,
      point.worldTransform.getColumn(3).y,
      point.worldTransform.getColumn(3).z,
    );
    final node = _getNodeFromFlutterAsset(position);
    controller.add(node);
  }

  ARKitGltfNode _getNodeFromFlutterAsset(vector.Vector3 position) {
    return ARKitGltfNode(
      assetType: AssetType.flutterAsset,
      url: widget.product.modelPath,
      scale: vector.Vector3.all(0.05),
      position: position,
    );
  }
}
