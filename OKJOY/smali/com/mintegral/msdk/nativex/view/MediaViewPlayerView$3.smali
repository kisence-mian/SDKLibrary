.class final Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$3;
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
    .line 535
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$3;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$3;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->pause()V

    .line 540
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$3;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->d(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$3;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->e(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    .line 542
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$3;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->f(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)V

    .line 543
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$3;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/nativex/listener/a;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 544
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$3;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->b(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Lcom/mintegral/msdk/nativex/listener/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mintegral/msdk/nativex/listener/a;->c()V

    .line 546
    :cond_2a
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView$3;->a:Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;->g(Lcom/mintegral/msdk/nativex/view/MediaViewPlayerView;)Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_30

    .line 550
    :goto_2f
    return-void

    .line 547
    :catch_30
    move-exception v0

    .line 548
    const-string v1, "MediaViewPlayerView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f
.end method
