.class public Lcom/mintegral/msdk/base/b/f;
.super Lcom/mintegral/msdk/base/b/a;
.source "CampaignDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mintegral/msdk/base/b/a",
        "<",
        "Lcom/mintegral/msdk/out/Campaign;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/mintegral/msdk/base/b/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/mintegral/msdk/base/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/b/f;->b:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/mintegral/msdk/base/b/f;->c:Lcom/mintegral/msdk/base/b/f;

    return-void
.end method

.method protected constructor <init>(Lcom/mintegral/msdk/base/b/h;)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/a;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    .line 30
    return-void
.end method

.method public static a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;
    .registers 3

    .prologue
    .line 33
    sget-object v0, Lcom/mintegral/msdk/base/b/f;->c:Lcom/mintegral/msdk/base/b/f;

    if-nez v0, :cond_13

    .line 34
    const-class v1, Lcom/mintegral/msdk/base/b/f;

    monitor-enter v1

    .line 35
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/b/f;->c:Lcom/mintegral/msdk/base/b/f;

    if-nez v0, :cond_12

    .line 36
    new-instance v0, Lcom/mintegral/msdk/base/b/f;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/base/b/f;-><init>(Lcom/mintegral/msdk/base/b/h;)V

    sput-object v0, Lcom/mintegral/msdk/base/b/f;->c:Lcom/mintegral/msdk/base/b/f;

    .line 38
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 40
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/b/f;->c:Lcom/mintegral/msdk/base/b/f;

    return-object v0

    .line 38
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1769
    const/4 v0, 0x0

    .line 1770
    if-eqz p0, :cond_522

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_522

    .line 1771
    new-instance v3, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;-><init>()V

    .line 1772
    const-string v0, "id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 1773
    const-string v0, "tab"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTab(I)V

    .line 1774
    const-string v0, "package_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 1775
    const-string v0, "app_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 1776
    const-string v0, "app_desc"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 1777
    const-string v0, "app_size"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setSize(Ljava/lang/String;)V

    .line 1778
    const-string v0, "image_size"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageSize(Ljava/lang/String;)V

    .line 1779
    const-string v0, "icon_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIconUrl(Ljava/lang/String;)V

    .line 1780
    const-string v0, "image_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 1781
    const-string v0, "impression_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 1782
    const-string v0, "notice_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 1783
    const-string v0, "download_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 1784
    const-string v0, "wtick"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWtick(I)V

    .line 1785
    const-string v0, "deeplink_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 1786
    const-string v0, "only_impression"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOnlyImpressionURL(Ljava/lang/String;)V

    .line 1787
    const-string v0, "preclick"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_523

    move v0, v1

    :goto_e0
    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClick(Z)V

    .line 1788
    const-string v0, "template"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTemplate(I)V

    .line 1789
    const-string v0, "landing_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLandingType(Ljava/lang/String;)V

    .line 1790
    const-string v0, "link_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLinkType(I)V

    .line 1791
    const-string v0, "click_mode"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClick_mode(Ljava/lang/String;)V

    .line 1792
    const-string v0, "star"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRating(D)V

    .line 1793
    const-string v0, "cti"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickInterval(I)V

    .line 1794
    const-string v0, "cpti"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClickInterval(I)V

    .line 1795
    const-string v0, "ts"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTimestamp(J)V

    .line 1796
    const-string v0, "level"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCacheLevel(I)V

    .line 1797
    const-string v0, "ad_call"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 1798
    const-string v0, "fc_b"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFcb(I)V

    .line 1799
    const-string v0, "ad_url_list"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAd_url_list(Ljava/lang/String;)V

    .line 1801
    const-string v0, "video_length"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoLength(I)V

    .line 1802
    const-string v0, "video_size"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoSize(J)V

    .line 1803
    const-string v0, "video_resolution"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoResolution(Ljava/lang/String;)V

    .line 1804
    const-string v0, "endcard_click_result"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndcard_click_result(I)V

    .line 1805
    const-string v0, "video_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    .line 1806
    const-string v0, "watch_mile"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWatchMile(I)V

    .line 1808
    const-string v0, "t_imp"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTImp(I)V

    .line 1809
    const-string v0, "bty"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBty(I)V

    .line 1810
    const-string v0, "advImp"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvImp(Ljava/lang/String;)V

    .line 1812
    const-string v0, "guidelines"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 1813
    const-string v0, "offer_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOfferType(I)V

    .line 1814
    const-string v0, "html_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 1815
    const-string v0, "guidelines"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 1816
    const-string v0, "html_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 1817
    const-string v0, "end_screen_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndScreenUrl(Ljava/lang/String;)V

    .line 1818
    const-string v0, "reward_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardName(Ljava/lang/String;)V

    .line 1819
    const-string v0, "reward_amount"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardAmount(I)V

    .line 1820
    const-string v0, "reward_play_status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardPlayStatus(I)V

    .line 1823
    const-string v0, "adv_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvId(Ljava/lang/String;)V

    .line 1826
    const-string v0, "ttc_ct2"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_ct2(I)V

    .line 1827
    const-string v0, "ttc_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_type(I)V

    .line 1829
    const-string v0, "retarget"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRetarget_offer(I)V

    .line 1832
    const-string v0, "unitid"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 1834
    const-string v0, "native_ad_tracking"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->TrackingStr2Object(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTracking(Lcom/mintegral/msdk/base/entity/j;)V

    .line 1835
    const-string v0, "native_ad_tracking"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTrackingString(Ljava/lang/String;)V

    .line 1837
    const-string v0, "video_end_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideo_end_type(I)V

    .line 1838
    const-string v0, "endcard_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setendcard_url(Ljava/lang/String;)V

    .line 1839
    const-string v0, "playable_ads_without_video"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlayable_ads_without_video(I)V

    .line 1840
    const-string v0, "loopback"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackString(Ljava/lang/String;)V

    .line 1841
    const-string v0, "loopback"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->loopbackStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackMap(Ljava/util/Map;)V

    .line 1844
    const-string v0, "reward_teamplate"

    .line 1846
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1845
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v0

    .line 1844
    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardTemplateMode(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)V

    .line 1847
    const-string v0, "md5_file"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoMD5Value(Ljava/lang/String;)V

    .line 1848
    const-string v0, "gif_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGifUrl(Ljava/lang/String;)V

    .line 1849
    const-string v0, "nv_t2"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNvT2(I)V

    .line 1850
    const-string v0, "c_coi"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickTimeOutInterval(I)V

    .line 1851
    const-string v0, "c_ua"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setcUA(I)V

    .line 1852
    const-string v0, "imp_ua"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpUA(I)V

    .line 1853
    const-string v0, "jm_pd"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setJmPd(I)V

    .line 1854
    const-string v0, "is_deleted"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsDeleted(I)V

    .line 1855
    const-string v0, "is_click"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsClick(I)V

    .line 1856
    const-string v0, "is_add_sucesful"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsAddSuccesful(I)V

    .line 1858
    const-string v0, "is_download_zip"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsDownLoadZip(I)V

    .line 1859
    const-string v0, "ia_cache"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setInteractiveCache(Ljava/lang/String;)V

    .line 1860
    const-string v0, "ia_ori"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaOri(I)V

    .line 1861
    const-string v0, "ad_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdType(I)V

    .line 1862
    const-string v0, "ia_ext1"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIa_ext1(Ljava/lang/String;)V

    .line 1863
    const-string v0, "ia_ext2"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIa_ext2(Ljava/lang/String;)V

    .line 1864
    const-string v0, "ia_rst"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaRst(I)V

    .line 1865
    const-string v0, "ia_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaUrl(Ljava/lang/String;)V

    .line 1866
    const-string v0, "ia_icon"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaIcon(Ljava/lang/String;)V

    .line 1868
    const-string v0, "gh_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhId(Ljava/lang/String;)V

    .line 1869
    const-string v0, "gh_path"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhPath(Ljava/lang/String;)V

    .line 1870
    const-string v0, "bind_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBindId(Ljava/lang/String;)V

    .line 1872
    const-string v0, "oc_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_time(I)V

    .line 1873
    const-string v0, "oc_type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_type(I)V

    .line 1874
    const-string v0, "t_list"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setT_list(Ljava/lang/String;)V

    .line 1876
    const-string v0, "adchoice"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1877
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47f

    .line 1878
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoice(Lcom/mintegral/msdk/base/entity/CampaignEx$a;)V

    .line 1880
    :cond_47f
    const-string v0, "adchoice_size_height"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoiceSizeHeight(I)V

    .line 1881
    const-string v0, "adchoice_size_width"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoiceSizeWidth(I)V

    .line 1884
    const-string v0, "plct"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlct(J)V

    .line 1885
    const-string v0, "plctb"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlctb(J)V

    .line 1888
    const-string v0, "banner_url"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 1889
    const-string v0, "banner_html"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 1890
    const-string v0, "creative_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCreativeId(J)V

    .line 1894
    const-string v0, "is_bid_campaign"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_526

    move v0, v1

    :goto_4e8
    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsBidCampaign(Z)V

    .line 1895
    const-string v0, "bid_token"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBidToken(Ljava/lang/String;)V

    .line 1898
    const-string v0, "mraid"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 1899
    const-string v0, "is_mraid_campaign"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_528

    :goto_511
    invoke-virtual {v3, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsMraid(Z)V

    .line 1901
    const-string v0, "omid"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    move-object v0, v3

    .line 1903
    :cond_522
    return-object v0

    :cond_523
    move v0, v2

    .line 1787
    goto/16 :goto_e0

    :cond_526
    move v0, v2

    .line 1894
    goto :goto_4e8

    :cond_528
    move v1, v2

    .line 1899
    goto :goto_511
.end method

.method private declared-synchronized l(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 855
    monitor-enter p0

    .line 857
    :try_start_4
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 858
    monitor-enter v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_4db
    .catchall {:try_start_4 .. :try_end_a} :catchall_4d8

    .line 859
    :try_start_a
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_4b7

    move-result-object v2

    .line 860
    :try_start_13
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_4de

    .line 861
    if-eqz v2, :cond_4d2

    :try_start_16
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4d2

    .line 862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 864
    :goto_21
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4cc

    .line 865
    new-instance v6, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;-><init>()V

    .line 866
    const-string v3, "id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 867
    const-string v3, "tab"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTab(I)V

    .line 868
    const-string v3, "package_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 869
    const-string v3, "app_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 870
    const-string v3, "app_desc"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 871
    const-string v3, "app_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setSize(Ljava/lang/String;)V

    .line 872
    const-string v3, "image_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageSize(Ljava/lang/String;)V

    .line 873
    const-string v3, "icon_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIconUrl(Ljava/lang/String;)V

    .line 874
    const-string v3, "image_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 875
    const-string v3, "impression_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 876
    const-string v3, "notice_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 877
    const-string v3, "download_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 878
    const-string v3, "wtick"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWtick(I)V

    .line 879
    const-string v3, "deeplink_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 880
    const-string v3, "only_impression"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOnlyImpressionURL(Ljava/lang/String;)V

    .line 883
    const-string v3, "preclick"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_4c5

    move v3, v4

    :goto_fc
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClick(Z)V

    .line 884
    const-string v3, "template"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTemplate(I)V

    .line 885
    const-string v3, "landing_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLandingType(Ljava/lang/String;)V

    .line 886
    const-string v3, "link_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLinkType(I)V

    .line 887
    const-string v3, "click_mode"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClick_mode(Ljava/lang/String;)V

    .line 888
    const-string v3, "star"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRating(D)V

    .line 889
    const-string v3, "cti"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickInterval(I)V

    .line 890
    const-string v3, "cpti"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClickInterval(I)V

    .line 891
    const-string v3, "ts"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTimestamp(J)V

    .line 892
    const-string v3, "level"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCacheLevel(I)V

    .line 893
    const-string v3, "adSource"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setType(I)V

    .line 894
    const-string v3, "ad_call"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 895
    const-string v3, "fc_a"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFca(I)V

    .line 896
    const-string v3, "fc_b"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFcb(I)V

    .line 897
    const-string v3, "ad_url_list"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAd_url_list(Ljava/lang/String;)V

    .line 899
    const-string v3, "video_length"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoLength(I)V

    .line 900
    const-string v3, "video_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoSize(J)V

    .line 901
    const-string v3, "video_resolution"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoResolution(Ljava/lang/String;)V

    .line 902
    const-string v3, "endcard_click_result"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndcard_click_result(I)V

    .line 903
    const-string v3, "video_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    .line 904
    const-string v3, "watch_mile"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWatchMile(I)V

    .line 906
    const-string v3, "t_imp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTImp(I)V

    .line 907
    const-string v3, "bty"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBty(I)V

    .line 908
    const-string v3, "advImp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvImp(Ljava/lang/String;)V

    .line 910
    const-string v3, "offer_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOfferType(I)V

    .line 911
    const-string v3, "guidelines"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 912
    const-string v3, "html_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 913
    const-string v3, "end_screen_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndScreenUrl(Ljava/lang/String;)V

    .line 914
    const-string v3, "reward_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardName(Ljava/lang/String;)V

    .line 915
    const-string v3, "reward_amount"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardAmount(I)V

    .line 916
    const-string v3, "reward_play_status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardPlayStatus(I)V

    .line 919
    const-string v3, "adv_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvId(Ljava/lang/String;)V

    .line 922
    const-string v3, "ttc_ct2"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_ct2(I)V

    .line 923
    const-string v3, "ttc_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_type(I)V

    .line 925
    const-string v3, "retarget"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRetarget_offer(I)V

    .line 928
    const-string v3, "unitid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 930
    const-string v3, "native_ad_tracking"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->TrackingStr2Object(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTracking(Lcom/mintegral/msdk/base/entity/j;)V

    .line 931
    const-string v3, "native_ad_tracking"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTrackingString(Ljava/lang/String;)V

    .line 933
    const-string v3, "video_end_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideo_end_type(I)V

    .line 934
    const-string v3, "endcard_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setendcard_url(Ljava/lang/String;)V

    .line 935
    const-string v3, "playable_ads_without_video"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlayable_ads_without_video(I)V

    .line 936
    const-string v3, "loopback"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackString(Ljava/lang/String;)V

    .line 937
    const-string v3, "loopback"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->loopbackStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackMap(Ljava/util/Map;)V

    .line 940
    const-string v3, "reward_teamplate"

    .line 942
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 941
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v3

    .line 940
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardTemplateMode(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)V

    .line 943
    const-string v3, "md5_file"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoMD5Value(Ljava/lang/String;)V

    .line 944
    const-string v3, "gif_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGifUrl(Ljava/lang/String;)V

    .line 945
    const-string v3, "nv_t2"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNvT2(I)V

    .line 946
    const-string v3, "c_coi"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickTimeOutInterval(I)V

    .line 947
    const-string v3, "c_ua"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setcUA(I)V

    .line 948
    const-string v3, "imp_ua"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpUA(I)V

    .line 950
    const-string v3, "gh_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhId(Ljava/lang/String;)V

    .line 951
    const-string v3, "gh_path"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhPath(Ljava/lang/String;)V

    .line 952
    const-string v3, "bind_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBindId(Ljava/lang/String;)V

    .line 954
    const-string v3, "oc_time"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_time(I)V

    .line 955
    const-string v3, "oc_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_type(I)V

    .line 956
    const-string v3, "t_list"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setT_list(Ljava/lang/String;)V

    .line 958
    const-string v3, "adchoice"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 959
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3f2

    .line 960
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoice(Lcom/mintegral/msdk/base/entity/CampaignEx$a;)V

    .line 962
    :cond_3f2
    const-string v3, "adchoice_size_height"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoiceSizeHeight(I)V

    .line 963
    const-string v3, "adchoice_size_width"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoiceSizeWidth(I)V

    .line 966
    const-string v3, "plct"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlct(J)V

    .line 967
    const-string v3, "plctb"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlctb(J)V

    .line 970
    const-string v3, "banner_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 971
    const-string v3, "banner_html"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 972
    const-string v3, "creative_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCreativeId(J)V

    .line 976
    const-string v3, "is_bid_campaign"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_4c8

    move v3, v4

    :goto_45b
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsBidCampaign(Z)V

    .line 977
    const-string v3, "bid_token"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBidToken(Ljava/lang/String;)V

    .line 980
    const-string v3, "ad_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdType(I)V

    .line 983
    const-string v3, "mraid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 984
    const-string v3, "is_mraid_campaign"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_4ca

    move v3, v4

    :goto_492
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsMraid(Z)V

    .line 985
    const-string v3, "omid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    .line 986
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4a5} :catch_4a7
    .catchall {:try_start_16 .. :try_end_4a5} :catchall_4bb

    goto/16 :goto_21

    .line 991
    :catch_4a7
    move-exception v0

    .line 992
    :goto_4a8
    :try_start_4a8
    sget-boolean v3, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v3, :cond_4af

    .line 993
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4af
    .catchall {:try_start_4a8 .. :try_end_4af} :catchall_4bb

    .line 996
    :cond_4af
    if-eqz v2, :cond_4b4

    .line 997
    :try_start_4b1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4b4
    .catchall {:try_start_4b1 .. :try_end_4b4} :catchall_4c2

    :cond_4b4
    :goto_4b4
    move-object v0, v1

    .line 1000
    :cond_4b5
    :goto_4b5
    monitor-exit p0

    return-object v0

    .line 860
    :catchall_4b7
    move-exception v0

    move-object v2, v1

    :goto_4b9
    :try_start_4b9
    monitor-exit v3
    :try_end_4ba
    .catchall {:try_start_4b9 .. :try_end_4ba} :catchall_4de

    :try_start_4ba
    throw v0
    :try_end_4bb
    .catch Ljava/lang/Exception; {:try_start_4ba .. :try_end_4bb} :catch_4a7
    .catchall {:try_start_4ba .. :try_end_4bb} :catchall_4bb

    .line 996
    :catchall_4bb
    move-exception v0

    :goto_4bc
    if-eqz v2, :cond_4c1

    .line 997
    :try_start_4be
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4c1
    throw v0
    :try_end_4c2
    .catchall {:try_start_4be .. :try_end_4c2} :catchall_4c2

    .line 855
    :catchall_4c2
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4c5
    move v3, v5

    .line 883
    goto/16 :goto_fc

    :cond_4c8
    move v3, v5

    .line 976
    goto :goto_45b

    :cond_4ca
    move v3, v5

    .line 984
    goto :goto_492

    .line 996
    :cond_4cc
    if-eqz v2, :cond_4b5

    .line 997
    :try_start_4ce
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4b5

    .line 996
    :cond_4d2
    if-eqz v2, :cond_4b4

    .line 997
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4d7
    .catchall {:try_start_4ce .. :try_end_4d7} :catchall_4c2

    goto :goto_4b4

    .line 996
    :catchall_4d8
    move-exception v0

    move-object v2, v1

    goto :goto_4bc

    .line 991
    :catch_4db
    move-exception v0

    move-object v2, v1

    goto :goto_4a8

    .line 860
    :catchall_4de
    move-exception v0

    goto :goto_4b9
.end method

.method private m(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1522
    .line 1524
    :try_start_3
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1525
    monitor-enter v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_56b
    .catchall {:try_start_3 .. :try_end_9} :catchall_568

    .line 1526
    :try_start_9
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_54a

    move-result-object v2

    .line 1527
    :try_start_12
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_56e

    .line 1528
    if-eqz v2, :cond_562

    :try_start_15
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_562

    .line 1529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1531
    :goto_20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_55c

    .line 1532
    new-instance v6, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;-><init>()V

    .line 1533
    const-string v3, "id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 1534
    const-string v3, "tab"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTab(I)V

    .line 1535
    const-string v3, "package_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 1536
    const-string v3, "app_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 1537
    const-string v3, "app_desc"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 1538
    const-string v3, "app_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setSize(Ljava/lang/String;)V

    .line 1539
    const-string v3, "image_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageSize(Ljava/lang/String;)V

    .line 1540
    const-string v3, "icon_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIconUrl(Ljava/lang/String;)V

    .line 1541
    const-string v3, "image_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 1542
    const-string v3, "impression_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 1543
    const-string v3, "notice_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 1544
    const-string v3, "download_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 1545
    const-string v3, "wtick"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWtick(I)V

    .line 1546
    const-string v3, "deeplink_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 1547
    const-string v3, "only_impression"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOnlyImpressionURL(Ljava/lang/String;)V

    .line 1550
    const-string v3, "preclick"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_555

    move v3, v4

    :goto_fb
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClick(Z)V

    .line 1551
    const-string v3, "template"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTemplate(I)V

    .line 1552
    const-string v3, "landing_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLandingType(Ljava/lang/String;)V

    .line 1553
    const-string v3, "link_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLinkType(I)V

    .line 1554
    const-string v3, "click_mode"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClick_mode(Ljava/lang/String;)V

    .line 1555
    const-string v3, "star"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRating(D)V

    .line 1556
    const-string v3, "cti"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickInterval(I)V

    .line 1557
    const-string v3, "cpti"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClickInterval(I)V

    .line 1558
    const-string v3, "ts"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTimestamp(J)V

    .line 1559
    const-string v3, "level"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCacheLevel(I)V

    .line 1560
    const-string v3, "ad_call"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 1561
    const-string v3, "fc_a"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFca(I)V

    .line 1562
    const-string v3, "fc_b"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFcb(I)V

    .line 1563
    const-string v3, "ad_url_list"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAd_url_list(Ljava/lang/String;)V

    .line 1565
    const-string v3, "video_length"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoLength(I)V

    .line 1566
    const-string v3, "video_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoSize(J)V

    .line 1567
    const-string v3, "video_resolution"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoResolution(Ljava/lang/String;)V

    .line 1568
    const-string v3, "endcard_click_result"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndcard_click_result(I)V

    .line 1570
    const-string v3, "video_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    .line 1571
    const-string v3, "watch_mile"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWatchMile(I)V

    .line 1573
    const-string v3, "t_imp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTImp(I)V

    .line 1574
    const-string v3, "bty"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBty(I)V

    .line 1575
    const-string v3, "advImp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvImp(Ljava/lang/String;)V

    .line 1577
    const-string v3, "guidelines"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 1578
    const-string v3, "offer_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOfferType(I)V

    .line 1579
    const-string v3, "html_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 1580
    const-string v3, "guidelines"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 1581
    const-string v3, "html_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 1582
    const-string v3, "end_screen_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndScreenUrl(Ljava/lang/String;)V

    .line 1583
    const-string v3, "reward_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardName(Ljava/lang/String;)V

    .line 1584
    const-string v3, "reward_amount"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardAmount(I)V

    .line 1585
    const-string v3, "reward_play_status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardPlayStatus(I)V

    .line 1588
    const-string v3, "adv_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvId(Ljava/lang/String;)V

    .line 1591
    const-string v3, "ttc_ct2"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_ct2(I)V

    .line 1592
    const-string v3, "ttc_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_type(I)V

    .line 1594
    const-string v3, "retarget"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRetarget_offer(I)V

    .line 1597
    const-string v3, "unitid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 1599
    const-string v3, "native_ad_tracking"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->TrackingStr2Object(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTracking(Lcom/mintegral/msdk/base/entity/j;)V

    .line 1600
    const-string v3, "native_ad_tracking"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTrackingString(Ljava/lang/String;)V

    .line 1602
    const-string v3, "video_end_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideo_end_type(I)V

    .line 1603
    const-string v3, "endcard_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setendcard_url(Ljava/lang/String;)V

    .line 1604
    const-string v3, "playable_ads_without_video"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlayable_ads_without_video(I)V

    .line 1605
    const-string v3, "loopback"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackString(Ljava/lang/String;)V

    .line 1606
    const-string v3, "loopback"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->loopbackStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackMap(Ljava/util/Map;)V

    .line 1609
    const-string v3, "reward_teamplate"

    .line 1611
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1610
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v3

    .line 1609
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardTemplateMode(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)V

    .line 1612
    const-string v3, "md5_file"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoMD5Value(Ljava/lang/String;)V

    .line 1613
    const-string v3, "gif_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGifUrl(Ljava/lang/String;)V

    .line 1614
    const-string v3, "nv_t2"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNvT2(I)V

    .line 1615
    const-string v3, "c_coi"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickTimeOutInterval(I)V

    .line 1616
    const-string v3, "c_ua"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setcUA(I)V

    .line 1617
    const-string v3, "imp_ua"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpUA(I)V

    .line 1618
    const-string v3, "is_deleted"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsDeleted(I)V

    .line 1619
    const-string v3, "is_click"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsClick(I)V

    .line 1620
    const-string v3, "is_add_sucesful"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsAddSuccesful(I)V

    .line 1621
    const-string v3, "ia_ori"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaOri(I)V

    .line 1622
    const-string v3, "ad_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdType(I)V

    .line 1623
    const-string v3, "ia_ext1"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIa_ext1(Ljava/lang/String;)V

    .line 1624
    const-string v3, "ia_ext2"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIa_ext2(Ljava/lang/String;)V

    .line 1625
    const-string v3, "ia_rst"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaRst(I)V

    .line 1626
    const-string v3, "ia_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaUrl(Ljava/lang/String;)V

    .line 1627
    const-string v3, "ia_icon"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaIcon(Ljava/lang/String;)V

    .line 1628
    const-string v3, "is_download_zip"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsDownLoadZip(I)V

    .line 1629
    const-string v3, "ia_cache"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setInteractiveCache(Ljava/lang/String;)V

    .line 1631
    const-string v3, "gh_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhId(Ljava/lang/String;)V

    .line 1632
    const-string v3, "gh_path"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhPath(Ljava/lang/String;)V

    .line 1633
    const-string v3, "bind_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBindId(Ljava/lang/String;)V

    .line 1635
    const-string v3, "oc_time"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_time(I)V

    .line 1636
    const-string v3, "oc_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_type(I)V

    .line 1637
    const-string v3, "t_list"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setT_list(Ljava/lang/String;)V

    .line 1639
    const-string v3, "adchoice"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1640
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_49a

    .line 1641
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoice(Lcom/mintegral/msdk/base/entity/CampaignEx$a;)V

    .line 1643
    :cond_49a
    const-string v3, "adchoice_size_height"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoiceSizeHeight(I)V

    .line 1644
    const-string v3, "adchoice_size_width"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoiceSizeWidth(I)V

    .line 1647
    const-string v3, "plct"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlct(J)V

    .line 1648
    const-string v3, "plctb"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlctb(J)V

    .line 1651
    const-string v3, "banner_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 1652
    const-string v3, "banner_html"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 1653
    const-string v3, "creative_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCreativeId(J)V

    .line 1657
    const-string v3, "is_bid_campaign"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_558

    move v3, v4

    :goto_503
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsBidCampaign(Z)V

    .line 1658
    const-string v3, "bid_token"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBidToken(Ljava/lang/String;)V

    .line 1661
    const-string v3, "mraid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 1662
    const-string v3, "is_mraid_campaign"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_55a

    move v3, v4

    :goto_52d
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsMraid(Z)V

    .line 1664
    const-string v3, "omid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    .line 1665
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_540
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_540} :catch_542
    .catchall {:try_start_15 .. :try_end_540} :catchall_54e

    goto/16 :goto_20

    .line 1672
    :catch_542
    move-exception v0

    :goto_543
    if-eqz v2, :cond_548

    .line 1673
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_548
    :goto_548
    move-object v0, v1

    .line 1676
    :cond_549
    :goto_549
    return-object v0

    .line 1527
    :catchall_54a
    move-exception v0

    move-object v2, v1

    :goto_54c
    :try_start_54c
    monitor-exit v3
    :try_end_54d
    .catchall {:try_start_54c .. :try_end_54d} :catchall_56e

    :try_start_54d
    throw v0
    :try_end_54e
    .catch Ljava/lang/Exception; {:try_start_54d .. :try_end_54e} :catch_542
    .catchall {:try_start_54d .. :try_end_54e} :catchall_54e

    .line 1672
    :catchall_54e
    move-exception v0

    :goto_54f
    if-eqz v2, :cond_554

    .line 1673
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_554
    throw v0

    :cond_555
    move v3, v5

    .line 1550
    goto/16 :goto_fb

    :cond_558
    move v3, v5

    .line 1657
    goto :goto_503

    :cond_55a
    move v3, v5

    .line 1662
    goto :goto_52d

    .line 1672
    :cond_55c
    if-eqz v2, :cond_549

    .line 1673
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_549

    .line 1672
    :cond_562
    if-eqz v2, :cond_548

    .line 1673
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_548

    .line 1672
    :catchall_568
    move-exception v0

    move-object v2, v1

    goto :goto_54f

    :catch_56b
    move-exception v0

    move-object v2, v1

    goto :goto_543

    .line 1527
    :catchall_56e
    move-exception v0

    goto :goto_54c
.end method

.method private n(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1711
    .line 1713
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM campaign where unitid =\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1714
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1e} :catch_20

    move-result-object v0

    .line 1718
    :goto_1f
    return-object v0

    .line 1716
    :catch_20
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1f
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;J)I
    .registers 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 764
    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 765
    if-nez v0, :cond_1b

    .line 766
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 768
    :cond_1b
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->ak()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 769
    invoke-virtual {p0, v4, v5, p1}, Lcom/mintegral/msdk/base/b/f;->a(JLjava/lang/String;)V

    .line 770
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, v3}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    .line 771
    if-eqz v0, :cond_33

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_50
    .catchall {:try_start_3 .. :try_end_30} :catchall_53

    move-result v3

    if-eqz v3, :cond_36

    .line 772
    :cond_33
    const/4 v0, -0x1

    .line 785
    :goto_34
    monitor-exit p0

    return v0

    .line 774
    :cond_36
    :try_start_36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 775
    invoke-virtual {v0, p2, p3, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isSpareOffer(JJ)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_49} :catch_50
    .catchall {:try_start_36 .. :try_end_49} :catchall_53

    move-result v0

    if-nez v0, :cond_3a

    move v0, v1

    .line 776
    goto :goto_34

    :cond_4e
    move v0, v2

    .line 779
    goto :goto_34

    .line 785
    :catch_50
    move-exception v0

    move v0, v1

    goto :goto_34

    .line 764
    :catchall_53
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)J
    .registers 9

    .prologue
    const-wide/16 v0, -0x1

    .line 557
    monitor-enter p0

    if-nez p1, :cond_9

    .line 558
    const-wide/16 v0, 0x0

    .line 697
    :cond_7
    :goto_7
    monitor-exit p0

    return-wide v0

    .line 560
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 563
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 564
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v3, "unitid"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v3, "tab"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTab()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    const-string v3, "package_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v3, "app_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v3, "app_desc"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v3, "app_size"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v3, "image_size"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v3, "icon_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v3, "image_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v3, "impression_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v3, "notice_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v3, "download_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v3, "wtick"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWtick()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    const-string v3, "deeplink_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getDeepLinkURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v3, "only_impression"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v3, "ts"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 582
    const-string v3, "template"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTemplate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    const-string v3, "click_mode"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v3, "landing_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLandingType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v3, "link_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 586
    const-string v3, "star"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRating()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 587
    const-string v3, "cti"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickInterval()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 588
    const-string v3, "cpti"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPreClickInterval()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 589
    const-string v3, "preclick"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isPreClick()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 590
    const-string v3, "level"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCacheLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 591
    const-string v3, "adSource"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 592
    const-string v3, "ad_call"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v3, "fc_a"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFca()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    const-string v3, "fc_b"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFcb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    const-string v3, "ad_url_list"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAd_url_list()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v3, "video_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v3, "video_size"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 599
    const-string v3, "video_length"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    const-string v3, "video_resolution"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v3, "endcard_click_result"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getEndcard_click_result()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 602
    const-string v3, "watch_mile"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWatchMile()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    const-string v3, "advImp"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdvImp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v3, "bty"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBty()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    const-string v3, "t_imp"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTImp()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    const-string v3, "guidelines"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGuidelines()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v3, "offer_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOfferType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 610
    const-string v3, "html_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v3, "end_screen_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v3, "reward_amount"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardAmount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    const-string v3, "reward_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v3, "reward_play_status"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardPlayStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 617
    const-string v3, "adv_id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdvId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v3, "ttc_ct2"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTtc_ct2()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    const-string v3, "ttc_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTtc_type()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    const-string v3, "retarget"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRetarget_offer()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    const-string v3, "native_ad_tracking"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTrackingString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v3, "playable_ads_without_video"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 630
    const-string v3, "endcard_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v3, "video_end_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideo_end_type()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 632
    const-string v3, "loopback"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLoopbackString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v3, "md5_file"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoMD5Value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v3, "nv_t2"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNvT2()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    const-string v3, "gif_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v3

    if-eqz v3, :cond_2a8

    .line 639
    const-string v3, "reward_teamplate"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_2a8
    const-string v3, "c_coi"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickTimeOutInterval()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    const-string v3, "c_ua"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getcUA()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 643
    const-string v3, "imp_ua"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpUA()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string v3, "jm_pd"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getJmPd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    const-string v3, "is_deleted"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIsDeleted()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    const-string v3, "is_click"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIsClick()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    const-string v3, "is_add_sucesful"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIsAddSuccesful()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    const-string v3, "short_ctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v3, "ia_icon"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v3, "ia_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v3, "ia_rst"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaRst()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    const-string v3, "ia_ori"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaOri()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    const-string v3, "ad_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    const-string v3, "ia_ext1"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIa_ext1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v3, "ia_ext2"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIa_ext2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v3, "is_download_zip"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIsDownLoadZip()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    const-string v3, "ia_cache"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getInteractiveCache()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v3, "gh_id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGhId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v3, "gh_path"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGhPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v3, "bind_id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBindId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v3, "oc_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOc_type()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 665
    const-string v3, "oc_time"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOc_time()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 666
    const-string v3, "t_list"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getT_list()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdchoice()Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v3

    .line 669
    if-eqz v3, :cond_3d8

    .line 670
    const-string v4, "adchoice"

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v4, "adchoice_size_height"

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    const-string v4, "adchoice_size_width"

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 676
    :cond_3d8
    const-string v3, "plct"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlct()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 677
    const-string v3, "plctb"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlctb()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 680
    const-string v3, "banner_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v3, "banner_html"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v3, "creative_id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCreativeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 686
    const-string v3, "is_bid_campaign"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 687
    const-string v3, "bid_token"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v3, "mraid"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v3, "is_mraid_campaign"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 692
    const-string v3, "omid"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOmid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "campaign"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_450
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_450} :catch_456
    .catchall {:try_start_9 .. :try_end_450} :catchall_453

    move-result-wide v0

    goto/16 :goto_7

    .line 557
    :catchall_453
    move-exception v0

    monitor-exit p0

    throw v0

    .line 697
    :catch_456
    move-exception v2

    goto/16 :goto_7
