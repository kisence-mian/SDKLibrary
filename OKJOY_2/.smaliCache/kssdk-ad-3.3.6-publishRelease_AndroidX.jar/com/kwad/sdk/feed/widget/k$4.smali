.class Lcom/kwad/sdk/feed/widget/k$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/view/ScaleAnimSeekBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/feed/widget/k;->a(Lcom/kwad/sdk/core/video/videoview/a;Lcom/kwad/sdk/core/video/videoview/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/video/videoview/b;

.field final synthetic b:Lcom/kwad/sdk/feed/widget/k;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/feed/widget/k;Lcom/kwad/sdk/core/video/videoview/b;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    iput-object p2, p0, Lcom/kwad/sdk/feed/widget/k$4;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;)V
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1}, Lcom/kwad/sdk/feed/widget/k;->j(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->a(Z)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/k;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v1}, Lcom/kwad/sdk/feed/widget/k;->f(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/utils/aj;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1, v0}, Lcom/kwad/sdk/feed/widget/k;->a(Lcom/kwad/sdk/feed/widget/k;Z)Z

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;IZ)V
    .registers 6

    if-eqz p3, :cond_41

    iget-object p2, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p2}, Lcom/kwad/sdk/feed/widget/k;->j(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->a(Z)V

    iget-object p2, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-virtual {p2}, Lcom/kwad/sdk/feed/widget/k;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/k;->f(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/utils/aj;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p2, p3}, Lcom/kwad/sdk/feed/widget/k;->a(Lcom/kwad/sdk/feed/widget/k;Z)Z

    iget-object p2, p0, Lcom/kwad/sdk/feed/widget/k$4;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {p2}, Lcom/kwad/sdk/core/video/videoview/b;->getDuration()J

    move-result-wide p2

    invoke-virtual {p1}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr p2, v0

    invoke-virtual {p1}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->getMaxProgress()I

    move-result p1

    int-to-long v0, p1

    div-long/2addr p2, v0

    long-to-int p1, p2

    iget-object p2, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p2}, Lcom/kwad/sdk/feed/widget/k;->k(Lcom/kwad/sdk/feed/widget/k;)Landroid/widget/TextView;

    move-result-object p2

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/kwad/sdk/utils/ad;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_41
    return-void
.end method

.method public b(Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;)V
    .registers 8

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/k;->j(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->a(Z)V

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$4;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/video/videoview/b;->getDuration()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->getProgress()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Lcom/kwad/sdk/core/view/ScaleAnimSeekBar;->getMaxProgress()I

    move-result p1

    int-to-long v4, p1

    div-long/2addr v2, v4

    long-to-int p1, v2

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$4;->a:Lcom/kwad/sdk/core/video/videoview/b;

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/video/videoview/b;->a(I)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/k;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/k;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/k;->f(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/utils/aj;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-virtual {p1}, Lcom/kwad/sdk/feed/widget/k;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {v0}, Lcom/kwad/sdk/feed/widget/k;->f(Lcom/kwad/sdk/feed/widget/k;)Lcom/kwad/sdk/utils/aj;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4a
    iget-object p1, p0, Lcom/kwad/sdk/feed/widget/k$4;->b:Lcom/kwad/sdk/feed/widget/k;

    invoke-static {p1, v1}, Lcom/kwad/sdk/feed/widget/k;->a(Lcom/kwad/sdk/feed/widget/k;Z)Z

    return-void
.end method
