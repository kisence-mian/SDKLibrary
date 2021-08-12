.class Lcom/sigmob/sdk/videoAd/h$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h;->g(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$3;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6c

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$3;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->j(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$3;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object p1

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->w:Lcom/sigmob/sdk/base/common/a;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$3;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$3;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->k(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    move-result-object p1

    sget-object v0, Lcom/sigmob/sdk/base/views/d;->c:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/d;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$3;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->l(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_5f

    :cond_38
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$3;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object p1

    sget-object v0, Lcom/sigmob/sdk/base/common/a;->v:Lcom/sigmob/sdk/base/common/a;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$3;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$3;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->k(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/views/VideoButtonWidget;

    move-result-object p1

    sget-object v0, Lcom/sigmob/sdk/base/views/d;->b:Lcom/sigmob/sdk/base/views/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/d;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/views/VideoButtonWidget;->a(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$3;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->l(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/BaseVideoView;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5f
    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->setVolume(F)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$3;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->j(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result v0

    xor-int/2addr v0, p2

    invoke-static {p1, v0}, Lcom/sigmob/sdk/videoAd/h;->e(Lcom/sigmob/sdk/videoAd/h;Z)Z

    :cond_6c
    return p2
.end method
