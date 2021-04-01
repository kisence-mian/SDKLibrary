.class public Lcom/anythink/network/oneway/OnewayATConst;
.super Ljava/lang/Object;


# static fields
.field public static final NETWORK_FIRM_ID:I = 0x11


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 11
    :try_start_0
    invoke-static {}, Lmobi/oneway/export/Ad/OnewaySdk;->getVersion()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 15
    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const-string v0, ""

    goto :goto_4
.end method
