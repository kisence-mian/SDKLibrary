.class Lcom/sigmob/sdk/mraid/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method


# virtual methods
.method public addMacro(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_2
    const-string v0, "key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_f
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_29
    const/16 v0, 0x12c

    const-string v2, "key or value is empty"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_32
    return-object v0

    :cond_33
    iget-object v3, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc8

    const-string v2, "addMacro success"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_44} :catch_46

    move-result-object v0

    goto :goto_32

    :catch_46
    move-exception v0

    const/16 v2, 0x1f4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMacro add fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_65
    move-object v0, v1

    goto :goto_1d
.end method

.method public excuteRewardAdTrack(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v4, 0x0

    :try_start_1
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/sigmob/sdk/base/c/z;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_1a

    const/16 v0, 0xc8

    const-string v1, "excuteRewardAdTrack success"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    const/16 v0, 0x12c

    const-string v1, "event is empty"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_27
    const/4 v2, -0x2

    if-ne v1, v2, :cond_45

    const/16 v1, 0x12c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " can\'t find in trackers"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_45
    const/16 v0, 0x190

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5e} :catch_60

    move-result-object v0

    goto :goto_19

    :catch_60
    move-exception v0

    const/16 v1, 0x1f4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public func(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "func"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "func"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/sigmob/sdk/base/common/utils/x;

    invoke-direct {v3, p0, v0}, Lcom/sigmob/sdk/base/common/utils/x;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v2}, Lcom/sigmob/sdk/base/common/utils/x;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/base/common/utils/x;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/common/utils/x;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_32
    return-object v0

    :cond_33
    const/16 v0, 0x190

    const-string v2, "func is empty"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3b} :catch_3d

    move-result-object v0

    goto :goto_32

    :catch_3d
    move-exception v0

    const/16 v2, 0x1f4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_49
    move-object v0, v1

    goto :goto_14
.end method

