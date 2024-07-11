.class public final Lcom/appsflyer/internal/aa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static AFInAppEventParameterName:Ljava/lang/String;

.field private static AFInAppEventType:Ljava/lang/String;


# instance fields
.field private AFKeystoreWrapper:Ljava/lang/String;

.field private AFLogger$LogLevel:Ljava/lang/String;

.field private AFVersionDeclaration:Ljava/lang/String;

.field private AppsFlyer2dXConversionCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getLevel:Ljava/lang/String;

.field private init:Ljava/lang/String;

.field private valueOf:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private values:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    const-string v0, "https://%ssdk-services.%s/validate-android-signature"

    sput-object v0, Lcom/appsflyer/internal/aa;->AFInAppEventType:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://%svalidate.%s/api/v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/appsflyer/internal/af;->AFInAppEventParameterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/androidevent?buildnumber=6.3.0&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/aa;->AFInAppEventParameterName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/internal/aa;->valueOf:Ljava/lang/ref/WeakReference;

    .line 41
    iput-object p2, p0, Lcom/appsflyer/internal/aa;->AFKeystoreWrapper:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/appsflyer/internal/aa;->values:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/appsflyer/internal/aa;->AFVersionDeclaration:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/appsflyer/internal/aa;->getLevel:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lcom/appsflyer/internal/aa;->init:Ljava/lang/String;

    .line 46
    iput-object p8, p0, Lcom/appsflyer/internal/aa;->AppsFlyer2dXConversionCallback:Ljava/util/Map;

    .line 47
    iput-object p4, p0, Lcom/appsflyer/internal/aa;->AFLogger$LogLevel:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private static AFInAppEventParameterName(Lcom/appsflyer/internal/bj;)Ljava/net/HttpURLConnection;
    .registers 3

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2081
    iget-object v1, p0, Lcom/appsflyer/internal/h;->onInstallConversionFailureNative:Ljava/lang/String;

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/appsflyer/internal/k;

    .line 191
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    .line 3030
    iput-boolean v1, p0, Lcom/appsflyer/internal/bh;->onConversionDataSuccess:Z

    .line 3031
    nop

    .line 191
    invoke-direct {v0, p0}, Lcom/appsflyer/internal/k;-><init>(Lcom/appsflyer/internal/bh;)V

    .line 192
    invoke-virtual {v0}, Lcom/appsflyer/internal/k;->values()Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 190
    return-object p0
.end method

