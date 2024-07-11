.class Lcom/kwad/sdk/splashscreen/b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/download/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/splashscreen/b$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/splashscreen/b$1;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/splashscreen/b$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/splashscreen/b$1$1;->a:Lcom/kwad/sdk/splashscreen/b$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b$1$1;->a:Lcom/kwad/sdk/splashscreen/b$1;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/b$1;->a:Lcom/kwad/sdk/splashscreen/b;

    invoke-static {v0}, Lcom/kwad/sdk/splashscreen/b;->b(Lcom/kwad/sdk/splashscreen/b;)Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/b$1$1;->a:Lcom/kwad/sdk/splashscreen/b$1;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/b$1;->a:Lcom/kwad/sdk/splashscreen/b;

    invoke-static {v0}, Lcom/kwad/sdk/splashscreen/b;->b(Lcom/kwad/sdk/splashscreen/b;)Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;->onAdClicked()V

    :cond_15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1a
    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/b$1$1;->a:Lcom/kwad/sdk/splashscreen/b$1;

    iget-object v1, v1, Lcom/kwad/sdk/splashscreen/b$1;->a:Lcom/kwad/sdk/splashscreen/b;

    invoke-static {v1}, Lcom/kwad/sdk/splashscreen/b;->c(Lcom/kwad/sdk/splashscreen/b;)Lcom/kwad/sdk/core/e/b;

    move-result-object v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/b$1$1;->a:Lcom/kwad/sdk/splashscreen/b$1;

    iget-object v1, v1, Lcom/kwad/sdk/splashscreen/b$1;->a:Lcom/kwad/sdk/splashscreen/b;

    invoke-static {v1}, Lcom/kwad/sdk/splashscreen/b;->d(Lcom/kwad/sdk/splashscreen/b;)Lcom/kwad/sdk/core/e/b;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/splashscreen/c;

    iget-object v1, v1, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    if-eqz v1, :cond_4c

    const-string v1, "duration"

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/b$1$1;->a:Lcom/kwad/sdk/splashscreen/b$1;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/b$1;->a:Lcom/kwad/sdk/splashscreen/b;

    invoke-static {v2}, Lcom/kwad/sdk/splashscreen/b;->e(Lcom/kwad/sdk/splashscreen/b;)Lcom/kwad/sdk/core/e/b;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/splashscreen/c;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    invoke-virtual {v2}, Lcom/kwad/sdk/splashscreen/b/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v1

    invoke-static {v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_4c
    :goto_4c
    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/b$1$1;->a:Lcom/kwad/sdk/splashscreen/b$1;

    iget-object v1, v1, Lcom/kwad/sdk/splashscreen/b$1;->a:Lcom/kwad/sdk/splashscreen/b;

    invoke-static {v1}, Lcom/kwad/sdk/splashscreen/b;->a(Lcom/kwad/sdk/splashscreen/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/b$1$1;->a:Lcom/kwad/sdk/splashscreen/b$1;

    iget-object v2, v2, Lcom/kwad/sdk/splashscreen/b$1;->a:Lcom/kwad/sdk/splashscreen/b;

    invoke-static {v2}, Lcom/kwad/sdk/splashscreen/b;->f(Lcom/kwad/sdk/splashscreen/b;)Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->getTouchCoords()Lcom/kwad/sdk/utils/o$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/utils/o$a;Ljava/lang/String;)V

    return-void
.end method
