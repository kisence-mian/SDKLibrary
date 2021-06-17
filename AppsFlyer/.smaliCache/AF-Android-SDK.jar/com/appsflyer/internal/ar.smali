.class public final Lcom/appsflyer/internal/ar;
.super Lcom/appsflyer/internal/bh;
.source ""


# static fields
.field public static onAppOpenAttributionNative:J

.field private static onAttributionFailure:Ljava/lang/String;


# instance fields
.field private AppsFlyerConversionListener:Z

.field private AppsFlyerInAppPurchaseValidatorListener:I

.field private final onAppOpenAttribution:Ljava/util/concurrent/CountDownLatch;

.field public onAttributionFailureNative:I

.field private final onConversionDataFail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/bw;",
            ">;"
        }
    .end annotation
.end field

.field private final onDeepLinking:Lcom/appsflyer/internal/aw;

.field private onValidateInApp:I

.field private final onValidateInAppFailure:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 52
    const-string v0, "https://%sdlsdk.%s/v1.0/android/"

    sput-object v0, Lcom/appsflyer/internal/ar;->onAttributionFailure:Ljava/lang/String;

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/appsflyer/internal/ar;->onAppOpenAttributionNative:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/appsflyer/internal/aw;)V
    .registers 10

    .line 64
    sget-object v2, Lcom/appsflyer/internal/ar;->onAttributionFailure:Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/internal/bh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/Context;)V

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/ar;->onConversionDataFail:Ljava/util/List;

    .line 55
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/appsflyer/internal/ar;->onAppOpenAttribution:Ljava/util/concurrent/CountDownLatch;

    .line 57
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/ar;->onValidateInAppFailure:Lorg/json/JSONObject;

    .line 65
    iput-object p2, p0, Lcom/appsflyer/internal/ar;->onDeepLinking:Lcom/appsflyer/internal/aw;

    .line 66
    return-void
.end method

.method private AFInAppEventParameterName()Z
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    .line 6189
    const-string v1, "referrers"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6190
    nop

    .line 6191
    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 6192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_14

    .line 6191
    :cond_13
    const/4 v0, 0x0

    .line 6194
    :goto_14
    nop

    .line 174
    iget v3, p0, Lcom/appsflyer/internal/ar;->onValidateInApp:I

    if-ge v0, v3, :cond_23

    iget-object v0, p0, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    return v0

    :cond_23
    return v2
.end method

.method private static AFInAppEventParameterName(Lcom/appsflyer/internal/bw;)Z
    .registers 7

    .line 273
    iget-object p0, p0, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v0, "click_ts"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 274
    const/4 v0, 0x0

    if-nez p0, :cond_e

    return v0

    .line 275
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-gez p0, :cond_2b

    const/4 p0, 0x1

    return p0

    :cond_2b
    return v0
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/ar;)Landroid/app/Application;
    .registers 1

    .line 51
    nop

    .line 12058
    iget-object p0, p0, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 51
    return-object p0
.end method

