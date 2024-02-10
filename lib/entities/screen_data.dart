class ScreenData {
  final String _title;
  final String _subtitle;
  final String _imageAssetPath;

  get title => _title;
  get subtitle => _subtitle;
  get imageAssetPath => _imageAssetPath;

  ScreenData(this._title, this._subtitle, this._imageAssetPath);

  factory ScreenData.fromMap(Map<String, dynamic> map) {
    return ScreenData(map['title'], map['subtitle'], map['imageAssetPath']);
  }

  Map<String, String> toMap() {
    return {
      'title': _title,
      'subtitle': _subtitle,
      'imageAssetPath': _imageAssetPath
    };
  }
}