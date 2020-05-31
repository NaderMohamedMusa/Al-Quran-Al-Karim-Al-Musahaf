import 'package:device_info/device_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:screen/screen.dart';

class QuranPage extends StatefulWidget {
  final int pages;

  QuranPage({Key key, @required this.pages}) : super(key: key);

  @override
  _QuranPageState createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  PDFDocument _document;
  static const List<double> _doubleTapScales = <double>[1.0, 1.1];

  PageController pageController;

  Future<PDFDocument> _getDocument() async {
    if (_document != null) {
      return _document;
    }

    if (await hasSupport()) {
      _document = await PDFDocument.openAsset('assets/pdf/quran.pdf');
      return _document;
    } else {
      throw Exception(
        'المعذرة لا يمكن طباعة المحتوى'
        'يرجي التحقق من أن جهازك يدعم نظام أندرويد بنسخته 5 على الأقل',
      );
    }
  }

  PageController _pageControllerBuilder() {
    return PageController(
        initialPage: widget.pages, viewportFraction: 1.3, keepPage: true);
  }

  @override
  void dispose() {
    super.dispose();
  }

  closePage(page) async {
    await page.close();
  }

  @override
  void initState() {
    Screen.keepOn(true);
    setState(() {
      pageController = _pageControllerBuilder();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    pageController = _pageControllerBuilder();
    return Scaffold(
      primary: false,
      body: FutureBuilder<PDFDocument>(
        future: _getDocument(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SafeArea(
              child: PDFView.builder(
                loader: Icon(Icons.ac_unit),
                scrollDirection: Axis.horizontal,
                document: snapshot.data,
                controller: pageController,
                builder: (PDFPageImage pageImage, bool isCurrentIndex) {
                  Widget image = Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Container(
                        child: ExtendedImage.memory(
                          pageImage.bytes,
                          mode: ExtendedImageMode.gesture,
                          initGestureConfigHandler: (_) => GestureConfig(
                            speed: 1,
                            inertialSpeed: 100,
                            inPageView: true,
                            initialScale: 1.0,
                            cacheGesture: false,
                          ),
                          onDoubleTap: (ExtendedImageGestureState state) {
                            final pointerDownPosition =
                                state.pointerDownPosition;
                            final begin = state.gestureDetails.totalScale;
                            double end;
                            if (begin == _doubleTapScales[0]) {
                              end = _doubleTapScales[1];
                            } else {
                              end = _doubleTapScales[0];
                            }
                            state.handleDoubleTap(
                              scale: end,
                              doubleTapPosition: pointerDownPosition,
                            );
                          },
                        ),
                      ),
                    ],
                  );
                  if (isCurrentIndex) {
                    image = Hero(
                      tag: pageImage.pageNumber.toString(),
                      child: Container(child: image),
                      transitionOnUserGestures: true,
                    );
                  }
                  return image;
                },
                onPageChanged: (page) {},
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'المعذرة لا يمكن طباعة المحتوى'
                'يرجي التحقق من أن جهازك يدعم نظام أندرويد بنسخته 5 على الأقل',
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future<bool> hasSupport() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    bool hasSupport = androidInfo.version.sdkInt >= 21;
    return hasSupport;
  }
}
