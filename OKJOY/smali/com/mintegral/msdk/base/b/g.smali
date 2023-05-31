.class public Lcom/mintegral/msdk/base/b/g;
.super Lcom/mintegral/msdk/base/b/f;
.source "CampaignReportDao.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/mintegral/msdk/base/b/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/mintegral/msdk/base/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/b/g;->b:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/b/g;->c:Lcom/mintegral/msdk/base/b/g;

    return-void
.end method

.method private constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/f;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 20
    return-void
.end method

.method public static b(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/g;
    .registers 3

    .prologue
    .line 23
    sget-object v0, Lcom/mintegral/msdk/base/b/g;->c:Lcom/mintegral/msdk/base/b/g;

    if-nez v0, :cond_13

    .line 24
    const-class v1, Lcom/mintegral/msdk/base/b/g;

    monitor-enter v1

    .line 25
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/g;->c:Lcom/mintegral/msdk/base/b/g;

    if-nez v0, :cond_12

    .line 26
    new-instance v0, Lcom/mintegral/msdk/base/b/g;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/g;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/g;->c:Lcom/mintegral/msdk/base/b/g;

    .line 28
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 30
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/g;->c:Lcom/mintegral/msdk/base/b/g;

    return-object v0

    .line 28
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/CampaignEx;)J
    .registers 8

    .prologue
    const-wide/16 v0, -0x1

    .line 35
    monitor-enter p0

    if-nez p1, :cond_9

    .line 36
    const-wide/16 v0, 0x0

    .line 126
    :cond_7
    :goto_7
    monitor-exit p0

    return-wide v0

    .line 38
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/g;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 41
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 42
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v3, "unitid"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v3, "tab"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTab()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    const-string v3, "package_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v3, "app_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v3, "app_desc"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v3, "app_size"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v3, "image_size"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v3, "icon_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "image_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "impression_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "notice_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "download_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v3, "wtick"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWtick()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    const-string v3, "only_impression"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v3, "ts"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    const-string v3, "template"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTemplate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v3, "click_mode"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "landing_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLandingType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v3, "link_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string v3, "star"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRating()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 64
    const-string v3, "cti"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickInterval()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    const-string v3, "cpti"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPreClickInterval()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v3, "preclick"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isPreClick()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 67
    const-string v3, "level"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCacheLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v3, "adSource"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v3, "ad_call"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v3, "fc_a"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFca()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string v3, "ad_url_list"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAd_url_list()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v3, "video_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v3, "video_size"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    const-string v3, "video_length"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const-string v3, "video_resolution"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v3, "endcard_click_result"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getEndcard_click_result()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v3, "watch_mile"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWatchMile()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v3, "advImp"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdvImp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "bty"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBty()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v3, "t_imp"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTImp()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v3, "guidelines"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGuidelines()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "offer_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOfferType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v3, "html_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v3, "end_screen_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v3, "reward_amount"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardAmount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v3, "reward_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v3, "reward_play_status"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardPlayStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v3, "adv_id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdvId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v3, "ttc_ct2"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTtc_ct2()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v3, "ttc_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTtc_type()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v3, "retarget"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRetarget_offer()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v3, "native_ad_tracking"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTrackingString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v3, "playable_ads_without_video"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v3, "endcard_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "video_end_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideo_end_type()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v3, "loopback"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLoopbackString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v3, "md5_file"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoMD5Value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v3, "nv_t2"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNvT2()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string v3, "gif_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v3

    if-eqz v3, :cond_296

    .line 115
    const-string v3, "reward_teamplate"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_296
    const-string v3, "c_coi"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickTimeOutInterval()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v3, "c_ua"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getcUA()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string v3, "imp_ua"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpUA()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v3, "gh_id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGhId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v3, "gh_path"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGhPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v3, "bind_id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBindId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/g;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "report_campaign"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2e2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2e2} :catch_2e8
    .catchall {:try_start_9 .. :try_end_2e2} :catchall_2e5

    move-result-wide v0

    goto/16 :goto_7

    .line 35
    :catchall_2e5
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :catch_2e8
    move-exception v2

    goto/16 :goto_7
.end method

