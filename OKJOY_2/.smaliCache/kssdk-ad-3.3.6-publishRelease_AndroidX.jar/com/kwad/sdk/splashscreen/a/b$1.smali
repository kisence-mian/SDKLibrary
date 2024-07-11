.class Lcom/kwad/sdk/splashscreen/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/splashscreen/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/splashscreen/a/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/splashscreen/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/splashscreen/a/b$1;->a:Lcom/kwad/sdk/splashscreen/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/b$1;->a:Lcom/kwad/sdk/splashscreen/a/b;

    invoke-static {p1}, Lcom/kwad/sdk/splashscreen/a/b;->a(Lcom/kwad/sdk/splashscreen/a/b;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/b$1;->a:Lcom/kwad/sdk/splashscreen/a/b;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/a/b;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/b$1;->a:Lcom/kwad/sdk/splashscreen/a/b;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/a/b;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;->onSkippedAd()V

    :cond_19
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b$1;->a:Lcom/kwad/sdk/splashscreen/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/b;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    if-eqz v0, :cond_3a

    :try_start_26
    const-string v0, "duration"

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/b$1;->a:Lcom/kwad/sdk/splashscreen/a/b;

    iget-object v1, v1, Lcom/kwad/sdk/splashscreen/a/b;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v1, v1, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    invoke-virtual {v1}, Lcom/kwad/sdk/splashscreen/b/a;->a()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b$1;->a:Lcom/kwad/sdk/splashscreen/a/b;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/b;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ILorg/json/JSONObject;)V

    return-void
.end method
