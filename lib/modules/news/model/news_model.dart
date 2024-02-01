// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
    int? id;
    DateTime? date;
    DateTime? dateGmt;
    Guid? guid;
    DateTime? modified;
    DateTime? modifiedGmt;
    String? slug;
    String? status;
    String? type;
    String? link;
    Guid? title;
    Content? content;
    Content? excerpt;
    int? author;
    int? featuredMedia;
    String? commentStatus;
    String? pingStatus;
    bool? sticky;
    String? template;
    String? format;
    Meta? meta;
    List<int>? categories;
    List<int>? tags;
    List<dynamic>? crunchbaseTag;
    List<dynamic>? tcStoriesTax;
    List<dynamic>? tcEcCategory;
    List<dynamic>? tcEvent;
    List<dynamic>? tcRegionsTax;
    String? yoastHead;
    YoastHeadJson? yoastHeadJson;
    bool? jetpackSharingEnabled;
    String? jetpackFeaturedMediaUrl;
    String? shortlink;
    RapidData? rapidData;
    bool? premiumContent;
    double? premiumCutoffPercent;
    bool? featured;
    String? subtitle;
    String? editorialContentProvider;
    List<dynamic>? tcCbMapping;
    dynamic associatedEvent;
    dynamic event;
    List<int>? authors;
    bool? hideFeaturedImage;
    String? canonicalUrl;
    PrimaryCategory? primaryCategory;
    List<dynamic>? appleNewsNotices;
    Links? links;

    NewsModel({
        this.id,
        this.date,
        this.dateGmt,
        this.guid,
        this.modified,
        this.modifiedGmt,
        this.slug,
        this.status,
        this.type,
        this.link,
        this.title,
        this.content,
        this.excerpt,
        this.author,
        this.featuredMedia,
        this.commentStatus,
        this.pingStatus,
        this.sticky,
        this.template,
        this.format,
        this.meta,
        this.categories,
        this.tags,
        this.crunchbaseTag,
        this.tcStoriesTax,
        this.tcEcCategory,
        this.tcEvent,
        this.tcRegionsTax,
        this.yoastHead,
        this.yoastHeadJson,
        this.jetpackSharingEnabled,
        this.jetpackFeaturedMediaUrl,
        this.shortlink,
        this.rapidData,
        this.premiumContent,
        this.premiumCutoffPercent,
        this.featured,
        this.subtitle,
        this.editorialContentProvider,
        this.tcCbMapping,
        this.associatedEvent,
        this.event,
        this.authors,
        this.hideFeaturedImage,
        this.canonicalUrl,
        this.primaryCategory,
        this.appleNewsNotices,
        this.links,
    });

    factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        id: json["id"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        // dateGmt: json["date_gmt"] == null ? null : DateTime.parse(json["date_gmt"]),
        guid: json["guid"] == null ? null : Guid.fromJson(json["guid"]),
        // modified: json["modified"] == null ? null : DateTime.parse(json["modified"]),
        // modifiedGmt: json["modified_gmt"] == null ? null : DateTime.parse(json["modified_gmt"]),
        slug: json["slug"],
        status: json["status"],
        type: json["type"],
        link: json["link"],
        title: json["title"] == null ? null : Guid.fromJson(json["title"]),
        content: json["content"] == null ? null : Content.fromJson(json["content"]),
        excerpt: json["excerpt"] == null ? null : Content.fromJson(json["excerpt"]),
        author: json["author"],
        featuredMedia: json["featured_media"],
        commentStatus: json["comment_status"],
        pingStatus: json["ping_status"],
        sticky: json["sticky"],
        template: json["template"],
        format: json["format"],
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
        categories: json["categories"] == null ? [] : List<int>.from(json["categories"]!.map((x) => x)),
        tags: json["tags"] == null ? [] : List<int>.from(json["tags"]!.map((x) => x)),
        crunchbaseTag: json["crunchbase_tag"] == null ? [] : List<dynamic>.from(json["crunchbase_tag"]!.map((x) => x)),
        tcStoriesTax: json["tc_stories_tax"] == null ? [] : List<dynamic>.from(json["tc_stories_tax"]!.map((x) => x)),
        tcEcCategory: json["tc_ec_category"] == null ? [] : List<dynamic>.from(json["tc_ec_category"]!.map((x) => x)),
        tcEvent: json["tc_event"] == null ? [] : List<dynamic>.from(json["tc_event"]!.map((x) => x)),
        tcRegionsTax: json["tc_regions_tax"] == null ? [] : List<dynamic>.from(json["tc_regions_tax"]!.map((x) => x)),
        yoastHead: json["yoast_head"],
        yoastHeadJson: json["yoast_head_json"] == null ? null : YoastHeadJson.fromJson(json["yoast_head_json"]),
        jetpackSharingEnabled: json["jetpack_sharing_enabled"],
        jetpackFeaturedMediaUrl: json["jetpack_featured_media_url"],
        shortlink: json["shortlink"],
        rapidData: json["rapidData"] == null ? null : RapidData.fromJson(json["rapidData"]),
        premiumContent: json["premiumContent"],
        // premiumCutoffPercent: json["premiumCutoffPercent"],
        featured: json["featured"],
        subtitle: json["subtitle"],
        editorialContentProvider: json["editorialContentProvider"],
        tcCbMapping: json["tc_cb_mapping"] == null ? [] : List<dynamic>.from(json["tc_cb_mapping"]!.map((x) => x)),
        associatedEvent: json["associatedEvent"],
        event: json["event"],
        authors: json["authors"] == null ? [] : List<int>.from(json["authors"]!.map((x) => x)),
        hideFeaturedImage: json["hide_featured_image"],
        canonicalUrl: json["canonical_url"],
        primaryCategory: json["primary_category"] == null ? null : PrimaryCategory.fromJson(json["primary_category"]),
        appleNewsNotices: json["apple_news_notices"] == null ? [] : List<dynamic>.from(json["apple_news_notices"]!.map((x) => x)),
        links: json["_links"] == null ? null : Links.fromJson(json["_links"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "date": date?.toIso8601String(),
        "date_gmt": dateGmt?.toIso8601String(),
        "guid": guid?.toJson(),
        "modified": modified?.toIso8601String(),
        "modified_gmt": modifiedGmt?.toIso8601String(),
        "slug": slug,
        "status": status,
        "type": type,
        "link": link,
        "title": title?.toJson(),
        "content": content?.toJson(),
        "excerpt": excerpt?.toJson(),
        "author": author,
        "featured_media": featuredMedia,
        "comment_status": commentStatus,
        "ping_status": pingStatus,
        "sticky": sticky,
        "template": template,
        "format": format,
        "meta": meta?.toJson(),
        "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x)),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "crunchbase_tag": crunchbaseTag == null ? [] : List<dynamic>.from(crunchbaseTag!.map((x) => x)),
        "tc_stories_tax": tcStoriesTax == null ? [] : List<dynamic>.from(tcStoriesTax!.map((x) => x)),
        "tc_ec_category": tcEcCategory == null ? [] : List<dynamic>.from(tcEcCategory!.map((x) => x)),
        "tc_event": tcEvent == null ? [] : List<dynamic>.from(tcEvent!.map((x) => x)),
        "tc_regions_tax": tcRegionsTax == null ? [] : List<dynamic>.from(tcRegionsTax!.map((x) => x)),
        "yoast_head": yoastHead,
        "yoast_head_json": yoastHeadJson?.toJson(),
        "jetpack_sharing_enabled": jetpackSharingEnabled,
        "jetpack_featured_media_url": jetpackFeaturedMediaUrl,
        "shortlink": shortlink,
        "rapidData": rapidData?.toJson(),
        "premiumContent": premiumContent,
        // "premiumCutoffPercent": premiumCutoffPercent,
        "featured": featured,
        "subtitle": subtitle,
        "editorialContentProvider": editorialContentProvider,
        "tc_cb_mapping": tcCbMapping == null ? [] : List<dynamic>.from(tcCbMapping!.map((x) => x)),
        "associatedEvent": associatedEvent,
        "event": event,
        "authors": authors == null ? [] : List<dynamic>.from(authors!.map((x) => x)),
        "hide_featured_image": hideFeaturedImage,
        "canonical_url": canonicalUrl,
        "primary_category": primaryCategory?.toJson(),
        "apple_news_notices": appleNewsNotices == null ? [] : List<dynamic>.from(appleNewsNotices!.map((x) => x)),
        "_links": links?.toJson(),
    };
}

class Content {
    String? rendered;
    bool? protected;

    Content({
        this.rendered,
        this.protected,
    });

    factory Content.fromJson(Map<String, dynamic> json) => Content(
        rendered: json["rendered"],
        protected: json["protected"],
    );

    Map<String, dynamic> toJson() => {
        "rendered": rendered,
        "protected": protected,
    };
}

class Guid {
    String? rendered;

    Guid({
        this.rendered,
    });

    factory Guid.fromJson(Map<String, dynamic> json) => Guid(
        rendered: json["rendered"],
    );

    Map<String, dynamic> toJson() => {
        "rendered": rendered,
    };
}

class Links {
    List<About>? self;
    List<About>? collection;
    List<About>? about;
    List<AuthorElement>? replies;
    List<VersionHistory>? versionHistory;
    List<PredecessorVersion>? predecessorVersion;
    List<AuthorElement>? authors;
    List<About>? httpsTechcrunchComEdit;
    List<AuthorElement>? author;
    List<AuthorElement>? wpFeaturedmedia;
    List<About>? wpAttachment;
    List<WpTerm>? wpTerm;
    List<Cury>? curies;

    Links({
        this.self,
        this.collection,
        this.about,
        this.replies,
        this.versionHistory,
        this.predecessorVersion,
        this.authors,
        this.httpsTechcrunchComEdit,
        this.author,
        this.wpFeaturedmedia,
        this.wpAttachment,
        this.wpTerm,
        this.curies,
    });

    factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: json["self"] == null ? [] : List<About>.from(json["self"]!.map((x) => About.fromJson(x))),
        collection: json["collection"] == null ? [] : List<About>.from(json["collection"]!.map((x) => About.fromJson(x))),
        about: json["about"] == null ? [] : List<About>.from(json["about"]!.map((x) => About.fromJson(x))),
        replies: json["replies"] == null ? [] : List<AuthorElement>.from(json["replies"]!.map((x) => AuthorElement.fromJson(x))),
        versionHistory: json["version-history"] == null ? [] : List<VersionHistory>.from(json["version-history"]!.map((x) => VersionHistory.fromJson(x))),
        predecessorVersion: json["predecessor-version"] == null ? [] : List<PredecessorVersion>.from(json["predecessor-version"]!.map((x) => PredecessorVersion.fromJson(x))),
        authors: json["authors"] == null ? [] : List<AuthorElement>.from(json["authors"]!.map((x) => AuthorElement.fromJson(x))),
        httpsTechcrunchComEdit: json["https://techcrunch.com/edit"] == null ? [] : List<About>.from(json["https://techcrunch.com/edit"]!.map((x) => About.fromJson(x))),
        author: json["author"] == null ? [] : List<AuthorElement>.from(json["author"]!.map((x) => AuthorElement.fromJson(x))),
        wpFeaturedmedia: json["wp:featuredmedia"] == null ? [] : List<AuthorElement>.from(json["wp:featuredmedia"]!.map((x) => AuthorElement.fromJson(x))),
        wpAttachment: json["wp:attachment"] == null ? [] : List<About>.from(json["wp:attachment"]!.map((x) => About.fromJson(x))),
        wpTerm: json["wp:term"] == null ? [] : List<WpTerm>.from(json["wp:term"]!.map((x) => WpTerm.fromJson(x))),
        curies: json["curies"] == null ? [] : List<Cury>.from(json["curies"]!.map((x) => Cury.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "self": self == null ? [] : List<dynamic>.from(self!.map((x) => x.toJson())),
        "collection": collection == null ? [] : List<dynamic>.from(collection!.map((x) => x.toJson())),
        "about": about == null ? [] : List<dynamic>.from(about!.map((x) => x.toJson())),
        "replies": replies == null ? [] : List<dynamic>.from(replies!.map((x) => x.toJson())),
        "version-history": versionHistory == null ? [] : List<dynamic>.from(versionHistory!.map((x) => x.toJson())),
        "predecessor-version": predecessorVersion == null ? [] : List<dynamic>.from(predecessorVersion!.map((x) => x.toJson())),
        "authors": authors == null ? [] : List<dynamic>.from(authors!.map((x) => x.toJson())),
        "https://techcrunch.com/edit": httpsTechcrunchComEdit == null ? [] : List<dynamic>.from(httpsTechcrunchComEdit!.map((x) => x.toJson())),
        "author": author == null ? [] : List<dynamic>.from(author!.map((x) => x.toJson())),
        "wp:featuredmedia": wpFeaturedmedia == null ? [] : List<dynamic>.from(wpFeaturedmedia!.map((x) => x.toJson())),
        "wp:attachment": wpAttachment == null ? [] : List<dynamic>.from(wpAttachment!.map((x) => x.toJson())),
        "wp:term": wpTerm == null ? [] : List<dynamic>.from(wpTerm!.map((x) => x.toJson())),
        "curies": curies == null ? [] : List<dynamic>.from(curies!.map((x) => x.toJson())),
    };
}

class About {
    String? href;

    About({
        this.href,
    });

    factory About.fromJson(Map<String, dynamic> json) => About(
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
    };
}

class AuthorElement {
    bool? embeddable;
    String? href;

    AuthorElement({
        this.embeddable,
        this.href,
    });

    factory AuthorElement.fromJson(Map<String, dynamic> json) => AuthorElement(
        embeddable: json["embeddable"],
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "embeddable": embeddable,
        "href": href,
    };
}

class Cury {
    String? name;
    String? href;
    bool? templated;

    Cury({
        this.name,
        this.href,
        this.templated,
    });

    factory Cury.fromJson(Map<String, dynamic> json) => Cury(
        name: json["name"],
        href: json["href"],
        templated: json["templated"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "href": href,
        "templated": templated,
    };
}

class PredecessorVersion {
    int? id;
    String? href;

    PredecessorVersion({
        this.id,
        this.href,
    });

    factory PredecessorVersion.fromJson(Map<String, dynamic> json) => PredecessorVersion(
        id: json["id"],
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "href": href,
    };
}

class VersionHistory {
    int? count;
    String? href;

    VersionHistory({
        this.count,
        this.href,
    });

    factory VersionHistory.fromJson(Map<String, dynamic> json) => VersionHistory(
        count: json["count"],
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "href": href,
    };
}

class WpTerm {
    String? taxonomy;
    bool? embeddable;
    String? href;

    WpTerm({
        this.taxonomy,
        this.embeddable,
        this.href,
    });

    factory WpTerm.fromJson(Map<String, dynamic> json) => WpTerm(
        taxonomy: json["taxonomy"],
        embeddable: json["embeddable"],
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "taxonomy": taxonomy,
        "embeddable": embeddable,
        "href": href,
    };
}

class Meta {
    String? ampStatus;
    List<dynamic>? relegenceEntities;
    List<dynamic>? relegenceSubjects;
    String? carmotUuid;
    String? footnotes;
    DateTime? appleNewsApiCreatedAt;
    String? appleNewsApiId;
    DateTime? appleNewsApiModifiedAt;
    String? appleNewsApiRevision;
    String? appleNewsApiShareUrl;
    int? appleNewsCoverimage;
    String? appleNewsCoverimageCaption;
    bool? appleNewsIsHidden;
    bool? appleNewsIsPaid;
    bool? appleNewsIsPreview;
    bool? appleNewsIsSponsored;
    String? appleNewsMaturityRating;
    String? appleNewsMetadata;
    String? appleNewsPullquote;
    String? appleNewsPullquotePosition;
    String? appleNewsSlug;
    String? appleNewsSections;
    bool? appleNewsSuppressVideoUrl;
    bool? appleNewsUseImageComponent;

    Meta({
        this.ampStatus,
        this.relegenceEntities,
        this.relegenceSubjects,
        this.carmotUuid,
        this.footnotes,
        this.appleNewsApiCreatedAt,
        this.appleNewsApiId,
        this.appleNewsApiModifiedAt,
        this.appleNewsApiRevision,
        this.appleNewsApiShareUrl,
        this.appleNewsCoverimage,
        this.appleNewsCoverimageCaption,
        this.appleNewsIsHidden,
        this.appleNewsIsPaid,
        this.appleNewsIsPreview,
        this.appleNewsIsSponsored,
        this.appleNewsMaturityRating,
        this.appleNewsMetadata,
        this.appleNewsPullquote,
        this.appleNewsPullquotePosition,
        this.appleNewsSlug,
        this.appleNewsSections,
        this.appleNewsSuppressVideoUrl,
        this.appleNewsUseImageComponent,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        ampStatus: json["amp_status"],
        relegenceEntities: json["relegenceEntities"] == null ? [] : List<dynamic>.from(json["relegenceEntities"]!.map((x) => x)),
        relegenceSubjects: json["relegenceSubjects"] == null ? [] : List<dynamic>.from(json["relegenceSubjects"]!.map((x) => x)),
        carmotUuid: json["carmot_uuid"],
        footnotes: json["footnotes"],
        // appleNewsApiCreatedAt: json["apple_news_api_created_at"] == null ? null : DateTime.parse(json["apple_news_api_created_at"]),
        appleNewsApiId: json["apple_news_api_id"],
        // appleNewsApiModifiedAt: json["apple_news_api_modified_at"] == null ? null : DateTime.parse(json["apple_news_api_modified_at"]),
        appleNewsApiRevision: json["apple_news_api_revision"],
        appleNewsApiShareUrl: json["apple_news_api_share_url"],
        appleNewsCoverimage: json["apple_news_coverimage"],
        appleNewsCoverimageCaption: json["apple_news_coverimage_caption"],
        appleNewsIsHidden: json["apple_news_is_hidden"],
        appleNewsIsPaid: json["apple_news_is_paid"],
        appleNewsIsPreview: json["apple_news_is_preview"],
        appleNewsIsSponsored: json["apple_news_is_sponsored"],
        appleNewsMaturityRating: json["apple_news_maturity_rating"],
        appleNewsMetadata: json["apple_news_metadata"],
        appleNewsPullquote: json["apple_news_pullquote"],
        appleNewsPullquotePosition: json["apple_news_pullquote_position"],
        appleNewsSlug: json["apple_news_slug"],
        appleNewsSections: json["apple_news_sections"],
        appleNewsSuppressVideoUrl: json["apple_news_suppress_video_url"],
        appleNewsUseImageComponent: json["apple_news_use_image_component"],
    );

    Map<String, dynamic> toJson() => {
        "amp_status": ampStatus,
        "relegenceEntities": relegenceEntities == null ? [] : List<dynamic>.from(relegenceEntities!.map((x) => x)),
        "relegenceSubjects": relegenceSubjects == null ? [] : List<dynamic>.from(relegenceSubjects!.map((x) => x)),
        "carmot_uuid": carmotUuid,
        "footnotes": footnotes,
        "apple_news_api_created_at": appleNewsApiCreatedAt?.toIso8601String(),
        "apple_news_api_id": appleNewsApiId,
        "apple_news_api_modified_at": appleNewsApiModifiedAt?.toIso8601String(),
        "apple_news_api_revision": appleNewsApiRevision,
        "apple_news_api_share_url": appleNewsApiShareUrl,
        "apple_news_coverimage": appleNewsCoverimage,
        "apple_news_coverimage_caption": appleNewsCoverimageCaption,
        "apple_news_is_hidden": appleNewsIsHidden,
        "apple_news_is_paid": appleNewsIsPaid,
        "apple_news_is_preview": appleNewsIsPreview,
        "apple_news_is_sponsored": appleNewsIsSponsored,
        "apple_news_maturity_rating": appleNewsMaturityRating,
        "apple_news_metadata": appleNewsMetadata,
        "apple_news_pullquote": appleNewsPullquote,
        "apple_news_pullquote_position": appleNewsPullquotePosition,
        "apple_news_slug": appleNewsSlug,
        "apple_news_sections": appleNewsSections,
        "apple_news_suppress_video_url": appleNewsSuppressVideoUrl,
        "apple_news_use_image_component": appleNewsUseImageComponent,
    };
}

class PrimaryCategory {
    int? termId;
    String? name;
    String? slug;
    int? termGroup;
    int? termTaxonomyId;
    String? taxonomy;
    String? description;
    int? parent;
    int? count;
    String? filter;

    PrimaryCategory({
        this.termId,
        this.name,
        this.slug,
        this.termGroup,
        this.termTaxonomyId,
        this.taxonomy,
        this.description,
        this.parent,
        this.count,
        this.filter,
    });

    factory PrimaryCategory.fromJson(Map<String, dynamic> json) => PrimaryCategory(
        termId: json["term_id"],
        name: json["name"],
        slug: json["slug"],
        termGroup: json["term_group"],
        termTaxonomyId: json["term_taxonomy_id"],
        taxonomy: json["taxonomy"],
        description: json["description"],
        parent: json["parent"],
        count: json["count"],
        filter: json["filter"],
    );

    Map<String, dynamic> toJson() => {
        "term_id": termId,
        "name": name,
        "slug": slug,
        "term_group": termGroup,
        "term_taxonomy_id": termTaxonomyId,
        "taxonomy": taxonomy,
        "description": description,
        "parent": parent,
        "count": count,
        "filter": filter,
    };
}

class RapidData {
    String? pt;
    String? pct;

    RapidData({
        this.pt,
        this.pct,
    });

    factory RapidData.fromJson(Map<String, dynamic> json) => RapidData(
        pt: json["pt"],
        pct: json["pct"],
    );

    Map<String, dynamic> toJson() => {
        "pt": pt,
        "pct": pct,
    };
}

class YoastHeadJson {
    String? title;
    String? description;
    Robots? robots;
    String? canonical;
    String? ogLocale;
    String? ogType;
    String? ogTitle;
    String? ogDescription;
    String? ogUrl;
    String? ogSiteName;
    String? articlePublisher;
    DateTime? articlePublishedTime;
    List<OgImage>? ogImage;
    String? author;
    String? twitterCard;
    String? twitterCreator;
    String? twitterSite;
    TwitterMisc? twitterMisc;
    Schema? schema;

    YoastHeadJson({
        this.title,
        this.description,
        this.robots,
        this.canonical,
        this.ogLocale,
        this.ogType,
        this.ogTitle,
        this.ogDescription,
        this.ogUrl,
        this.ogSiteName,
        this.articlePublisher,
        this.articlePublishedTime,
        this.ogImage,
        this.author,
        this.twitterCard,
        this.twitterCreator,
        this.twitterSite,
        this.twitterMisc,
        this.schema,
    });

    factory YoastHeadJson.fromJson(Map<String, dynamic> json) => YoastHeadJson(
        title: json["title"],
        description: json["description"],
        robots: json["robots"] == null ? null : Robots.fromJson(json["robots"]),
        canonical: json["canonical"],
        ogLocale: json["og_locale"],
        ogType: json["og_type"],
        ogTitle: json["og_title"],
        ogDescription: json["og_description"],
        ogUrl: json["og_url"],
        ogSiteName: json["og_site_name"],
        articlePublisher: json["article_publisher"],
        // articlePublishedTime: json["article_published_time"] == null ? null : DateTime.parse(json["article_published_time"]),
        ogImage: json["og_image"] == null ? [] : List<OgImage>.from(json["og_image"]!.map((x) => OgImage.fromJson(x))),
        author: json["author"],
        twitterCard: json["twitter_card"],
        twitterCreator: json["twitter_creator"],
        twitterSite: json["twitter_site"],
        twitterMisc: json["twitter_misc"] == null ? null : TwitterMisc.fromJson(json["twitter_misc"]),
        schema: json["schema"] == null ? null : Schema.fromJson(json["schema"]),
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "robots": robots?.toJson(),
        "canonical": canonical,
        "og_locale": ogLocale,
        "og_type": ogType,
        "og_title": ogTitle,
        "og_description": ogDescription,
        "og_url": ogUrl,
        "og_site_name": ogSiteName,
        "article_publisher": articlePublisher,
        "article_published_time": articlePublishedTime?.toIso8601String(),
        "og_image": ogImage == null ? [] : List<dynamic>.from(ogImage!.map((x) => x.toJson())),
        "author": author,
        "twitter_card": twitterCard,
        "twitter_creator": twitterCreator,
        "twitter_site": twitterSite,
        "twitter_misc": twitterMisc?.toJson(),
        "schema": schema?.toJson(),
    };
}

class OgImage {
    int? width;
    int? height;
    String? url;
    String? type;

    OgImage({
        this.width,
        this.height,
        this.url,
        this.type,
    });

    factory OgImage.fromJson(Map<String, dynamic> json) => OgImage(
        width: json["width"],
        height: json["height"],
        url: json["url"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
        "url": url,
        "type": type,
    };
}

class Robots {
    String? index;
    String? follow;
    String? maxSnippet;
    String? maxImagePreview;
    String? maxVideoPreview;

    Robots({
        this.index,
        this.follow,
        this.maxSnippet,
        this.maxImagePreview,
        this.maxVideoPreview,
    });

    factory Robots.fromJson(Map<String, dynamic> json) => Robots(
        index: json["index"],
        follow: json["follow"],
        maxSnippet: json["max-snippet"],
        maxImagePreview: json["max-image-preview"],
        maxVideoPreview: json["max-video-preview"],
    );

    Map<String, dynamic> toJson() => {
        "index": index,
        "follow": follow,
        "max-snippet": maxSnippet,
        "max-image-preview": maxImagePreview,
        "max-video-preview": maxVideoPreview,
    };
}

class Schema {
    String? context;
    List<Graph>? graph;

    Schema({
        this.context,
        this.graph,
    });

    factory Schema.fromJson(Map<String, dynamic> json) => Schema(
        context: json["@context"],
        graph: json["@graph"] == null ? [] : List<Graph>.from(json["@graph"]!.map((x) => Graph.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "@context": context,
        "@graph": graph == null ? [] : List<dynamic>.from(graph!.map((x) => x.toJson())),
    };
}

class Graph {
    String? type;
    String? id;
    CopyrightHolder? isPartOf;
    GraphAuthor? author;
    String? headline;
    DateTime? datePublished;
    DateTime? dateModified;
    CopyrightHolder? mainEntityOfPage;
    int? wordCount;
    int? commentCount;
    CopyrightHolder? publisher;
    List<String>? keywords;
    List<String>? articleSection;
    String? inLanguage;
    List<PotentialAction>? potentialAction;
    String? copyrightYear;
    CopyrightHolder? copyrightHolder;
    String? url;
    String? name;
    String? description;
    String? alternateName;
    Logo? logo;
    CopyrightHolder? image;
    List<String>? sameAs;

    Graph({
        this.type,
        this.id,
        this.isPartOf,
        this.author,
        this.headline,
        this.datePublished,
        this.dateModified,
        this.mainEntityOfPage,
        this.wordCount,
        this.commentCount,
        this.publisher,
        this.keywords,
        this.articleSection,
        this.inLanguage,
        this.potentialAction,
        this.copyrightYear,
        this.copyrightHolder,
        this.url,
        this.name,
        this.description,
        this.alternateName,
        this.logo,
        this.image,
        this.sameAs,
    });

    factory Graph.fromJson(Map<String, dynamic> json) => Graph(
        type: json["@type"],
        id: json["@id"],
        isPartOf: json["isPartOf"] == null ? null : CopyrightHolder.fromJson(json["isPartOf"]),
        author: json["author"] == null ? null : GraphAuthor.fromJson(json["author"]),
        headline: json["headline"],
        // datePublished: json["datePublished"] == null ? null : DateTime.parse(json["datePublished"]),
        // dateModified: json["dateModified"] == null ? null : DateTime.parse(json["dateModified"]),
        mainEntityOfPage: json["mainEntityOfPage"] == null ? null : CopyrightHolder.fromJson(json["mainEntityOfPage"]),
        wordCount: json["wordCount"],
        commentCount: json["commentCount"],
        publisher: json["publisher"] == null ? null : CopyrightHolder.fromJson(json["publisher"]),
        keywords: json["keywords"] == null ? [] : List<String>.from(json["keywords"]!.map((x) => x)),
        articleSection: json["articleSection"] == null ? [] : List<String>.from(json["articleSection"]!.map((x) => x)),
        inLanguage: json["inLanguage"],
        potentialAction: json["potentialAction"] == null ? [] : List<PotentialAction>.from(json["potentialAction"]!.map((x) => PotentialAction.fromJson(x))),
        copyrightYear: json["copyrightYear"],
        copyrightHolder: json["copyrightHolder"] == null ? null : CopyrightHolder.fromJson(json["copyrightHolder"]),
        url: json["url"],
        name: json["name"],
        description: json["description"],
        alternateName: json["alternateName"],
        logo: json["logo"] == null ? null : Logo.fromJson(json["logo"]),
        image: json["image"] == null ? null : CopyrightHolder.fromJson(json["image"]),
        sameAs: json["sameAs"] == null ? [] : List<String>.from(json["sameAs"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "@type": type,
        "@id": id,
        "isPartOf": isPartOf?.toJson(),
        "author": author?.toJson(),
        "headline": headline,
        "datePublished": datePublished?.toIso8601String(),
        "dateModified": dateModified?.toIso8601String(),
        "mainEntityOfPage": mainEntityOfPage?.toJson(),
        "wordCount": wordCount,
        "commentCount": commentCount,
        "publisher": publisher?.toJson(),
        "keywords": keywords == null ? [] : List<dynamic>.from(keywords!.map((x) => x)),
        "articleSection": articleSection == null ? [] : List<dynamic>.from(articleSection!.map((x) => x)),
        "inLanguage": inLanguage,
        "potentialAction": potentialAction == null ? [] : List<dynamic>.from(potentialAction!.map((x) => x.toJson())),
        "copyrightYear": copyrightYear,
        "copyrightHolder": copyrightHolder?.toJson(),
        "url": url,
        "name": name,
        "description": description,
        "alternateName": alternateName,
        "logo": logo?.toJson(),
        "image": image?.toJson(),
        "sameAs": sameAs == null ? [] : List<dynamic>.from(sameAs!.map((x) => x)),
    };
}

class GraphAuthor {
    String? name;
    String? id;

    GraphAuthor({
        this.name,
        this.id,
    });

    factory GraphAuthor.fromJson(Map<String, dynamic> json) => GraphAuthor(
        name: json["name"],
        id: json["@id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "@id": id,
    };
}

class CopyrightHolder {
    String? id;

    CopyrightHolder({
        this.id,
    });

    factory CopyrightHolder.fromJson(Map<String, dynamic> json) => CopyrightHolder(
        id: json["@id"],
    );

    Map<String, dynamic> toJson() => {
        "@id": id,
    };
}

class Logo {
    String? type;
    String? inLanguage;
    String? id;
    String? url;
    String? contentUrl;
    int? width;
    int? height;
    String? caption;

    Logo({
        this.type,
        this.inLanguage,
        this.id,
        this.url,
        this.contentUrl,
        this.width,
        this.height,
        this.caption,
    });

    factory Logo.fromJson(Map<String, dynamic> json) => Logo(
        type: json["@type"],
        inLanguage: json["inLanguage"],
        id: json["@id"],
        url: json["url"],
        contentUrl: json["contentUrl"],
        width: json["width"],
        height: json["height"],
        caption: json["caption"],
    );

    Map<String, dynamic> toJson() => {
        "@type": type,
        "inLanguage": inLanguage,
        "@id": id,
        "url": url,
        "contentUrl": contentUrl,
        "width": width,
        "height": height,
        "caption": caption,
    };
}

class PotentialAction {
    String? type;
    String? name;
    dynamic target;
    String? queryInput;

    PotentialAction({
        this.type,
        this.name,
        this.target,
        this.queryInput,
    });

    factory PotentialAction.fromJson(Map<String, dynamic> json) => PotentialAction(
        type: json["@type"],
        name: json["name"],
        target: json["target"],
        queryInput: json["query-input"],
    );

    Map<String, dynamic> toJson() => {
        "@type": type,
        "name": name,
        "target": target,
        "query-input": queryInput,
    };
}

class TargetClass {
    String? type;
    String? urlTemplate;

    TargetClass({
        this.type,
        this.urlTemplate,
    });

    factory TargetClass.fromJson(Map<String, dynamic> json) => TargetClass(
        type: json["@type"],
        urlTemplate: json["urlTemplate"],
    );

    Map<String, dynamic> toJson() => {
        "@type": type,
        "urlTemplate": urlTemplate,
    };
}

class TwitterMisc {
    String? writtenBy;
    String? estReadingTime;

    TwitterMisc({
        this.writtenBy,
        this.estReadingTime,
    });

    factory TwitterMisc.fromJson(Map<String, dynamic> json) => TwitterMisc(
        writtenBy: json["Written by"],
        estReadingTime: json["Est. reading time"],
    );

    Map<String, dynamic> toJson() => {
        "Written by": writtenBy,
        "Est. reading time": estReadingTime,
    };
}
