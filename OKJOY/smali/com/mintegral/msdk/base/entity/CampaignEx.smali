.class public Lcom/mintegral/msdk/base/entity/CampaignEx;
.super Lcom/mintegral/msdk/out/Campaign;
.source "CampaignEx.java"

# interfaces
.implements Lcom/mintegral/msdk/system/NoProGuard;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/base/entity/CampaignEx$a;,
        Lcom/mintegral/msdk/base/entity/CampaignEx$b;,
        Lcom/mintegral/msdk/base/entity/CampaignEx$c;
    }
.end annotation


# static fields
.field public static final CAMPAIN_NV_T2_VALUE_3:I = 0x3

.field public static final CAMPAIN_NV_T2_VALUE_4:I = 0x4

.field public static final CLICKMODE_ON:Ljava/lang/String; = "5"

.field public static final CLICK_TIMEOUT_INTERVAL_DEFAULT_VALUE:I = 0x2

.field public static final C_UA_DEFAULT_VALUE:I = 0x1

.field public static final ENDCARD_URL:Ljava/lang/String; = "endcard_url"

.field public static final FLAG_DEFAULT_SPARE_OFFER:I = -0x1

.field public static final FLAG_IS_SPARE_OFFER:I = 0x1

.field public static final FLAG_NOT_SPARE_OFFER:I = 0x0

.field public static final IMP_UA_DEFAULT_VALUE:I = 0x1

.field public static final JSON_AD_IMP_KEY:Ljava/lang/String; = "sec"

.field public static final JSON_AD_IMP_VALUE:Ljava/lang/String; = "url"

.field public static final JSON_KEY_ADVIMP:Ljava/lang/String; = "adv_imp"

.field public static final JSON_KEY_ADV_ID:Ljava/lang/String; = "adv_id"

.field public static final JSON_KEY_AD_AKS:Ljava/lang/String; = "aks"

.field public static final JSON_KEY_AD_AL:Ljava/lang/String; = "al"

.field public static final JSON_KEY_AD_K:Ljava/lang/String; = "k"

.field public static final JSON_KEY_AD_MP:Ljava/lang/String; = "mp"

.field public static final JSON_KEY_AD_Q:Ljava/lang/String; = "q"

.field public static final JSON_KEY_AD_R:Ljava/lang/String; = "r"

.field public static final JSON_KEY_AD_SOURCE_ID:Ljava/lang/String; = "ad_source_id"

.field public static final JSON_KEY_AD_TRACKING_APK_END:Ljava/lang/String; = "apk_download_end"

.field public static final JSON_KEY_AD_TRACKING_APK_INSTALL:Ljava/lang/String; = "apk_install"

.field public static final JSON_KEY_AD_TRACKING_APK_START:Ljava/lang/String; = "apk_download_start"

.field public static final JSON_KEY_AD_TRACKING_DROPOUT_TRACK:Ljava/lang/String; = "dropout_track"

.field public static final JSON_KEY_AD_TRACKING_IMPRESSION_T2:Ljava/lang/String; = "impression_t2"

.field public static final JSON_KEY_AD_TRACKING_PLYCMPT_TRACK:Ljava/lang/String; = "plycmpt_track"

.field public static final JSON_KEY_AD_URL_LIST:Ljava/lang/String; = "ad_url_list"

.field public static final JSON_KEY_APP_SIZE:Ljava/lang/String; = "app_size"

.field public static final JSON_KEY_BANNER_HTML:Ljava/lang/String; = "banner_html"

.field public static final JSON_KEY_BANNER_URL:Ljava/lang/String; = "banner_url"

.field public static final JSON_KEY_BTY:Ljava/lang/String; = "ctype"

.field public static final JSON_KEY_CAMPAIGN_UNITID:Ljava/lang/String; = "unitId"

.field public static final JSON_KEY_CLICK_INTERVAL:Ljava/lang/String; = "c_ct"

.field public static final JSON_KEY_CLICK_MODE:Ljava/lang/String; = "click_mode"

.field public static final JSON_KEY_CLICK_TIMEOUT_INTERVAL:Ljava/lang/String; = "c_toi"

.field public static final JSON_KEY_CLICK_URL:Ljava/lang/String; = "click_url"

.field public static final JSON_KEY_CREATIVE_ID:Ljava/lang/String; = "creative_id"

.field public static final JSON_KEY_CTA_TEXT:Ljava/lang/String; = "ctatext"

.field public static final JSON_KEY_C_UA:Ljava/lang/String; = "c_ua"

.field public static final JSON_KEY_DEEP_LINK_URL:Ljava/lang/String; = "deep_link"

.field public static final JSON_KEY_DESC:Ljava/lang/String; = "desc"

.field public static final JSON_KEY_ENDCARD_CLICK:Ljava/lang/String; = "endcard_click_result"

.field public static final JSON_KEY_FCA:Ljava/lang/String; = "fca"

.field public static final JSON_KEY_FCB:Ljava/lang/String; = "fcb"

.field public static final JSON_KEY_GIF_URL:Ljava/lang/String; = "gif_url"

.field public static final JSON_KEY_GUIDELINES:Ljava/lang/String; = "guidelines"

.field public static final JSON_KEY_HASMTGTPLMARK:Ljava/lang/String; = "hasMtgTplMark"

.field public static final JSON_KEY_ICON_URL:Ljava/lang/String; = "icon_url"

.field public static final JSON_KEY_ID:Ljava/lang/String; = "id"

.field public static final JSON_KEY_IMAGE_SIZE:Ljava/lang/String; = "image_size"

.field public static final JSON_KEY_IMAGE_URL:Ljava/lang/String; = "image_url"

.field public static final JSON_KEY_IMPRESSION_URL:Ljava/lang/String; = "impression_url"

.field public static final JSON_KEY_IMP_UA:Ljava/lang/String; = "imp_ua"

.field public static final JSON_KEY_JM_PD:Ljava/lang/String; = "jm_pd"

.field public static final JSON_KEY_LANDING_TYPE:Ljava/lang/String; = "landing_type"

.field public static final JSON_KEY_LINK_TYPE:Ljava/lang/String; = "link_type"

.field public static final JSON_KEY_MRAID:Ljava/lang/String; = "mraid"

.field public static final JSON_KEY_NOTICE_URL:Ljava/lang/String; = "notice_url"

.field public static final JSON_KEY_NV_T2:Ljava/lang/String; = "nv_t2"

.field public static final JSON_KEY_OFFER_TYPE:Ljava/lang/String; = "offer_type"

.field public static final JSON_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final JSON_KEY_PLCT:Ljava/lang/String; = "plct"

.field public static final JSON_KEY_PLCTB:Ljava/lang/String; = "plctb"

.field public static final JSON_KEY_PRE_CLICK:Ljava/lang/String; = "ttc"

.field public static final JSON_KEY_PRE_CLICK_ERROR_INTERVAL:Ljava/lang/String; = "ttc_pe"

.field public static final JSON_KEY_PRE_CLICK_INTERVAL:Ljava/lang/String; = "ttc_ct"

.field public static final JSON_KEY_PRE_CLICK_OTHER_INTERVAL:Ljava/lang/String; = "ttc_po"

.field public static final JSON_KEY_PUB_IMP:Ljava/lang/String; = "pub_imp"

.field public static final JSON_KEY_RETARGET_OFFER:Ljava/lang/String; = "retarget_offer"

.field public static final JSON_KEY_REWARD_AMOUNT:Ljava/lang/String; = "reward_amount"

.field public static final JSON_KEY_REWARD_NAME:Ljava/lang/String; = "reward_name"

.field public static final JSON_KEY_REWARD_TEMPLATE:Ljava/lang/String; = "rv"

.field public static final JSON_KEY_REWARD_VIDEO_MD5:Ljava/lang/String; = "md5_file"

.field public static final JSON_KEY_STAR:Ljava/lang/String; = "rating"

.field public static final JSON_KEY_ST_IEX:Ljava/lang/String; = "iex"

.field public static final JSON_KEY_ST_TS:Ljava/lang/String; = "ts"

.field public static final JSON_KEY_TEMPLATE:Ljava/lang/String; = "template"

.field public static final JSON_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final JSON_KEY_TTC_CT2:Ljava/lang/String; = "ttc_ct2"

.field public static final JSON_KEY_TTC_TYPE:Ljava/lang/String; = "ttc_type"

.field public static final JSON_KEY_T_IMP:Ljava/lang/String; = "t_imp"

.field public static final JSON_KEY_VIDEO_LENGTHL:Ljava/lang/String; = "video_length"

.field public static final JSON_KEY_VIDEO_RESOLUTION:Ljava/lang/String; = "video_resolution"

.field public static final JSON_KEY_VIDEO_SIZE:Ljava/lang/String; = "video_size"

.field public static final JSON_KEY_VIDEO_URL:Ljava/lang/String; = "video_url"

.field public static final JSON_KEY_WATCH_MILE:Ljava/lang/String; = "watch_mile"

.field public static final JSON_KEY_WITHOUT_INSTALL_CHECK:Ljava/lang/String; = "wtick"

.field public static final JSON_NATIVE_VIDEO_AD_TRACKING:Ljava/lang/String; = "ad_tracking"

.field public static final JSON_NATIVE_VIDEO_CLICK:Ljava/lang/String; = "click"

.field public static final JSON_NATIVE_VIDEO_CLOSE:Ljava/lang/String; = "close"

.field public static final JSON_NATIVE_VIDEO_COMPLETE:Ljava/lang/String; = "complete"

.field public static final JSON_NATIVE_VIDEO_ENDCARD:Ljava/lang/String; = "endcard"

.field public static final JSON_NATIVE_VIDEO_ENDCARD_SHOW:Ljava/lang/String; = "endcard_show"

.field public static final JSON_NATIVE_VIDEO_ERROR:Ljava/lang/String; = "error"

.field public static final JSON_NATIVE_VIDEO_FIRST_QUARTILE:Ljava/lang/String; = "first_quartile"

.field public static final JSON_NATIVE_VIDEO_MIDPOINT:Ljava/lang/String; = "midpoint"

