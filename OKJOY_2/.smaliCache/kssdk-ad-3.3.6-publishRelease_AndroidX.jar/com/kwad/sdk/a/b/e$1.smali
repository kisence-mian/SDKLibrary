.class Lcom/kwad/sdk/a/b/e$1;
.super Lcom/kwad/sdk/contentalliance/detail/video/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/a/b/e;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/b/e;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/b/e$1;->a:Lcom/kwad/sdk/a/b/e;

    invoke-direct {p0}, Lcom/kwad/sdk/contentalliance/detail/video/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/a/b/e$1;->a:Lcom/kwad/sdk/a/b/e;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/e;->a(Lcom/kwad/sdk/a/b/e;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/a/b/e$1;->a:Lcom/kwad/sdk/a/b/e;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/e;->a(Lcom/kwad/sdk/a/b/e;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;->onVideoPlayError(II)V

    :cond_11
    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/b/e$1;->a:Lcom/kwad/sdk/a/b/e;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/e;->a(Lcom/kwad/sdk/a/b/e;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/a/b/e$1;->a:Lcom/kwad/sdk/a/b/e;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/e;->a(Lcom/kwad/sdk/a/b/e;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;->onVideoPlayStart()V

    :cond_11
    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/b/e$1;->a:Lcom/kwad/sdk/a/b/e;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/e;->a(Lcom/kwad/sdk/a/b/e;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/a/b/e$1;->a:Lcom/kwad/sdk/a/b/e;

    invoke-static {v0}, Lcom/kwad/sdk/a/b/e;->a(Lcom/kwad/sdk/a/b/e;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;->onVideoPlayComplete()V

    :cond_11
    return-void
.end method
