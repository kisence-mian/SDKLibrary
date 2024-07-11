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

.field public static final loadCappingError:Ljava/lang/String; = "2009"

.field public static final loadFailInPacingError:Ljava/lang/String; = "2008"

.field public static final loadingError:Ljava/lang/String; = "2005"

.field public static final networkError:Ljava/lang/String; = "1001"

.field public static final noADError:Ljava/lang/String; = "4001"

.field public static final noAdsourceConfig:Ljava/lang/String; = "4004"

.field public static final noAvailableAdsource:Ljava/lang/String; = "4005"

.field public static final outOfCapError:Ljava/lang/String; = "2003"

.field public static final placeStrategyError:Ljava/lang/String; = "3001"

.field public static final placementAdClose:Ljava/lang/String; = "4003"

.field public static final placementIdError:Ljava/lang/String; = "10004"

.field public static final rewardedVideoPlayError:Ljava/lang/String; = "4006"

.field public static final serverError:Ljava/lang/String; = "1002"

.field public static final statuError:Ljava/lang/String; = "9991"

.field public static final timeOutError:Ljava/lang/String; = "2001"

.field public static final unknown:Ljava/lang/String; = "-9999"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;
    .registers 28

    .line 57
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v4, "9991"

    const-string v5, "9990"

    const-string v6, "4006"

    const-string v7, "4005"

    const-string v8, "4004"

    const-string v9, "4003"

    const-string v10, "4002"

    const-string v11, "4001"

    const-string v12, "3003"

    const-string v13, "3002"

    const-string v14, "3001"

    const-string v15, "2009"

    const-string v1, "2008"

    const-string v2, "2007"

    move-object/from16 v16, v2

    const-string v2, "2006"

    move-object/from16 v17, v2

    const-string v2, "2005"

    move-object/from16 v18, v2

    const-string v2, "2004"

    move-object/from16 v19, v2

    const-string v2, "2003"

    move-object/from16 v20, v2

    const-string v2, "2002"

    move-object/from16 v21, v2

    const-string v2, "2001"

    move-object/from16 v22, v2

    const-string v2, "1002"

    move-object/from16 v23, v2

    const-string v2, "1001"

    sparse-switch v3, :sswitch_data_3a4

    move-object/from16 v3, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v23

    move-object/from16 v24, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v24

    goto/16 :goto_235

    :sswitch_5d
    const-string v3, "10004"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v0, 0x15

    goto/16 :goto_10b

    :sswitch_69
    const-string v3, "10003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v0, 0x14

    goto/16 :goto_10b

    :sswitch_75
    const-string v3, "10001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v0, 0x13

    goto/16 :goto_10b

    :sswitch_81
    const-string v3, "9999"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/4 v0, 0x0

    goto/16 :goto_10b

    :sswitch_8c
    const-string v3, "9992"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/4 v0, 0x3

    goto/16 :goto_10b

    :sswitch_97
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/4 v0, 0x2

    goto/16 :goto_10b

    :sswitch_a0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/4 v0, 0x1

    goto/16 :goto_10b

    :sswitch_a9
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v0, 0x17

    goto :goto_10b

    :sswitch_b2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v0, 0x16

    goto :goto_10b

    :sswitch_bb
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v0, 0x11

    goto :goto_10b

    :sswitch_c4
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v0, 0x10

    goto :goto_10b

    :sswitch_cd
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v0, 0xd

    goto :goto_10b

    :sswitch_d6
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v0, 0x9

    goto :goto_10b

    :sswitch_df
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v0, 0xf

    goto :goto_10b

    :sswitch_e8
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v0, 0xe

    goto :goto_10b

    :sswitch_f1
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v0, 0xa

    goto :goto_10b

    :sswitch_fa
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v0, 0x1a

    goto :goto_10b

    :sswitch_103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    const/16 v0, 0x19

    :goto_10b
    move-object/from16 v3, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v23

    move-object/from16 v24, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v24

    goto/16 :goto_236

    :cond_11f
    move-object/from16 v3, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v23

    move-object/from16 v24, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v24

    goto/16 :goto_235

    :sswitch_133
    move-object/from16 v3, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    const/16 v0, 0x18

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    goto :goto_155

    :cond_142
    move-object/from16 v16, v1

    move-object/from16 v1, v17

    goto :goto_15a

    :sswitch_147
    move-object/from16 v3, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    const/16 v0, 0x12

    :goto_155
    move-object/from16 v17, v3

    move-object/from16 v3, v18

    goto :goto_171

    :cond_15a
    :goto_15a
    move-object/from16 v17, v3

    move-object/from16 v3, v18

    goto :goto_176

    :sswitch_15f
    move-object/from16 v3, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v3

    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_176

    const/16 v0, 0xb

    :goto_171
    move-object/from16 v18, v5

    move-object/from16 v5, v19

    goto :goto_191

    :cond_176
    :goto_176
    move-object/from16 v18, v5

    move-object/from16 v5, v19

    goto :goto_195

    :sswitch_17b
    move-object/from16 v3, v18

    move-object/from16 v24, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v5

    move-object/from16 v5, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_195

    const/16 v0, 0xc

    :goto_191
    move-object/from16 v19, v4

    goto/16 :goto_1f7

    :cond_195
    :goto_195
    move-object/from16 v19, v4

    goto/16 :goto_1fc

    :sswitch_199
    move-object/from16 v3, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v19

    move-object/from16 v24, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v24

    move-object/from16 v19, v4

    move-object/from16 v4, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    const/16 v0, 0x8

    move-object/from16 v20, v4

    goto :goto_1f7

    :cond_1b6
    move-object/from16 v20, v4

    goto :goto_1fc

    :sswitch_1b9
    move-object/from16 v3, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v20

    move-object/from16 v24, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v24

    move-object/from16 v4, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    const/4 v0, 0x7

    move-object/from16 v21, v4

    goto :goto_1f7

    :cond_1d7
    move-object/from16 v21, v4

    goto :goto_1fc

    :sswitch_1da
    move-object/from16 v3, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v21

    move-object/from16 v24, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v24

    move-object/from16 v4, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fa

    const/4 v0, 0x6

    move-object/from16 v22, v4

    :goto_1f7
    move-object/from16 v4, v23

    goto :goto_236

    :cond_1fa
    move-object/from16 v22, v4

    :goto_1fc
    move-object/from16 v4, v23

    goto :goto_235

    :sswitch_1ff
    move-object/from16 v3, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v22

    move-object/from16 v24, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v24

    move-object/from16 v4, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_235

    const/4 v0, 0x5

    goto :goto_236

    :sswitch_21b
    move-object/from16 v3, v18

    move-object/from16 v18, v5

    move-object/from16 v5, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v23

    move-object/from16 v24, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_235

    const/4 v0, 0x4

    goto :goto_236

    :cond_235
    :goto_235
    const/4 v0, -0x1

    :goto_236
    packed-switch v0, :pswitch_data_412

    .line 113
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    new-instance v2, Lcom/anythink/core/api/AdError;

    const-string v3, "-9999"

    const-string v4, "unknown"

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 111
    :pswitch_247
    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "The placement load too many times within the specified time period."

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-direct {v0, v15, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 109
    :pswitch_253
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v0, v16

    new-instance v1, Lcom/anythink/core/api/AdError;

    const-string v3, "The placement load too frequent within the specified time period after the previous load failure."

    invoke-direct {v1, v0, v3, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 107
    :pswitch_261
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v0, v17

    new-instance v1, Lcom/anythink/core/api/AdError;

    const-string v3, "Not satisfy the Fail-request\'s Placing configuration."

    invoke-direct {v1, v0, v3, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 105
    :pswitch_26f
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Video playback failed"

    invoke-direct {v0, v6, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 103
    :pswitch_27b
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Ad sources are filtered, no ad source is currently available"

    invoke-direct {v0, v7, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 101
    :pswitch_287
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "10004"

    const-string v3, "Please check your placementid."

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 99
    :pswitch_295
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "10003"

    const-string v3, "Please check your appid."

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 97
    :pswitch_2a3
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "10001"

    const-string v3, "Please check your appkey."

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 95
    :pswitch_2b1
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v3, "Please check if your network sdk version is correct and all the network plugin has been put in your package."

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 93
    :pswitch_2bd
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "The placement strategy does not contain any ad sources, please check the mediation configuration in TopOn"

    invoke-direct {v0, v8, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 91
    :pswitch_2c9
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Placement Ads switch is close."

    invoke-direct {v0, v9, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 89
    :pswitch_2d5
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Mismatched ad placement and ad format"

    invoke-direct {v0, v12, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 87
    :pswitch_2e1
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "AppId or PlacementId is empty."

    invoke-direct {v0, v13, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 85
    :pswitch_2ed
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Context or activity has been destory."

    invoke-direct {v0, v10, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 83
    :pswitch_2f9
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Not satisfy the Placement\'s Placing configuration."

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 81
    :pswitch_305
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Placement\'s Ad is loading."

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 79
    :pswitch_311
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Get placement strategy error, please check your network or your appid\u3001appkey and placementid is availiable."

    invoke-direct {v0, v14, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 77
    :pswitch_31d
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Return Ad is empty."

    invoke-direct {v0, v11, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 75
    :pswitch_329
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Not satisfy the Placement\'s Cap configuration."

    move-object/from16 v3, v20

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 73
    :pswitch_337
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Adapter does not exist."

    move-object/from16 v3, v21

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 71
    :pswitch_345
    move-object/from16 v2, p1

    move-object/from16 v4, p2

    new-instance v0, Lcom/anythink/core/api/AdError;

    const-string v1, "Ad load time out."

    move-object/from16 v3, v22

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 69
    :pswitch_353
    move-object/from16 v2, p1

    move-object/from16 v0, p2

    new-instance v1, Lcom/anythink/core/api/AdError;

    const-string v3, "Server is unavailable."

    invoke-direct {v1, v4, v3, v2, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 67
    :pswitch_35f
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    new-instance v3, Lcom/anythink/core/api/AdError;

    const-string v4, "Network is unavailable."

    invoke-direct {v3, v2, v4, v1, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 65
    :pswitch_36b
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    new-instance v2, Lcom/anythink/core/api/AdError;

    const-string v3, "9992"

    const-string v4, "Upload data level is FORBIDDEN, must called \'ATSDK.setGDPRUploadDataLevel\' to set the level."

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 63
    :pswitch_379
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    new-instance v2, Lcom/anythink/core/api/AdError;

    const-string v3, "Service status error."

    move-object/from16 v4, v19

    invoke-direct {v2, v4, v3, v1, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 61
    :pswitch_387
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    new-instance v2, Lcom/anythink/core/api/AdError;

    const-string v3, "Https status exception."

    move-object/from16 v4, v18

    invoke-direct {v2, v4, v3, v1, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 59
    :pswitch_395
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    new-instance v2, Lcom/anythink/core/api/AdError;

    const-string v3, "9999"

    const-string v4, "Exception in sdk."

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/anythink/core/api/AdError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    nop

    :sswitch_data_3a4
    .sparse-switch
        0x170060 -> :sswitch_21b
        0x170061 -> :sswitch_1ff
        0x1774bf -> :sswitch_1da
        0x1774c0 -> :sswitch_1b9
        0x1774c1 -> :sswitch_199
        0x1774c2 -> :sswitch_17b
        0x1774c3 -> :sswitch_15f
        0x1774c4 -> :sswitch_147
        0x1774c5 -> :sswitch_133
        0x1774c6 -> :sswitch_103
        0x1774c7 -> :sswitch_fa
        0x17e91e -> :sswitch_f1
        0x17e91f -> :sswitch_e8
        0x17e920 -> :sswitch_df
        0x185d7d -> :sswitch_d6
        0x185d7e -> :sswitch_cd
        0x185d7f -> :sswitch_c4
        0x185d80 -> :sswitch_bb
        0x185d81 -> :sswitch_b2
        0x185d82 -> :sswitch_a9
        0x1ac637 -> :sswitch_a0
        0x1ac638 -> :sswitch_97
        0x1ac639 -> :sswitch_8c
        0x1ac640 -> :sswitch_81
        0x2c90bb2 -> :sswitch_75
        0x2c90bb4 -> :sswitch_69
        0x2c90bb5 -> :sswitch_5d
    .end sparse-switch

    :pswitch_data_412
    .packed-switch 0x0
        :pswitch_395
        :pswitch_387
        :pswitch_379
        :pswitch_36b
        :pswitch_35f
        :pswitch_353
        :pswitch_345
        :pswitch_337
        :pswitch_329
        :pswitch_31d
        :pswitch_311
        :pswitch_305
        :pswitch_2f9
        :pswitch_2ed
        :pswitch_2e1
        :pswitch_2d5
        :pswitch_2c9
        :pswitch_2bd
        :pswitch_2b1
        :pswitch_2a3
        :pswitch_295
        :pswitch_287
        :pswitch_27b
        :pswitch_26f
        :pswitch_261
        :pswitch_253
        :pswitch_247
    .end packed-switch
.end method