.method private AFKeystoreWrapper(Lcom/appsflyer/internal/d$a$d;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/d$a$d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 116
    nop

    .line 117
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    .line 6024
    iget-object v1, p1, Lcom/appsflyer/internal/d$a$d;->valueOf:Ljava/lang/String;

    .line 117
    if-eqz v1, :cond_15

    .line 118
    nop

    .line 6029
    iget-object v1, p1, Lcom/appsflyer/internal/d$a$d;->AFInAppEventType:Ljava/lang/Boolean;

    .line 118
    nop

    .line 119
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_15

    :cond_14
    const/4 v0, 0x1

    .line 121
    :cond_15
    if-eqz v0, :cond_1d

    new-instance v0, Lcom/appsflyer/internal/ar$5;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/ar$5;-><init>(Lcom/appsflyer/internal/d$a$d;)V

    return-object v0

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/ar;Landroid/content/Context;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/ar;->valueOf(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/ar;Landroid/content/Context;)Lcom/appsflyer/deeplink/DeepLinkResult;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 51
    nop

    .line 15130
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 15131
    iget v2, p0, Lcom/appsflyer/internal/ar;->onAttributionFailureNative:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 15132
    iget-object v2, p0, Lcom/appsflyer/internal/ar;->onValidateInAppFailure:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/appsflyer/internal/ar;->onDeepLinking:Lcom/appsflyer/internal/aw;

    .line 16058
    iget-object v4, v4, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    const-wide/16 v5, 0x0

    const-string v7, "fg_ts"

    invoke-interface {v4, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 15132
    sub-long v4, v0, v4

    const-string v6, "from_fg"

    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 15134
    :cond_1f
    new-instance v2, Lcom/appsflyer/internal/k;

    invoke-direct {v2, p0}, Lcom/appsflyer/internal/k;-><init>(Lcom/appsflyer/internal/bh;)V

    invoke-virtual {v2}, Lcom/appsflyer/internal/k;->values()Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 15135
    iget-object v4, p0, Lcom/appsflyer/internal/ar;->onValidateInAppFailure:Lorg/json/JSONObject;

    const-string v5, "net"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 15136
    if-nez v4, :cond_37

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 15137
    :cond_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 15138
    iget v8, p0, Lcom/appsflyer/internal/ar;->onAttributionFailureNative:I

    sub-int/2addr v8, v3

    sub-long v0, v6, v0

    invoke-virtual {v4, v8, v0, v1}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    .line 15139
    iget-object v0, p0, Lcom/appsflyer/internal/ar;->onValidateInAppFailure:Lorg/json/JSONObject;

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15140
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v4, 0x0

    if-ne v0, v1, :cond_c7

    .line 15141
    nop

    .line 16178
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    invoke-static {v2}, Lcom/appsflyer/internal/af;->AFInAppEventType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    .line 16179
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16180
    const-string v0, "is_second_ping"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appsflyer/internal/ar;->AppsFlyerConversionListener:Z

    .line 16181
    const-string v0, "found"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 16182
    move-object v0, v4

    goto :goto_82

    .line 16184
    :cond_70
    const-string v0, "click_event"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/deeplink/DeepLink;->valueOf(Lorg/json/JSONObject;)Lcom/appsflyer/deeplink/DeepLink;

    move-result-object v0

    .line 17139
    iget-object v1, v0, Lcom/appsflyer/deeplink/DeepLink;->AFInAppEventParameterName:Lorg/json/JSONObject;

    const-string v2, "is_deferred"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 17140
    nop

    .line 15141
    :goto_82
    nop

    .line 15142
    if-eqz v0, :cond_8b

    .line 15143
    new-instance p0, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {p0, v0, v4}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-object p0

    .line 15145
    :cond_8b
    iget v0, p0, Lcom/appsflyer/internal/ar;->onAttributionFailureNative:I

    if-gt v0, v3, :cond_c1

    invoke-direct {p0}, Lcom/appsflyer/internal/ar;->AFInAppEventParameterName()Z

    move-result v0

    if-eqz v0, :cond_c1

    iget-boolean v0, p0, Lcom/appsflyer/internal/ar;->AppsFlyerConversionListener:Z

    if-eqz v0, :cond_c1

    .line 15146
    nop

    .line 17161
    const-string v0, "[DDL] Waiting for referrers..."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 17162
    iget-object v0, p0, Lcom/appsflyer/internal/ar;->onAppOpenAttribution:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 17163
    iget-object v0, p0, Lcom/appsflyer/internal/ar;->onValidateInAppFailure:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v6

    const-string v3, "rfr_wait"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 17164
    iget v0, p0, Lcom/appsflyer/internal/ar;->AppsFlyerInAppPurchaseValidatorListener:I

    iget v1, p0, Lcom/appsflyer/internal/ar;->onValidateInApp:I

    if-ne v0, v1, :cond_bc

    .line 18157
    new-instance p0, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {p0, v4, v4}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 17165
    return-object p0

    .line 17167
    :cond_bc
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/ar;->valueOf(Landroid/content/Context;)V

    .line 17168
    goto/16 :goto_1

    .line 19157
    :cond_c1
    new-instance p0, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {p0, v4, v4}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 15148
    return-object p0

    .line 15151
    :cond_c7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[DDL] Error occurred. Server response code = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 15152
    new-instance p0, Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->HTTP_STATUS_CODE:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-direct {p0, v4, p1}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 51
    return-object p0
.end method

.method private valueOf(Landroid/content/Context;)V
    .registers 10

    .line 198
    iget v0, p0, Lcom/appsflyer/internal/ar;->onAttributionFailureNative:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/appsflyer/internal/ar;->onAttributionFailureNative:I

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[DDL] Preparing request "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/appsflyer/internal/ar;->onAttributionFailureNative:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 200
    iget v0, p0, Lcom/appsflyer/internal/ar;->onAttributionFailureNative:I

    if-ne v0, v1, :cond_ae

    .line 201
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    move-result-object v0

    .line 202
    iget-object v2, p0, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    invoke-static {p1}, Lcom/appsflyer/internal/af;->AFKeystoreWrapper(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "is_first"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v2, p0, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lang"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v2, p0, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "os"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v2, p0, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "type"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v2, p0, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "request_id"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v0, v0, Lcom/appsflyer/internal/af;->init:[Ljava/lang/String;

    .line 208
    if-eqz v0, :cond_87

    iget-object v2, p0, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    const-string v3, "sharing_filter"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v0}, Lcom/appsflyer/internal/ab;->AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/d$a$d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appsflyer/internal/ar;->AFKeystoreWrapper(Lcom/appsflyer/internal/d$a$d;)Ljava/util/Map;

    move-result-object v0

    .line 210
    invoke-static {p1}, Lcom/appsflyer/internal/ab;->AFInAppEventType(Landroid/content/Context;)Lcom/appsflyer/internal/d$a$d;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/appsflyer/internal/ar;->AFKeystoreWrapper(Lcom/appsflyer/internal/d$a$d;)Ljava/util/Map;

    move-result-object v2

    .line 211
    if-eqz v0, :cond_a5

    iget-object v3, p0, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    const-string v4, "gaid"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_a5
    if-eqz v2, :cond_ae

    iget-object v0, p0, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    const-string v3, "oaid"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_ae
    iget-object v0, p0, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    .line 215
    nop

    .line 7020
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 214
    nop

    .line 8015
    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 8016
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 214
    const-string v3, "timestamp"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    iget v2, p0, Lcom/appsflyer/internal/ar;->onAttributionFailureNative:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "request_count"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 219
    iget-object v2, p0, Lcom/appsflyer/internal/ar;->onConversionDataFail:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ee
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/bw;

    .line 220
    nop

    .line 8279
    nop

    .line 9048
    iget-object v5, v4, Lcom/appsflyer/internal/bw;->AFInAppEventType:Lcom/appsflyer/internal/bw$d;

    .line 8279
    sget-object v6, Lcom/appsflyer/internal/bw$d;->values:Lcom/appsflyer/internal/bw$d;

    if-ne v5, v6, :cond_126

    .line 8280
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 8281
    iget-object v6, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v7, "referrer"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8282
    if-eqz v6, :cond_126

    .line 8283
    iget-object v4, v4, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v7, "source"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8284
    const-string v4, "value"

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8285
    goto :goto_127

    .line 8288
    :cond_126
    const/4 v5, 0x0

    .line 220
    :goto_127
    nop

    .line 221
    if-eqz v5, :cond_12d

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_12d
    goto :goto_ee

    .line 223
    :cond_12e
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13b

    iget-object v2, p0, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    const-string v4, "referrers"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_13b
    nop

    .line 9228
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "AppsFlyerKey"

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9229
    nop

    .line 10081
    iget-object v2, p0, Lcom/appsflyer/internal/h;->onInstallConversionFailureNative:Ljava/lang/String;

    .line 11062
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v6

    invoke-virtual {v6}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 9229
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 9230
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 9231
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appsflyer/internal/h;->AFInAppEventType:Ljava/util/Map;

    .line 9232
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/internal/ai;->values(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "af_sig"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    sget-object v0, Lcom/appsflyer/internal/af;->AFInAppEventParameterName:Ljava/lang/String;

    .line 9233
    const-string v1, "sdk_version"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 9234
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 9235
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9229
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/h;->values(Ljava/lang/String;)Lcom/appsflyer/internal/h;

    .line 225
    return-void
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/ar;)V
    .registers 8

    .line 12239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12240
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    move-result-object v1

    .line 13071
    iget-object v1, v1, Lcom/appsflyer/internal/af;->onAttributionFailureNative:[Lcom/appsflyer/internal/bw;

    .line 12240
    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1f

    aget-object v4, v1, v3

    .line 12241
    if-eqz v4, :cond_1c

    .line 14048
    iget-object v5, v4, Lcom/appsflyer/internal/bw;->AFInAppEventType:Lcom/appsflyer/internal/bw$d;

    .line 12241
    sget-object v6, Lcom/appsflyer/internal/bw$d;->AFInAppEventParameterName:Lcom/appsflyer/internal/bw$d;

    if-eq v5, v6, :cond_1c

    .line 12242
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12240
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 12243
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/appsflyer/internal/ar;->onValidateInApp:I

    .line 12244
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/bw;

    .line 12245
    sget-object v2, Lcom/appsflyer/internal/ar$2;->AFInAppEventParameterName:[I

    .line 15048
    iget-object v3, v1, Lcom/appsflyer/internal/bw;->AFInAppEventType:Lcom/appsflyer/internal/bw$d;

    .line 12245
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_72

    goto :goto_70

    .line 12251
    :pswitch_43
    new-instance v2, Lcom/appsflyer/internal/ar$1;

    invoke-direct {v2, p0, v1}, Lcom/appsflyer/internal/ar$1;-><init>(Lcom/appsflyer/internal/ar;Lcom/appsflyer/internal/bw;)V

    invoke-virtual {v1, v2}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    goto :goto_70

    .line 12247
    :pswitch_4c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[DDL] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/appsflyer/internal/bw;->AFKeystoreWrapper:Ljava/util/Map;

    const-string v4, "source"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " referrer collected earlier"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 12248
    invoke-direct {p0, v1}, Lcom/appsflyer/internal/ar;->values(Lcom/appsflyer/internal/bw;)V

    .line 12249
    goto :goto_29

    .line 12245
    :goto_70
    goto :goto_29

    .line 51
    :cond_71
    return-void

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_43
    .end packed-switch
.end method

.method static synthetic values(Lcom/appsflyer/internal/ar;Lcom/appsflyer/internal/bw;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/ar;->values(Lcom/appsflyer/internal/bw;)V

    return-void
.end method

.method private values(Lcom/appsflyer/internal/bw;)V
    .registers 4

    .line 263
    invoke-static {p1}, Lcom/appsflyer/internal/ar;->AFInAppEventParameterName(Lcom/appsflyer/internal/bw;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 264
    iget-object v0, p0, Lcom/appsflyer/internal/ar;->onConversionDataFail:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/appsflyer/internal/ar;->onAppOpenAttribution:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[DDL] Added non-organic "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    return-void

    .line 267
    :cond_2b
    iget p1, p0, Lcom/appsflyer/internal/ar;->AppsFlyerInAppPurchaseValidatorListener:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appsflyer/internal/ar;->AppsFlyerInAppPurchaseValidatorListener:I

    iget v0, p0, Lcom/appsflyer/internal/ar;->onValidateInApp:I

    if-ne p1, v0, :cond_3a

    .line 268
    iget-object p1, p0, Lcom/appsflyer/internal/ar;->onAppOpenAttribution:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 270
    :cond_3a
    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    .registers 6

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/ar;->onValidateInAppFailure:Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {p1}, Lcom/appsflyer/deeplink/DeepLinkResult;->getStatus()Lcom/appsflyer/deeplink/DeepLinkResult$Status;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    iget-object v0, p0, Lcom/appsflyer/internal/ar;->onValidateInAppFailure:Lorg/json/JSONObject;

    const-string v1, "timeout_value"

    sget-wide v2, Lcom/appsflyer/internal/ar;->onAppOpenAttributionNative:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_19

    .line 107
    goto :goto_1a

    .line 106
    :catch_19
    move-exception v0

    .line 108
    :goto_1a
    iget-object v0, p0, Lcom/appsflyer/internal/ar;->onDeepLinking:Lcom/appsflyer/internal/aw;

    iget-object v1, p0, Lcom/appsflyer/internal/ar;->onValidateInAppFailure:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4071
    iget-object v0, v0, Lcom/appsflyer/internal/aw;->AFInAppEventType:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "ddl"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    nop

    .line 5058
    iget-object v0, p0, Lcom/appsflyer/internal/h;->valueOf:Landroid/app/Application;

    .line 110
    invoke-static {v0}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "ddl_sent"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    invoke-static {p1}, Lcom/appsflyer/internal/as;->AFInAppEventType(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 112
    return-void
.end method
