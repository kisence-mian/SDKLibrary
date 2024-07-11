.class public Lcom/anythink/network/sigmob/SigmobATConst;
.super Ljava/lang/Object;


# static fields
.field public static final IS_USE_REWARDED_VIDEO_AS_INTERSTITIAL:Ljava/lang/String; = "is_use_rewarded_video_as_interstitial"

.field public static final NETWORK_FIRM_ID:I = 0x1d


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkVersion()Ljava/lang/String;
    .registers 1

    .line 19
    :try_start_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->getVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 21
    :catchall_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    const-string v0, ""

    return-object v0
.end method
