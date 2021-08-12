.class public Lcom/qq/e/comm/managers/status/SDKStatus;
.super Ljava/lang/Object;


# static fields
.field public static final STUB_IDENTITY:I = 0x1

.field public static final isNoPlugin:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getIntegrationSDKVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "4.330.1200"

    return-object v0
.end method

.method public static final getSDKVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "4.330"

    return-object v0
.end method

.method public static final getSDKVersionCode()I
    .registers 1

    const/16 v0, 0x82

    return v0
.end method
