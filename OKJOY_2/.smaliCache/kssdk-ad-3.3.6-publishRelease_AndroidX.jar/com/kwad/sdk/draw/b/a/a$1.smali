.class Lcom/kwad/sdk/draw/b/a/a$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/draw/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/b/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/b/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/contentalliance/detail/video/e;->a(II)V

    iget-object p1, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/a/a;->m(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;

    move-result-object p1

    iget-object p1, p1, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    if-eqz p1, :cond_1d

    :try_start_d
    iget-object p1, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {p1}, Lcom/kwad/sdk/draw/b/a/a;->n(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;

    move-result-object p1

    iget-object p1, p1, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    invoke-interface {p1}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayError()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public a(JJ)V
    .registers 5

    iget-object p1, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {p1, p3, p4}, Lcom/kwad/sdk/draw/b/a/a;->a(Lcom/kwad/sdk/draw/b/a/a;J)V

    return-void
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->a(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->b(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->c(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onAdShow()V

    :cond_1f
    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->d(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    if-eqz v0, :cond_3f

    :try_start_29
    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->e(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayStart()V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :goto_39
    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/draw/b/a/a;->a(Lcom/kwad/sdk/draw/b/a/a;Z)Z

    :cond_3f
    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->a(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->a(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/report/b;->h(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method public d()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->d()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->h(Lcom/kwad/sdk/draw/b/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/draw/b/a/a;->a(Lcom/kwad/sdk/draw/b/a/a;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->i(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    if-eqz v0, :cond_2b

    :try_start_1b
    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->j(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayResume()V
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public e()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;->e()V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->k(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    if-eqz v0, :cond_1d

    :try_start_d
    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->l(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayPause()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kwad/sdk/draw/b/a/a;->a(Lcom/kwad/sdk/draw/b/a/a;Z)Z

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->a(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/report/b;->i(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->f(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    if-eqz v0, :cond_23

    :try_start_13
    iget-object v0, p0, Lcom/kwad/sdk/draw/b/a/a$1;->a:Lcom/kwad/sdk/draw/b/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b/a/a;->g(Lcom/kwad/sdk/draw/b/a/a;)Lcom/kwad/sdk/draw/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/draw/a/b;->a:Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayEnd()V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_23
    :goto_23
    return-void
.end method
