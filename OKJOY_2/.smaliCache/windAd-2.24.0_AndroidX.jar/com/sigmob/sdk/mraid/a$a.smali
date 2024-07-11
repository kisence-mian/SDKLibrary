.class Lcom/sigmob/sdk/mraid/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/mraid/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/sigmob/sdk/base/models/BaseAdUnit;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-void
.end method


# virtual methods
.method public addMacro(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "value"

    const-string v1, "key"

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    move-object v1, v2

    :goto_11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    :cond_1c
    move-object p1, v2

    :goto_1d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_3c

    :cond_2a
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/sdk/base/models/RewardVideoMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xc8

    const-string v0, "addMacro success"

    invoke-static {p1, v0, v2}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3c
    :goto_3c
    const/16 p1, 0x12c

    const-string v0, "key or value is empty"

    invoke-static {p1, v0, v2}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_45

    return-object p1

    :catchall_45
    move-exception p1

    const/16 v0, 0x1f4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addMacro add fail "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public excuteRewardAdTrack(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "unknown error: "

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "event"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/sigmob/sdk/base/a/c;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)I

    move-result v2

    if-nez v2, :cond_1b

    const/16 p1, 0xc8

    const-string v2, "excuteRewardAdTrack success"

    invoke-static {p1, v2, v1}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1b
    const/4 v3, -0x1

    const/16 v4, 0x12c

    if-ne v2, v3, :cond_27

    const-string p1, "event is empty"

    invoke-static {v4, p1, v1}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_27
    const/4 v3, -0x2

    if-ne v2, v3, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " can\'t find in trackers"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v1}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_42
    const/16 p1, 0x190

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_5a

    return-object p1

    :catchall_5a
    move-exception p1

    const/16 v2, 0x1f4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public func(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "func"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    :cond_13
    move-object p1, v1

    :goto_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, ":"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sigmob/sdk/common/f/n$a;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/common/f/n$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v2}, Lcom/sigmob/sdk/common/f/n$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sigmob/sdk/common/f/n$a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/f/n$a;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_33
    const/16 p1, 0x190

    const-string v0, "func is empty"

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_3c

    return-object p1

    :catchall_3c
    move-exception p1

    const/16 v0, 0x1f4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppInfo(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "arguments"

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_30b

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30b

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    move v2, v0

    :goto_15
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_30b

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_314

    const/4 v4, -0x1

    :try_start_20
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v5, :sswitch_data_334

    goto/16 :goto_1b0

    :sswitch_2b
    const-string v5, "ad_source_channel"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x15

    goto/16 :goto_1b0

    :sswitch_37
    const-string v5, "product_id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x1c

    goto/16 :goto_1b0

    :sswitch_43
    const-string v5, "expired_time"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x21

    goto/16 :goto_1b0

    :sswitch_4f
    const-string v5, "placement_id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x12

    goto/16 :goto_1b0

    :sswitch_5b
    const-string v5, "adslot_id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x16

    goto/16 :goto_1b0

    :sswitch_67
    const-string v5, "cust_id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x1a

    goto/16 :goto_1b0

    :sswitch_73
    const-string v5, "clienttype"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/4 v4, 0x4

    goto/16 :goto_1b0

    :sswitch_7e
    const-string v5, "android_id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    move v4, v6

    goto/16 :goto_1b0

    :sswitch_89
    const-string v5, "os_version"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/4 v4, 0x7

    goto/16 :goto_1b0

    :sswitch_94
    const-string v5, "camp_id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x19

    goto/16 :goto_1b0

    :sswitch_a0
    const-string v5, "appid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x13

    goto/16 :goto_1b0

    :sswitch_ac
    const-string v5, "request_id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x11

    goto/16 :goto_1b0

    :sswitch_b8
    const-string v5, "imei"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    move v4, v7

    goto/16 :goto_1b0

    :sswitch_c3
    const-string v5, "crid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x18

    goto/16 :goto_1b0

    :sswitch_cf
    const-string v5, "vid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x17

    goto/16 :goto_1b0

    :sswitch_db
    const-string v5, "os"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    move v4, v0

    goto/16 :goto_1b0

    :sswitch_e6
    const-string v5, "network_type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0xc

    goto/16 :goto_1b0

    :sswitch_f2
    const-string v5, "screenangle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0xe

    goto/16 :goto_1b0

    :sswitch_fe
    const-string v5, "is_override"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x1e

    goto/16 :goto_1b0

    :sswitch_10a
    const-string v5, "sdk_version"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/4 v4, 0x6

    goto/16 :goto_1b0

    :sswitch_115
    const-string v5, "pkgname"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0xd

    goto/16 :goto_1b0

    :sswitch_121
    const-string v5, "screen_density"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0xb

    goto/16 :goto_1b0

    :sswitch_12d
    const-string v5, "device_width"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x9

    goto/16 :goto_1b0

    :sswitch_139
    const-string v5, "creative_type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0xf

    goto/16 :goto_1b0

    :sswitch_145
    const-string v5, "app_version"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/4 v4, 0x5

    goto :goto_1b0

    :sswitch_14f
    const-string v5, "forbiden_parse_landingpage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x1f

    goto :goto_1b0

    :sswitch_15a
    const-string v5, "client_pixel"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x8

    goto :goto_1b0

    :sswitch_165
    const-string v5, "ad_type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x10

    goto :goto_1b0

    :sswitch_170
    const-string v5, "device_height"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0xa

    goto :goto_1b0

    :sswitch_17b
    const-string v5, "bid_price"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x1b

    goto :goto_1b0

    :sswitch_186
    const-string v5, "google_aid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/4 v4, 0x3

    goto :goto_1b0

    :sswitch_190
    const-string v5, "settlement_price_enc"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x1d

    goto :goto_1b0

    :sswitch_19b
    const-string v5, "display_orientation"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x20

    goto :goto_1b0

    :sswitch_1a6
    const-string v5, "ad_source_logo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    const/16 v4, 0x14

    :cond_1b0
    :goto_1b0
    packed-switch v4, :pswitch_data_3be

    goto/16 :goto_307

    :pswitch_1b5
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    :goto_1bd
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_307

    :pswitch_1c2
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->display_orientation:Ljava/lang/Integer;

    goto :goto_1bd

    :pswitch_1cb
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    goto :goto_1bd

    :pswitch_1d4
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->is_override:Ljava/lang/Integer;

    goto :goto_1bd

    :pswitch_1dd
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->settlement_price_enc:Ljava/lang/String;

    goto :goto_1bd

    :pswitch_1e6
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->product_id:Ljava/lang/String;

    goto :goto_1bd

    :pswitch_1ef
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->bid_price:Ljava/lang/Integer;

    goto :goto_1bd

    :pswitch_1f8
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->cust_id:Ljava/lang/String;

    goto :goto_1bd

    :pswitch_201
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCamp_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_1bd

    :pswitch_208
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v4

    goto :goto_1bd

    :pswitch_20f
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v4

    iget-object v4, v4, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->vid:Ljava/lang/String;

    goto :goto_1bd

    :pswitch_218
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_1bd

    :pswitch_21f
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_channel()Ljava/lang/String;

    move-result-object v4

    goto :goto_1bd

    :pswitch_226
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_source_logo()Ljava/lang/String;

    move-result-object v4

    goto :goto_1bd

    :pswitch_22d
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/a;->R()Ljava/lang/String;

    move-result-object v4

    goto :goto_1bd

    :pswitch_236
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v4

    goto :goto_1bd

    :pswitch_23d
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1bd

    :pswitch_245
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v4

    :goto_24b
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_307

    :pswitch_250
    iget-object v4, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v4

    goto :goto_24b

    :pswitch_257
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/a;->D()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5a

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_307

    :pswitch_26f
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/a;->C()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1bd

    :pswitch_279
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/a;->F()Lcom/sigmob/sdk/common/f/c$a;

    move-result-object v4

    goto/16 :goto_1bd

    :pswitch_283
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/a;->p()I

    move-result v4

    goto :goto_24b

    :pswitch_28c
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/a;->s()Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_1bd

    :pswitch_296
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/a;->t()Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_1bd

    :pswitch_2a0
    const-string v4, "%sx%s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sigmob/sdk/common/a;->ad()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sigmob/sdk/common/a;->ad()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1bd

    :pswitch_2ca
    invoke-static {}, Lcom/sigmob/sdk/common/a;->q()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1bd

    :pswitch_2d0
    const-string v4, "2.24.0"

    goto/16 :goto_1bd

    :pswitch_2d4
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/a;->E()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1bd

    :pswitch_2de
    invoke-static {}, Lcom/sigmob/sdk/common/a;->u()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1bd

    :pswitch_2e4
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/a;->g()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1bd

    :pswitch_2ee
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/a;->d()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1bd

    :pswitch_2f8
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/a;->h()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1bd

    :pswitch_302
    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_305
    .catchall {:try_start_20 .. :try_end_305} :catchall_306

    goto :goto_307

    :catchall_306
    move-exception v3

    :goto_307
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15

    :cond_30b
    const/16 p1, 0xc8

    :try_start_30d
    const-string v0, "getAppInfo success "

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_313
    .catchall {:try_start_30d .. :try_end_313} :catchall_314

    return-object p1

    :catchall_314
    move-exception p1

    const/16 v0, 0x1f4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppInfo error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_334
    .sparse-switch
        -0x69eac2cd -> :sswitch_1a6
        -0x5ed4a62d -> :sswitch_19b
        -0x5e3e7eb2 -> :sswitch_190
        -0x5b7bbdca -> :sswitch_186
        -0x5006e079 -> :sswitch_17b
        -0x4d3b3cd0 -> :sswitch_170
        -0x44ada62a -> :sswitch_165
        -0x41261aee -> :sswitch_15a
        -0x36c286e8 -> :sswitch_14f
        -0x35c17346 -> :sswitch_145
        -0x29e2b236 -> :sswitch_139
        -0x22b0e963 -> :sswitch_12d
        -0x21df2feb -> :sswitch_121
        -0x1ed099a9 -> :sswitch_115
        -0x16745a2d -> :sswitch_10a
        -0xc3890bf -> :sswitch_fe
        -0x277e419 -> :sswitch_f2
        -0x128e555 -> :sswitch_e6
        0xde4 -> :sswitch_db
        0x1c811 -> :sswitch_cf
        0x2eb9ca -> :sswitch_c3
        0x3160c8 -> :sswitch_b8
        0x23640cb -> :sswitch_ac
        0x58b82fc -> :sswitch_a0
        0x20c35b99 -> :sswitch_94
        0x281aad7d -> :sswitch_89
        0x2b17f0eb -> :sswitch_7e
        0x41c4a585 -> :sswitch_73
        0x433aa687 -> :sswitch_67
        0x43edf579 -> :sswitch_5b
        0x48fa38b5 -> :sswitch_4f
        0x55ae13a7 -> :sswitch_43
        0x687cca6b -> :sswitch_37
        0x693f787b -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_3be
    .packed-switch 0x0
        :pswitch_302
        :pswitch_2f8
        :pswitch_2ee
        :pswitch_2e4
        :pswitch_2de
        :pswitch_2d4
        :pswitch_2d0
        :pswitch_2ca
        :pswitch_2a0
        :pswitch_296
        :pswitch_28c
        :pswitch_283
        :pswitch_279
        :pswitch_26f
        :pswitch_257
        :pswitch_250
        :pswitch_245
        :pswitch_23d
        :pswitch_236
        :pswitch_22d
        :pswitch_226
        :pswitch_21f
        :pswitch_218
        :pswitch_20f
        :pswitch_208
        :pswitch_201
        :pswitch_1f8
        :pswitch_1ef
        :pswitch_1e6
        :pswitch_1dd
        :pswitch_1d4
        :pswitch_1cb
        :pswitch_1c2
        :pswitch_1b5
    .end packed-switch
.end method

.method public hello(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p1

    :catchall_5
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method public javascriptAddDcLog(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "_ac_type"

    const/4 v1, 0x0

    if-nez p1, :cond_10

    const/16 p1, 0x190

    :try_start_7
    const-string v0, "not params"

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_e
    move-exception p1

    goto :goto_36

    :cond_10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/sdk/mraid/a$a;->a:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v3, Lcom/sigmob/sdk/mraid/a$a$1;

    invoke-direct {v3, p0, p1}, Lcom/sigmob/sdk/mraid/a$a$1;-><init>(Lcom/sigmob/sdk/mraid/a$a;Lorg/json/JSONObject;)V

    invoke-static {v0, v2, v3}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_e

    const/16 p1, 0xc8

    const-string v0, "add dc log success"

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2d
    const/16 p1, 0x12c

    :try_start_2f
    const-string v0, "_ac_type is empty"

    invoke-static {p1, v0, v1}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_e

    return-object p1

    :goto_36
    const/16 v0, 0x1f4

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lcom/sigmob/sdk/mraid/a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
