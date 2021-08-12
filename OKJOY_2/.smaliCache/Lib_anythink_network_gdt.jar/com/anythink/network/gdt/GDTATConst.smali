.class public Lcom/anythink/network/gdt/GDTATConst;
.super Ljava/lang/Object;


# static fields
.field public static final ADTYPE:Ljava/lang/String; = "gdtadtype"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AD_HEIGHT:Ljava/lang/String; = "gdtad_height"

.field public static final AD_WIDTH:Ljava/lang/String; = "gdtad_width"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NETWORK_FIRM_ID:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkVersion()Ljava/lang/String;
    .registers 1

    .line 30
    :try_start_0
    invoke-static {}, Lcom/qq/e/comm/managers/status/SDKStatus;->getSDKVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object v0

    .line 31
    :catchall_5
    move-exception v0

    .line 34
    const-string v0, ""

    return-object v0
.end method
