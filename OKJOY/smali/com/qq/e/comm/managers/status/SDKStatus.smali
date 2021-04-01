.class public Lcom/qq/e/comm/managers/status/SDKStatus;
.super Ljava/lang/Object;


# static fields
.field public static final STUB_IDENTITY:I = 0x1

.field public static final isNoPlugin:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getIntegrationSDKVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "4.176.1046"

    return-object v0
.end method

.method public static final getSDKVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "4.176"

    return-object v0
.end method

.method public static final getSDKVersionCode()I
    .registers 1

    const/16 v0, 0x64

    return v0
.end method
