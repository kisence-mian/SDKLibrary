.class Lcom/kwad/sdk/a/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/a/a;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/a/a$5;->a:Lcom/kwad/sdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoPlayComplete()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a$5;->a:Lcom/kwad/sdk/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/a/a;->c(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/a/a$5;->a:Lcom/kwad/sdk/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/a/a;->c(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;->onVideoPlayComplete()V

    :cond_11
    return-void
.end method

.method public onVideoPlayError(II)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/a/a$5;->a:Lcom/kwad/sdk/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/a/a;->c(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/a/a$5;->a:Lcom/kwad/sdk/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/a/a;->c(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;->onVideoPlayError(II)V

    :cond_11
    return-void
.end method

.method public onVideoPlayStart()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/a/a$5;->a:Lcom/kwad/sdk/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/a/a;->c(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/a/a$5;->a:Lcom/kwad/sdk/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/a/a;->c(Lcom/kwad/sdk/a/a;)Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsNativeAd$VideoPlayListener;->onVideoPlayStart()V

    :cond_11
    return-void
.end method