.field public static final JSON_NATIVE_VIDEO_MUTE:Ljava/lang/String; = "mute"

.field public static final JSON_NATIVE_VIDEO_PAUSE:Ljava/lang/String; = "pause"

.field public static final JSON_NATIVE_VIDEO_PLAY_PERCENTAGE:Ljava/lang/String; = "play_percentage"

.field public static final JSON_NATIVE_VIDEO_RESUME:Ljava/lang/String; = "resume"

.field public static final JSON_NATIVE_VIDEO_START:Ljava/lang/String; = "start"

.field public static final JSON_NATIVE_VIDEO_THIRD_QUARTILE:Ljava/lang/String; = "third_quartile"

.field public static final JSON_NATIVE_VIDEO_UNMUTE:Ljava/lang/String; = "unmute"

.field public static final JSON_NATIVE_VIDEO_VIDEO_CLICK:Ljava/lang/String; = "video_click"

.field public static final JSON_NATIVE_VIDOE_IMPRESSION:Ljava/lang/String; = "impression"

.field public static final KEY_ADCHOICE:Ljava/lang/String; = "adchoice"

.field public static final KEY_AD_TYPE:Ljava/lang/String; = "ad_type"

.field public static final KEY_BIND_ID:Ljava/lang/String; = "bind_id"

.field public static final KEY_GH_ID:Ljava/lang/String; = "gh_id"

.field public static final KEY_GH_PATH:Ljava/lang/String; = "gh_path"

.field public static final KEY_IA_CACHE:Ljava/lang/String; = "ia_cache"

.field public static final KEY_IA_EXT1:Ljava/lang/String; = "ia_ext1"

.field public static final KEY_IA_EXT2:Ljava/lang/String; = "ia_ext2"

.field public static final KEY_IA_ICON:Ljava/lang/String; = "ia_icon"

.field public static final KEY_IA_ORI:Ljava/lang/String; = "ia_ori"

.field public static final KEY_IA_RST:Ljava/lang/String; = "ia_rst"

.field public static final KEY_IA_URL:Ljava/lang/String; = "ia_url"

.field public static final KEY_IS_DOWNLOAD:Ljava/lang/String; = "is_download_zip"

.field public static final KEY_OC_TIME:Ljava/lang/String; = "oc_time"

.field public static final KEY_OC_TYPE:Ljava/lang/String; = "oc_type"

.field public static final KEY_OMID:Ljava/lang/String; = "omid"

.field public static final KEY_T_LIST:Ljava/lang/String; = "t_list"

.field public static final LANDING_TYPE_VALUE_OPEN_BROWSER:I = 0x1

.field public static final LANDING_TYPE_VALUE_OPEN_GP_BY_PACKAGE:I = 0x3

.field public static final LANDING_TYPE_VALUE_OPEN_WEBVIEW:I = 0x2

.field public static final LINK_TYPE_1:I = 0x1

.field public static final LINK_TYPE_2:I = 0x2

.field public static final LINK_TYPE_3:I = 0x3

.field public static final LINK_TYPE_4:I = 0x4

.field public static final LINK_TYPE_8:I = 0x8

.field public static final LINK_TYPE_9:I = 0x9

.field public static final LOOPBACK:Ljava/lang/String; = "loopback"

.field public static final LOOPBACK_DOMAIN:Ljava/lang/String; = "domain"

.field public static final LOOPBACK_KEY:Ljava/lang/String; = "key"

.field public static final LOOPBACK_VALUE:Ljava/lang/String; = "value"

.field public static final PLAYABLE_ADS_WITHOUT_VIDEO:Ljava/lang/String; = "playable_ads_without_video"

.field public static final PLAYABLE_ADS_WITHOUT_VIDEO_DEFAULT:I = 0x1

.field public static final PLAYABLE_ADS_WITHOUT_VIDEO_ENDCARD:I = 0x2

.field public static final RETAR_GETING_IS:I = 0x1

.field public static final RETAR_GETING_NOT:I = 0x2

.field public static final ROVER_KEY_IS_POST:Ljava/lang/String; = "isPost"

.field public static final ROVER_KEY_MARK:Ljava/lang/String; = "mark"

.field public static final TAG:Ljava/lang/String;

.field public static final TTC_CT2_DEFAULT_VALUE:I = 0x708

.field public static final TTC_CT_DEFAULT_VALUE:I = 0x93a80

.field public static final VIDEO_END_TYPE:Ljava/lang/String; = "video_end_type"

.field public static final VIDEO_END_TYPE_BROWSER:I = 0x5

.field public static final VIDEO_END_TYPE_DEFAULT:I = 0x2

.field public static final VIDEO_END_TYPE_FINISH:I = 0x1

.field public static final VIDEO_END_TYPE_REULSE:I = 0x2

.field public static final VIDEO_END_TYPE_VAST:I = 0x3

.field public static final VIDEO_END_TYPE_WEBVIEW:I = 0x4

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adType:I

.field private ad_url_list:Ljava/lang/String;

.field private adchoice:Lcom/mintegral/msdk/base/entity/CampaignEx$a;

.field private advId:Ljava/lang/String;

.field private advImp:Ljava/lang/String;

.field private aks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private al:Ljava/lang/String;

.field private bannerHtml:Ljava/lang/String;

.field private bannerUrl:Ljava/lang/String;

.field private bidToken:Ljava/lang/String;

.field private bindId:Ljava/lang/String;

.field private bty:I

.field private cUA:I

.field private cacheLevel:I

.field private campaignUnitId:Ljava/lang/String;

.field private clickInterval:I

.field private clickTimeOutInterval:I

.field private clickURL:Ljava/lang/String;

.field private click_mode:Ljava/lang/String;

.field private creativeId:J

.field private deepLinkUrl:Ljava/lang/String;

.field private endScreenUrl:Ljava/lang/String;

.field private endcard_click_result:I

.field private endcard_url:Ljava/lang/String;

.field private fca:I

.field private fcb:I

.field private ghId:Ljava/lang/String;

.field private ghPath:Ljava/lang/String;

.field private gifUrl:Ljava/lang/String;

.field private guidelines:Ljava/lang/String;

.field private hasMtgTplMark:Z

.field private hasReportAdTrackPause:Z

.field private htmlUrl:Ljava/lang/String;

.field private ia_ext1:Ljava/lang/String;

.field private ia_ext2:Ljava/lang/String;

.field private iex:I

.field private imageSize:Ljava/lang/String;

.field private impUA:I

.field private impressionURL:Ljava/lang/String;

.field private interactiveCache:Ljava/lang/String;

.field private isAddSuccesful:I

.field private isBidCampaign:Z

.field private isCallbacked:Z

.field private isClick:I

.field private isDeleted:I

.field private isDownLoadZip:I

.field private isMraid:Z

.field private isReport:Z

.field private isReportClick:Z

.field private jmPd:I

.field private jumpResult:Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

.field private k:Ljava/lang/String;

.field private keyIaIcon:Ljava/lang/String;

.field private keyIaOri:I

.field private keyIaRst:I

.field private keyIaUrl:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private landingType:Ljava/lang/String;

.field private linkType:I

.field private loopbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loopbackString:Ljava/lang/String;

.field private mediaViewHolder:Lcom/mintegral/msdk/base/entity/CampaignEx$b;

.field private mp:Ljava/lang/String;

.field private mraid:Ljava/lang/String;

.field private nativeVideoTracking:Lcom/mintegral/msdk/base/entity/j;

.field private nativeVideoTrackingString:Ljava/lang/String;

.field private noticeUrl:Ljava/lang/String;

.field private nvT2:I

.field private oc_time:I

.field private oc_type:I

.field private offerType:I

.field private omid:Ljava/lang/String;

.field private onlyImpressionURL:Ljava/lang/String;

.field private pkgSource:Ljava/lang/String;

.field private playable_ads_without_video:I

.field private plct:J

.field private plctb:J

.field private preClick:Z

.field private preClickInterval:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private requestIdNotice:Ljava/lang/String;

.field private retarget_offer:I

.field private rewardAmount:I

.field private rewardPlayStatus:I

.field private rewardTemplateMode:Lcom/mintegral/msdk/base/entity/CampaignEx$c;

.field private reward_name:Ljava/lang/String;

.field private roverIsPost:I

.field private roverMark:Ljava/lang/String;

.field private spareOfferFlag:I

.field private t_imp:I

.field private t_list:Ljava/lang/String;

.field private tab:I

.field private template:I

.field private ts:J

.field private ttc_ct2:I

.field private ttc_type:I

.field private videoLength:I

.field public videoMD5Value:Ljava/lang/String;

.field private videoResolution:Ljava/lang/String;

.field private videoSize:J

.field private videoUrlEncode:Ljava/lang/String;

.field private video_end_type:I

.field private watchMile:I

.field private wtick:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/entity/CampaignEx;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/mintegral/msdk/out/Campaign;-><init>()V

    .line 56
    iput-wide v4, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->plct:J

    .line 57
    iput-wide v4, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->plctb:J

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->bannerUrl:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->bannerHtml:Ljava/lang/String;

    .line 61
    iput-wide v4, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->creativeId:J

    .line 78
    iput v3, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->spareOfferFlag:I

    .line 249
    iput v1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->oc_type:I

    .line 426
    iput v2, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->impUA:I

    .line 427
    iput v2, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->cUA:I

    .line 477
    const/4 v0, 0x6

    iput v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->nvT2:I

    .line 511
    iput v3, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->tab:I

    .line 515
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->impressionURL:Ljava/lang/String;

    .line 519
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->noticeUrl:Ljava/lang/String;

    .line 523
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->clickURL:Ljava/lang/String;

    .line 529
    iput v1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->wtick:I

    .line 533
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->deepLinkUrl:Ljava/lang/String;

    .line 537
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->onlyImpressionURL:Ljava/lang/String;

    .line 539
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->imageSize:Ljava/lang/String;

    .line 544
    iput-boolean v1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->preClick:Z

    .line 579
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->videoUrlEncode:Ljava/lang/String;

    .line 669
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->bidToken:Ljava/lang/String;

    .line 691
    iput v6, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->video_end_type:I

    .line 702
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->videoMD5Value:Ljava/lang/String;

    .line 794
    iput v6, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->clickTimeOutInterval:I

    .line 837
    iput v2, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->playable_ads_without_video:I

    .line 2422
    iput-boolean v1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->hasReportAdTrackPause:Z

    .line 2673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->omid:Ljava/lang/String;

    return-void
