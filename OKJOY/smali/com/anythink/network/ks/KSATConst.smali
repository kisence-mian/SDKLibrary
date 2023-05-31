.class public Lcom/anythink/network/ks/KSATConst;
.super Ljava/lang/Object;


# static fields
.field public static final NETWORK_FIRM_ID:I = 0x1c


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
    .line 9
    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
