.class public abstract Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iab/omid/library/mintegral/e/b;

.field private b:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

.field private c:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

.field private d:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher$a;

.field private e:D


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->h()V

    new-instance v0, Lcom/iab/omid/library/mintegral/e/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iab/omid/library/mintegral/e/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/mintegral/e/b;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(F)V
    .registers 4

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/d;->a()Lcom/iab/omid/library/mintegral/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;F)V

    return-void
.end method

.method a(Landroid/webkit/WebView;)V
    .registers 3

    new-instance v0, Lcom/iab/omid/library/mintegral/e/b;

    invoke-direct {v0, p1}, Lcom/iab/omid/library/mintegral/e/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/mintegral/e/b;

    return-void
.end method

.method public a(Lcom/iab/omid/library/mintegral/adsession/AdEvents;)V
    .registers 2

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->b:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    return-void
.end method

.method public a(Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;)V
    .registers 5

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/d;->a()Lcom/iab/omid/library/mintegral/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iab/omid/library/mintegral/adsession/AdSessionConfiguration;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/iab/omid/library/mintegral/adsession/ErrorType;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/d;->a()Lcom/iab/omid/library/mintegral/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Lcom/iab/omid/library/mintegral/adsession/ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/iab/omid/library/mintegral/adsession/a;Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;)V
    .registers 9

    invoke-virtual {p1}, Lcom/iab/omid/library/mintegral/adsession/a;->getAdSessionId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "environment"

    const-string v3, "app"

    invoke-static {v2, v0, v3}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "adSessionType"

    invoke-virtual {p2}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->getAdSessionContextType()Lcom/iab/omid/library/mintegral/adsession/AdSessionContextType;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "deviceInfo"

    invoke-static {}, Lcom/iab/omid/library/mintegral/d/a;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "clid"

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "vlid"

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "supports"

    invoke-static {v2, v3, v0}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "partnerName"

    invoke-virtual {p2}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->getPartner()Lcom/iab/omid/library/mintegral/adsession/Partner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iab/omid/library/mintegral/adsession/Partner;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "partnerVersion"

    invoke-virtual {p2}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->getPartner()Lcom/iab/omid/library/mintegral/adsession/Partner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iab/omid/library/mintegral/adsession/Partner;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "omidNativeInfo"

    invoke-static {v2, v3, v0}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "libraryVersion"

    const-string v4, "1.2.15-Mintegral"

    invoke-static {v0, v3, v4}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/c;->a()Lcom/iab/omid/library/mintegral/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iab/omid/library/mintegral/b/c;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appId"

    invoke-static {v0, v4, v3}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "app"

    invoke-static {v2, v3, v0}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->getCustomReferenceData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8f

    const-string v0, "customReferenceData"

    invoke-virtual {p2}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->getCustomReferenceData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/iab/omid/library/mintegral/adsession/AdSessionContext;->getVerificationScriptResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;->getVendorKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/VerificationScriptResource;->getVerificationParameters()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/iab/omid/library/mintegral/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9c

    :cond_b4
    invoke-static {}, Lcom/iab/omid/library/mintegral/b/d;->a()Lcom/iab/omid/library/mintegral/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;)V
    .registers 2

    iput-object p1, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->c:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/d;->a()Lcom/iab/omid/library/mintegral/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;D)V
    .registers 6

    iget-wide v0, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->e:D

    cmpl-double v0, p2, v0

    if-lez v0, :cond_15

    sget-object v0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher$a;->b:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher$a;

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher$a;

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/d;->a()Lcom/iab/omid/library/mintegral/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/mintegral/b/d;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/d;->a()Lcom/iab/omid/library/mintegral/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_16

    const-string v0, "foregrounded"

    :goto_a
    invoke-static {}, Lcom/iab/omid/library/mintegral/b/d;->a()Lcom/iab/omid/library/mintegral/b/d;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/iab/omid/library/mintegral/b/d;->d(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_15
    return-void

    :cond_16
    const-string v0, "backgrounded"

    goto :goto_a
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/mintegral/e/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/e/b;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;D)V
    .registers 6

    iget-wide v0, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->e:D

    cmpl-double v0, p2, v0

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher$a;

    sget-object v1, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher$a;->c:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher$a;

    if-eq v0, v1, :cond_1b

    sget-object v0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher$a;->c:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher$a;

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher$a;

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/d;->a()Lcom/iab/omid/library/mintegral/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/mintegral/b/d;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public c()Lcom/iab/omid/library/mintegral/adsession/AdEvents;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->b:Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    return-object v0
.end method

.method public d()Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->c:Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/mintegral/e/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/e/b;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public f()V
    .registers 3

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/d;->a()Lcom/iab/omid/library/mintegral/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/b/d;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method public g()V
    .registers 3

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/d;->a()Lcom/iab/omid/library/mintegral/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/b/d;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/mintegral/e/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/e/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public h()V
    .registers 3

    invoke-static {}, Lcom/iab/omid/library/mintegral/d/d;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->e:D

    sget-object v0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher$a;->a:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher$a;

    iput-object v0, p0, Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/mintegral/publisher/AdSessionStatePublisher$a;

    return-void
.end method
