.class public Lcom/anythink/network/sigmob/SigmobATConst;
.super Ljava/lang/Object;


# static fields
.field public static final NETWORK_FIRM_ID:I = 0x1d


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 10
    :try_start_0
    invoke-static {}, Lcom/sigmob/windad/WindAds;->getVersion()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 14
    :goto_4
    return-object v0

    .line 12
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    const-string v0, ""

    goto :goto_4
.end method
