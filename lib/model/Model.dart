class FeedApi {
  String? name;
  String? description;
  String? iconUrl;
  int? sortSequence;
  bool? isClickable;
  List<Stories>? stories;
  String? feedId;
  bool? isViewed;
  int? storyIndex;

  FeedApi(
      {this.name,
      this.description,
      this.iconUrl,
      this.sortSequence,
      this.isClickable,
      this.stories,
      this.feedId,
      this.isViewed,
      this.storyIndex});

  FeedApi.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    iconUrl = json['icon_url'];
    sortSequence = json['sort_sequence'];
    isClickable = json['is_clickable'];
    if (json['stories'] != null) {
      stories = <Stories>[];
      json['stories'].forEach((v) {
        stories!.add(new Stories.fromJson(v));
      });
    }
    feedId = json['feed_id'];
    isViewed = json['is_viewed'];
    storyIndex = json['story_index'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['icon_url'] = this.iconUrl;
    data['sort_sequence'] = this.sortSequence;
    data['is_clickable'] = this.isClickable;
    if (this.stories != null) {
      data['stories'] = this.stories!.map((v) => v.toJson()).toList();
    }
    data['feed_id'] = this.feedId;
    data['is_viewed'] = this.isViewed;
    data['story_index'] = this.storyIndex;
    return data;
  }
}

class Stories {
  String? storyId;
  int? sortSequence;
  String? contentType;
  String? contentUrl;
  String? ctaText;
  String? ctaType;
  String? ctaTargetElementType;
  String? ctaTargetElementId;
  Meta? meta;
  Footer? footer;
  bool? isViewed;

  Stories(
      {this.storyId,
      this.sortSequence,
      this.contentType,
      this.contentUrl,
      this.ctaText,
      this.ctaType,
      this.ctaTargetElementType,
      this.ctaTargetElementId,
      this.meta,
      this.footer,
      this.isViewed});

  Stories.fromJson(Map<String, dynamic> json) {
    storyId = json['story_id'];
    sortSequence = json['sort_sequence'];
    contentType = json['content_type'];
    contentUrl = json['content_url'];
    ctaText = json['cta_text'];
    ctaType = json['cta_type'];
    ctaTargetElementType = json['cta_target_element_type'];
    ctaTargetElementId = json['cta_target_element_id'];
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    footer =
        json['footer'] != null ? new Footer.fromJson(json['footer']) : null;
    isViewed = json['is_viewed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['story_id'] = this.storyId;
    data['sort_sequence'] = this.sortSequence;
    data['content_type'] = this.contentType;
    data['content_url'] = this.contentUrl;
    data['cta_text'] = this.ctaText;
    data['cta_type'] = this.ctaType;
    data['cta_target_element_type'] = this.ctaTargetElementType;
    data['cta_target_element_id'] = this.ctaTargetElementId;
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    if (this.footer != null) {
      data['footer'] = this.footer!.toJson();
    }
    data['is_viewed'] = this.isViewed;
    return data;
  }
}

class Meta {
  String? id;
  String? festivalId;
  String? festivalName;
  String? festivalDescription;
  String? bannerUrl;
  String? festivalIconUrl;
  String? startDate;
  String? endDate;
  bool? prebookEnabled;
  String? prebookEventName;
  String? prebookEventDescription;
  List<FeaturingRestaurants>? featuringRestaurants;
  List<FeaturingHotels>? featuringHotels;

  Meta(
      {this.id,
      this.festivalId,
      this.festivalName,
      this.festivalDescription,
      this.bannerUrl,
      this.festivalIconUrl,
      this.startDate,
      this.endDate,
      this.prebookEnabled,
      this.prebookEventName,
      this.prebookEventDescription,
      this.featuringRestaurants,
      this.featuringHotels});

