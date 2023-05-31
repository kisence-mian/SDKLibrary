.class public Lcom/anythink/network/myoffer/MyOfferErrorCode;
.super Ljava/lang/Object;


# static fields
.field public static final exception:Ljava/lang/String; = "10000"

.field public static final fail_connect:Ljava/lang/String; = "Http connect error!"

.field public static final fail_in_pacing:Ljava/lang/String; = "Ad is in pacing!"

.field public static final fail_load_cannel:Ljava/lang/String; = "Load cancel!"

.field public static final fail_load_timeout:Ljava/lang/String; = "Load timeout!"

.field public static final fail_no_offer:Ljava/lang/String; = "No fill, offer = null!"

.field public static final fail_no_setting:Ljava/lang/String; = "No fill, setting = null!"

.field public static final fail_no_video_url:Ljava/lang/String; = "Video url no exist!"

.field public static final fail_null_context:Ljava/lang/String; = "context = null!"

.field public static final fail_out_of_cap:Ljava/lang/String; = "Ad is out of cap!"

.field public static final fail_params:Ljava/lang/String; = "offerid\u3001placementid can not be null!"

.field public static final fail_player:Ljava/lang/String; = "Video player error!"

.field public static final fail_save:Ljava/lang/String; = "Save fail!"

.field public static final fail_video_file_error_:Ljava/lang/String; = "Video file error!"

.field public static final httpStatuException:Ljava/lang/String; = "10001"

.field public static final inPacingError:Ljava/lang/String; = "20004"

.field public static final noADError:Ljava/lang/String; = "30001"

.field public static final noSettingError:Ljava/lang/String; = "30002"

.field public static final outOfCapError:Ljava/lang/String; = "20003"

.field public static final rewardedVideoPlayError:Ljava/lang/String; = "40002"

.field public static final timeOutError:Ljava/lang/String; = "20001"

.field public static final unknow:Ljava/lang/String; = "-9999"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;
    .registers 3

    .prologue
    .line 38
    new-instance v0, Lcom/anythink/network/myoffer/MyOfferError;

    invoke-direct {v0, p0, p1}, Lcom/anythink/network/myoffer/MyOfferError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