.end method

.method public final declared-synchronized a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;I)J
    .registers 14

    .prologue
    const-wide/16 v8, -0x1

    .line 399
    monitor-enter p0

    if-nez p1, :cond_9

    .line 400
    const-wide/16 v0, 0x0

    .line 552
    :goto_7
    monitor-exit p0

    return-wide v0

    .line 402
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_11

    move-wide v0, v8

    .line 403
    goto :goto_7

    .line 405
    :cond_11
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 406
    const-string v0, "id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "unitid"

    invoke-virtual {v7, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v0, "tab"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTab()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    const-string v0, "package_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v0, "app_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v0, "app_desc"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v0, "app_size"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v0, "image_size"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v0, "icon_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v0, "image_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v0, "impression_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v0, "notice_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v0, "download_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v0, "wtick"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWtick()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    const-string v0, "wtick"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWtick()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v0, "deeplink_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getDeepLinkURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v0, "only_impression"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v0, "ts"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 425
    const-string v0, "template"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTemplate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    const-string v0, "click_mode"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v0, "landing_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLandingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v0, "link_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    const-string v0, "star"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRating()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 430
    const-string v0, "cti"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickInterval()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    const-string v0, "cpti"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPreClickInterval()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 432
    const-string v0, "preclick"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isPreClick()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 433
    const-string v0, "level"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCacheLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    const-string v0, "adSource"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
    const-string v0, "ad_call"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "fc_a"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFca()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v0, "fc_b"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFcb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    const-string v0, "ad_url_list"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAd_url_list()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v0, "video_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v0, "video_size"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 442
    const-string v0, "video_length"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoLength()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    const-string v0, "video_resolution"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v0, "endcard_click_result"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getEndcard_click_result()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    const-string v0, "watch_mile"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWatchMile()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    const-string v0, "advImp"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdvImp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v0, "bty"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBty()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    const-string v0, "t_imp"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTImp()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    const-string v0, "guidelines"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGuidelines()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v0, "offer_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOfferType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    const-string v0, "html_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v0, "end_screen_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v0, "reward_amount"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardAmount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    const-string v0, "reward_name"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v0, "reward_play_status"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardPlayStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    const-string v0, "adv_id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdvId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v0, "ttc_ct2"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTtc_ct2()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    const-string v0, "ttc_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTtc_type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    const-string v0, "retarget"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRetarget_offer()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 469
    const-string v0, "native_ad_tracking"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTrackingString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v0, "playable_ads_without_video"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 473
    const-string v0, "endcard_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v0, "video_end_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideo_end_type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    const-string v0, "loopback"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLoopbackString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v0, "md5_file"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoMD5Value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v0, "nv_t2"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNvT2()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 479
    const-string v0, "gif_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v0

    if-eqz v0, :cond_2b7

    .line 482
    const-string v0, "reward_teamplate"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_2b7
    const-string v0, "c_coi"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickTimeOutInterval()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 485
    const-string v0, "c_ua"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getcUA()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 486
    const-string v0, "imp_ua"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImpUA()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    const-string v0, "jm_pd"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getJmPd()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    const-string v0, "is_deleted"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIsDeleted()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    const-string v0, "is_click"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIsClick()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    const-string v0, "is_add_sucesful"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIsAddSuccesful()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 491
    const-string v0, "short_ctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v0, "ia_icon"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v0, "ia_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v0, "ia_rst"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaRst()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    const-string v0, "ia_ori"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getKeyIaOri()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    const-string v0, "ad_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    const-string v0, "ia_ext1"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIa_ext1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v0, "ia_ext2"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIa_ext2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v0, "is_download_zip"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIsDownLoadZip()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v0, "ia_cache"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getInteractiveCache()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v0, "gh_id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGhId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v0, "gh_path"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGhPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v0, "bind_id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBindId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v0, "oc_time"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOc_time()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    const-string v0, "oc_type"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOc_type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    const-string v0, "t_list"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getT_list()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdchoice()Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_3e7

    .line 513
    const-string v1, "adchoice"

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v1, "adchoice_size_height"

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 515
    const-string v1, "adchoice_size_width"

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    :cond_3e7
    const-string v0, "plct"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlct()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 520
    const-string v0, "plctb"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlctb()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 523
    const-string v0, "banner_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v0, "banner_html"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v0, "creative_id"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCreativeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 529
    const-string v0, "is_bid_campaign"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 530
    const-string v0, "bid_token"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v0, "mraid"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v0, "is_mraid_campaign"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 535
    const-string v0, "omid"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOmid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTab()I

    move-result v2

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getType()I

    move-result v5

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v6

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_4bb

    .line 539
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v0

    if-eqz v0, :cond_497

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unitid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND is_bid_campaign = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    :goto_489
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v7, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_7

    .line 542
    :cond_497
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND unitid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND is_bid_campaign = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_489

    .line 547
    :cond_4bb
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "campaign"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4c5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4c5} :catch_4c8
    .catchall {:try_start_9 .. :try_end_4c5} :catchall_4cc

    move-result-wide v0

    goto/16 :goto_7

    .line 552
    :catch_4c8
    move-exception v0

    move-wide v0, v8

    goto/16 :goto_7

    .line 399
    :catchall_4cc
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;III)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " WHERE unitid = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND adSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 829
    const-string v0, ""

    .line 830
    if-lez p2, :cond_36

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " LIMIT "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 833
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM campaign"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 835
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/b/f;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;IZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " WHERE unitid = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND level = 0 AND adSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    if-eqz p3, :cond_2f

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND is_bid_campaign = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    :cond_2f
    const-string v1, ""

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM campaign"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 851
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/b/f;->l(Ljava/lang/String;)Ljava/util/List;
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_4a

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 840
    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1492
    if-nez p1, :cond_4

    .line 1518
    :goto_3
    return-object v0

    .line 1495
    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, " WHERE unitid = \'"

    .line 1496
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' AND ("

    .line 1500
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1501
    const/4 v2, 0x0

    :goto_16
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3f

    .line 1502
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1503
    if-eqz v2, :cond_2c

    .line 1504
    const-string v4, " or "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1506
    :cond_2c
    const-string v4, "id = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1508
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\'"

    .line 1509
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1501
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1511
    :cond_3f
    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1512
    sget-object v2, Lcom/mintegral/msdk/base/b/f;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tabWhereSb : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM campaign"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ia_cache = \'onelevel\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1514
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/base/b/f;->m(Ljava/lang/String;)Ljava/util/List;
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_71} :catch_73

    move-result-object v0

    goto :goto_3

    .line 1516
    :catch_73
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public final declared-synchronized a(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tab = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND unitid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_2d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2f

    move-result-object v1

    if-nez v1, :cond_22

    .line 168
    :goto_20
    monitor-exit p0

    return-void

    .line 165
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_2d
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2f

    goto :goto_20

    .line 168
    :catch_2d
    move-exception v0

    goto :goto_20

    .line 161
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JLjava/lang/String;)V
    .registers 11

    .prologue
    .line 366
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 367
    sub-long v2, v0, p1

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(plctb>0 and (plctb* 1000+ts)<"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") or (plctb<=0 and ts<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") and unitid=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 373
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 374
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 375
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "campaign"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_3d
    .catchall {:try_start_1 .. :try_end_3b} :catchall_48

    .line 380
    :cond_3b
    :goto_3b
    monitor-exit p0

    return-void

    .line 377
    :catch_3d
    move-exception v0

    .line 378
    :try_start_3e
    sget-object v1, Lcom/mintegral/msdk/base/b/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_48

    goto :goto_3b

    .line 366
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_29
    .catchall {:try_start_1 .. :try_end_19} :catchall_37

    move-result-object v1

    if-nez v1, :cond_1e

    .line 126
    :goto_1c
    monitor-exit p0

    return-void

    .line 121
    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_29
    .catchall {:try_start_1e .. :try_end_28} :catchall_37

    goto :goto_1c

    .line 122
    :catch_29
    move-exception v0

    .line 123
    :try_start_2a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    sget-object v1, Lcom/mintegral/msdk/base/b/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_37

    goto :goto_1c

    .line 116
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 45
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unitid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND level = 2 AND adSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_2d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2f

    move-result-object v1

    if-nez v1, :cond_22

    .line 53
    :goto_20
    monitor-exit p0

    return-void

    .line 50
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_2d
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2f

    goto :goto_20

    .line 53
    :catch_2d
    move-exception v0

    goto :goto_20

    .line 45
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;IIZ)V
    .registers 9

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unitid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND adSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND is_bid_campaign = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_46

    const/4 v0, 0x1

    :goto_36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_41} :catch_53
    .catchall {:try_start_1 .. :try_end_41} :catchall_55

    move-result-object v1

    if-nez v1, :cond_48

    .line 66
    :goto_44
    monitor-exit p0

    return-void

    .line 59
    :cond_46
    const/4 v0, 0x0

    goto :goto_36

    .line 63
    :cond_48
    :try_start_48
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_52} :catch_53
    .catchall {:try_start_48 .. :try_end_52} :catchall_55

    goto :goto_44

    .line 66
    :catch_53
    move-exception v0

    goto :goto_44

    .line 57
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 8

    .prologue
    .line 228
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 229
    const-string v1, "campaign"

    const-string v2, "id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_14
    .catchall {:try_start_1 .. :try_end_12} :catchall_19

    .line 233
    :goto_12
    monitor-exit p0

    return-void

    .line 231
    :catch_14
    move-exception v0

    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_12

    .line 228
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND unitid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_2d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2f

    move-result-object v1

    if-nez v1, :cond_22

    .line 87
    :goto_20
    monitor-exit p0

    return-void

    .line 84
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_2d
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2f

    goto :goto_20

    .line 87
    :catch_2d
    move-exception v0

    goto :goto_20

    .line 80
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 10

    .prologue
    .line 144
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND unitid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND adSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    if-eqz p5, :cond_4b

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND is_bid_campaign = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_43
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_46} :catch_6a
    .catchall {:try_start_1 .. :try_end_46} :catchall_6c

    move-result-object v1

    if-nez v1, :cond_5f

    .line 157
    :goto_49
    monitor-exit p0

    return-void

    .line 149
    :cond_4b
    :try_start_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND is_bid_campaign = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    .line 154
    :cond_5f
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_69} :catch_6a
    .catchall {:try_start_4b .. :try_end_69} :catchall_6c

    goto :goto_49

    .line 157
    :catch_6a
    move-exception v0

    goto :goto_49

    .line 144
    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND unitid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND is_bid_campaign = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_30

    const-string v0, "1"

    :goto_20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_3e
    .catchall {:try_start_1 .. :try_end_2b} :catchall_40

    move-result-object v1

    if-nez v1, :cond_33

    .line 99
    :goto_2e
    monitor-exit p0

    return-void

    .line 91
    :cond_30
    :try_start_30
    const-string v0, "0"

    goto :goto_20

    .line 96
    :cond_33
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3d} :catch_3e
    .catchall {:try_start_30 .. :try_end_3d} :catchall_40

    goto :goto_2e

    .line 99
    :catch_3e
    move-exception v0

    goto :goto_2e

    .line 91
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 702
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_17

    move-result v0

    if-nez v0, :cond_9

    .line 718
    :goto_7
    monitor-exit p0

    return-void

    .line 706
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/base/b/f$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/base/b/f$1;-><init>(Lcom/mintegral/msdk/base/b/f;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 715
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 702
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;ILjava/lang/String;IIZ)Z
    .registers 10

    .prologue
    .line 803
    monitor-enter p0

    :try_start_1
    const-string v0, "SELECT id FROM campaign WHERE "

    .line 804
    if-eqz p6, :cond_39

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "unitid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND is_bid_campaign = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    :goto_22
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_7f

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7f

    .line 815
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_86

    .line 816
    const/4 v0, 0x1

    .line 821
    :goto_37
    monitor-exit p0

    return v0

    .line 807
    :cond_39
    :try_start_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND tab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND unitid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND adSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND is_bid_campaign = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 818
    :cond_7f
    if-eqz v0, :cond_84

    .line 819
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_84
    .catchall {:try_start_39 .. :try_end_84} :catchall_86

    .line 821
    :cond_84
    const/4 v0, 0x0

    goto :goto_37

    .line 803
    :catchall_86
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(ILjava/lang/String;)I
    .registers 13

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 320
    monitor-enter p0

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tab = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND unitid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 322
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, " count(id) "

    aput-object v1, v2, v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_5b

    .line 326
    :try_start_24
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "campaign"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_31} :catch_47
    .catchall {:try_start_24 .. :try_end_31} :catchall_53

    move-result-object v1

    .line 327
    if-eqz v1, :cond_64

    .line 328
    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 329
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_60
    .catchall {:try_start_34 .. :try_end_3e} :catchall_5e

    move-result v8

    move v0, v8

    .line 335
    :goto_40
    if-eqz v1, :cond_45

    .line 336
    :try_start_42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_5b

    .line 340
    :cond_45
    :goto_45
    monitor-exit p0

    return v0

    .line 333
    :catch_47
    move-exception v0

    move-object v1, v9

    :goto_49
    :try_start_49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5e

    .line 335
    if-eqz v1, :cond_62

    .line 336
    :try_start_4e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_45

    .line 335
    :catchall_53
    move-exception v0

    move-object v1, v9

    :goto_55
    if-eqz v1, :cond_5a

    .line 336
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5a
    throw v0
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_5b

    .line 320
    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 335
    :catchall_5e
    move-exception v0

    goto :goto_55

    .line 333
    :catch_60
    move-exception v0

    goto :goto_49

    :cond_62
    move v0, v8

    goto :goto_45

    :cond_64
    move v0, v8

    goto :goto_40