  Meta.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    festivalId = json['festival_id'];
    festivalName = json['festival_name'];
    festivalDescription = json['festival_description'];
    bannerUrl = json['banner_url'];
    festivalIconUrl = json['festival_icon_url'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    prebookEnabled = json['prebook_enabled'];
    prebookEventName = json['prebook_event_name'];
    prebookEventDescription = json['prebook_event_description'];
    if (json['featuring_restaurants'] != null) {
      featuringRestaurants = <FeaturingRestaurants>[];
      json['featuring_restaurants'].forEach((v) {
        featuringRestaurants!.add(new FeaturingRestaurants.fromJson(v));
      });
    }
    if (json['featuring_hotels'] != null) {
      featuringHotels = <FeaturingHotels>[];
      json['featuring_hotels'].forEach((v) {
        featuringHotels!.add(new FeaturingHotels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['festival_id'] = this.festivalId;
    data['festival_name'] = this.festivalName;
    data['festival_description'] = this.festivalDescription;
    data['banner_url'] = this.bannerUrl;
    data['festival_icon_url'] = this.festivalIconUrl;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['prebook_enabled'] = this.prebookEnabled;
    data['prebook_event_name'] = this.prebookEventName;
    data['prebook_event_description'] = this.prebookEventDescription;
    if (this.featuringRestaurants != null) {
      data['featuring_restaurants'] =
          this.featuringRestaurants!.map((v) => v.toJson()).toList();
    }
    if (this.featuringHotels != null) {
      data['featuring_hotels'] =
          this.featuringHotels!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FeaturingRestaurants {
  String? id;
  String? name;
  String? hotelName;
  String? hotelAlias;
  int? costForTwo;
  String? restaurantDetailsImgUrl;
  String? menuPageHeaderImgUrl;
  String? homePageCardImgUrl;
  String? hotelId;
  String? cuisines;

  FeaturingRestaurants(
      {this.id,
      this.name,
      this.hotelName,
      this.hotelAlias,
      this.costForTwo,
      this.restaurantDetailsImgUrl,
      this.menuPageHeaderImgUrl,
      this.homePageCardImgUrl,
      this.hotelId,
      this.cuisines});

  FeaturingRestaurants.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    hotelName = json['hotel_name'];
    hotelAlias = json['hotel_alias'];
    costForTwo = json['cost_for_two'];
    restaurantDetailsImgUrl = json['restaurant_details_img_url'];
    menuPageHeaderImgUrl = json['menu_page_header_img_url'];
    homePageCardImgUrl = json['home_page_card_img_url'];
    hotelId = json['hotel_id'];
    cuisines = json['cuisines'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['hotel_name'] = this.hotelName;
    data['hotel_alias'] = this.hotelAlias;
    data['cost_for_two'] = this.costForTwo;
    data['restaurant_details_img_url'] = this.restaurantDetailsImgUrl;
    data['menu_page_header_img_url'] = this.menuPageHeaderImgUrl;
    data['home_page_card_img_url'] = this.homePageCardImgUrl;
    data['hotel_id'] = this.hotelId;
    data['cuisines'] = this.cuisines;
    return data;
  }
}

class FeaturingHotels {
  String? hotelId;
  String? hotelName;
  String? hotelAlias;
  String? hotelCode;
  String? hotelImageUrl;
  double? distanceInKm;

  FeaturingHotels(
      {this.hotelId,
      this.hotelName,
      this.hotelAlias,
      this.hotelCode,
      this.hotelImageUrl,
      this.distanceInKm});

  FeaturingHotels.fromJson(Map<String, dynamic> json) {
    hotelId = json['hotel_id'];
    hotelName = json['hotel_name'];
    hotelAlias = json['hotel_alias'];
    hotelCode = json['hotel_code'];
    hotelImageUrl = json['hotel_image_url'];
    distanceInKm = json['distance_in_km'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hotel_id'] = this.hotelId;
    data['hotel_name'] = this.hotelName;
    data['hotel_alias'] = this.hotelAlias;
    data['hotel_code'] = this.hotelCode;
    data['hotel_image_url'] = this.hotelImageUrl;
    data['distance_in_km'] = this.distanceInKm;
    return data;
  }
}

class Footer {
  String? socialIconUrl;
  String? text;

  Footer({this.socialIconUrl, this.text});

  Footer.fromJson(Map<String, dynamic> json) {
    socialIconUrl = json['social_icon_url'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['social_icon_url'] = this.socialIconUrl;
    data['text'] = this.text;
    return data;
  }
}
