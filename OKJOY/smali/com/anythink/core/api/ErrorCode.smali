.class public Lcom/anythink/core/api/ErrorCode;
.super Ljava/lang/Object;


# static fields
.field public static final adapterInnerError:Ljava/lang/String; = "2006"

.field public static final adapterNotExistError:Ljava/lang/String; = "2002"

.field public static final appIdError:Ljava/lang/String; = "10003"

.field public static final appIdOrPlaceIdEmpty:Ljava/lang/String; = "3002"

.field public static final appKeyError:Ljava/lang/String; = "10001"

.field public static final contextDestoryError:Ljava/lang/String; = "4002"

.field public static final dataLevelLowError:Ljava/lang/String; = "9992"

.field public static final exception:Ljava/lang/String; = "9999"

.field public static final formatError:Ljava/lang/String; = "3003"

.field public static final httpStatuException:Ljava/lang/String; = "9990"

.field public static final inPacingError:Ljava/lang/String; = "2004"

.field public static final inRequestFailPacing:Ljava/lang/String; = "2007"

.field public static final loadingError:Ljava/lang/String; = "2005"

.field public static final networkError:Ljava/lang/String; = "1001"

.field public static final noADError:Ljava/lang/String; = "4001"

.field public static final noAdsourceConfig:Ljava/lang/String; = "4004"

.field public static final noVailAdsource:Ljava/lang/String; = "4005"

.field public static final outOfCapError:Ljava/lang/String; = "2003"

.field public static final placeStrategyError:Ljava/lang/String; = "3001"

.field public static final placementAdClose:Ljava/lang/String; = "4003"

.field public static final placementIdError:Ljava/lang/String; = "10004"

.field public static rewardedVideoPlayError:Ljava/lang/String; = null

.field public static final serverError:Ljava/lang/String; = "1002"

.field public static final statuError:Ljava/lang/String; = "9991"

.field public static final timeOutError:Ljava/lang/String; = "2001"