.end method

.method public static TrackingStr2Object(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/j;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1904
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_154

    .line 1905
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1906
    new-instance v0, Lcom/mintegral/msdk/base/entity/j;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/j;-><init>()V

    .line 1908
    const-string v3, "impression"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1909
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->r([Ljava/lang/String;)V

    .line 1912
    const-string v3, "start"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1913
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->g([Ljava/lang/String;)V

    .line 1916
    const-string v3, "first_quartile"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1917
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->h([Ljava/lang/String;)V

    .line 1920
    const-string v3, "midpoint"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1921
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->i([Ljava/lang/String;)V

    .line 1925
    const-string v3, "third_quartile"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1926
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->j([Ljava/lang/String;)V

    .line 1929
    const-string v3, "complete"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1930
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->k([Ljava/lang/String;)V

    .line 1933
    const-string v3, "play_percentage"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1934
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parsePlayCentage(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->a(Ljava/util/List;)V

    .line 1937
    const-string v3, "mute"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1938
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->l([Ljava/lang/String;)V

    .line 1941
    const-string v3, "unmute"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1942
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->m([Ljava/lang/String;)V

    .line 1945
    const-string v3, "click"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1946
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->n([Ljava/lang/String;)V

    .line 1949
    const-string v3, "pause"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1950
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->o([Ljava/lang/String;)V

    .line 1953
    const-string v3, "resume"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1954
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->p([Ljava/lang/String;)V

    .line 1957
    const-string v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1958
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->q([Ljava/lang/String;)V

    .line 1961
    const-string v3, "endcard"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1962
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->s([Ljava/lang/String;)V

    .line 1965
    const-string v3, "close"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1966
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->u([Ljava/lang/String;)V

    .line 1970
    const-string v3, "endcard_show"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1971
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->t([Ljava/lang/String;)V

    .line 1974
    const-string v3, "video_click"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1975
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->v([Ljava/lang/String;)V

    .line 1978
    const-string v3, "impression_t2"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1979
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->f([Ljava/lang/String;)V

    .line 1981
    const-string v3, "apk_download_start"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1982
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->c([Ljava/lang/String;)V

    .line 1984
    const-string v3, "apk_download_end"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1985
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->d([Ljava/lang/String;)V

    .line 1988
    const-string v3, "apk_install"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1989
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->e([Ljava/lang/String;)V

    .line 1991
    const-string v3, "dropout_track"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1992
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->a([Ljava/lang/String;)V

    .line 1994
    const-string v3, "plycmpt_track"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1995
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/j;->b([Ljava/lang/String;)V

    .line 1998
    const-string v3, "pub_imp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1999
    invoke-static {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/j;->w([Ljava/lang/String;)V
    :try_end_149
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_149} :catch_14a

    .line 2007
    :goto_149
    return-object v0

    .line 2004
    :catch_14a
    move-exception v0

    sget-object v0, Lcom/mintegral/msdk/base/entity/CampaignEx;->TAG:Ljava/lang/String;

    const-string v2, "parse error"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 2005
    goto :goto_149

    :cond_154
    move-object v0, v1

    .line 2007
    goto :goto_149
.end method

.method public static campaignToJsonObject(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2101
    const-string v1, "id"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2102
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 2103
    const-string v1, "unitId"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2105
    :cond_21
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2106
    const-string v1, "desc"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2107
    const-string v1, "package_name"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2108
    const-string v1, "icon_url"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2109
    const-string v1, "image_url"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2110
    const-string v1, "app_size"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2111
    const-string v1, "image_size"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2112
    const-string v1, "impression_url"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2113
    const-string v1, "click_url"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2114
    const-string v1, "wtick"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWtick()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2115
    const-string v1, "deep_link"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getDeepLinkURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2116
    const-string v1, "notice_url"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2117
    const-string v1, "ttc"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isPreClick()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2118
    const-string v1, "template"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTemplate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2119
    const-string v1, "ad_source_id"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2120
    const-string v1, "fca"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFca()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2121
    const-string v1, "fcb"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFcb()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2122
    const-string v1, "rating"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRating()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2123
    const-string v1, "click_mode"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2125
    const-string v1, "landing_type"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLandingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2126
    const-string v1, "link_type"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2128
    const-string v1, "c_ct"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickInterval()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2129
    const-string v1, "ttc_ct"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPreClickInterval()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2130
    const-string v1, "ctatext"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2131
    const-string v1, "adv_id"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdvId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2132
    const-string v1, "ttc_type"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTtc_type()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2133
    const-string v1, "endcard_click_result"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getEndcard_click_result()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2135
    const-string v1, "ttc_ct2"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTtc_ct2()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2136
    const-string v1, "retarget_offer"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRetarget_offer()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2140
    const-string v1, "video_url"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2141
    const-string v1, "video_length"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoLength()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2142
    const-string v1, "video_size"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2143
    const-string v1, "video_resolution"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2145
    const-string v1, "watch_mile"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWatchMile()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2146
    const-string v1, "ad_url_list"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAd_url_list()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2147
    const-string v1, "only_impression_url"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2148
    const-string v1, "ctype"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBty()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2149
    const-string v1, "t_imp"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTImp()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2150
    const-string v1, "adv_imp"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdvImp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2152
    const-string v1, "html_url"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2153
    const-string v1, "end_screen_url"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2154
    const-string v1, "guidelines"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGuidelines()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2155
    const-string v1, "offer_type"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOfferType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2156
    const-string v1, "reward_amount"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardAmount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2157
    const-string v1, "reward_name"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2158
    const-string v1, "loopback"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLoopbackString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2161
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTrackingString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e4

    .line 2162
    const-string v1, "ad_tracking"

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTrackingString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2165
    :cond_1e4
    const-string v1, "video_end_type"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideo_end_type()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2166
    const-string v1, "endcard_url"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2167
    const-string v1, "playable_ads_without_video"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2169
    if-eqz p0, :cond_227

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v1

    if-eqz v1, :cond_227

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_227

    .line 2170
    const-string v1, "rv"

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2173
    :cond_227
    const-string v1, "md5_file"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoMD5Value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2174
    const-string v1, "c_toi"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickTimeOutInterval()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2175
    sget-object v1, Lcom/mintegral/msdk/base/entity/CampaignEx;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "camapignJsonObject:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    const-string v1, "c_ua"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getcUA()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2177
    const-string v1, "imp_ua"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpUA()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2178
    const-string v1, "jm_pd"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getJmPd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2181
    const-string v1, "ia_icon"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2182
    const-string v1, "ia_rst"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaRst()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2183
    const-string v1, "ia_url"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2184
    const-string v1, "ia_ori"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaOri()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2185
    const-string v1, "ad_type"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2186
    const-string v1, "ia_ext1"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIa_ext1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2187
    const-string v1, "ia_ext2"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIa_ext2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2188
    const-string v1, "is_download_zip"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIsDownLoadZip()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2189
    const-string v1, "ia_cache"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getInteractiveCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2192
    const-string v1, "gh_id"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGhId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2193
    const-string v1, "gh_path"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGhPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2194
    const-string v1, "bind_id"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBindId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2196
    const-string v1, "oc_type"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOc_type()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2197
    const-string v1, "oc_time"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOc_time()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2198
    const-string v1, "t_list"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getT_list()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2200
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdchoice()Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v1

    .line 2201
    if-eqz v1, :cond_30b

    .line 2202
    const-string v2, "adchoice"

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2206
    :cond_30b
    const-string v1, "plct"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlct()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2207
    const-string v1, "plctb"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlctb()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2209
    const-string v1, "omid"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOmid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2211
    const-string v1, "banner_url"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2212
    const-string v1, "banner_html"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2213
    const-string v1, "creative_id"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCreativeId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2215
    return-object v0
.end method

.method private generateAdImpression(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2034
    const/4 v1, 0x0

    .line 2035
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 2037
    :try_start_7
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_42

    .line 2039
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_38

    .line 2040
    const/4 v1, 0x0

    :goto_18
    :try_start_18
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3f

    .line 2041
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2042
    const-string v4, "sec"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 2043
    const-string v5, "url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2044
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_35} :catch_40

    .line 2040
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 2048
    :catch_38
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_3c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2052
    :cond_3f
    :goto_3f
    return-object v0

    .line 2048
    :catch_40
    move-exception v1

    goto :goto_3c

    :cond_42
    move-object v0, v1

    goto :goto_3f
.end method

.method public static loopbackStrToMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1879
    const/4 v1, 0x0

    .line 1881
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1882
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_33

    .line 1883
    :try_start_c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1885
    const-string v2, "domain"

    const-string v3, "domain"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    const-string v2, "key"

    const-string v3, "key"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    const-string v2, "value"

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_32} :catch_3d

    .line 1893
    :goto_32
    return-object v0

    .line 1891
    :catch_33
    move-exception v0

    move-object v0, v1

    :goto_35
    const-string v1, ""

    const-string v2, "loopbackStrToMap error"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :catch_3d
    move-exception v1

    goto :goto_35

    :cond_3f
    move-object v0, v1

    goto :goto_32
.end method

.method public static parseCampaign(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mintegral/msdk/base/entity/CampaignUnit;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 13

    .prologue
    .line 1670
    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->parseCampaign(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mintegral/msdk/base/entity/CampaignUnit;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    return-object v0
.end method

.method public static parseCampaign(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mintegral/msdk/base/entity/CampaignUnit;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 14

    .prologue
    const/4 v2, 0x0

    .line 1675
    .line 1676
    if-eqz p0, :cond_40b

    .line 1678
    :try_start_3
    new-instance v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_40e

    .line 1679
    :try_start_8
    const-string v0, "aks"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1680
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 1681
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 1683
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1684
    :goto_22
    if-eqz v4, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 1685
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1686
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1687
    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_37} :catch_38

    goto :goto_22

    .line 1869
    :catch_38
    move-exception v0

    move-object v0, v1

    :goto_3a
    sget-object v1, Lcom/mintegral/msdk/base/entity/CampaignEx;->TAG:Ljava/lang/String;

    const-string v2, "parse campaign json exception"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    :goto_41
    return-object v0

    .line 1689
    :cond_42
    :try_start_42
    invoke-virtual {v1, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAks(Ljava/util/HashMap;)V

    .line 1693
    :cond_45
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1694
    invoke-virtual {v1, p6}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBidToken(Ljava/lang/String;)V

    .line 1695
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsBidCampaign(Z)V

    .line 1697
    :cond_52
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 1698
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 1699
    const-string v0, "desc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 1700
    const-string v0, "package_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 1701
    const-string v0, "icon_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIconUrl(Ljava/lang/String;)V

    .line 1702
    const-string v0, "image_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 1703
    const-string v0, "app_size"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setSize(Ljava/lang/String;)V

    .line 1704
    const-string v0, "image_size"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageSize(Ljava/lang/String;)V

    .line 1705
    const-string v0, "impression_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->replaceValueByKey(Lcom/mintegral/msdk/base/entity/CampaignUnit;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 1706
    const-string v0, "click_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->replaceValueByKey(Lcom/mintegral/msdk/base/entity/CampaignUnit;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 1707
    const-string v0, "wtick"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWtick(I)V

    .line 1708
    const-string v0, "deep_link"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->replaceValueByKey(Lcom/mintegral/msdk/base/entity/CampaignUnit;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 1709
    const-string v0, "notice_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->replaceValueByKey(Lcom/mintegral/msdk/base/entity/CampaignUnit;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 1710
    const-string v0, "ttc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClick(Z)V

    .line 1711
    const-string v0, "template"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTemplate(I)V

    .line 1712
    const-string v0, "ad_source_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setType(I)V

    .line 1713
    const-string v0, "fca"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFca(I)V

    .line 1714
    const-string v0, "fcb"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFcb(I)V

    .line 1715
    const-string v0, "endcard_click_result"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndcard_click_result(I)V

    .line 1716
    const-string v0, "rating"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_128

    .line 1717
    const-string v0, "rating"

    const-string v3, "0"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRating(D)V

    .line 1719
    :cond_128
    const-string v0, "click_mode"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClick_mode(Ljava/lang/String;)V

    .line 1721
    const-string v0, "landing_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLandingType(Ljava/lang/String;)V

    .line 1722
    const-string v0, "link_type"

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLinkType(I)V

    .line 1724
    const-string v0, "c_ct"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickInterval(I)V

    .line 1725
    const-string v0, "ttc_ct"

    const v3, 0x93a80

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClickInterval(I)V

    .line 1726
    const-string v0, "ctatext"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 1727
    const-string v0, "ad_url_list"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAd_url_list(Ljava/lang/String;)V

    .line 1729
    const-string v0, "adv_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvId(Ljava/lang/String;)V

    .line 1730
    const-string v0, "ttc_type"

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_type(I)V

    .line 1731
    const-string v0, "ttc_ct2"

    const/16 v3, 0x708

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_ct2(I)V

    .line 1733
    const-string v0, "retarget_offer"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRetarget_offer(I)V

    .line 1736
    const-string v0, "video_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1737
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a4

    .line 1738
    if-eqz p4, :cond_3e4

    .line 1739
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    .line 1746
    :cond_1a4
    :goto_1a4
    const-string v0, "video_length"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoLength(I)V

    .line 1747
    const-string v0, "video_size"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoSize(J)V

    .line 1748
    const-string v0, "video_resolution"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoResolution(Ljava/lang/String;)V

    .line 1749
    const-string v0, "watch_mile"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWatchMile(I)V

    .line 1751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTimestamp(J)V

    .line 1752
    invoke-static {p5, v1, p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->replaceValueByKey(Lcom/mintegral/msdk/base/entity/CampaignUnit;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOnlyImpressionURL(Ljava/lang/String;)V

    .line 1755
    const-string v0, "ctype"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBty(I)V

    .line 1756
    const-string v0, "adv_imp"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvImp(Ljava/lang/String;)V

    .line 1757
    const-string v0, "t_imp"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTImp(I)V

    .line 1760
    invoke-virtual {v1, p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v1, p3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndScreenUrl(Ljava/lang/String;)V

    .line 1762
    const-string v0, "guidelines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 1763
    const-string v0, "offer_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOfferType(I)V

    .line 1764
    const-string v0, "reward_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardName(Ljava/lang/String;)V

    .line 1765
    const-string v0, "reward_amount"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardAmount(I)V

    .line 1768
    const-string v0, "mark"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRoverMark(Ljava/lang/String;)V

    .line 1769
    const-string v0, "isPost"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRoverIsPost(I)V
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_22e} :catch_38

    .line 1774
    :try_start_22e
    const-string v0, "ad_tracking"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_250

    .line 1775
    const-string v0, "ad_tracking"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1776
    invoke-static {p5, v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->replaceValueByKey(Lcom/mintegral/msdk/base/entity/CampaignUnit;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1777
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_250

    .line 1778
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTrackingString(Ljava/lang/String;)V

    .line 1779
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->TrackingStr2Object(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTracking(Lcom/mintegral/msdk/base/entity/j;)V
    :try_end_250
    .catch Ljava/lang/Exception; {:try_start_22e .. :try_end_250} :catch_3ed

    .line 1787
    :cond_250
    :goto_250
    :try_start_250
    const-string v0, "video_end_type"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideo_end_type(I)V

    .line 1788
    const-string v0, "endcard_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setendcard_url(Ljava/lang/String;)V

    .line 1789
    const-string v0, "playable_ads_without_video"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlayable_ads_without_video(I)V
    :try_end_26d
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_26d} :catch_38

    .line 1791
    :try_start_26d
    const-string v0, "loopback"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28b

    .line 1792
    const-string v0, "loopback"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1793
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28b

    .line 1794
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackString(Ljava/lang/String;)V

    .line 1795
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->loopbackStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackMap(Ljava/util/Map;)V
    :try_end_28b
    .catch Ljava/lang/Exception; {:try_start_26d .. :try_end_28b} :catch_3f7

    .line 1803
    :cond_28b
    :goto_28b
    :try_start_28b
    const-string v0, "md5_file"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29c

    .line 1804
    const-string v0, "md5_file"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoMD5Value(Ljava/lang/String;)V

    .line 1807
    :cond_29c
    const-string v0, "nv_t2"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ad

    .line 1808
    const-string v0, "nv_t2"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNvT2(I)V

    .line 1810
    :cond_2ad
    const-string v0, "gif_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2be

    .line 1811
    const-string v0, "gif_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGifUrl(Ljava/lang/String;)V

    .line 1813
    :cond_2be
    const-string v0, "rv"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardTemplateMode(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)V

    .line 1814
    const-string v0, "c_toi"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickTimeOutInterval(I)V

    .line 1815
    const-string v0, "imp_ua"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpUA(I)V

    .line 1816
    const-string v0, "c_ua"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setcUA(I)V

    .line 1818
    const-string v0, "jm_pd"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setJmPd(I)V

    .line 1821
    const-string v0, "ia_icon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaIcon(Ljava/lang/String;)V

    .line 1822
    const-string v0, "ia_rst"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaRst(I)V

    .line 1823
    const-string v0, "ia_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaUrl(Ljava/lang/String;)V

    .line 1824
    const-string v0, "ia_ori"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaOri(I)V

    .line 1825
    invoke-virtual {p5}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAdType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdType(I)V

    .line 1826
    const-string v0, "ia_ext1"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIa_ext1(Ljava/lang/String;)V

    .line 1827
    const-string v0, "ia_ext2"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIa_ext2(Ljava/lang/String;)V

    .line 1828
    const-string v0, "is_download_zip"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsDownLoadZip(I)V

    .line 1829
    const-string v0, "ia_cache"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setInteractiveCache(Ljava/lang/String;)V

    .line 1832
    const-string v0, "gh_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1833
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36c

    .line 1834
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhId(Ljava/lang/String;)V

    .line 1835
    const-string v0, "gh_path"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1836
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_363

    .line 1837
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhPath(Ljava/lang/String;)V

    .line 1839
    :cond_363
    const-string v0, "bind_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBindId(Ljava/lang/String;)V

    .line 1842
    :cond_36c
    const-string v0, "oc_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_time(I)V

    .line 1843
    const-string v0, "oc_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_type(I)V

    .line 1844
    const-string v0, "t_list"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setT_list(Ljava/lang/String;)V

    .line 1846
    const-string v0, "adchoice"

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoice(Lcom/mintegral/msdk/base/entity/CampaignEx$a;)V

    .line 1849
    const-string v0, "plct"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlct(J)V

    .line 1850
    const-string v0, "plctb"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlctb(J)V

    .line 1853
    const-string v0, "banner_url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 1854
    const-string v0, "banner_html"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 1855
    const-string v0, "creative_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCreativeId(J)V

    .line 1858
    const-string v0, "mraid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1859
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_401

    .line 1860
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsMraid(Z)V

    .line 1861
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 1866
    :goto_3d6
    const-string v0, "omid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1867
    if-nez v0, :cond_406

    :goto_3de
    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    move-object v0, v1

    .line 1872
    goto/16 :goto_41

    .line 1741
    :cond_3e4
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1742
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    goto/16 :goto_1a4

    .line 1783
    :catch_3ed
    move-exception v0

    const-string v0, ""

    const-string v3, "ad_tracking parser error"

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_250

    .line 1799
    :catch_3f7
    move-exception v0

    const-string v0, ""

    const-string v3, "loopback parser error"

    invoke-static {v0, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28b

    .line 1863
    :cond_401
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsMraid(Z)V

    goto :goto_3d6

    .line 1867
    :cond_406
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_409
    .catch Ljava/lang/Exception; {:try_start_28b .. :try_end_409} :catch_38

    move-result-object v2

    goto :goto_3de

    :cond_40b
    move-object v0, v2

    .line 1874
    goto/16 :goto_41

    .line 1869
    :catch_40e
    move-exception v0

    move-object v0, v2

    goto/16 :goto_3a
.end method

.method public static parseCamplistToJson(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 2079
    const/4 v0, 0x0

    .line 2081
    if-eqz p0, :cond_32

    :try_start_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_32

    .line 2082
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_35

    .line 2083
    :try_start_e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_2b

    .line 2085
    :try_start_1e
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->campaignToJsonObject(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2086
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_25} :catch_26
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_2b

    goto :goto_12

    .line 2088
    :catch_26
    move-exception v0

    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_12

    .line 2094
    :catch_2b
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_2f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2096
    :cond_32
    :goto_32
    return-object v0

    :cond_33
    move-object v0, v1

    .line 2091
    goto :goto_32

    .line 2094
    :catch_35
    move-exception v1

    goto :goto_2f
.end method

.method private static parsePlayCentage(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2254
    if-eqz p0, :cond_43

    .line 2255
    const/4 v0, 0x0

    :goto_8
    :try_start_8
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_43

    .line 2256
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2257
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 2258
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2260
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2261
    const-string v4, "rate"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2262
    const-string v5, "url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2263
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2264
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_38} :catch_3b

    .line 2255
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2270
    :catch_3b
    move-exception v0

    const-string v0, "com.mintegral.msdk"

    const-string v2, "parsePlayCentage error"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    :cond_43
    return-object v1
.end method

.method public static parseSettingCampaign(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 5

    .prologue
    .line 1442
    const/4 v0, 0x0

    .line 1443
    if-eqz p0, :cond_75

    .line 1444
    new-instance v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;-><init>()V

    .line 1445
    const-string v1, "campaignid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 1446
    const-string v1, "packageName"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 1447
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 1448
    const-string v1, "cta"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 1449
    const-string v1, "desc"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 1450
    const-string v1, "impression_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 1451
    const-string v1, "image_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 1454
    const-string v1, "plct"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlct(J)V

    .line 1455
    const-string v1, "plctb"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlctb(J)V

    .line 1458
    const-string v1, "banner_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 1459
    const-string v1, "banner_html"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 1460
    const-string v1, "creative_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCreativeId(J)V

    .line 1462
    :cond_75
    return-object v0
.end method

.method public static parseShortCutsCampaign(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1467
    .line 1468
    if-eqz p0, :cond_37d

    .line 1470
    :try_start_3
    new-instance v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_37f

    .line 1471
    :try_start_8
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 1472
    const-string v2, "title"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 1473
    const-string v2, "desc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 1474
    const-string v2, "package_name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 1475
    const-string v2, "icon_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIconUrl(Ljava/lang/String;)V

    .line 1476
    const-string v2, "image_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 1477
    const-string v2, "app_size"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setSize(Ljava/lang/String;)V

    .line 1478
    const-string v2, "image_size"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageSize(Ljava/lang/String;)V

    .line 1479
    const-string v2, "impression_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 1480
    const-string v2, "click_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 1481
    const-string v2, "wtick"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWtick(I)V

    .line 1482
    const-string v2, "deep_link"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 1483
    const-string v2, "notice_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 1484
    const-string v2, "ttc"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClick(Z)V

    .line 1485
    const-string v2, "template"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTemplate(I)V

    .line 1486
    const-string v2, "ad_source_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setType(I)V

    .line 1487
    const-string v2, "fca"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFca(I)V

    .line 1488
    const-string v2, "fcb"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFcb(I)V

    .line 1489
    const-string v2, "endcard_click_result"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndcard_click_result(I)V

    .line 1490
    const-string v2, "rating"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ce

    .line 1491
    const-string v2, "rating"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRating(D)V

    .line 1493
    :cond_ce
    const-string v2, "click_mode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClick_mode(Ljava/lang/String;)V

    .line 1495
    const-string v2, "landing_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLandingType(Ljava/lang/String;)V

    .line 1496
    const-string v2, "link_type"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLinkType(I)V

    .line 1497
    const-string v2, "c_ct"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickInterval(I)V

    .line 1498
    const-string v2, "ttc_ct"

    const v3, 0x93a80

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClickInterval(I)V

    .line 1499
    const-string v2, "ctatext"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 1500
    const-string v2, "ad_url_list"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAd_url_list(Ljava/lang/String;)V

    .line 1502
    const-string v2, "adv_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvId(Ljava/lang/String;)V

    .line 1503
    const-string v2, "ttc_type"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_type(I)V

    .line 1504
    const-string v2, "ttc_ct2"

    const/16 v3, 0x708

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_ct2(I)V

    .line 1506
    const-string v2, "retarget_offer"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRetarget_offer(I)V

    .line 1509
    const-string v2, "video_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 1510
    const-string v2, "video_length"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoLength(I)V

    .line 1511
    const-string v2, "video_size"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoSize(J)V

    .line 1512
    const-string v2, "video_resolution"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoResolution(Ljava/lang/String;)V

    .line 1513
    const-string v2, "watch_mile"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWatchMile(I)V

    .line 1515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTimestamp(J)V

    .line 1518
    const-string v2, "ctype"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBty(I)V

    .line 1519
    const-string v2, "adv_imp"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvImp(Ljava/lang/String;)V

    .line 1520
    const-string v2, "t_imp"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTImp(I)V

    .line 1523
    const-string v2, "guidelines"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 1524
    const-string v2, "offer_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOfferType(I)V

    .line 1525
    const-string v2, "reward_name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardName(Ljava/lang/String;)V

    .line 1526
    const-string v2, "reward_amount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardAmount(I)V

    .line 1529
    const-string v2, "mark"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRoverMark(Ljava/lang/String;)V

    .line 1530
    const-string v2, "isPost"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRoverIsPost(I)V
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1bb} :catch_365

    .line 1535
    :try_start_1bb
    const-string v2, "ad_tracking"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d9

    .line 1536
    const-string v2, "ad_tracking"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1537
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d9

    .line 1538
    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTrackingString(Ljava/lang/String;)V

    .line 1539
    invoke-static {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->TrackingStr2Object(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTracking(Lcom/mintegral/msdk/base/entity/j;)V
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1d9} :catch_35b

    .line 1547
    :cond_1d9
    :goto_1d9
    :try_start_1d9
    const-string v2, "video_end_type"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideo_end_type(I)V

    .line 1548
    const-string v2, "endcard_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setendcard_url(Ljava/lang/String;)V

    .line 1549
    const-string v2, "playable_ads_without_video"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlayable_ads_without_video(I)V
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1f6} :catch_365

    .line 1551
    :try_start_1f6
    const-string v2, "loopback"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_214

    .line 1552
    const-string v2, "loopback"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1553
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_214

    .line 1554
    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackString(Ljava/lang/String;)V

    .line 1555
    invoke-static {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->loopbackStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackMap(Ljava/util/Map;)V
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_1f6 .. :try_end_214} :catch_36e

    .line 1563
    :cond_214
    :goto_214
    :try_start_214
    const-string v2, "md5_file"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_225

    .line 1564
    const-string v2, "md5_file"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoMD5Value(Ljava/lang/String;)V

    .line 1567
    :cond_225
    const-string v2, "nv_t2"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_236

    .line 1568
    const-string v2, "nv_t2"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNvT2(I)V

    .line 1570
    :cond_236
    const-string v2, "gif_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_247

    .line 1571
    const-string v2, "gif_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGifUrl(Ljava/lang/String;)V

    .line 1573
    :cond_247
    const-string v2, "rv"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a(Lorg/json/JSONObject;)Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardTemplateMode(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)V

    .line 1574
    const-string v2, "c_toi"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickTimeOutInterval(I)V

    .line 1575
    const-string v2, "imp_ua"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpUA(I)V

    .line 1576
    const-string v2, "c_ua"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setcUA(I)V

    .line 1578
    const-string v2, "jm_pd"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setJmPd(I)V

    .line 1581
    const-string v2, "ia_icon"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaIcon(Ljava/lang/String;)V

    .line 1582
    const-string v2, "ia_rst"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaRst(I)V

    .line 1583
    const-string v2, "ia_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaUrl(Ljava/lang/String;)V

    .line 1584
    const-string v2, "ia_ori"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaOri(I)V

    .line 1585
    const-string v2, "ad_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdType(I)V

    .line 1586
    const-string v2, "ia_ext1"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIa_ext1(Ljava/lang/String;)V

    .line 1587
    const-string v2, "ia_ext2"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIa_ext2(Ljava/lang/String;)V

    .line 1588
    const-string v2, "is_download_zip"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsDownLoadZip(I)V

    .line 1589
    const-string v2, "ia_cache"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setInteractiveCache(Ljava/lang/String;)V

    .line 1592
    const-string v2, "gh_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1593
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2f7

    .line 1594
    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhId(Ljava/lang/String;)V

    .line 1595
    const-string v2, "gh_path"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1596
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2ee

    .line 1597
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhPath(Ljava/lang/String;)V

    .line 1599
    :cond_2ee
    const-string v2, "bind_id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBindId(Ljava/lang/String;)V

    .line 1602
    :cond_2f7
    const-string v2, "oc_time"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_time(I)V

    .line 1603
    const-string v2, "oc_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_type(I)V

    .line 1604
    const-string v2, "t_list"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setT_list(Ljava/lang/String;)V

    .line 1606
    const-string v2, "adchoice"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoice(Lcom/mintegral/msdk/base/entity/CampaignEx$a;)V

    .line 1609
    const-string v2, "plct"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlct(J)V

    .line 1610
    const-string v2, "plctb"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlctb(J)V

    .line 1611
    const-string v2, "omid"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1612
    if-nez v2, :cond_378

    :goto_33b
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    .line 1615
    const-string v1, "banner_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 1616
    const-string v1, "banner_html"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 1617
    const-string v1, "creative_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCreativeId(J)V

    .line 1624
    :goto_35a
    return-object v0

    .line 1543
    :catch_35b
    move-exception v2

    const-string v2, ""

    const-string v3, "ad_tracking parser error"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_363
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_363} :catch_365

    goto/16 :goto_1d9

    .line 1619
    :catch_365
    move-exception v1

    :goto_366
    sget-object v1, Lcom/mintegral/msdk/base/entity/CampaignEx;->TAG:Ljava/lang/String;

    const-string v2, "parse campaign json exception"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35a

    .line 1559
    :catch_36e
    move-exception v2

    :try_start_36f
    const-string v2, ""

    const-string v3, "loopback parser error"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_214

    .line 1612
    :cond_378
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_37b
    .catch Ljava/lang/Exception; {:try_start_36f .. :try_end_37b} :catch_365

    move-result-object v1

    goto :goto_33b

    :cond_37d
    move-object v0, v1

    .line 1624
    goto :goto_35a

    .line 1619
    :catch_37f
    move-exception v0

    move-object v0, v1

    goto :goto_366
.end method

.method private static processNativeVideoTrackingArray(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 4

    .prologue
    .line 2018
    if-eqz p0, :cond_20

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 2019
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    .line 2020
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 2021
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2020
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1e
    move-object v0, v1

    .line 2025
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static replaceValueByKey(Lcom/mintegral/msdk/base/entity/CampaignUnit;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 1630
    if-eqz p0, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move-object v0, p2

    .line 1666
    :cond_b
    :goto_b
    return-object v0

    .line 1634
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getRks()Ljava/util/HashMap;

    move-result-object v0

    .line 1635
    if-eqz v0, :cond_53

    .line 1636
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1637
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1638
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1639
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1640
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\\{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\\}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_21

    .line 1644
    :cond_53
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAks()Ljava/util/HashMap;

    move-result-object v0

    .line 1645
    if-eqz v0, :cond_9a

    .line 1646
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1647
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1648
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1649
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1650
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\\{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\\}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_68

    .line 1654
    :cond_9a
    const-string v0, "\\{c\\}"

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->assembCParams()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1656
    const-string v0, "=\\{.*?\\}"

    .line 1657
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1658
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_b3} :catch_c7

    move-result-object v1

    move-object v0, p2

    .line 1659
    :goto_b5
    :try_start_b5
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1660
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1661
    const-string v3, "="

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_c5} :catch_d5

    move-result-object v0

    goto :goto_b5

    .line 1663
    :catch_c7
    move-exception v0

    move-object v1, v0

    move-object v0, p2

    .line 1664
    :goto_ca
    sget-object v2, Lcom/mintegral/msdk/base/entity/CampaignEx;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1663
    :catch_d5
    move-exception v1

    goto :goto_ca
.end method


# virtual methods
.method public getAdType()I
    .registers 2

    .prologue
    .line 334
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->adType:I

    return v0
.end method

.method public getAdUrlList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2059
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAd_url_list()Ljava/lang/String;

    move-result-object v0

    .line 2060
    const/4 v1, 0x0

    .line 2062
    :try_start_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 2063
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2065
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_26

    .line 2066
    const/4 v1, 0x0

    :goto_16
    :try_start_16
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2d

    .line 2067
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_2e

    .line 2066
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 2073
    :catch_26
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_2a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2075
    :cond_2d
    :goto_2d
    return-object v0

    .line 2073
    :catch_2e
    move-exception v1

    goto :goto_2a

    :cond_30
    move-object v0, v1

    goto :goto_2d
.end method

.method public getAd_url_list()Ljava/lang/String;
    .registers 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ad_url_list:Ljava/lang/String;

    return-object v0
.end method

.method public getAdchoice()Lcom/mintegral/msdk/base/entity/CampaignEx$a;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->adchoice:Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    return-object v0
.end method

.method public getAdvId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->advId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvImp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->advImp:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvImpList()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->advImp:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->generateAdImpression(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAks()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->aks:Ljava/util/HashMap;

    return-object v0
.end method

.method public getAl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->al:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->bannerHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->bannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBidToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->bidToken:Ljava/lang/String;

    return-object v0
.end method

.method public getBindId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->bindId:Ljava/lang/String;

    return-object v0
.end method

.method public getBty()I
    .registers 2

    .prologue
    .line 1127
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->bty:I

    return v0
.end method

.method public getCacheLevel()I
    .registers 2

    .prologue
    .line 1195
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->cacheLevel:I

    return v0
.end method

.method public getCampaignUnitId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 911
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->campaignUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getClickInterval()I
    .registers 2

    .prologue
    .line 1219
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->clickInterval:I

    return v0
.end method

.method public getClickTimeOutInterval()I
    .registers 2

    .prologue
    .line 1235
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->clickTimeOutInterval:I

    return v0
.end method

.method public getClickURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->clickURL:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_mode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->click_mode:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeId()J
    .registers 3

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->creativeId:J

    return-wide v0
.end method

.method public getDeepLinkURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->deepLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEndScreenUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->endScreenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEndcard_click_result()I
    .registers 2

    .prologue
    .line 772
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->endcard_click_result:I

    return v0
.end method

.method public getFca()I
    .registers 2

    .prologue
    .line 1317
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->fca:I

    return v0
.end method

.method public getFcb()I
    .registers 2

    .prologue
    .line 1325
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->fcb:I

    return v0
.end method

.method public getGhId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ghId:Ljava/lang/String;

    return-object v0
.end method

.method public getGhPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ghPath:Ljava/lang/String;

    return-object v0
.end method

.method public getGifUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->gifUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGuidelines()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->guidelines:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1429
    const-string v0, ""

    .line 1430
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 1432
    :try_start_c
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_33} :catch_35

    move-result-object v0

    .line 1438
    :cond_34
    :goto_34
    return-object v0

    .line 1435
    :catch_35
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->htmlUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIa_ext1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ia_ext1:Ljava/lang/String;

    return-object v0
.end method

.method public getIa_ext2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ia_ext2:Ljava/lang/String;

    return-object v0
.end method

.method public getIex()I
    .registers 2

    .prologue
    .line 976
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->iex:I

    return v0
.end method

.method public getImageSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->imageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getImpUA()I
    .registers 2

    .prologue
    .line 779
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->impUA:I

    return v0
.end method

.method public getImpressionURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->impressionURL:Ljava/lang/String;

    return-object v0
.end method

.method public getInteractiveCache()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->interactiveCache:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAddSuccesful()I
    .registers 2

    .prologue
    .line 390
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isAddSuccesful:I

    return v0
.end method

.method public getIsClick()I
    .registers 2

    .prologue
    .line 409
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isClick:I

    return v0
.end method

.method public getIsDeleted()I
    .registers 2

    .prologue
    .line 401
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isDeleted:I

    return v0
.end method

.method public getIsDownLoadZip()I
    .registers 2

    .prologue
    .line 315
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isDownLoadZip:I

    return v0
.end method

.method public getJmPd()I
    .registers 2

    .prologue
    .line 397
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->jmPd:I

    return v0
.end method

.method public getJumpResult()Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;
    .registers 2

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->jumpResult:Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    return-object v0
.end method

.method public getK()Ljava/lang/String;
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyIaIcon()Ljava/lang/String;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->keyIaIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyIaOri()I
    .registers 2

    .prologue
    .line 382
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->keyIaOri:I

    return v0
.end method

.method public getKeyIaRst()I
    .registers 2

    .prologue
    .line 366
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->keyIaRst:I

    return v0
.end method

.method public getKeyIaUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->keyIaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLandingType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->landingType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkType()I
    .registers 2

    .prologue
    .line 1107
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->linkType:I

    return v0
.end method

.method public getLoopbackMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 851
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->loopbackMap:Ljava/util/Map;

    return-object v0
.end method

.method public getLoopbackString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->loopbackString:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaViewHolder()Lcom/mintegral/msdk/base/entity/CampaignEx$b;
    .registers 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->mediaViewHolder:Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    return-object v0
.end method

.method public getMp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->mp:Ljava/lang/String;

    return-object v0
.end method

.method public getMraid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->mraid:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;
    .registers 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->nativeVideoTracking:Lcom/mintegral/msdk/base/entity/j;

    return-object v0
.end method

.method public getNativeVideoTrackingString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->nativeVideoTrackingString:Ljava/lang/String;

    return-object v0
.end method

.method public getNoticeUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->noticeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNvT2()I
    .registers 2

    .prologue
    .line 492
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->nvT2:I

    return v0
.end method

.method public getOc_time()I
    .registers 2

    .prologue
    .line 263
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->oc_time:I

    return v0
.end method

.method public getOc_type()I
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->oc_type:I

    return v0
.end method

.method public getOfferType()I
    .registers 2

    .prologue
    .line 1066
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->offerType:I

    return v0
.end method

.method public getOmid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->omid:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlyImpressionURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->onlyImpressionURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->pkgSource:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayable_ads_without_video()I
    .registers 2

    .prologue
    .line 841
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->playable_ads_without_video:I

    return v0
.end method

.method public getPlct()J
    .registers 3

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->plct:J

    return-wide v0
.end method

.method public getPlctb()J
    .registers 3

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->plctb:J

    return-wide v0
.end method

.method public getPreClickInterval()I
    .registers 2

    .prologue
    .line 1227
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->preClickInterval:I

    return v0
.end method

.method public getQ()Ljava/lang/String;
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getR()Ljava/lang/String;
    .registers 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1248
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->requestId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1249
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->requestId:Ljava/lang/String;

    .line 1261
    :goto_a
    return-object v0

    .line 1251
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->onlyImpressionURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1252
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->onlyImpressionURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1253
    if-eqz v0, :cond_28

    .line 1254
    const-string v1, "k"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->requestId:Ljava/lang/String;

    .line 1255
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->requestId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRequestId(Ljava/lang/String;)V

    .line 1257
    :cond_28
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->requestId:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_a

    :catch_2b
    move-exception v0

    .line 1261
    :cond_2c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getRequestIdNotice()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1275
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->requestIdNotice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1276
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->requestIdNotice:Ljava/lang/String;

    .line 1288
    :goto_a
    return-object v0

    .line 1278
    :cond_b
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->noticeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 1279
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->noticeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1280
    if-eqz v0, :cond_28

    .line 1281
    const-string v1, "k"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->requestIdNotice:Ljava/lang/String;

    .line 1282
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->requestIdNotice:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRequestIdNotice(Ljava/lang/String;)V

    .line 1284
    :cond_28
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->requestIdNotice:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_a

    :catch_2b
    move-exception v0

    .line 1288
    :cond_2c
    const-string v0, ""

    goto :goto_a
.end method

.method public getRetarget_offer()I
    .registers 2

    .prologue
    .line 1018
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->retarget_offer:I

    return v0
.end method

.method public getRewardAmount()I
    .registers 2

    .prologue
    .line 1090
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->rewardAmount:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->reward_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardPlayStatus()I
    .registers 2

    .prologue
    .line 1050
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->rewardPlayStatus:I

    return v0
.end method

.method public getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;
    .registers 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->rewardTemplateMode:Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    return-object v0
.end method

.method public getRoverIsPost()I
    .registers 2

    .prologue
    .line 943
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->roverIsPost:I

    return v0
.end method

.method public getRoverMark()Ljava/lang/String;
    .registers 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->roverMark:Ljava/lang/String;

    return-object v0
.end method

.method public getSpareOfferFlag()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->spareOfferFlag:I

    return v0
.end method

.method public getTImp()I
    .registers 2

    .prologue
    .line 1147
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->t_imp:I

    return v0
.end method

.method public getT_list()Ljava/lang/String;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->t_list:Ljava/lang/String;

    return-object v0
.end method

.method public getTab()I
    .registers 2

    .prologue
    .line 1333
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->tab:I

    return v0
.end method

.method public getTemplate()I
    .registers 2

    .prologue
    .line 1411
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->template:I

    return v0
.end method

.method public getTs()J
    .registers 3

    .prologue
    .line 984
    iget-wide v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ts:J

    return-wide v0
.end method

.method public getTtc_ct2()I
    .registers 2

    .prologue
    .line 1026
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ttc_ct2:I

    return v0
.end method

.method public getTtc_type()I
    .registers 2

    .prologue
    .line 1034
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ttc_type:I

    return v0
.end method

.method public getVideoLength()I
    .registers 2

    .prologue
    .line 1163
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->videoLength:I

    return v0
.end method

.method public getVideoMD5Value()Ljava/lang/String;
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->videoMD5Value:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoResolution()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->videoResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSize()J
    .registers 3

    .prologue
    .line 1171
    iget-wide v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->videoSize:J

    return-wide v0
.end method

.method public getVideoUrlEncode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->videoUrlEncode:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_end_type()I
    .registers 2

    .prologue
    .line 805
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->video_end_type:I

    return v0
.end method

.method public getWatchMile()I
    .registers 2

    .prologue
    .line 1187
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->watchMile:I

    return v0
.end method

.method public getWtick()I
    .registers 2

    .prologue
    .line 1349
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->wtick:I

    return v0
.end method

.method public getcUA()I
    .registers 2

    .prologue
    .line 787
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->cUA:I

    return v0
.end method

.method public getendcard_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->endcard_url:Ljava/lang/String;

    return-object v0
.end method

.method public isActiveOm()Z
    .registers 2

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->omid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/mintegral/msdk/MIntegralConstans;->OMID_JS_SERVICE_URL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isBidCampaign()Z
    .registers 2

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign:Z

    return v0
.end method

.method public isCallbacked()Z
    .registers 2

    .prologue
    .line 2276
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isCallbacked:Z

    return v0
.end method

.method public isEffectiveOffer(J)Z
    .registers 14

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2662
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlct()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_23

    .line 2663
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlct()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    cmp-long v2, v4, v2

    if-ltz v2, :cond_21

    .line 2665
    :cond_20
    :goto_20
    return v0

    :cond_21
    move v0, v1

    .line 2663
    goto :goto_20

    .line 2665
    :cond_23
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTimestamp()J

    move-result-wide v4

    add-long/2addr v4, p1

    cmp-long v2, v4, v2

    if-gez v2, :cond_20

    move v0, v1

    goto :goto_20
.end method

.method public isHasMtgTplMark()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->hasMtgTplMark:Z

    return v0
.end method

.method public isHasReportAdTrackPause()Z
    .registers 2

    .prologue
    .line 2425
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->hasReportAdTrackPause:Z

    return v0
.end method

.method public isMraid()Z
    .registers 2

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid:Z

    return v0
.end method

.method public isPreClick()Z
    .registers 2

    .prologue
    .line 1381
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->preClick:Z

    return v0
.end method

.method public isReport()Z
    .registers 2

    .prologue
    .line 1207
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isReport:Z

    return v0
.end method

.method public isReportClick()Z
    .registers 2

    .prologue
    .line 1211
    iget-boolean v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isReportClick:Z

    return v0
.end method

.method public isSpareOffer(JJ)Z
    .registers 16

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2645
    invoke-virtual {p0, p1, p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isEffectiveOffer(J)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2652
    :cond_8
    :goto_8
    return v0

    .line 2648
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2649
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlctb()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_29

    .line 2650
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlctb()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    cmp-long v2, v4, v2

    if-ltz v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 2652
    :cond_29
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTimestamp()J

    move-result-wide v4

    add-long/2addr v4, p3

    cmp-long v2, v4, v2

    if-ltz v2, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method public matchLoopback(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 2220
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 2221
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLoopbackMap()Ljava/util/Map;

    move-result-object v1

    .line 2222
    if-eqz v1, :cond_7b

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_7b

    .line 2223
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2224
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 2225
    const-string v0, "domain"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2226
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7b

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 2227
    const-string v0, "key"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2228
    const-string v2, "value"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2229
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7c

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 2230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2247
    :cond_7b
    :goto_7b
    return-object p1

    .line 2231
    :cond_7c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 2232
    const-string v2, ""

    .line 2233
    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_98

    .line 2234
    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2236
    :cond_98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c9} :catch_cb

    move-result-object p1

    goto :goto_7b

    .line 2243
    :catch_cb
    move-exception v0

    const-string v0, ""

    const-string v1, "matchLoopback error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b
.end method

.method public setAdCall(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1117
    iget v0, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->linkType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 1118
    const-string p1, "learn more"

    .line 1123
    :cond_d
    :goto_d
    invoke-super {p0, p1}, Lcom/mintegral/msdk/out/Campaign;->setAdCall(Ljava/lang/String;)V

    .line 1124
    return-void

    .line 1120
    :cond_11
    const-string p1, "install"

    goto :goto_d
.end method

.method public setAdType(I)V
    .registers 2

    .prologue
    .line 338
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->adType:I

    .line 339
    return-void
.end method

.method public setAd_url_list(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 955
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ad_url_list:Ljava/lang/String;

    .line 956
    return-void
.end method

.method public setAdchoice(Lcom/mintegral/msdk/base/entity/CampaignEx$a;)V
    .registers 2

    .prologue
    .line 245
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->adchoice:Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    .line 246
    return-void
.end method

.method public setAdvId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->advId:Ljava/lang/String;

    .line 1047
    return-void
.end method

.method public setAdvImp(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->advImp:Ljava/lang/String;

    .line 1140
    return-void
.end method

.method public setAks(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 711
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->aks:Ljava/util/HashMap;

    .line 712
    return-void
.end method

.method public setAl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 744
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->al:Ljava/lang/String;

    .line 745
    return-void
.end method

.method public setBannerHtml(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->bannerHtml:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setBannerUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->bannerUrl:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setBidToken(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 768
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->bidToken:Ljava/lang/String;

    .line 769
    return-void
.end method

.method public setBindId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 299
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->bindId:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setBty(I)V
    .registers 2

    .prologue
    .line 1131
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->bty:I

    .line 1132
    return-void
.end method

.method public setCacheLevel(I)V
    .registers 2

    .prologue
    .line 1199
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->cacheLevel:I

    .line 1200
    return-void
.end method

.method public setCallbacked(Z)V
    .registers 2

    .prologue
    .line 2280
    iput-boolean p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isCallbacked:Z

    .line 2281
    return-void
.end method

.method public setCampaignUnitId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 915
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->campaignUnitId:Ljava/lang/String;

    .line 916
    return-void
.end method

.method public setClickInterval(I)V
    .registers 2

    .prologue
    .line 1223
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->clickInterval:I

    .line 1224
    return-void
.end method

.method public setClickTimeOutInterval(I)V
    .registers 2

    .prologue
    .line 1239
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->clickTimeOutInterval:I

    .line 1240
    return-void
.end method

.method public setClickURL(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->clickURL:Ljava/lang/String;

    .line 1346
    return-void
.end method

.method public setClick_mode(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->click_mode:Ljava/lang/String;

    .line 1303
    return-void
.end method

.method public setCreativeId(J)V
    .registers 4

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->creativeId:J

    .line 122
    return-void
.end method

.method public setDeepLinkUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->deepLinkUrl:Ljava/lang/String;

    .line 1362
    return-void
.end method

.method public setEndScreenUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->endScreenUrl:Ljava/lang/String;

    .line 1087
    return-void
.end method

.method public setEndcard_click_result(I)V
    .registers 2

    .prologue
    .line 776
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->endcard_click_result:I

    .line 777
    return-void
.end method

.method public setFca(I)V
    .registers 2

    .prologue
    .line 1321
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->fca:I

    .line 1322
    return-void
.end method

.method public setFcb(I)V
    .registers 2

    .prologue
    .line 1329
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->fcb:I

    .line 1330
    return-void
.end method

.method public setGhId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 283
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ghId:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setGhPath(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 291
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ghPath:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setGifUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 504
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->gifUrl:Ljava/lang/String;

    .line 505
    return-void
.end method

.method public setGuidelines(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->guidelines:Ljava/lang/String;

    .line 1063
    return-void
.end method

.method public setHasMtgTplMark(Z)V
    .registers 2

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->hasMtgTplMark:Z

    .line 130
    return-void
.end method

.method public setHasReportAdTrackPause(Z)V
    .registers 2

    .prologue
    .line 2429
    iput-boolean p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->hasReportAdTrackPause:Z

    .line 2430
    return-void
.end method

.method public setHtmlUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->htmlUrl:Ljava/lang/String;

    .line 1079
    return-void
.end method

.method public setIa_ext1(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 346
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ia_ext1:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setIa_ext2(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 354
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ia_ext2:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setIex(I)V
    .registers 2

    .prologue
    .line 980
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->iex:I

    .line 981
    return-void
.end method

.method public setImageSize(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->imageSize:Ljava/lang/String;

    .line 1424
    return-void
.end method

.method public setImpUA(I)V
    .registers 2

    .prologue
    .line 783
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->impUA:I

    .line 784
    return-void
.end method

.method public setImpressionURL(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->impressionURL:Ljava/lang/String;

    .line 1370
    return-void
.end method

.method public setInteractiveCache(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 311
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->interactiveCache:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setIsAddSuccesful(I)V
    .registers 2

    .prologue
    .line 393
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isAddSuccesful:I

    .line 394
    return-void
.end method

.method public setIsBidCampaign(Z)V
    .registers 2

    .prologue
    .line 760
    iput-boolean p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign:Z

    .line 761
    return-void
.end method

.method public setIsClick(I)V
    .registers 2

    .prologue
    .line 413
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isClick:I

    .line 414
    return-void
.end method

.method public setIsDeleted(I)V
    .registers 2

    .prologue
    .line 405
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isDeleted:I

    .line 406
    return-void
.end method

.method public setIsDownLoadZip(I)V
    .registers 2

    .prologue
    .line 319
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isDownLoadZip:I

    .line 320
    return-void
.end method

.method public setIsMraid(Z)V
    .registers 2

    .prologue
    .line 824
    iput-boolean p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid:Z

    .line 825
    return-void
.end method

.method public setJmPd(I)V
    .registers 2

    .prologue
    .line 418
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->jmPd:I

    .line 419
    return-void
.end method

.method public setJumpResult(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;)V
    .registers 2

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->jumpResult:Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    .line 1408
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 719
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->k:Ljava/lang/String;

    .line 720
    return-void
.end method

.method public setKeyIaIcon(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 362
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->keyIaIcon:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public setKeyIaOri(I)V
    .registers 2

    .prologue
    .line 386
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->keyIaOri:I

    .line 387
    return-void
.end method

.method public setKeyIaRst(I)V
    .registers 2

    .prologue
    .line 370
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->keyIaRst:I

    .line 371
    return-void
.end method

.method public setKeyIaUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 378
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->keyIaUrl:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 963
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->label:Ljava/lang/String;

    .line 964
    return-void
.end method

.method public setLandingType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->landingType:Ljava/lang/String;

    .line 1311
    return-void
.end method

.method public setLinkType(I)V
    .registers 2

    .prologue
    .line 1111
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->linkType:I

    .line 1112
    return-void
.end method

.method public setLoopbackMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 855
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->loopbackMap:Ljava/util/Map;

    .line 856
    return-void
.end method

.method public setLoopbackString(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 863
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->loopbackString:Ljava/lang/String;

    .line 864
    return-void
.end method

.method public setMediaViewHolder(Lcom/mintegral/msdk/base/entity/CampaignEx$b;)V
    .registers 2

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->mediaViewHolder:Lcom/mintegral/msdk/base/entity/CampaignEx$b;

    .line 1005
    return-void
.end method

.method public setMp(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 752
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->mp:Ljava/lang/String;

    .line 753
    return-void
.end method

.method public setMraid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 816
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->mraid:Ljava/lang/String;

    .line 817
    return-void
.end method

.method public setNativeVideoTracking(Lcom/mintegral/msdk/base/entity/j;)V
    .registers 2

    .prologue
    .line 931
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->nativeVideoTracking:Lcom/mintegral/msdk/base/entity/j;

    .line 932
    return-void
.end method

.method public setNativeVideoTrackingString(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 923
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->nativeVideoTrackingString:Ljava/lang/String;

    .line 924
    return-void
.end method

.method public setNoticeUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->noticeUrl:Ljava/lang/String;

    .line 1378
    return-void
.end method

.method public setNvT2(I)V
    .registers 2

    .prologue
    .line 496
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->nvT2:I

    .line 497
    return-void
.end method

.method public setOc_time(I)V
    .registers 2

    .prologue
    .line 267
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->oc_time:I

    .line 268
    return-void
.end method

.method public setOc_type(I)V
    .registers 2

    .prologue
    .line 259
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->oc_type:I

    .line 260
    return-void
.end method

.method public setOfferType(I)V
    .registers 2

    .prologue
    .line 1070
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->offerType:I

    .line 1071
    return-void
.end method

.method public setOmid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->omid:Ljava/lang/String;

    .line 2681
    return-void
.end method

.method public setOnlyImpressionURL(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->onlyImpressionURL:Ljava/lang/String;

    .line 1394
    return-void
.end method

.method public setPkgSource(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 971
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->pkgSource:Ljava/lang/String;

    .line 972
    return-void
.end method

.method public setPlayable_ads_without_video(I)V
    .registers 2

    .prologue
    .line 844
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->playable_ads_without_video:I

    .line 845
    return-void
.end method

.method public setPlct(J)V
    .registers 4

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->plct:J

    .line 86
    return-void
.end method

.method public setPlctb(J)V
    .registers 4

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->plctb:J

    .line 94
    return-void
.end method

.method public setPreClick(Z)V
    .registers 2

    .prologue
    .line 1385
    iput-boolean p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->preClick:Z

    .line 1386
    return-void
.end method

.method public setPreClickInterval(I)V
    .registers 2

    .prologue
    .line 1231
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->preClickInterval:I

    .line 1232
    return-void
.end method

.method public setQ(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 728
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->q:Ljava/lang/String;

    .line 729
    return-void
.end method

.method public setR(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 736
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->r:Ljava/lang/String;

    .line 737
    return-void
.end method

.method public setReport(Z)V
    .registers 2

    .prologue
    .line 1203
    iput-boolean p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isReport:Z

    .line 1204
    return-void
.end method

.method public setReportClick(Z)V
    .registers 2

    .prologue
    .line 1215
    iput-boolean p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->isReportClick:Z

    .line 1216
    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1266
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->requestId:Ljava/lang/String;

    .line 1267
    return-void
.end method

.method public setRequestIdNotice(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1293
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->requestIdNotice:Ljava/lang/String;

    .line 1294
    return-void
.end method

.method public setRetarget_offer(I)V
    .registers 2

    .prologue
    .line 1022
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->retarget_offer:I

    .line 1023
    return-void
.end method

.method public setRewardAmount(I)V
    .registers 2

    .prologue
    .line 1094
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->rewardAmount:I

    .line 1095
    return-void
.end method

.method public setRewardName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->reward_name:Ljava/lang/String;

    .line 1103
    return-void
.end method

.method public setRewardPlayStatus(I)V
    .registers 2

    .prologue
    .line 1054
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->rewardPlayStatus:I

    .line 1055
    return-void
.end method

.method public setRewardTemplateMode(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)V
    .registers 2

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->rewardTemplateMode:Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    .line 1015
    return-void
.end method

.method public setRoverIsPost(I)V
    .registers 2

    .prologue
    .line 947
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->roverIsPost:I

    .line 948
    return-void
.end method

.method public setRoverMark(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 939
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->roverMark:Ljava/lang/String;

    .line 940
    return-void
.end method

.method public setSpareOfferFlag(I)V
    .registers 2

    .prologue
    .line 69
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->spareOfferFlag:I

    .line 70
    return-void
.end method

.method public setTImp(I)V
    .registers 2

    .prologue
    .line 1151
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->t_imp:I

    .line 1152
    return-void
.end method

.method public setT_list(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->t_list:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setTab(I)V
    .registers 2

    .prologue
    .line 1337
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->tab:I

    .line 1338
    return-void
.end method

.method public setTemplate(I)V
    .registers 2

    .prologue
    .line 1415
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->template:I

    .line 1416
    return-void
.end method

.method public setTs(J)V
    .registers 4

    .prologue
    .line 988
    iput-wide p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ts:J

    .line 989
    return-void
.end method

.method public setTtc_ct2(I)V
    .registers 2

    .prologue
    .line 1030
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ttc_ct2:I

    .line 1031
    return-void
.end method

.method public setTtc_type(I)V
    .registers 2

    .prologue
    .line 1038
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->ttc_type:I

    .line 1039
    return-void
.end method

.method public setVideoLength(I)V
    .registers 2

    .prologue
    .line 1167
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->videoLength:I

    .line 1168
    return-void
.end method

.method public setVideoMD5Value(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 801
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->videoMD5Value:Ljava/lang/String;

    .line 802
    return-void
.end method

.method public setVideoResolution(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->videoResolution:Ljava/lang/String;

    .line 1184
    return-void
.end method

.method public setVideoSize(J)V
    .registers 4

    .prologue
    .line 1175
    iput-wide p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->videoSize:J

    .line 1176
    return-void
.end method

.method public setVideoUrlEncode(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1159
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->videoUrlEncode:Ljava/lang/String;

    .line 1160
    return-void
.end method

.method public setVideo_end_type(I)V
    .registers 2

    .prologue
    .line 808
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->video_end_type:I

    .line 809
    return-void
.end method

.method public setWatchMile(I)V
    .registers 2

    .prologue
    .line 1191
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->watchMile:I

    .line 1192
    return-void
.end method

.method public setWtick(I)V
    .registers 2

    .prologue
    .line 1353
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->wtick:I

    .line 1354
    return-void
.end method

.method public setcUA(I)V
    .registers 2

    .prologue
    .line 791
    iput p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->cUA:I

    .line 792
    return-void
.end method

.method public setendcard_url(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 833
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/CampaignEx;->endcard_url:Ljava/lang/String;

    .line 834
    return-void
.end method
