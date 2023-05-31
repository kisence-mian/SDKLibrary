.class public Lcom/anythink/network/gdt/GDTATConst;
.super Ljava/lang/Object;


# static fields
.field public static final ADTYPE:Ljava/lang/String; = "gdtadtype"

.field public static final AD_HEIGHT:Ljava/lang/String; = "gdtad_height"

.field public static final AD_WIDTH:Ljava/lang/String; = "gdtad_width"

.field public static final NETWORK_FIRM_ID:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 24
    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getSDKVersion()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 28
    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const-string v0, ""

    goto :goto_4
.end method