.field public static final unknow:Ljava/lang/String; = "-9999"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, "4005"

    sput-object v0, Lcom/anythink/core/api/ErrorCode;->rewardedVideoPlayError:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;
    .registers 6

    .prologue
    .line 52
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_22a

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_28c

    .line 103
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "-9999"

    const-string v2, "unkwon"

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-object v0

    .line 52
    :sswitch_15
    const-string v1, "9999"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_1f
    const-string v1, "9990"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_29
    const-string v1, "9991"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_33
    const-string v1, "9992"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_3d
    const-string v1, "1001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_8

    :sswitch_47
    const-string v1, "1002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x5

    goto :goto_8

    :sswitch_51
    const-string v1, "2001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x6

    goto :goto_8

    :sswitch_5b
    const-string v1, "2002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x7

    goto :goto_8

    :sswitch_65
    const-string v1, "2003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x8

    goto :goto_8

    :sswitch_70
    const-string v1, "4001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x9

    goto :goto_8

    :sswitch_7b
    const-string v1, "3001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xa

    goto :goto_8

    :sswitch_86
    const-string v1, "2005"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xb

    goto/16 :goto_8

    :sswitch_92
    const-string v1, "2004"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xc

    goto/16 :goto_8

    :sswitch_9e
    const-string v1, "4002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xd

    goto/16 :goto_8

    :sswitch_aa
    const-string v1, "3002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xe

    goto/16 :goto_8

    :sswitch_b6
    const-string v1, "3003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xf

    goto/16 :goto_8

    :sswitch_c2
    const-string v1, "4003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x10

    goto/16 :goto_8

    :sswitch_ce
    const-string v1, "4004"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x11

    goto/16 :goto_8

    :sswitch_da
    const-string v1, "2006"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x12

    goto/16 :goto_8

    :sswitch_e6
    const-string v1, "10001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x13

    goto/16 :goto_8

    :sswitch_f2
    const-string v1, "10003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x14

    goto/16 :goto_8

    :sswitch_fe
    const-string v1, "10004"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x15

    goto/16 :goto_8

    :sswitch_10a
    const-string v1, "4005"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x16

    goto/16 :goto_8

    :sswitch_116
    const-string v1, "2007"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x17

    goto/16 :goto_8

    .line 54
    :pswitch_122
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "9999"

    const-string v2, "Exception in sdk."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 56
    :pswitch_12d
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "9990"

    const-string v2, "Https status exception."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 58
    :pswitch_138
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "9991"

    const-string v2, "Service status error."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 60
    :pswitch_143
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "9992"

    const-string v2, "Upload data level is FORBIDDEN, must called \'ATSDK.setGDPRUploadDataLevel\' to set the level."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 62
    :pswitch_14e
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "1001"

    const-string v2, "Network is unavailable."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 64
    :pswitch_159
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "1002"

    const-string v2, "Server is unavailable."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 66
    :pswitch_164
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "2001"

    const-string v2, "Ad load time out."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 68
    :pswitch_16f
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "2002"

    const-string v2, "Adapter does not exist."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 70
    :pswitch_17a
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "2003"

    const-string v2, "Not satisfy the Placement\'s Cap configuration."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 72
    :pswitch_185
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "4001"

    const-string v2, "Return Ad is empty."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 74
    :pswitch_190
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "3001"

    const-string v2, "Get placement strategy error, please check your network or your appid\u3001appkey and placementid is availiable."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 76
    :pswitch_19b
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "2005"

    const-string v2, "Placement\'s Ad is loading."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 78
    :pswitch_1a6
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "2004"

    const-string v2, "Not satisfy the Placement\'s Placing configuration."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 80
    :pswitch_1b1
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "4002"

    const-string v2, "Context or activity has been destory."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 82
    :pswitch_1bc
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "3002"

    const-string v2, "AppId or PlacementId is empty."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 85
    :pswitch_1c7
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "3003"

    const-string v2, "Mismatched ad placement and ad format"

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 87
    :pswitch_1d2
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "4003"

    const-string v2, "Placement Ads switch is close."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 89
    :pswitch_1dd
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "4004"

    const-string v2, "The placement strategy does not contain any ad sources, please check the mediation configuration in TopOn"

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 91
    :pswitch_1e8
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "2006"

    const-string v2, "Please check if your network sdk version is correct and all the network plugin has been put in your package."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 93
    :pswitch_1f3
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "10001"

    const-string v2, "Please check your appkey."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 95
    :pswitch_1fe
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "10003"

    const-string v2, "Please check your appid."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 97
    :pswitch_209
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "10004"

    const-string v2, "Please check your placementid."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 99
    :pswitch_214
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "4005"

    const-string v2, "Ad sources are filtered, no ad source is currently available"

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 101
    :pswitch_21f
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "2007"

    const-string v2, "Not satisfy the Fail-request\'s Placing configuration."

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 52
    :sswitch_data_22a
    .sparse-switch
        0x170060 -> :sswitch_3d
        0x170061 -> :sswitch_47
        0x1774bf -> :sswitch_51
        0x1774c0 -> :sswitch_5b
        0x1774c1 -> :sswitch_65
        0x1774c2 -> :sswitch_92
        0x1774c3 -> :sswitch_86
        0x1774c4 -> :sswitch_da
        0x1774c5 -> :sswitch_116
        0x17e91e -> :sswitch_7b
        0x17e91f -> :sswitch_aa
        0x17e920 -> :sswitch_b6
        0x185d7d -> :sswitch_70
        0x185d7e -> :sswitch_9e
        0x185d7f -> :sswitch_c2
        0x185d80 -> :sswitch_ce
        0x185d81 -> :sswitch_10a
        0x1ac637 -> :sswitch_1f
        0x1ac638 -> :sswitch_29
        0x1ac639 -> :sswitch_33
        0x1ac640 -> :sswitch_15
        0x2c90bb2 -> :sswitch_e6
        0x2c90bb4 -> :sswitch_f2
        0x2c90bb5 -> :sswitch_fe
    .end sparse-switch

    :pswitch_data_28c
    .packed-switch 0x0
        :pswitch_122
        :pswitch_12d
        :pswitch_138
        :pswitch_143
        :pswitch_14e
        :pswitch_159
        :pswitch_164
        :pswitch_16f
        :pswitch_17a
        :pswitch_185
        :pswitch_190
        :pswitch_19b
        :pswitch_1a6
        :pswitch_1b1
        :pswitch_1bc
        :pswitch_1c7
        :pswitch_1d2
        :pswitch_1dd
        :pswitch_1e8
        :pswitch_1f3
        :pswitch_1fe
        :pswitch_209
        :pswitch_214
        :pswitch_21f
    .end packed-switch
.end method
