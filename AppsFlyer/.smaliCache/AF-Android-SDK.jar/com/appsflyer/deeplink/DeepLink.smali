.class public Lcom/appsflyer/deeplink/DeepLink;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFInAppEventParameterName:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    .line 19
    return-void
.end method

.method public static valueOf(Lorg/json/JSONObject;)Lcom/appsflyer/deeplink/DeepLink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 22
    nop

    .line 23
    const-string v0, "custom_params"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 24
    if-eqz v1, :cond_24

    .line 25
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 27
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    goto :goto_10

    .line 32
    :cond_24
    new-instance v0, Lcom/appsflyer/deeplink/DeepLink;

    invoke-direct {v0, p0}, Lcom/appsflyer/deeplink/DeepLink;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static values(Ljava/util/Map;)Lcom/appsflyer/deeplink/DeepLink;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appsflyer/deeplink/DeepLink;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 36
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 40
    const/16 v1, 0x6f

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "install_time"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "path"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "scheme"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "host"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "pid"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "c"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "af_prt"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "af_mp"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "clickid"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "af_siteid"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "af_sub_siteid"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "af_c_id"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "af_adset"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "af_adset_id"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "af_ad"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "af_ad_id"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "af_ad_type"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "af_click_lookback"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "af_viewthrough_lookback"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "af_channel"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "af_keywords"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "af_cost_model"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "af_cost_currency"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "af_cost_value"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "af_r"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "af_web_dp"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "af_dp"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "af_force_deeplink"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "af_ref"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "is_incentivized"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "af_param_forwarding"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "is_retargeting"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "af_reengagement_window"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "is_branded_link"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "is_universal_link"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "esp_name"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "af_generated_clk"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "transaction_id"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "af_fp_lookback_window"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "af_vt_fp_lookback_window"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "af_fp_priority"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "af_generate_clk"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "af_inactivity_window"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "af_ol_red"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "af_attr"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "af_ol_lp"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "af_blank_red"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "af_source"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "af_lp_src"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "af_src_browser"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "af_tranid"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "af_wrt_clk"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "af_ua"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "af_ip"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "af_lang"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "advertising_id"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "sha1_advertising_id"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "md5_advertising_id"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "android_id"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "sha1_android_id"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "md5_android_id"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "imei"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "sha1_imei"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "md5_imei"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "oaid"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "sha1_oaid"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "md5_oaid"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "af_android_url"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "sha1_el"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "fire_advertising_id"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "sha1_fire_advertising_id"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "idfa"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "md5_idfa"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "af_ios_url"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "af_ios_fallback"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "sha1_idfa"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "mac"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string v3, "sha1_mac"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string v3, "af_banner"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string v3, "af_slk_web_endpoint"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string v3, "af_chrome_lp"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string v3, "af_android_custom_url"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string v3, "af_ios_custom_url"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string v3, "af_enc_data"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string v3, "engmnt_source"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string v3, "redirect_response_data"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string v3, "shortlink"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string v3, "advertiserId"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string v3, "sha1_advertiserId"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string v3, "advertiser_id"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string v3, "sha1_advertiser_id"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string v3, "muid"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string v3, "idfv"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string v3, "md5_idfv"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string v3, "sha1_idfv"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string v3, "af_installpostback"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string v3, "http_referrer"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string v3, "af_model"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string v3, "af_os"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string v3, "md5_advertiserId"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string v3, "af_video_total_length"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string v3, "af_video_played_length"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string v3, "af_playable_played_length"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string v3, "af_ad_time_viewed"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string v3, "af_ad_displayed_percent"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string v3, "af_audio_total_length"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string v3, "af_audio_played_length"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string v3, "link"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string v3, "af_status"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string v3, "af_web_id"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string v3, "af_deeplink"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2aa
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2aa

    .line 65
    :cond_2be
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {p0}, Lcom/appsflyer/deeplink/DeepLink;->valueOf(Lorg/json/JSONObject;)Lcom/appsflyer/deeplink/DeepLink;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAfSub1()Ljava/lang/String;
    .registers 3

    .line 110
    nop

    .line 8145
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    const-string v1, "af_sub1"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 8146
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 110
    :cond_e
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAfSub2()Ljava/lang/String;
    .registers 3

    .line 115
    nop

    .line 9145
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    const-string v1, "af_sub2"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 9146
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 115
    :cond_e
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAfSub3()Ljava/lang/String;
    .registers 3

    .line 120
    nop

    .line 10145
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    const-string v1, "af_sub3"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 10146
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 120
    :cond_e
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAfSub4()Ljava/lang/String;
    .registers 3

    .line 125
    nop

    .line 11145
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    const-string v1, "af_sub4"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 11146
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 125
    :cond_e
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAfSub5()Ljava/lang/String;
    .registers 3

    .line 130
    nop

    .line 12145
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    const-string v1, "af_sub5"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 12146
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 130
    :cond_e
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCampaign()Ljava/lang/String;
    .registers 3

    .line 100
    nop

    .line 6145
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 6146
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 100
    :cond_e
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .registers 3

    .line 105
    nop

    .line 7145
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    const-string v1, "campaign_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 7146
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 105
    :cond_e
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClickEvent()Lorg/json/JSONObject;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getClickHttpReferrer()Ljava/lang/String;
    .registers 3

    .line 90
    nop

    .line 4145
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    const-string v1, "click_http_referrer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 4146
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 90
    :cond_e
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeepLinkValue()Ljava/lang/String;
    .registers 3

    .line 80
    nop

    .line 2145
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    const-string v1, "deep_link_value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2146
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 80
    :cond_e
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMatchType()Ljava/lang/String;
    .registers 3

    .line 85
    nop

    .line 3145
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    const-string v1, "match_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3146
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 85
    :cond_e
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMediaSource()Ljava/lang/String;
    .registers 3

    .line 95
    nop

    .line 5145
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    const-string v1, "media_source"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 5146
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 95
    :cond_e
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 74
    nop

    .line 1145
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1146
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_d

    move-object p1, v1

    .line 74
    :cond_d
    nop

    .line 75
    if-nez p1, :cond_11

    return-object v1

    :cond_11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDeferred()Ljava/lang/Boolean;
    .registers 3

    .line 135
    nop

    .line 13145
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    const-string v1, "is_deferred"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 13146
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    .line 135
    :cond_e
    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
