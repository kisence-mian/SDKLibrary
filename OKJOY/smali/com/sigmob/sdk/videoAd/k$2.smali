.class Lcom/sigmob/sdk/videoAd/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k;->g(Landroid/content/Context;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/k;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$2;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_48

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$2;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->i(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$2;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->w:Lcom/sigmob/sdk/base/common/a;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k$2;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$2;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->j(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    move-result-object v0

    sget-object v2, Lcom/sigmob/sdk/base/views/l;->c:Lcom/sigmob/sdk/base/views/l;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/views/l;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$2;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->k(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setVolume(F)V

    :goto_3a
    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$2;->a:Lcom/sigmob/sdk/videoAd/k;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$2;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->i(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-nez v0, :cond_74

    move v0, v1

    :goto_45
    invoke-static {v2, v0}, Lcom/sigmob/sdk/videoAd/k;->e(Lcom/sigmob/sdk/videoAd/k;Z)Z

    :cond_48
    return v1

    :cond_49
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$2;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    sget-object v2, Lcom/sigmob/sdk/base/common/a;->v:Lcom/sigmob/sdk/base/common/a;

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k$2;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$2;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->j(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    move-result-object v0

    sget-object v2, Lcom/sigmob/sdk/base/views/l;->b:Lcom/sigmob/sdk/base/views/l;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/views/l;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$2;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->k(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setVolume(F)V

    goto :goto_3a

    :cond_74
    const/4 v0, 0x0

    goto :goto_45
.end method
