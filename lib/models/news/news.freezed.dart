// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) {
  return _NewsResponse.fromJson(json);
}

/// @nodoc
mixin _$NewsResponse {
  NewsResponseData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsResponseCopyWith<NewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsResponseCopyWith<$Res> {
  factory $NewsResponseCopyWith(
          NewsResponse value, $Res Function(NewsResponse) then) =
      _$NewsResponseCopyWithImpl<$Res, NewsResponse>;
  @useResult
  $Res call({NewsResponseData data});

  $NewsResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$NewsResponseCopyWithImpl<$Res, $Val extends NewsResponse>
    implements $NewsResponseCopyWith<$Res> {
  _$NewsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NewsResponseData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsResponseDataCopyWith<$Res> get data {
    return $NewsResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsResponseCopyWith<$Res>
    implements $NewsResponseCopyWith<$Res> {
  factory _$$_NewsResponseCopyWith(
          _$_NewsResponse value, $Res Function(_$_NewsResponse) then) =
      __$$_NewsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewsResponseData data});

  @override
  $NewsResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_NewsResponseCopyWithImpl<$Res>
    extends _$NewsResponseCopyWithImpl<$Res, _$_NewsResponse>
    implements _$$_NewsResponseCopyWith<$Res> {
  __$$_NewsResponseCopyWithImpl(
      _$_NewsResponse _value, $Res Function(_$_NewsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_NewsResponse(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NewsResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsResponse implements _NewsResponse {
  const _$_NewsResponse({required this.data});

  factory _$_NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NewsResponseFromJson(json);

  @override
  final NewsResponseData data;

  @override
  String toString() {
    return 'NewsResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsResponse &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsResponseCopyWith<_$_NewsResponse> get copyWith =>
      __$$_NewsResponseCopyWithImpl<_$_NewsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsResponseToJson(
      this,
    );
  }
}

abstract class _NewsResponse implements NewsResponse {
  const factory _NewsResponse({required final NewsResponseData data}) =
      _$_NewsResponse;

  factory _NewsResponse.fromJson(Map<String, dynamic> json) =
      _$_NewsResponse.fromJson;

  @override
  NewsResponseData get data;
  @override
  @JsonKey(ignore: true)
  _$$_NewsResponseCopyWith<_$_NewsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsResponseData _$NewsResponseDataFromJson(Map<String, dynamic> json) {
  return _NewsResponseData.fromJson(json);
}

/// @nodoc
mixin _$NewsResponseData {
  List<NewsItem> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsResponseDataCopyWith<NewsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsResponseDataCopyWith<$Res> {
  factory $NewsResponseDataCopyWith(
          NewsResponseData value, $Res Function(NewsResponseData) then) =
      _$NewsResponseDataCopyWithImpl<$Res, NewsResponseData>;
  @useResult
  $Res call({List<NewsItem> children});
}

/// @nodoc
class _$NewsResponseDataCopyWithImpl<$Res, $Val extends NewsResponseData>
    implements $NewsResponseDataCopyWith<$Res> {
  _$NewsResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<NewsItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsResponseDataCopyWith<$Res>
    implements $NewsResponseDataCopyWith<$Res> {
  factory _$$_NewsResponseDataCopyWith(
          _$_NewsResponseData value, $Res Function(_$_NewsResponseData) then) =
      __$$_NewsResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewsItem> children});
}

/// @nodoc
class __$$_NewsResponseDataCopyWithImpl<$Res>
    extends _$NewsResponseDataCopyWithImpl<$Res, _$_NewsResponseData>
    implements _$$_NewsResponseDataCopyWith<$Res> {
  __$$_NewsResponseDataCopyWithImpl(
      _$_NewsResponseData _value, $Res Function(_$_NewsResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$_NewsResponseData(
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<NewsItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsResponseData implements _NewsResponseData {
  const _$_NewsResponseData({required final List<NewsItem> children})
      : _children = children;

  factory _$_NewsResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_NewsResponseDataFromJson(json);

  final List<NewsItem> _children;
  @override
  List<NewsItem> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'NewsResponseData(children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsResponseData &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsResponseDataCopyWith<_$_NewsResponseData> get copyWith =>
      __$$_NewsResponseDataCopyWithImpl<_$_NewsResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsResponseDataToJson(
      this,
    );
  }
}

abstract class _NewsResponseData implements NewsResponseData {
  const factory _NewsResponseData({required final List<NewsItem> children}) =
      _$_NewsResponseData;

  factory _NewsResponseData.fromJson(Map<String, dynamic> json) =
      _$_NewsResponseData.fromJson;

  @override
  List<NewsItem> get children;
  @override
  @JsonKey(ignore: true)
  _$$_NewsResponseDataCopyWith<_$_NewsResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsItem _$NewsItemFromJson(Map<String, dynamic> json) {
  return _NewsItem.fromJson(json);
}

/// @nodoc
mixin _$NewsItem {
  News get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsItemCopyWith<NewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsItemCopyWith<$Res> {
  factory $NewsItemCopyWith(NewsItem value, $Res Function(NewsItem) then) =
      _$NewsItemCopyWithImpl<$Res, NewsItem>;
  @useResult
  $Res call({News data});

  $NewsCopyWith<$Res> get data;
}

/// @nodoc
class _$NewsItemCopyWithImpl<$Res, $Val extends NewsItem>
    implements $NewsItemCopyWith<$Res> {
  _$NewsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as News,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsCopyWith<$Res> get data {
    return $NewsCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsItemCopyWith<$Res> implements $NewsItemCopyWith<$Res> {
  factory _$$_NewsItemCopyWith(
          _$_NewsItem value, $Res Function(_$_NewsItem) then) =
      __$$_NewsItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({News data});

  @override
  $NewsCopyWith<$Res> get data;
}

/// @nodoc
class __$$_NewsItemCopyWithImpl<$Res>
    extends _$NewsItemCopyWithImpl<$Res, _$_NewsItem>
    implements _$$_NewsItemCopyWith<$Res> {
  __$$_NewsItemCopyWithImpl(
      _$_NewsItem _value, $Res Function(_$_NewsItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_NewsItem(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as News,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsItem implements _NewsItem {
  const _$_NewsItem({required this.data});

  factory _$_NewsItem.fromJson(Map<String, dynamic> json) =>
      _$$_NewsItemFromJson(json);

  @override
  final News data;

  @override
  String toString() {
    return 'NewsItem(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsItem &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsItemCopyWith<_$_NewsItem> get copyWith =>
      __$$_NewsItemCopyWithImpl<_$_NewsItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsItemToJson(
      this,
    );
  }
}

abstract class _NewsItem implements NewsItem {
  const factory _NewsItem({required final News data}) = _$_NewsItem;

  factory _NewsItem.fromJson(Map<String, dynamic> json) = _$_NewsItem.fromJson;

  @override
  News get data;
  @override
  @JsonKey(ignore: true)
  _$$_NewsItemCopyWith<_$_NewsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
mixin _$News {
  String get id => throw _privateConstructorUsedError;
  String get selftext => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res, News>;
  @useResult
  $Res call({String id, String selftext, String title, String thumbnail});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res, $Val extends News>
    implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? selftext = null,
    Object? title = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      selftext: null == selftext
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$$_NewsCopyWith(_$_News value, $Res Function(_$_News) then) =
      __$$_NewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String selftext, String title, String thumbnail});
}

/// @nodoc
class __$$_NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res, _$_News>
    implements _$$_NewsCopyWith<$Res> {
  __$$_NewsCopyWithImpl(_$_News _value, $Res Function(_$_News) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? selftext = null,
    Object? title = null,
    Object? thumbnail = null,
  }) {
    return _then(_$_News(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      selftext: null == selftext
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_News implements _News {
  const _$_News(
      {required this.id,
      required this.selftext,
      required this.title,
      required this.thumbnail});

  factory _$_News.fromJson(Map<String, dynamic> json) => _$$_NewsFromJson(json);

  @override
  final String id;
  @override
  final String selftext;
  @override
  final String title;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'News(id: $id, selftext: $selftext, title: $title, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_News &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.selftext, selftext) ||
                other.selftext == selftext) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, selftext, title, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsCopyWith<_$_News> get copyWith =>
      __$$_NewsCopyWithImpl<_$_News>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsToJson(
      this,
    );
  }
}

abstract class _News implements News {
  const factory _News(
      {required final String id,
      required final String selftext,
      required final String title,
      required final String thumbnail}) = _$_News;

  factory _News.fromJson(Map<String, dynamic> json) = _$_News.fromJson;

  @override
  String get id;
  @override
  String get selftext;
  @override
  String get title;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_NewsCopyWith<_$_News> get copyWith => throw _privateConstructorUsedError;
}