.end method

.method public final declared-synchronized b(JLjava/lang/String;)V
    .registers 9

    .prologue
    .line 387
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ts<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and unitid=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 390
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 391
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "campaign"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_35
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 395
    :cond_30
    :goto_30
    monitor-exit p0

    return-void

    .line 387
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0

    .line 395
    :catch_35
    move-exception v0

    goto :goto_30
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 172
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unitid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_23
    .catchall {:try_start_1 .. :try_end_13} :catchall_25

    move-result-object v1

    if-nez v1, :cond_18

    .line 179
    :goto_16
    monitor-exit p0

    return-void

    .line 176
    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_22} :catch_23
    .catchall {:try_start_18 .. :try_end_22} :catchall_25

    goto :goto_16

    .line 179
    :catch_23
    move-exception v0

    goto :goto_16

    .line 172
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unitid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ia_rst = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_2d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2f

    move-result-object v1

    if-nez v1, :cond_22

    .line 190
    :goto_20
    monitor-exit p0

    return-void

    .line 187
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_2d
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2f

    goto :goto_20

    .line 190
    :catch_2d
    move-exception v0

    goto :goto_20

    .line 183
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unitid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ia_ext1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_2d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2f

    move-result-object v1

    if-nez v1, :cond_22

    .line 201
    :goto_20
    monitor-exit p0

    return-void

    .line 198
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_2d
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2f

    goto :goto_20

    .line 201
    :catch_2d
    move-exception v0

    goto :goto_20

    .line 194
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 722
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    move-result v0

    if-nez v0, :cond_b

    .line 738
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 726
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/base/b/f$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/base/b/f$2;-><init>(Lcom/mintegral/msdk/base/b/f;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 735
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_9

    .line 722
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1907
    .line 1910
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM campaign where unitid =\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' and id = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1912
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_43
    .catchall {:try_start_1 .. :try_end_28} :catchall_51

    move-result-object v2

    .line 1913
    if-eqz v2, :cond_65

    :try_start_2b
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_5b
    .catchall {:try_start_2b .. :try_end_2e} :catchall_58

    move-result v0

    if-lez v0, :cond_65

    .line 1914
    :goto_31
    :try_start_31
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1915
    invoke-static {v2}, Lcom/mintegral/msdk/base/b/f;->a(Landroid/database/Cursor;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_60
    .catchall {:try_start_31 .. :try_end_3a} :catchall_58

    move-result-object v1

    goto :goto_31

    :cond_3c
    move-object v0, v1

    .line 1921
    :goto_3d
    if-eqz v2, :cond_42

    .line 1922
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1925
    :cond_42
    :goto_42
    return-object v0

    .line 1919
    :catch_43
    move-exception v0

    move-object v2, v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_48
    :try_start_48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_58

    .line 1921
    if-eqz v2, :cond_42

    .line 1922
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_42

    .line 1921
    :catchall_51
    move-exception v0

    :goto_52
    if-eqz v1, :cond_57

    .line 1922
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_57
    throw v0

    .line 1921
    :catchall_58
    move-exception v0

    move-object v1, v2

    goto :goto_52

    .line 1919
    :catch_5b
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_48

    :catch_60
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_48

    :cond_65
    move-object v0, v1

    goto :goto_3d
.end method

.method public final c(ILjava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " WHERE tab = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND unitid = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1166
    const-string v2, " LIMIT 20"

    .line 1168
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "SELECT * FROM campaign"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1171
    :try_start_37
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1172
    monitor-enter v3
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3d} :catch_55e
    .catchall {:try_start_37 .. :try_end_3d} :catchall_55b

    .line 1173
    :try_start_3d
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_53d

    move-result-object v2

    .line 1174
    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_561

    .line 1175
    if-eqz v2, :cond_555

    :try_start_49
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_555

    .line 1176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    :goto_54
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_54f

    .line 1179
    new-instance v6, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;-><init>()V

    .line 1180
    const-string v3, "id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 1181
    const-string v3, "tab"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTab(I)V

    .line 1182
    const-string v3, "package_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 1183
    const-string v3, "app_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 1184
    const-string v3, "app_desc"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 1185
    const-string v3, "app_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setSize(Ljava/lang/String;)V

    .line 1186
    const-string v3, "image_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageSize(Ljava/lang/String;)V

    .line 1187
    const-string v3, "icon_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIconUrl(Ljava/lang/String;)V

    .line 1188
    const-string v3, "image_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 1189
    const-string v3, "impression_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 1190
    const-string v3, "notice_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 1191
    const-string v3, "download_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 1192
    const-string v3, "wtick"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWtick(I)V

    .line 1193
    const-string v3, "deeplink_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 1194
    const-string v3, "only_impression"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOnlyImpressionURL(Ljava/lang/String;)V

    .line 1197
    const-string v3, "preclick"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_548

    move v3, v4

    :goto_12f
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClick(Z)V

    .line 1198
    const-string v3, "template"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTemplate(I)V

    .line 1199
    const-string v3, "landing_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLandingType(Ljava/lang/String;)V

    .line 1200
    const-string v3, "link_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLinkType(I)V

    .line 1201
    const-string v3, "click_mode"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClick_mode(Ljava/lang/String;)V

    .line 1202
    const-string v3, "star"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRating(D)V

    .line 1203
    const-string v3, "cti"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickInterval(I)V

    .line 1204
    const-string v3, "cpti"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClickInterval(I)V

    .line 1205
    const-string v3, "ts"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTimestamp(J)V

    .line 1206
    const-string v3, "level"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCacheLevel(I)V

    .line 1207
    const-string v3, "ad_call"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 1208
    const-string v3, "fc_a"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFca(I)V

    .line 1209
    const-string v3, "fc_b"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFcb(I)V

    .line 1210
    const-string v3, "ad_url_list"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAd_url_list(Ljava/lang/String;)V

    .line 1212
    const-string v3, "video_length"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoLength(I)V

    .line 1213
    const-string v3, "video_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoSize(J)V

    .line 1214
    const-string v3, "video_resolution"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoResolution(Ljava/lang/String;)V

    .line 1215
    const-string v3, "endcard_click_result"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndcard_click_result(I)V

    .line 1217
    const-string v3, "video_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    .line 1218
    const-string v3, "watch_mile"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWatchMile(I)V

    .line 1220
    const-string v3, "t_imp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTImp(I)V

    .line 1221
    const-string v3, "bty"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBty(I)V

    .line 1222
    const-string v3, "advImp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvImp(Ljava/lang/String;)V

    .line 1224
    const-string v3, "guidelines"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 1225
    const-string v3, "offer_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOfferType(I)V

    .line 1226
    const-string v3, "html_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 1227
    const-string v3, "guidelines"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 1228
    const-string v3, "html_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 1229
    const-string v3, "end_screen_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndScreenUrl(Ljava/lang/String;)V

    .line 1230
    const-string v3, "reward_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardName(Ljava/lang/String;)V

    .line 1231
    const-string v3, "reward_amount"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardAmount(I)V

    .line 1232
    const-string v3, "reward_play_status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardPlayStatus(I)V

    .line 1235
    const-string v3, "adv_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvId(Ljava/lang/String;)V

    .line 1238
    const-string v3, "ttc_ct2"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_ct2(I)V

    .line 1239
    const-string v3, "ttc_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_type(I)V

    .line 1241
    const-string v3, "retarget"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRetarget_offer(I)V

    .line 1244
    const-string v3, "unitid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 1246
    const-string v3, "native_ad_tracking"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->TrackingStr2Object(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTracking(Lcom/mintegral/msdk/base/entity/j;)V

    .line 1247
    const-string v3, "native_ad_tracking"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTrackingString(Ljava/lang/String;)V

    .line 1249
    const-string v3, "video_end_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideo_end_type(I)V

    .line 1250
    const-string v3, "endcard_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setendcard_url(Ljava/lang/String;)V

    .line 1251
    const-string v3, "playable_ads_without_video"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlayable_ads_without_video(I)V

    .line 1252
    const-string v3, "loopback"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackString(Ljava/lang/String;)V

    .line 1253
    const-string v3, "loopback"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->loopbackStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackMap(Ljava/util/Map;)V

    .line 1256
    const-string v3, "reward_teamplate"

    .line 1258
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1257
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v3

    .line 1256
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardTemplateMode(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)V

    .line 1259
    const-string v3, "md5_file"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoMD5Value(Ljava/lang/String;)V

    .line 1260
    const-string v3, "gif_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGifUrl(Ljava/lang/String;)V

    .line 1261
    const-string v3, "nv_t2"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNvT2(I)V

    .line 1262
    const-string v3, "c_coi"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickTimeOutInterval(I)V

    .line 1263
    const-string v3, "c_ua"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setcUA(I)V

    .line 1264
    const-string v3, "imp_ua"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpUA(I)V

    .line 1265
    const-string v3, "ia_ori"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaOri(I)V

    .line 1266
    const-string v3, "ad_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdType(I)V

    .line 1267
    const-string v3, "ia_ext1"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIa_ext1(Ljava/lang/String;)V

    .line 1268
    const-string v3, "ia_ext2"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIa_ext2(Ljava/lang/String;)V

    .line 1270
    const-string v3, "ia_rst"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaRst(I)V

    .line 1271
    const-string v3, "ia_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaUrl(Ljava/lang/String;)V

    .line 1272
    const-string v3, "ia_icon"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaIcon(Ljava/lang/String;)V

    .line 1274
    const-string v3, "gh_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhId(Ljava/lang/String;)V

    .line 1275
    const-string v3, "gh_path"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhPath(Ljava/lang/String;)V

    .line 1276
    const-string v3, "bind_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBindId(Ljava/lang/String;)V

    .line 1278
    const-string v3, "oc_time"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_time(I)V

    .line 1279
    const-string v3, "oc_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_type(I)V

    .line 1280
    const-string v3, "t_list"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setT_list(Ljava/lang/String;)V

    .line 1282
    const-string v3, "adchoice"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1283
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_48d

    .line 1284
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoice(Lcom/mintegral/msdk/base/entity/CampaignEx$a;)V

    .line 1286
    :cond_48d
    const-string v3, "adchoice_size_height"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoiceSizeHeight(I)V

    .line 1287
    const-string v3, "adchoice_size_width"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoiceSizeWidth(I)V

    .line 1290
    const-string v3, "plct"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlct(J)V

    .line 1291
    const-string v3, "plctb"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlctb(J)V

    .line 1294
    const-string v3, "banner_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 1295
    const-string v3, "banner_html"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 1296
    const-string v3, "creative_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCreativeId(J)V

    .line 1300
    const-string v3, "is_bid_campaign"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_54b

    move v3, v4

    :goto_4f6
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsBidCampaign(Z)V

    .line 1301
    const-string v3, "bid_token"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBidToken(Ljava/lang/String;)V

    .line 1304
    const-string v3, "mraid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 1305
    const-string v3, "is_mraid_campaign"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_54d

    move v3, v4

    :goto_520
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsMraid(Z)V

    .line 1306
    const-string v3, "omid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    .line 1307
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_533
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_533} :catch_535
    .catchall {:try_start_49 .. :try_end_533} :catchall_541

    goto/16 :goto_54

    .line 1314
    :catch_535
    move-exception v0

    :goto_536
    if-eqz v2, :cond_53b

    .line 1315
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_53b
    :goto_53b
    move-object v0, v1

    .line 1318
    :cond_53c
    :goto_53c
    return-object v0

    .line 1174
    :catchall_53d
    move-exception v0

    move-object v2, v1

    :goto_53f
    :try_start_53f
    monitor-exit v3
    :try_end_540
    .catchall {:try_start_53f .. :try_end_540} :catchall_561

    :try_start_540
    throw v0
    :try_end_541
    .catch Ljava/lang/Exception; {:try_start_540 .. :try_end_541} :catch_535
    .catchall {:try_start_540 .. :try_end_541} :catchall_541

    .line 1314
    :catchall_541
    move-exception v0

    :goto_542
    if-eqz v2, :cond_547

    .line 1315
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_547
    throw v0

    :cond_548
    move v3, v5

    .line 1197
    goto/16 :goto_12f

    :cond_54b
    move v3, v5

    .line 1300
    goto :goto_4f6

    :cond_54d
    move v3, v5

    .line 1305
    goto :goto_520

    .line 1314
    :cond_54f
    if-eqz v2, :cond_53c

    .line 1315
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_53c

    .line 1314
    :cond_555
    if-eqz v2, :cond_53b

    .line 1315
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_53b

    .line 1314
    :catchall_55b
    move-exception v0

    move-object v2, v1

    goto :goto_542

    :catch_55e
    move-exception v0

    move-object v2, v1

    goto :goto_536

    .line 1174
    :catchall_561
    move-exception v0

    goto :goto_53f
.end method

.method public final declared-synchronized c()V
    .registers 5

    .prologue
    .line 349
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    sub-long/2addr v0, v2

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ts<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ts>0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 352
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_33
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 357
    :cond_2e
    :goto_2e
    monitor-exit p0

    return-void

    .line 349
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    .line 357
    :catch_33
    move-exception v0

    goto :goto_2e
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 205
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unitid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND short_ctime<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_35
    .catchall {:try_start_1 .. :try_end_25} :catchall_37

    move-result-object v1

    if-nez v1, :cond_2a

    .line 213
    :goto_28
    monitor-exit p0

    return-void

    .line 210
    :cond_2a
    :try_start_2a
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_34} :catch_35
    .catchall {:try_start_2a .. :try_end_34} :catchall_37

    goto :goto_28

    .line 213
    :catch_35
    move-exception v0

    goto :goto_28

    .line 205
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1935
    .line 1938
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM campaign where bid_token =\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' and unitid =\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1939
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_43
    .catchall {:try_start_1 .. :try_end_28} :catchall_51

    move-result-object v2

    .line 1940
    if-eqz v2, :cond_65

    :try_start_2b
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_5b
    .catchall {:try_start_2b .. :try_end_2e} :catchall_58

    move-result v0

    if-lez v0, :cond_65

    .line 1941
    :goto_31
    :try_start_31
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1942
    invoke-static {v2}, Lcom/mintegral/msdk/base/b/f;->a(Landroid/database/Cursor;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_60
    .catchall {:try_start_31 .. :try_end_3a} :catchall_58

    move-result-object v1

    goto :goto_31

    :cond_3c
    move-object v0, v1

    .line 1948
    :goto_3d
    if-eqz v2, :cond_42

    .line 1949
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1952
    :cond_42
    :goto_42
    return-object v0

    .line 1946
    :catch_43
    move-exception v0

    move-object v2, v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_48
    :try_start_48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_58

    .line 1948
    if-eqz v2, :cond_42

    .line 1949
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_42

    .line 1948
    :catchall_51
    move-exception v0

    :goto_52
    if-eqz v1, :cond_57

    .line 1949
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_57
    throw v0

    .line 1948
    :catchall_58
    move-exception v0

    move-object v1, v2

    goto :goto_52

    .line 1946
    :catch_5b
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_48

    :catch_60
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_48

    :cond_65
    move-object v0, v1

    goto :goto_3d
.end method

.method public final declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .registers 42

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_16b

    .line 238
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SELECT * FROM campaign WHERE unitid = \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 239
    const/4 v4, 0x0

    .line 240
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 241
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 242
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 243
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 244
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 245
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .line 246
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 247
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 248
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 251
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    sub-long v22, v8, v10

    .line 252
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0xa4cb800

    sub-long v24, v8, v10

    .line 253
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0xf731400

    sub-long v26, v8, v10

    .line 254
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x14997000

    sub-long v28, v8, v10

    .line 255
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x19bfcc00

    sub-long v30, v8, v10

    .line 256
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0x1ee62800

    sub-long v32, v8, v10

    .line 257
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_8c} :catch_166
    .catchall {:try_start_6 .. :try_end_8c} :catchall_16b

    move-result-wide v6

    const-wide/32 v8, 0x240c8400

    sub-long v34, v6, v8

    .line 259
    const/4 v6, 0x0

    .line 261
    :try_start_93
    invoke-virtual/range {p0 .. p0}, Lcom/mintegral/msdk/base/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_9b} :catch_2bf
    .catchall {:try_start_93 .. :try_end_9b} :catchall_2b7

    move-result-object v5

    .line 262
    if-eqz v5, :cond_2b0

    :try_start_9e
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2b0

    move v4, v6

    move v7, v6

    move v8, v6

    move v9, v6

    move v10, v6

    move v11, v6

    .line 263
    :cond_aa
    :goto_aa
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v36

    if-eqz v36, :cond_281

    .line 265
    const-string v36, "is_deleted"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    if-nez v36, :cond_d3

    .line 266
    const-string v36, "id"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 268
    :cond_d3
    const-string v36, "short_ctime"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 269
    cmp-long v38, v36, v22

    if-lez v38, :cond_128

    const/16 v38, 0xa

    move/from16 v0, v38

    if-ge v11, v0, :cond_128

    .line 270
    add-int/lit8 v11, v11, 0x1

    .line 271
    const-string v36, "id"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    const-string v37, "is_click"

    move-object/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_110} :catch_111
    .catchall {:try_start_9e .. :try_end_110} :catchall_15f

    goto :goto_aa

    .line 303
    :catch_111
    move-exception v4

    move-object v4, v5

    :goto_113
    if-eqz v4, :cond_118

    .line 304
    :try_start_115
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_118
    :goto_118
    const-string v4, "dp"

    invoke-virtual {v12, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string v4, "c"

    invoke-virtual {v12, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_122
    .catch Ljava/lang/Throwable; {:try_start_115 .. :try_end_122} :catch_166
    .catchall {:try_start_115 .. :try_end_122} :catchall_16b

    .line 313
    :goto_122
    :try_start_122
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_125
    .catchall {:try_start_122 .. :try_end_125} :catchall_16b

    move-result-object v4

    monitor-exit p0

    return-object v4

    .line 272
    :cond_128
    cmp-long v38, v36, v22

    if-gez v38, :cond_16e

    cmp-long v38, v36, v24

    if-lez v38, :cond_16e

    const/16 v38, 0xa

    move/from16 v0, v38

    if-ge v10, v0, :cond_16e

    .line 273
    add-int/lit8 v10, v10, 0x1

    .line 274
    :try_start_138
    const-string v36, "id"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    const-string v37, "is_click"

    move-object/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_15d
    .catch Ljava/lang/Throwable; {:try_start_138 .. :try_end_15d} :catch_111
    .catchall {:try_start_138 .. :try_end_15d} :catchall_15f

    goto/16 :goto_aa

    .line 303
    :catchall_15f
    move-exception v4

    :goto_160
    if-eqz v5, :cond_165

    .line 304
    :try_start_162
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_165
    throw v4
    :try_end_166
    .catch Ljava/lang/Throwable; {:try_start_162 .. :try_end_166} :catch_166
    .catchall {:try_start_162 .. :try_end_166} :catchall_16b

    .line 310
    :catch_166
    move-exception v4

    :try_start_167
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_16a
    .catchall {:try_start_167 .. :try_end_16a} :catchall_16b

    goto :goto_122

    .line 236
    :catchall_16b
    move-exception v4

    monitor-exit p0

    throw v4

    .line 275
    :cond_16e
    cmp-long v38, v36, v24

    if-gez v38, :cond_1a5

    cmp-long v38, v36, v26

    if-lez v38, :cond_1a5

    const/16 v38, 0xa

    move/from16 v0, v38

    if-ge v9, v0, :cond_1a5

    .line 276
    add-int/lit8 v9, v9, 0x1

    .line 277
    :try_start_17e
    const-string v36, "id"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    const-string v37, "is_click"

    move-object/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_aa

    .line 278
    :cond_1a5
    cmp-long v38, v36, v26

    if-gez v38, :cond_1dc

    cmp-long v38, v36, v28

    if-lez v38, :cond_1dc

    const/16 v38, 0xa

    move/from16 v0, v38

    if-ge v8, v0, :cond_1dc

    .line 279
    add-int/lit8 v8, v8, 0x1

    .line 280
    const-string v36, "id"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    const-string v37, "is_click"

    move-object/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_aa

    .line 281
    :cond_1dc
    cmp-long v38, v36, v28

    if-gez v38, :cond_213

    cmp-long v38, v36, v30

    if-lez v38, :cond_213

    const/16 v38, 0xa

    move/from16 v0, v38

    if-ge v7, v0, :cond_213

    .line 282
    add-int/lit8 v7, v7, 0x1

    .line 283
    const-string v36, "id"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    const-string v37, "is_click"

    move-object/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_aa

    .line 284
    :cond_213
    cmp-long v38, v36, v30

    if-gez v38, :cond_24a

    cmp-long v38, v36, v32

    if-lez v38, :cond_24a

    const/16 v38, 0xa

    move/from16 v0, v38

    if-ge v6, v0, :cond_24a

    .line 285
    add-int/lit8 v6, v6, 0x1

    .line 286
    const-string v36, "id"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    const-string v37, "is_click"

    move-object/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_aa

    .line 287
    :cond_24a
    cmp-long v38, v36, v32

    if-gez v38, :cond_aa

    cmp-long v36, v36, v34

    if-lez v36, :cond_aa

    const/16 v36, 0xa

    move/from16 v0, v36

    if-ge v4, v0, :cond_aa

    .line 288
    add-int/lit8 v4, v4, 0x1

    .line 289
    const-string v36, "id"

    move-object/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v36

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    const-string v37, "is_click"

    move-object/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_aa

    .line 292
    :cond_281
    const-string v4, "1"

    invoke-virtual {v14, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v4, "2"

    move-object/from16 v0, v16

    invoke-virtual {v14, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string v4, "3"

    move-object/from16 v0, v17

    invoke-virtual {v14, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v4, "4"

    move-object/from16 v0, v18

    invoke-virtual {v14, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v4, "5"

    move-object/from16 v0, v19

    invoke-virtual {v14, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    const-string v4, "6"

    move-object/from16 v0, v20

    invoke-virtual {v14, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v4, "7"

    move-object/from16 v0, v21

    invoke-virtual {v14, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b0
    .catch Ljava/lang/Throwable; {:try_start_17e .. :try_end_2b0} :catch_111
    .catchall {:try_start_17e .. :try_end_2b0} :catchall_15f

    .line 303
    :cond_2b0
    if-eqz v5, :cond_118

    .line 304
    :try_start_2b2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2b5
    .catch Ljava/lang/Throwable; {:try_start_2b2 .. :try_end_2b5} :catch_166
    .catchall {:try_start_2b2 .. :try_end_2b5} :catchall_16b

    goto/16 :goto_118

    .line 303
    :catchall_2b7
    move-exception v5

    move-object/from16 v39, v5

    move-object v5, v4

    move-object/from16 v4, v39

    goto/16 :goto_160

    :catch_2bf
    move-exception v5

    goto/16 :goto_113
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 793
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE campaign SET is_download_zip=\'1\' WHERE ia_url=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 796
    monitor-exit p0

    return-void

    .line 793
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " WHERE unitid = \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND level = 0 AND adSource = 1 AND reward_play_status = 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    const-string v2, ""

    .line 1012
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "SELECT * FROM campaign"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    :try_start_2d
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1016
    monitor-enter v3
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_4f9
    .catchall {:try_start_2d .. :try_end_33} :catchall_4f6

    .line 1017
    :try_start_33
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_4d8

    move-result-object v2

    .line 1018
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_4fc

    .line 1019
    if-eqz v2, :cond_4f0

    :try_start_3f
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4f0

    .line 1020
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    :goto_4a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4ea

    .line 1023
    new-instance v6, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;-><init>()V

    .line 1024
    const-string v3, "id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 1025
    const-string v3, "tab"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTab(I)V

    .line 1026
    const-string v3, "package_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 1027
    const-string v3, "app_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 1028
    const-string v3, "app_desc"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 1029
    const-string v3, "app_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setSize(Ljava/lang/String;)V

    .line 1030
    const-string v3, "image_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageSize(Ljava/lang/String;)V

    .line 1031
    const-string v3, "icon_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIconUrl(Ljava/lang/String;)V

    .line 1032
    const-string v3, "image_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 1033
    const-string v3, "impression_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 1034
    const-string v3, "notice_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 1035
    const-string v3, "download_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 1036
    const-string v3, "wtick"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWtick(I)V

    .line 1037
    const-string v3, "deeplink_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 1038
    const-string v3, "only_impression"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOnlyImpressionURL(Ljava/lang/String;)V

    .line 1041
    const-string v3, "preclick"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_4e3

    move v3, v4

    :goto_125
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClick(Z)V

    .line 1042
    const-string v3, "template"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTemplate(I)V

    .line 1043
    const-string v3, "landing_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLandingType(Ljava/lang/String;)V

    .line 1044
    const-string v3, "link_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLinkType(I)V

    .line 1045
    const-string v3, "click_mode"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClick_mode(Ljava/lang/String;)V

    .line 1046
    const-string v3, "star"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRating(D)V

    .line 1047
    const-string v3, "cti"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickInterval(I)V

    .line 1048
    const-string v3, "cpti"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClickInterval(I)V

    .line 1049
    const-string v3, "ts"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTimestamp(J)V

    .line 1050
    const-string v3, "level"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCacheLevel(I)V

    .line 1051
    const-string v3, "adSource"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setType(I)V

    .line 1052
    const-string v3, "ad_call"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 1053
    const-string v3, "fc_a"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFca(I)V

    .line 1054
    const-string v3, "fc_b"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFcb(I)V

    .line 1055
    const-string v3, "ad_url_list"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAd_url_list(Ljava/lang/String;)V

    .line 1057
    const-string v3, "video_length"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoLength(I)V

    .line 1058
    const-string v3, "video_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoSize(J)V

    .line 1059
    const-string v3, "video_resolution"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoResolution(Ljava/lang/String;)V

    .line 1060
    const-string v3, "endcard_click_result"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndcard_click_result(I)V

    .line 1062
    const-string v3, "video_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    .line 1063
    const-string v3, "watch_mile"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWatchMile(I)V

    .line 1065
    const-string v3, "t_imp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTImp(I)V

    .line 1066
    const-string v3, "bty"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBty(I)V

    .line 1067
    const-string v3, "advImp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvImp(Ljava/lang/String;)V

    .line 1069
    const-string v3, "offer_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOfferType(I)V

    .line 1070
    const-string v3, "guidelines"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 1071
    const-string v3, "html_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 1072
    const-string v3, "end_screen_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndScreenUrl(Ljava/lang/String;)V

    .line 1073
    const-string v3, "reward_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardName(Ljava/lang/String;)V

    .line 1074
    const-string v3, "reward_amount"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardAmount(I)V

    .line 1075
    const-string v3, "reward_play_status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardPlayStatus(I)V

    .line 1078
    const-string v3, "adv_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvId(Ljava/lang/String;)V

    .line 1081
    const-string v3, "ttc_ct2"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_ct2(I)V

    .line 1082
    const-string v3, "ttc_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_type(I)V

    .line 1084
    const-string v3, "retarget"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRetarget_offer(I)V

    .line 1087
    const-string v3, "unitid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 1089
    const-string v3, "native_ad_tracking"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->TrackingStr2Object(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTracking(Lcom/mintegral/msdk/base/entity/j;)V

    .line 1090
    const-string v3, "native_ad_tracking"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTrackingString(Ljava/lang/String;)V

    .line 1092
    const-string v3, "video_end_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideo_end_type(I)V

    .line 1093
    const-string v3, "endcard_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setendcard_url(Ljava/lang/String;)V

    .line 1094
    const-string v3, "playable_ads_without_video"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlayable_ads_without_video(I)V

    .line 1095
    const-string v3, "loopback"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackString(Ljava/lang/String;)V

    .line 1096
    const-string v3, "loopback"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->loopbackStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackMap(Ljava/util/Map;)V

    .line 1099
    const-string v3, "reward_teamplate"

    .line 1101
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1100
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v3

    .line 1099
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardTemplateMode(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)V

    .line 1102
    const-string v3, "md5_file"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoMD5Value(Ljava/lang/String;)V

    .line 1103
    const-string v3, "gif_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGifUrl(Ljava/lang/String;)V

    .line 1104
    const-string v3, "nv_t2"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNvT2(I)V

    .line 1105
    const-string v3, "c_coi"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickTimeOutInterval(I)V

    .line 1106
    const-string v3, "c_ua"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setcUA(I)V

    .line 1107
    const-string v3, "imp_ua"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpUA(I)V

    .line 1109
    const-string v3, "gh_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhId(Ljava/lang/String;)V

    .line 1110
    const-string v3, "gh_path"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhPath(Ljava/lang/String;)V

    .line 1111
    const-string v3, "bind_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBindId(Ljava/lang/String;)V

    .line 1113
    const-string v3, "oc_time"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_time(I)V

    .line 1114
    const-string v3, "oc_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_type(I)V

    .line 1115
    const-string v3, "t_list"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setT_list(Ljava/lang/String;)V

    .line 1117
    const-string v3, "adchoice"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1118
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_41b

    .line 1119
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoice(Lcom/mintegral/msdk/base/entity/CampaignEx$a;)V

    .line 1121
    :cond_41b
    const-string v3, "adchoice_size_height"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoiceSizeHeight(I)V

    .line 1122
    const-string v3, "adchoice_size_width"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoiceSizeWidth(I)V

    .line 1125
    const-string v3, "plct"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlct(J)V

    .line 1126
    const-string v3, "plctb"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlctb(J)V

    .line 1129
    const-string v3, "banner_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 1130
    const-string v3, "banner_html"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 1131
    const-string v3, "creative_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCreativeId(J)V

    .line 1135
    const-string v3, "ad_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdType(I)V

    .line 1138
    const-string v3, "is_bid_campaign"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_4e6

    move v3, v4

    :goto_491
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsBidCampaign(Z)V

    .line 1139
    const-string v3, "bid_token"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBidToken(Ljava/lang/String;)V

    .line 1142
    const-string v3, "mraid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 1143
    const-string v3, "is_mraid_campaign"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_4e8

    move v3, v4

    :goto_4bb
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsMraid(Z)V

    .line 1144
    const-string v3, "omid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    .line 1145
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4ce
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4ce} :catch_4d0
    .catchall {:try_start_3f .. :try_end_4ce} :catchall_4dc

    goto/16 :goto_4a

    .line 1153
    :catch_4d0
    move-exception v0

    :goto_4d1
    if-eqz v2, :cond_4d6

    .line 1154
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4d6
    :goto_4d6
    move-object v0, v1

    .line 1157
    :cond_4d7
    :goto_4d7
    return-object v0

    .line 1018
    :catchall_4d8
    move-exception v0

    move-object v2, v1

    :goto_4da
    :try_start_4da
    monitor-exit v3
    :try_end_4db
    .catchall {:try_start_4da .. :try_end_4db} :catchall_4fc

    :try_start_4db
    throw v0
    :try_end_4dc
    .catch Ljava/lang/Exception; {:try_start_4db .. :try_end_4dc} :catch_4d0
    .catchall {:try_start_4db .. :try_end_4dc} :catchall_4dc

    .line 1153
    :catchall_4dc
    move-exception v0

    :goto_4dd
    if-eqz v2, :cond_4e2

    .line 1154
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4e2
    throw v0

    :cond_4e3
    move v3, v5

    .line 1041
    goto/16 :goto_125

    :cond_4e6
    move v3, v5

    .line 1138
    goto :goto_491

    :cond_4e8
    move v3, v5

    .line 1143
    goto :goto_4bb

    .line 1153
    :cond_4ea
    if-eqz v2, :cond_4d7

    .line 1154
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4d7

    .line 1153
    :cond_4f0
    if-eqz v2, :cond_4d6

    .line 1154
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4d6

    .line 1153
    :catchall_4f6
    move-exception v0

    move-object v2, v1

    goto :goto_4dd

    :catch_4f9
    move-exception v0

    move-object v2, v1

    goto :goto_4d1

    .line 1018
    :catchall_4fc
    move-exception v0

    goto :goto_4da
.end method

.method public final g(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " WHERE unitid = \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' AND is_deleted=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1326
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM campaign"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1329
    :try_start_27
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 1330
    monitor-enter v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_58f
    .catchall {:try_start_27 .. :try_end_2d} :catchall_58c

    .line 1331
    :try_start_2d
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_56e

    move-result-object v2

    .line 1332
    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_592

    .line 1333
    if-eqz v2, :cond_586

    :try_start_39
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_586

    .line 1334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    :goto_44
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_580

    .line 1337
    new-instance v6, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v6}, Lcom/mintegral/msdk/base/entity/CampaignEx;-><init>()V

    .line 1338
    const-string v3, "id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 1339
    const-string v3, "tab"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTab(I)V

    .line 1340
    const-string v3, "package_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 1341
    const-string v3, "app_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 1342
    const-string v3, "app_desc"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 1343
    const-string v3, "app_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setSize(Ljava/lang/String;)V

    .line 1344
    const-string v3, "image_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageSize(Ljava/lang/String;)V

    .line 1345
    const-string v3, "icon_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIconUrl(Ljava/lang/String;)V

    .line 1346
    const-string v3, "image_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 1347
    const-string v3, "impression_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 1348
    const-string v3, "notice_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 1349
    const-string v3, "download_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 1350
    const-string v3, "wtick"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWtick(I)V

    .line 1351
    const-string v3, "deeplink_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 1352
    const-string v3, "only_impression"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOnlyImpressionURL(Ljava/lang/String;)V

    .line 1355
    const-string v3, "preclick"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_579

    move v3, v4

    :goto_11f
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClick(Z)V

    .line 1356
    const-string v3, "template"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTemplate(I)V

    .line 1357
    const-string v3, "landing_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLandingType(Ljava/lang/String;)V

    .line 1358
    const-string v3, "link_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLinkType(I)V

    .line 1359
    const-string v3, "click_mode"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClick_mode(Ljava/lang/String;)V

    .line 1360
    const-string v3, "star"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRating(D)V

    .line 1361
    const-string v3, "cti"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickInterval(I)V

    .line 1362
    const-string v3, "cpti"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPreClickInterval(I)V

    .line 1363
    const-string v3, "ts"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTimestamp(J)V

    .line 1364
    const-string v3, "level"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCacheLevel(I)V

    .line 1365
    const-string v3, "ad_call"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 1366
    const-string v3, "fc_a"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFca(I)V

    .line 1367
    const-string v3, "fc_b"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setFcb(I)V

    .line 1368
    const-string v3, "ad_url_list"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAd_url_list(Ljava/lang/String;)V

    .line 1370
    const-string v3, "video_length"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoLength(I)V

    .line 1371
    const-string v3, "video_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoSize(J)V

    .line 1372
    const-string v3, "video_resolution"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoResolution(Ljava/lang/String;)V

    .line 1373
    const-string v3, "endcard_click_result"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndcard_click_result(I)V

    .line 1375
    const-string v3, "video_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    .line 1376
    const-string v3, "watch_mile"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setWatchMile(I)V

    .line 1378
    const-string v3, "t_imp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTImp(I)V

    .line 1379
    const-string v3, "bty"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBty(I)V

    .line 1380
    const-string v3, "advImp"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvImp(Ljava/lang/String;)V

    .line 1382
    const-string v3, "guidelines"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 1383
    const-string v3, "offer_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOfferType(I)V

    .line 1384
    const-string v3, "html_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 1385
    const-string v3, "guidelines"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 1386
    const-string v3, "html_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 1387
    const-string v3, "end_screen_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setEndScreenUrl(Ljava/lang/String;)V

    .line 1388
    const-string v3, "reward_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardName(Ljava/lang/String;)V

    .line 1389
    const-string v3, "reward_amount"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardAmount(I)V

    .line 1390
    const-string v3, "reward_play_status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardPlayStatus(I)V

    .line 1393
    const-string v3, "adv_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdvId(Ljava/lang/String;)V

    .line 1396
    const-string v3, "ttc_ct2"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_ct2(I)V

    .line 1397
    const-string v3, "ttc_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTtc_type(I)V

    .line 1399
    const-string v3, "retarget"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRetarget_offer(I)V

    .line 1402
    const-string v3, "unitid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 1404
    const-string v3, "native_ad_tracking"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->TrackingStr2Object(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/j;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTracking(Lcom/mintegral/msdk/base/entity/j;)V

    .line 1405
    const-string v3, "native_ad_tracking"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNativeVideoTrackingString(Ljava/lang/String;)V

    .line 1407
    const-string v3, "video_end_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideo_end_type(I)V

    .line 1408
    const-string v3, "endcard_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setendcard_url(Ljava/lang/String;)V

    .line 1409
    const-string v3, "playable_ads_without_video"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlayable_ads_without_video(I)V

    .line 1410
    const-string v3, "loopback"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackString(Ljava/lang/String;)V

    .line 1411
    const-string v3, "loopback"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->loopbackStrToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setLoopbackMap(Ljava/util/Map;)V

    .line 1414
    const-string v3, "reward_teamplate"

    .line 1416
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1415
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v3

    .line 1414
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setRewardTemplateMode(Lcom/mintegral/msdk/base/entity/CampaignEx$c;)V

    .line 1417
    const-string v3, "md5_file"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setVideoMD5Value(Ljava/lang/String;)V

    .line 1418
    const-string v3, "gif_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGifUrl(Ljava/lang/String;)V

    .line 1419
    const-string v3, "nv_t2"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setNvT2(I)V

    .line 1420
    const-string v3, "c_coi"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setClickTimeOutInterval(I)V

    .line 1421
    const-string v3, "c_ua"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setcUA(I)V

    .line 1422
    const-string v3, "imp_ua"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setImpUA(I)V

    .line 1423
    const-string v3, "is_deleted"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsDeleted(I)V

    .line 1424
    const-string v3, "is_click"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsClick(I)V

    .line 1425
    const-string v3, "is_add_sucesful"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsAddSuccesful(I)V

    .line 1426
    const-string v3, "ia_ori"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaOri(I)V

    .line 1427
    const-string v3, "ad_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdType(I)V

    .line 1428
    const-string v3, "ia_ext1"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIa_ext1(Ljava/lang/String;)V

    .line 1429
    const-string v3, "ia_ext2"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIa_ext2(Ljava/lang/String;)V

    .line 1430
    const-string v3, "ia_rst"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaRst(I)V

    .line 1431
    const-string v3, "ia_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaUrl(Ljava/lang/String;)V

    .line 1432
    const-string v3, "ia_icon"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setKeyIaIcon(Ljava/lang/String;)V

    .line 1433
    const-string v3, "is_download_zip"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsDownLoadZip(I)V

    .line 1434
    const-string v3, "ia_cache"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setInteractiveCache(Ljava/lang/String;)V

    .line 1436
    const-string v3, "gh_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhId(Ljava/lang/String;)V

    .line 1437
    const-string v3, "gh_path"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setGhPath(Ljava/lang/String;)V

    .line 1438
    const-string v3, "bind_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBindId(Ljava/lang/String;)V

    .line 1440
    const-string v3, "oc_time"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_time(I)V

    .line 1441
    const-string v3, "oc_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOc_type(I)V

    .line 1442
    const-string v3, "t_list"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setT_list(Ljava/lang/String;)V

    .line 1444
    const-string v3, "adchoice"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1445
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4be

    .line 1446
    invoke-static {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$a;->a(Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx$a;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoice(Lcom/mintegral/msdk/base/entity/CampaignEx$a;)V

    .line 1448
    :cond_4be
    const-string v3, "adchoice_size_height"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoiceSizeHeight(I)V

    .line 1449
    const-string v3, "adchoice_size_width"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setAdchoiceSizeWidth(I)V

    .line 1452
    const-string v3, "plct"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlct(J)V

    .line 1453
    const-string v3, "plctb"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setPlctb(J)V

    .line 1456
    const-string v3, "banner_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 1457
    const-string v3, "banner_html"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 1458
    const-string v3, "creative_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setCreativeId(J)V

    .line 1462
    const-string v3, "is_bid_campaign"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_57c

    move v3, v4

    :goto_527
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsBidCampaign(Z)V

    .line 1463
    const-string v3, "bid_token"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setBidToken(Ljava/lang/String;)V

    .line 1466
    const-string v3, "mraid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 1467
    const-string v3, "is_mraid_campaign"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_57e

    move v3, v4

    :goto_551
    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsMraid(Z)V

    .line 1468
    const-string v3, "omid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    .line 1469
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_564
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_564} :catch_566
    .catchall {:try_start_39 .. :try_end_564} :catchall_572

    goto/16 :goto_44

    .line 1476
    :catch_566
    move-exception v0

    :goto_567
    if-eqz v2, :cond_56c

    .line 1477
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_56c
    :goto_56c
    move-object v0, v1

    .line 1480
    :cond_56d
    :goto_56d
    return-object v0

    .line 1332
    :catchall_56e
    move-exception v0

    move-object v2, v1

    :goto_570
    :try_start_570
    monitor-exit v3
    :try_end_571
    .catchall {:try_start_570 .. :try_end_571} :catchall_592

    :try_start_571
    throw v0
    :try_end_572
    .catch Ljava/lang/Exception; {:try_start_571 .. :try_end_572} :catch_566
    .catchall {:try_start_571 .. :try_end_572} :catchall_572

    .line 1476
    :catchall_572
    move-exception v0

    :goto_573
    if-eqz v2, :cond_578

    .line 1477
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_578
    throw v0

    :cond_579
    move v3, v5

    .line 1355
    goto/16 :goto_11f

    :cond_57c
    move v3, v5

    .line 1462
    goto :goto_527

    :cond_57e
    move v3, v5

    .line 1467
    goto :goto_551

    .line 1476
    :cond_580
    if-eqz v2, :cond_56d

    .line 1477
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_56d

    .line 1476
    :cond_586
    if-eqz v2, :cond_56c

    .line 1477
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_56c

    .line 1476
    :catchall_58c
    move-exception v0

    move-object v2, v1

    goto :goto_573

    :catch_58f
    move-exception v0

    move-object v2, v1

    goto :goto_567

    .line 1332
    :catchall_592
    move-exception v0

    goto :goto_570
.end method

.method public final h(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " WHERE unitid = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1486
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM campaign"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1487
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/base/b/f;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1687
    .line 1690
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "select id from campaign where unitid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and reward_play_status=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1692
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/b/f;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_5e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_54

    move-result-object v1

    .line 1693
    if-eqz v1, :cond_68

    :try_start_21
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_68

    .line 1694
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2c} :catch_62
    .catchall {:try_start_21 .. :try_end_2c} :catchall_5b

    .line 1695
    :goto_2c
    :try_start_2c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1696
    const-string v0, "id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1697
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3f} :catch_40
    .catchall {:try_start_2c .. :try_end_3f} :catchall_5b

    goto :goto_2c

    .line 1701
    :catch_40
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    :goto_44
    :try_start_44
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_54

    .line 1703
    if-eqz v2, :cond_4c

    .line 1704
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1707
    :cond_4c
    :goto_4c
    return-object v0

    :cond_4d
    move-object v0, v3

    .line 1703
    :goto_4e
    if-eqz v1, :cond_4c

    .line 1704
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4c

    .line 1703
    :catchall_54
    move-exception v0

    :goto_55
    if-eqz v2, :cond_5a

    .line 1704
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5a
    throw v0

    .line 1703
    :catchall_5b
    move-exception v0

    move-object v2, v1

    goto :goto_55

    .line 1701
    :catch_5e
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_44

    :catch_62
    move-exception v0

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_44

    :cond_68
    move-object v0, v2

    goto :goto_4e
.end method

.method public final j(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1722
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1723
    const/4 v1, 0x0

    .line 1725
    :try_start_6
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/f;->n(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1726
    if-eqz v1, :cond_30

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_30

    .line 1727
    :goto_12
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1728
    const-string v0, "video_url"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_25} :catch_26
    .catchall {:try_start_6 .. :try_end_25} :catchall_36

    goto :goto_12

    .line 1732
    :catch_26
    move-exception v0

    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_36

    .line 1734
    if-eqz v1, :cond_2f

    .line 1735
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1738
    :cond_2f
    :goto_2f
    return-object v2

    .line 1734
    :cond_30
    if-eqz v1, :cond_2f

    .line 1735
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2f

    .line 1734
    :catchall_36
    move-exception v0

    if-eqz v1, :cond_3c

    .line 1735
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3c
    throw v0
.end method

.method public final k(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1742
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1743
    const/4 v1, 0x0

    .line 1745
    :try_start_6
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/base/b/f;->n(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1746
    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3b

    .line 1747
    :goto_12
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2762
    if-eqz v1, :cond_38

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_38

    .line 2763
    const-string v0, "id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1748
    :goto_2a
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_2e
    .catchall {:try_start_6 .. :try_end_2d} :catchall_41

    goto :goto_12

    .line 1752
    :catch_2e
    move-exception v0

    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_41

    .line 1754
    if-eqz v1, :cond_37

    .line 1755
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1758
    :cond_37
    :goto_37
    return-object v2

    .line 2765
    :cond_38
    :try_start_38
    const-string v0, ""
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3a} :catch_2e
    .catchall {:try_start_38 .. :try_end_3a} :catchall_41

    goto :goto_2a

    .line 1754
    :cond_3b
    if-eqz v1, :cond_37

    .line 1755
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_37

    .line 1754
    :catchall_41
    move-exception v0

    if-eqz v1, :cond_47

    .line 1755
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_47
    throw v0
.end method
