.class final Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;
.super Ljava/lang/Object;
.source "MediaViewPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V
    .registers 2

    .prologue
    .line 500
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 504
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->a(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 505
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->closeSound()V

    .line 506
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/nativex/listener/a;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 507
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/nativex/listener/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/nativex/listener/a;->a()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_3c

    .line 510
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 511
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->volumeChange(F)V
    :try_end_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_30} :catch_31
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_30} :catch_3c

    .line 532
    :cond_30
    :goto_30
    return-void

    .line 513
    :catch_31
    move-exception v0

    .line 514
    :try_start_32
    const-string v1, "OMSDK"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_3b} :catch_3c

    goto :goto_30

    .line 530
    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_30

    .line 517
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->openSound()V

    .line 518
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/nativex/listener/a;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 519
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/nativex/listener/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/nativex/listener/a;->b()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_57} :catch_3c

    .line 522
    :cond_57
    :try_start_57
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 523
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->c(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$2;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v1}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/a/b;->b(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mintegral/adsession/video/VideoEvents;->volumeChange(F)V
    :try_end_72
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_72} :catch_73
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_72} :catch_3c

    goto :goto_30

    .line 525
    :catch_73
    move-exception v0

    .line 526
    :try_start_74
    const-string v1, "OMSDK"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_7d} :catch_3c

    goto :goto_30
.end method
