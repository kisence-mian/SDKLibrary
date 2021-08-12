.class Lcom/kwad/sdk/splashscreen/a/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/splashscreen/a/e;->a(Lcom/kwad/sdk/core/webview/a/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/splashscreen/a/e;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/splashscreen/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/splashscreen/a/e$2;->a:Lcom/kwad/sdk/splashscreen/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/e$2;->a:Lcom/kwad/sdk/splashscreen/a/e;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/e;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/e$2;->a:Lcom/kwad/sdk/splashscreen/a/e;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/e;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;->onAdClicked()V

    :cond_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_16
    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/e$2;->a:Lcom/kwad/sdk/splashscreen/a/e;

    iget-object v1, v1, Lcom/kwad/sdk/splashscreen/a/e;->a:Lcom/kwad/sdk/splashscreen/c;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/e$2;->a:Lcom/kwad/sdk/splashscreen/a/e;

    iget-object v1, v1, Lcom/kwad/sdk/splashscreen/a/e;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v1, v1, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    if-eqz v1, :cond_38

    const-string v1, "duration"

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/e$2;->a:Lcom/kwad/sdk/splashscreen/a/e;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/a/e;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    invoke-virtual {v2}, Lcom/kwad/sdk/splashscreen/b/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception v1

    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/e$2;->a:Lcom/kwad/sdk/splashscreen/a/e;

    iget-object v1, v1, Lcom/kwad/sdk/splashscreen/a/e;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v1, v1, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method
