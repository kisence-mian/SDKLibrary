.class final Lcom/appsflyer/internal/aq;
.super Lcom/appsflyer/internal/al;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/aq$d;
    }
.end annotation


# instance fields
.field AFInAppEventParameterName:Lcom/appsflyer/internal/aq$d;

.field AFInAppEventType:Z

.field private AppsFlyer2dXConversionCallback:Ljava/lang/String;

.field private getLevel:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/appsflyer/internal/af;Landroid/content/Context;)V
    .registers 11

    .line 26
    const-string v0, "GET"

    invoke-direct {p0, p2, p3, v0}, Lcom/appsflyer/internal/al;-><init>(Lcom/appsflyer/internal/af;Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/appsflyer/internal/aq;->AFInAppEventType:Z

    .line 27
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_b0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_b0

    .line 28
    nop

    .line 29
    const/4 p3, 0x3

    new-array v0, p3, [Ljava/lang/String;

    const-string v1, "onelink.me"

    aput-object v1, v0, p2

    const-string v1, "onelnk.com"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "app.aflink.com"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_30
    if-ge v1, p3, :cond_42

    aget-object v5, v0, v1

    .line 30
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3f

    const/4 v4, 0x1

    .line 29
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 31
    :cond_42
    sget-object v0, Lcom/appsflyer/internal/f;->AFLogger$LogLevel:[Ljava/lang/String;

    if-eqz v0, :cond_93

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Validate if link "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " belongs to custom domains: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/internal/f;->AFLogger$LogLevel:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->AFKeystoreWrapper(Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/appsflyer/internal/f;->AFLogger$LogLevel:[Ljava/lang/String;

    array-length v1, v0

    :goto_6b
    if-ge p2, v1, :cond_93

    aget-object v5, v0, p2

    .line 34
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_90

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_90

    .line 35
    nop

    .line 36
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Link matches custom domain: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->AFInAppEventType(Ljava/lang/String;)V

    .line 37
    iput-boolean v2, p0, Lcom/appsflyer/internal/aq;->AFInAppEventType:Z

    const/4 v4, 0x1

    .line 33
    :cond_90
    add-int/lit8 p2, p2, 0x1

    goto :goto_6b

    .line 41
    :cond_93
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 42
    if-eqz v4, :cond_b0

    array-length v0, p2

    if-ne v0, p3, :cond_b0

    .line 43
    aget-object p3, p2, v2

    iput-object p3, p0, Lcom/appsflyer/internal/al;->values:Ljava/lang/String;

    .line 44
    aget-object p2, p2, v3

    iput-object p2, p0, Lcom/appsflyer/internal/aq;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/aq;->getLevel:Ljava/lang/String;

    .line 48
    :cond_b0
    return-void
.end method


# virtual methods
.method final AFInAppEventType()Ljava/lang/String;
    .registers 6

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appsflyer/internal/aq;->valueOf:Ljava/lang/String;

    .line 1062
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lcom/appsflyer/internal/af;->AFInAppEventParameterName()Lcom/appsflyer/internal/af;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/al;->values:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/internal/aq;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final AFInAppEventType(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 6

    .line 60
    iget-object v0, p0, Lcom/appsflyer/internal/al;->AFLogger$LogLevel:Ljava/lang/String;

    const-string v1, "Af-UUID"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/appsflyer/internal/al;->AFVersionDeclaration:Ljava/util/Map;

    const-string v1, "build_number"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v1, "Af-Meta-Sdk-Ver"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/appsflyer/internal/al;->AFVersionDeclaration:Ljava/util/Map;

    const-string v2, "counter"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Af-Meta-Counter"

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/appsflyer/internal/al;->AFVersionDeclaration:Ljava/util/Map;

    const-string v2, "model"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Af-Meta-Model"

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/appsflyer/internal/al;->AFVersionDeclaration:Ljava/util/Map;

    const-string v2, "platformextension"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Af-Meta-Platform"

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/appsflyer/internal/al;->AFVersionDeclaration:Ljava/util/Map;

    const-string v2, "sdk"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Af-Meta-System-Version"

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/internal/al;->AFKeystoreWrapper:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/appsflyer/internal/al;->AFLogger$LogLevel:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/appsflyer/internal/al;->values:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/appsflyer/internal/aq;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/appsflyer/internal/aq;->AFKeystoreWrapper(Ljavax/net/ssl/HttpsURLConnection;[Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method final AFKeystoreWrapper()Z
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/appsflyer/internal/al;->values:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/appsflyer/internal/aq;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/appsflyer/internal/al;->values:Ljava/lang/String;

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method final valueOf()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/appsflyer/internal/aq;->getLevel:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, "Can\'t get OneLink data"

    .line 95
    :goto_7
    iget-object v1, p0, Lcom/appsflyer/internal/aq;->AFInAppEventParameterName:Lcom/appsflyer/internal/aq$d;

    invoke-interface {v1, v0}, Lcom/appsflyer/internal/aq$d;->valueOf(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method final values(Ljava/lang/String;)V
    .registers 7

    .line 78
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 81
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 83
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    goto :goto_e

    .line 85
    :cond_22
    iget-object v1, p0, Lcom/appsflyer/internal/aq;->AFInAppEventParameterName:Lcom/appsflyer/internal/aq$d;

    invoke-interface {v1, v0}, Lcom/appsflyer/internal/aq$d;->AFKeystoreWrapper(Ljava/util/Map;)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_27} :catch_28

    .line 89
    return-void

    .line 86
    :catch_28
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/appsflyer/internal/aq;->AFInAppEventParameterName:Lcom/appsflyer/internal/aq$d;

    const-string v2, "Can\'t parse OneLink data"

    invoke-interface {v1, v2}, Lcom/appsflyer/internal/aq$d;->valueOf(Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error while parsing to json "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/appsflyer/AFLogger;->values(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method
