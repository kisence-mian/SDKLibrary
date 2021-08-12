.class Lcom/kwad/sdk/draw/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/draw/b;->getDrawView2(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/draw/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/draw/b;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b;->a(Lcom/kwad/sdk/draw/b;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b;->a(Lcom/kwad/sdk/draw/b;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onAdClicked()V

    :cond_11
    return-void
.end method

.method public onAdShow()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b;->a(Lcom/kwad/sdk/draw/b;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b;->a(Lcom/kwad/sdk/draw/b;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onAdShow()V

    :cond_11
    return-void
.end method

.method public onVideoPlayEnd()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b;->a(Lcom/kwad/sdk/draw/b;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_8
    iget-object v0, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b;->a(Lcom/kwad/sdk/draw/b;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayEnd()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public onVideoPlayError()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b;->a(Lcom/kwad/sdk/draw/b;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_8
    iget-object v0, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b;->a(Lcom/kwad/sdk/draw/b;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayError()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public onVideoPlayPause()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b;->a(Lcom/kwad/sdk/draw/b;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_8
    iget-object v0, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b;->a(Lcom/kwad/sdk/draw/b;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayPause()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public onVideoPlayResume()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b;->a(Lcom/kwad/sdk/draw/b;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_8
    iget-object v0, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b;->a(Lcom/kwad/sdk/draw/b;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayResume()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-void
.end method

.method public onVideoPlayStart()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b;->a(Lcom/kwad/sdk/draw/b;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_8
    iget-object v0, p0, Lcom/kwad/sdk/draw/b$1;->a:Lcom/kwad/sdk/draw/b;

    invoke-static {v0}, Lcom/kwad/sdk/draw/b;->a(Lcom/kwad/sdk/draw/b;)Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kwad/sdk/api/KsDrawAd$AdInteractionListener;->onVideoPlayStart()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_12

    goto :goto_16

    :catchall_12
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    :cond_16
    :goto_16
    return-void
.end method