.method public final l(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 131
    .line 134
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM report_campaign where package_name =\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_3b7
    .catchall {:try_start_2 .. :try_end_1f} :catchall_3c3

    move-result-object v3

    .line 136
    if-eqz v3, :cond_3db

    :try_start_22
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3db

    .line 137
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3db

    .line 138
    new-instance v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;-><init>()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_33} :catch_3d0
    .catchall {:try_start_22 .. :try_end_33} :catchall_3cb

    .line 139
    :try_start_33
    const-string v2, "id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 140
    const-string v2, "tab"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTab(I)V

    .line 141
    const-string v2, "package_name"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 142
    const-string v2, "app_name"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 143
    const-string v2, "app_desc"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 144
    const-string v2, "app_size"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setSize(Ljava/lang/String;)V

    .line 145
    const-string v2, "image_size"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageSize(Ljava/lang/String;)V

    .line 146
    const-string v2, "icon_url"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIconUrl(Ljava/lang/String;)V

    .line 147
    const-string v2, "image_url"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 148
    const-string v2, "impression_url"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 149
    const-string v2, "notice_url"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 150
    const-string v2, "download_url"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 151
    const-string v2, "wtick"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWtick(I)V

    .line 152
    const-string v2, "only_impression"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOnlyImpressionURL(Ljava/lang/String;)V

    .line 153
    const-string v2, "preclick"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_3b4

    :goto_f5
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClick(Z)V

    .line 154
    const-string v0, "template"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTemplate(I)V

    .line 155
    const-string v0, "landing_type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLandingType(Ljava/lang/String;)V

    .line 156
    const-string v0, "link_type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLinkType(I)V

    .line 157
    const-string v0, "click_mode"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClick_mode(Ljava/lang/String;)V

    .line 158
    const-string v0, "star"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRating(D)V

    .line 159
    const-string v0, "cti"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickInterval(I)V

    .line 160
    const-string v0, "cpti"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClickInterval(I)V

    .line 161
    const-string v0, "ts"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTimestamp(J)V

    .line 162
    const-string v0, "level"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCacheLevel(I)V

    .line 163
    const-string v0, "ad_call"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 164
    const-string v0, "fc_a"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFca(I)V

    .line 165
    const-string v0, "ad_url_list"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAd_url_list(Ljava/lang/String;)V

    .line 167
    const-string v0, "video_length"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoLength(I)V

    .line 168
    const-string v0, "video_size"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoSize(J)V

    .line 169
    const-string v0, "video_resolution"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoResolution(Ljava/lang/String;)V

    .line 170
    const-string v0, "endcard_click_result"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndcard_click_result(I)V

    .line 171
    const-string v0, "video_url"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    .line 172
    const-string v0, "watch_mile"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWatchMile(I)V

    .line 174
    const-string v0, "t_imp"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTImp(I)V

    .line 175
    const-string v0, "bty"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBty(I)V

    .line 176
    const-string v0, "advImp"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvImp(Ljava/lang/String;)V

    .line 178
    const-string v0, "guidelines"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 179
    const-string v0, "offer_type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOfferType(I)V

    .line 180
    const-string v0, "html_url"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 181
    const-string v0, "guidelines"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 182
    const-string v0, "html_url"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 183
    const-string v0, "end_screen_url"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndScreenUrl(Ljava/lang/String;)V

    .line 184
    const-string v0, "reward_name"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardName(Ljava/lang/String;)V

    .line 185
    const-string v0, "reward_amount"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardAmount(I)V

    .line 186
    const-string v0, "reward_play_status"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardPlayStatus(I)V

    .line 189
    const-string v0, "adv_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvId(Ljava/lang/String;)V

    .line 192
    const-string v0, "ttc_ct2"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_ct2(I)V

    .line 193
    const-string v0, "ttc_type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_type(I)V

    .line 195
    const-string v0, "retarget"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRetarget_offer(I)V

    .line 198
    const-string v0, "unitid"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 200
    const-string v0, "native_ad_tracking"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->TrackingStr2Object(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTracking(Lcom/mintegral/msdk/base/entity/j;)V

    .line 201
    const-string v0, "native_ad_tracking"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTrackingString(Ljava/lang/String;)V

    .line 203
    const-string v0, "video_end_type"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideo_end_type(I)V

    .line 204
    const-string v0, "endcard_url"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setendcard_url(Ljava/lang/String;)V

    .line 205
    const-string v0, "playable_ads_without_video"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlayable_ads_without_video(I)V

    .line 206
    const-string v0, "loopback"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackString(Ljava/lang/String;)V

    .line 207
    const-string v0, "loopback"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->loopbackStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackMap(Ljava/util/Map;)V

    .line 210
    const-string v0, "reward_teamplate"

    .line 212
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v0

    .line 210
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardTemplateMode(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)V

    .line 213
    const-string v0, "md5_file"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoMD5Value(Ljava/lang/String;)V

    .line 214
    const-string v0, "gif_url"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGifUrl(Ljava/lang/String;)V

    .line 215
    const-string v0, "nv_t2"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNvT2(I)V

    .line 216
    const-string v0, "c_coi"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickTimeOutInterval(I)V

    .line 217
    const-string v0, "c_ua"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setcUA(I)V

    .line 218
    const-string v0, "imp_ua"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpUA(I)V

    .line 220
    const-string v0, "gh_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhId(Ljava/lang/String;)V

    .line 221
    const-string v0, "gh_path"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhPath(Ljava/lang/String;)V

    .line 222
    const-string v0, "bind_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBindId(Ljava/lang/String;)V
    :try_end_3ad
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3ad} :catch_3d5
    .catchall {:try_start_33 .. :try_end_3ad} :catchall_3cb

    move-object v0, v1

    .line 229
    :goto_3ae
    if-eqz v3, :cond_3b3

    .line 230
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_3b3
    :goto_3b3
    return-object v0

    .line 153
    :cond_3b4
    const/4 v0, 0x0

    goto/16 :goto_f5

    .line 227
    :catch_3b7
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_3ba
    :try_start_3ba
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3bd
    .catchall {:try_start_3ba .. :try_end_3bd} :catchall_3cd

    .line 229
    if-eqz v2, :cond_3b3

    .line 230
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3b3

    .line 229
    :catchall_3c3
    move-exception v0

    move-object v3, v2

    :goto_3c5
    if-eqz v3, :cond_3ca

    .line 230
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3ca
    throw v0

    .line 229
    :catchall_3cb
    move-exception v0

    goto :goto_3c5

    :catchall_3cd
    move-exception v0

    move-object v3, v2

    goto :goto_3c5

    .line 227
    :catch_3d0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_3ba

    :catch_3d5
    move-exception v0

    move-object v2, v3

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3ba

    :cond_3db
    move-object v0, v2

    goto :goto_3ae
.end method

.method public final declared-synchronized m(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 279
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package_name = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/g;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_29
    .catchall {:try_start_1 .. :try_end_19} :catchall_2b

    move-result-object v1

    if-nez v1, :cond_1e

    .line 286
    :goto_1c
    monitor-exit p0

    return-void

    .line 283
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/g;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "report_campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_29
    .catchall {:try_start_1e .. :try_end_28} :catchall_2b

    goto :goto_1c

    .line 286
    :catch_29
    move-exception v0

    goto :goto_1c

    .line 279
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
