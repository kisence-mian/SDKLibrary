.class public Lcom/anythink/network/toutiao/TTATConst;
.super Ljava/lang/Object;


# static fields
.field public static final NATIVE_AD_IMAGE_HEIGHT:Ljava/lang/String; = "tt_image_height"

.field public static final NATIVE_AD_IMAGE_WIDTH:Ljava/lang/String; = "tt_image_width"

.field public static final NATIVE_AD_INTERRUPT_VIDEOPLAY:Ljava/lang/String; = "tt_can_interrupt_video"

.field public static final NATIVE_AD_VIDEOPLAY_BTN_BITMAP:Ljava/lang/String; = "tt_video_play_btn_bitmap"

.field public static final NATIVE_AD_VIDEOPLAY_BTN_SIZE:Ljava/lang/String; = "tt_video_play_btn_SIZE"

.field public static final NETWORK_FIRM_ID:I = 0xf

.field public static hasRequestPermission:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/anythink/network/toutiao/TTATConst;->hasRequestPermission:Z

    return-void
.end method

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
    .line 19
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAdManager;->getSDKVersion()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 24
    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const-string v0, ""

    goto :goto_8
.end method