.method private static AFInAppEventParameterName(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 196
    sget-object v0, Lcom/appsflyer/internal/af;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v0, :cond_53

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Validate callback parameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 198
    if-eqz p0, :cond_3d

    .line 199
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Validate in app purchase success: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 200
    sget-object p0, Lcom/appsflyer/internal/af;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    invoke-interface {p0}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInApp()V

    return-void

    .line 202
    :cond_3d
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Validate in app purchase failed: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 203
    sget-object p0, Lcom/appsflyer/internal/af;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-nez p4, :cond_50

    const-string p4, "Failed validating"

    :cond_50
    invoke-interface {p0, p4}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInAppFailure(Ljava/lang/String;)V

    .line 206
    :cond_53
    return-void
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/aa;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/appsflyer/internal/aa;->valueOf:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/aa;)Ljava/util/Map;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/appsflyer/internal/aa;->AppsFlyer2dXConversionCallback:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic values(Lcom/appsflyer/internal/aa;Ljava/util/Map;Ljava/util/Map;Ljava/lang/ref/WeakReference;)V
    .registers 12

    .line 22
    nop

    .line 3142
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_123

    .line 3145
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/internal/z;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/z;->valueOf()V

    .line 3146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appsflyer/internal/aa;->AFInAppEventParameterName:Ljava/lang/String;

    .line 4062
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3147
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3148
    const-string v3, "referrer"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3150
    new-instance v3, Lcom/appsflyer/internal/bp;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-direct {v3, p3}, Lcom/appsflyer/internal/bp;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/appsflyer/internal/aa;->AFKeystoreWrapper:Ljava/lang/String;

    .line 3151
    nop

    .line 4127
    iput-object p3, v3, Lcom/appsflyer/internal/h;->AFLogger$LogLevel:Ljava/lang/String;

    .line 4128
    nop

    .line 3151
    nop

    .line 3152
    nop

    .line 5108
    iput-object v1, v3, Lcom/appsflyer/internal/h;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    .line 5109
    nop

    .line 3152
    check-cast v3, Lcom/appsflyer/internal/bp;

    .line 3153
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    move-result-object p3

    .line 3154
    nop

    .line 3155
    invoke-virtual {p3, v3}, Lcom/appsflyer/internal/af;->valueOf(Lcom/appsflyer/internal/h;)Ljava/util/Map;

    move-result-object v1

    .line 3156
    iget-object v4, p0, Lcom/appsflyer/internal/aa;->getLevel:Ljava/lang/String;

    const-string v7, "price"

    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3157
    iget-object p0, p0, Lcom/appsflyer/internal/aa;->init:Ljava/lang/String;

    const-string v4, "currency"

    invoke-interface {v1, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3158
    const-string p0, "receipt_data"

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3159
    if-eqz p2, :cond_9b

    .line 3160
    const-string p0, "extra_prms"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3162
    :cond_9b
    invoke-virtual {p3}, Lcom/appsflyer/internal/af;->valueOf()Ljava/util/Map;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3163
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3164
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object p1

    .line 5190
    new-array p2, v6, [Ljava/lang/String;

    aput-object p0, p2, v5

    const-string p0, "server_request"

    invoke-virtual {p1, p0, v0, p2}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3166
    const/4 p0, 0x0

    .line 3168
    nop

    .line 3169
    :try_start_ba
    invoke-virtual {v3, v1}, Lcom/appsflyer/internal/bp;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/h;

    move-result-object p1

    .line 3170
    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/h;->values(Ljava/lang/String;)Lcom/appsflyer/internal/h;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/bj;

    .line 3168
    invoke-static {p1}, Lcom/appsflyer/internal/aa;->AFInAppEventParameterName(Lcom/appsflyer/internal/bj;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 3172
    const/4 p1, -0x1

    .line 3173
    if-eqz p0, :cond_cf

    .line 3174
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 3176
    :cond_cf
    invoke-static {p0}, Lcom/appsflyer/internal/af;->AFInAppEventType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p2

    .line 3177
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object p3

    .line 5194
    const-string v1, "server_response"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    invoke-virtual {p3, v1, v0, v2}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3178
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Validate-WH response - "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V
    :try_end_10b
    .catchall {:try_start_ba .. :try_end_10b} :catchall_111

    .line 3182
    if-eqz p0, :cond_123

    .line 3183
    :goto_10d
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 3179
    :catchall_111
    move-exception p1

    .line 3180
    :try_start_112
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_119
    .catchall {:try_start_112 .. :try_end_119} :catchall_11c

    .line 3182
    if-eqz p0, :cond_123

    .line 3183
    goto :goto_10d

    .line 3182
    :catchall_11c
    move-exception p1

    if-eqz p0, :cond_122

    .line 3183
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 3185
    :cond_122
    throw p1

    .line 22
    :cond_123
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 68
    const-string v0, "advertiserId"

    iget-object v1, p0, Lcom/appsflyer/internal/aa;->AFKeystoreWrapper:Ljava/lang/String;

    if-eqz v1, :cond_15c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_15c

    .line 73
    :cond_e
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 74
    return-void

    .line 77
    :cond_19
    const/4 v1, 0x0

    .line 79
    const/4 v2, 0x0

    :try_start_1b
    iget-object v3, p0, Lcom/appsflyer/internal/aa;->valueOf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 80
    if-nez v3, :cond_26

    .line 81
    return-void

    .line 83
    :cond_26
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 84
    const-string v5, "public-key"

    iget-object v6, p0, Lcom/appsflyer/internal/aa;->values:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v5, "sig-data"

    iget-object v6, p0, Lcom/appsflyer/internal/aa;->AFVersionDeclaration:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v5, "signature"

    iget-object v6, p0, Lcom/appsflyer/internal/aa;->AFLogger$LogLevel:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 89
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/appsflyer/internal/aa$2;

    invoke-direct {v7, p0, v5}, Lcom/appsflyer/internal/aa$2;-><init>(Lcom/appsflyer/internal/aa;Ljava/util/Map;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 94
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 96
    const-string v5, "dev_key"

    iget-object v6, p0, Lcom/appsflyer/internal/aa;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v5, "app_id"

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v5, "uid"

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    sget-object v3, Lcom/appsflyer/internal/aa;->AFInAppEventType:Ljava/lang/String;

    .line 1062
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 101
    nop

    .line 102
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v6

    .line 1190
    const-string v7, "server_request"

    new-array v9, v8, [Ljava/lang/String;

    aput-object v0, v9, v2

    invoke-virtual {v6, v7, v3, v9}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 104
    new-instance v0, Lcom/appsflyer/internal/bm;

    invoke-direct {v0}, Lcom/appsflyer/internal/bm;-><init>()V

    .line 105
    invoke-virtual {v0, v4}, Lcom/appsflyer/internal/bm;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/h;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v3}, Lcom/appsflyer/internal/h;->values(Ljava/lang/String;)Lcom/appsflyer/internal/h;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/bj;

    .line 104
    invoke-static {v0}, Lcom/appsflyer/internal/aa;->AFInAppEventParameterName(Lcom/appsflyer/internal/bj;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 108
    const/4 v0, -0x1

    .line 109
    if-eqz v1, :cond_c9

    .line 110
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 112
    :cond_c9
    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    invoke-static {v1}, Lcom/appsflyer/internal/af;->AFInAppEventType(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-static {}, Lcom/appsflyer/internal/am;->AFKeystoreWrapper()Lcom/appsflyer/internal/am;

    move-result-object v6

    .line 1194
    const-string v7, "server_response"

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v2

    aput-object v4, v5, v8

    invoke-virtual {v6, v7, v3, v5}, Lcom/appsflyer/internal/am;->valueOf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 115
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v4, "code"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_11b

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Validate response 200 ok: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 119
    const-string v0, "result"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v4, p0, Lcom/appsflyer/internal/aa;->AFVersionDeclaration:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/internal/aa;->getLevel:Ljava/lang/String;

    iget-object v6, p0, Lcom/appsflyer/internal/aa;->init:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v5, v6, v3}, Lcom/appsflyer/internal/aa;->AFInAppEventParameterName(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12d

    .line 122
    :cond_11b
    const-string v0, "Failed Validate request"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/appsflyer/internal/aa;->AFVersionDeclaration:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/internal/aa;->getLevel:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/internal/aa;->init:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v4, v5, v3}, Lcom/appsflyer/internal/aa;->AFInAppEventParameterName(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12d
    .catchall {:try_start_1b .. :try_end_12d} :catchall_133

    .line 133
    :goto_12d
    if-eqz v1, :cond_154

    .line 134
    :goto_12f
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 125
    :catchall_133
    move-exception v0

    .line 126
    :try_start_134
    sget-object v3, Lcom/appsflyer/internal/af;->valueOf:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v3, :cond_14a

    .line 127
    const-string v3, "Failed Validate request + ex"

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    iget-object v3, p0, Lcom/appsflyer/internal/aa;->AFVersionDeclaration:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/internal/aa;->getLevel:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/internal/aa;->init:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/appsflyer/internal/aa;->AFInAppEventParameterName(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_14a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_151
    .catchall {:try_start_134 .. :try_end_151} :catchall_155

    .line 133
    if-eqz v1, :cond_154

    .line 134
    goto :goto_12f

    .line 138
    :cond_154
    return-void

    .line 133
    :catchall_155
    move-exception v0

    if-eqz v1, :cond_15b

    .line 134
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    :cond_15b
    throw v0

    .line 69
    :cond_15c
    :goto_15c
    return-void
.end method