.method public getAppInfo(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 13
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_379

    const-string v0, "arguments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_379

    const-string v0, "arguments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v4, v1

    :goto_19
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_379

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_382

    move-result-object v7

    const/4 v0, -0x1

    :try_start_24
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_3a2

    :cond_2b
    :goto_2b
    packed-switch v0, :pswitch_data_42c

    :goto_2e
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_19

    :sswitch_32
    const-string v8, "os"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    move v0, v1

    goto :goto_2b

    :sswitch_3c
    const-string v8, "imei"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    move v0, v2

    goto :goto_2b

    :sswitch_46
    const-string v8, "android_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    move v0, v3

    goto :goto_2b

    :sswitch_50
    const-string v8, "google_aid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v0, 0x3

    goto :goto_2b

    :sswitch_5a
    const-string v8, "clienttype"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v0, 0x4

    goto :goto_2b

    :sswitch_64
    const-string v8, "app_version"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v0, 0x5

    goto :goto_2b

    :sswitch_6e
    const-string v8, "sdk_version"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v0, 0x6

    goto :goto_2b

    :sswitch_78
    const-string v8, "os_version"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/4 v0, 0x7

    goto :goto_2b

    :sswitch_82
    const-string v8, "client_pixel"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x8

    goto :goto_2b

    :sswitch_8d
    const-string v8, "device_width"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x9

    goto :goto_2b

    :sswitch_98
    const-string v8, "device_height"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0xa

    goto :goto_2b

    :sswitch_a3
    const-string v8, "screen_density"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0xb

    goto/16 :goto_2b

    :sswitch_af
    const-string v8, "network_type"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0xc

    goto/16 :goto_2b

    :sswitch_bb
    const-string v8, "pkgname"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0xd

    goto/16 :goto_2b

    :sswitch_c7
    const-string v8, "screenangle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0xe

    goto/16 :goto_2b

    :sswitch_d3
    const-string v8, "creative_type"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0xf

    goto/16 :goto_2b

    :sswitch_df
    const-string v8, "ad_type"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x10

    goto/16 :goto_2b

    :sswitch_eb
    const-string v8, "request_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x11

    goto/16 :goto_2b

    :sswitch_f7
    const-string v8, "placement_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x12

    goto/16 :goto_2b

    :sswitch_103
    const-string v8, "appid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x13

    goto/16 :goto_2b

    :sswitch_10f
    const-string v8, "ad_source_logo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x14

    goto/16 :goto_2b

    :sswitch_11b
    const-string v8, "ad_source_channel"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x15

    goto/16 :goto_2b

    :sswitch_127
    const-string v8, "adslot_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x16

    goto/16 :goto_2b

    :sswitch_133
    const-string v8, "vid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x17

    goto/16 :goto_2b

    :sswitch_13f
    const-string v8, "crid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x18

    goto/16 :goto_2b

    :sswitch_14b
    const-string v8, "camp_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x19

    goto/16 :goto_2b

    :sswitch_157
    const-string v8, "cust_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x1a

    goto/16 :goto_2b

    :sswitch_163
    const-string v8, "bid_price"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x1b

    goto/16 :goto_2b

    :sswitch_16f
    const-string v8, "product_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x1c

    goto/16 :goto_2b

    :sswitch_17b
    const-string v8, "settlement_price_enc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x1d

    goto/16 :goto_2b

    :sswitch_187
    const-string v8, "is_override"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x1e

    goto/16 :goto_2b

    :sswitch_193
    const-string v8, "forbiden_parse_landingpage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x1f

    goto/16 :goto_2b

    :sswitch_19f
    const-string v8, "display_orientation"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x20

    goto/16 :goto_2b

    :sswitch_1ab
    const-string v8, "expired_time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const/16 v0, 0x21

    goto/16 :goto_2b

    :pswitch_1b7
    const/4 v0, 0x2

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :catch_1bd
    move-exception v0

    goto/16 :goto_2e

    :pswitch_1c0
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_1cd
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_1da
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->av()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_1e7
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->al()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_1f0
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->at()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_1fd
    const-string v0, "2.17.1"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_204
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->am()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_20d
    const-string v0, "%sx%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ar()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ar()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_23d
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->an()I

    move-result v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_24a
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->ap()I

    move-result v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_257
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->Z()F

    move-result v0

    float-to-double v8, v0

    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_265
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->S()Lcom/sigmob/sdk/base/common/utils/ClientMetadata$NetworkType;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_272
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->au()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_27f
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->T()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_294
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_29f
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_2aa
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_2b5
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_2c0
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_2cd
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_2d8
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_channel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_2e3
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_2ee
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->vid:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_2fb
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_306
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_311
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->cust_id:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_31e
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->bid_price:Ljava/lang/Integer;

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_32b
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_338
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->settlement_price_enc:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_345
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->is_override:Ljava/lang/Integer;

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_352
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_35f
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2e

    :pswitch_36c
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_377
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_377} :catch_1bd

    goto/16 :goto_2e

    :cond_379
    const/16 v0, 0xc8

    :try_start_37b
    const-string v1, "getAppInfo success "

    invoke-static {v0, v1, v5}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_380
    .catch Ljava/lang/Throwable; {:try_start_37b .. :try_end_380} :catch_382

    move-result-object v0

    :goto_381
    return-object v0

    :catch_382
    move-exception v0

    const/16 v1, 0x1f4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppInfo error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_381

    :sswitch_data_3a2
    .sparse-switch
        -0x69eac2cd -> :sswitch_10f
        -0x5ed4a62d -> :sswitch_19f
        -0x5e3e7eb2 -> :sswitch_17b
        -0x5b7bbdca -> :sswitch_50
        -0x5006e079 -> :sswitch_163
        -0x4d3b3cd0 -> :sswitch_98
        -0x44ada62a -> :sswitch_df
        -0x41261aee -> :sswitch_82
        -0x36c286e8 -> :sswitch_193
        -0x35c17346 -> :sswitch_64
        -0x29e2b236 -> :sswitch_d3
        -0x22b0e963 -> :sswitch_8d
        -0x21df2feb -> :sswitch_a3
        -0x1ed099a9 -> :sswitch_bb
        -0x16745a2d -> :sswitch_6e
        -0xc3890bf -> :sswitch_187
        -0x277e419 -> :sswitch_c7
        -0x128e555 -> :sswitch_af
        0xde4 -> :sswitch_32
        0x1c811 -> :sswitch_133
        0x2eb9ca -> :sswitch_13f
        0x3160c8 -> :sswitch_3c
        0x23640cb -> :sswitch_eb
        0x58b82fc -> :sswitch_103
        0x20c35b99 -> :sswitch_14b
        0x281aad7d -> :sswitch_78
        0x2b17f0eb -> :sswitch_46
        0x41c4a585 -> :sswitch_5a
        0x433aa687 -> :sswitch_157
        0x43edf579 -> :sswitch_127
        0x48fa38b5 -> :sswitch_f7
        0x55ae13a7 -> :sswitch_1ab
        0x687cca6b -> :sswitch_16f
        0x693f787b -> :sswitch_11b
    .end sparse-switch

    :pswitch_data_42c
    .packed-switch 0x0
        :pswitch_1b7
        :pswitch_1c0
        :pswitch_1cd
        :pswitch_1da
        :pswitch_1e7
        :pswitch_1f0
        :pswitch_1fd
        :pswitch_204
        :pswitch_20d
        :pswitch_23d
        :pswitch_24a
        :pswitch_257
        :pswitch_265
        :pswitch_272
        :pswitch_27f
        :pswitch_294
        :pswitch_29f
        :pswitch_2aa
        :pswitch_2b5
        :pswitch_2c0
        :pswitch_2cd
        :pswitch_2d8
        :pswitch_2e3
        :pswitch_2ee
        :pswitch_2fb
        :pswitch_306
        :pswitch_311
        :pswitch_31e
        :pswitch_32b
        :pswitch_338
        :pswitch_345
        :pswitch_352
        :pswitch_35f
        :pswitch_36c
    .end packed-switch
.end method

.method public hello(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public javascriptAddDcLog(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v7, 0x0

    if-nez p1, :cond_d

    const/16 v1, 0x190

    :try_start_5
    const-string v2, "not params"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const-string v1, "_ac_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/b/a;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v6

    const-string v1, "_ac_type"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v2, "ac_type"

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_ac_type"

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    const-string v2, "js"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ext"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    const-string v1, "ext"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :goto_42
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "ext"

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/mraid/e;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_6e} :catch_81

    const/16 v1, 0xc8

    const-string v2, "add dc log success"

    invoke-static {v1, v2, v7}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_77
    const/16 v1, 0x12c

    :try_start_79
    const-string v2, "_ac_type is empty"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_7f} :catch_81

    move-result-object v1

    goto :goto_c

    :catch_81
    move-exception v1

    const/16 v2, 0x1f4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v7}, Lcom/sigmob/sdk/mraid/d;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_8d
    move-object v2, v7

    goto :goto_42
.end method
