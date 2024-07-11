.class Lcom/kwad/sdk/core/video/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnTimedTextListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/video/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kwad/sdk/core/video/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/video/a/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/video/a/b$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/core/video/a/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/video/a/b;

    if-eqz p1, :cond_d

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/video/a/b;->a(I)V

    :cond_d
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    iget-object p1, p0, Lcom/kwad/sdk/core/video/a/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/video/a/b;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/kwad/sdk/core/video/a/b;->c()V

    :cond_d
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/core/video/a/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/video/a/b;

    if-eqz p1, :cond_12

    invoke-virtual {p1, p2, p3}, Lcom/kwad/sdk/core/video/a/b;->b(II)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/core/video/a/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/video/a/b;

    if-eqz p1, :cond_12

    invoke-virtual {p1, p2, p3}, Lcom/kwad/sdk/core/video/a/b;->c(II)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    iget-object p1, p0, Lcom/kwad/sdk/core/video/a/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/video/a/b;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/kwad/sdk/core/video/a/b;->b()V

    :cond_d
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 2

    iget-object p1, p0, Lcom/kwad/sdk/core/video/a/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/video/a/b;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/kwad/sdk/core/video/a/b;->d()V

    :cond_d
    return-void
.end method

.method public onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/core/video/a/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/video/a/b;

    if-eqz p1, :cond_d

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/video/a/b;->a(Landroid/media/TimedText;)V

    :cond_d
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 4

    iget-object p1, p0, Lcom/kwad/sdk/core/video/a/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/core/video/a/b;

    if-eqz p1, :cond_d

    invoke-virtual {p1, p2, p3}, Lcom/kwad/sdk/core/video/a/b;->a(II)V

    :cond_d
    return-void
.end method
