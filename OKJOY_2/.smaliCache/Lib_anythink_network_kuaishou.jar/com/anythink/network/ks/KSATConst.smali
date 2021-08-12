.class public Lcom/anythink/network/ks/KSATConst;
.super Ljava/lang/Object;


# static fields
.field public static final NETWORK_FIRM_ID:I = 0x1c

.field public static final REWARDEDVIDEO_SKIP_AFTER_THIRTY_SECOND:Ljava/lang/String; = "KS_RV_SKIP_AFTER_THIRTY_SECOND"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkVersion()Ljava/lang/String;
    .registers 1

    .line 19
    :try_start_0
    invoke-static {}, Lcom/kwad/sdk/api/KsAdSDK;->getSDKVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 20
    :catchall_5
    move-exception v0

    .line 23
    const-string v0, ""

    return-object v0
.end method
