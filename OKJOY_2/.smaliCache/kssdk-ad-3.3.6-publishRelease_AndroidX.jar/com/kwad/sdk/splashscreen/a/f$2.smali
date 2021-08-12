.class Lcom/kwad/sdk/splashscreen/a/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/contentalliance/detail/video/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/splashscreen/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/splashscreen/a/f;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/splashscreen/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(II)V
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {p1}, Lcom/kwad/sdk/splashscreen/a/f;->f(Lcom/kwad/sdk/splashscreen/a/f;)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object p1, p1, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    const/4 p2, 0x0

    const-string v0, "onVideoPlayError"

    invoke-interface {p1, p2, v0}, Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;->onAdShowError(ILjava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public a(JJ)V
    .registers 5

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v1}, Lcom/kwad/sdk/splashscreen/a/f;->b(Lcom/kwad/sdk/splashscreen/a/f;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kwad/sdk/splashscreen/b/a;->a(ZZ)V

    :cond_18
    return-void
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v0}, Lcom/kwad/sdk/splashscreen/a/f;->d(Lcom/kwad/sdk/splashscreen/a/f;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v0}, Lcom/kwad/sdk/splashscreen/a/f;->e(Lcom/kwad/sdk/splashscreen/a/f;)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;->onAdShowStart()V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/splashscreen/b/a;->a(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->e:Lcom/kwad/sdk/splashscreen/b/a;

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v2}, Lcom/kwad/sdk/splashscreen/a/f;->b(Lcom/kwad/sdk/splashscreen/a/f;)Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/kwad/sdk/splashscreen/b/a;->a(ZZ)V

    :cond_3f
    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    invoke-static {v0, v1}, Lcom/kwad/sdk/splashscreen/a/f;->b(Lcom/kwad/sdk/splashscreen/a/f;Z)Z

    :cond_44
    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/f$2;->a:Lcom/kwad/sdk/splashscreen/a/f;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/a/f;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->a:Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;->onAdShowEnd()V

    :cond_11
    return-void
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public h()V
    .registers 1

    return-void
.end method
