.class Lcom/kwad/sdk/c/h/d/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnTimedTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/c/h/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kwad/sdk/c/h/d/b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/kwad/sdk/c/h/d/b;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/c/h/d/b;Lcom/kwad/sdk/c/h/d/b;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/c/h/d/b$a;->b:Lcom/kwad/sdk/c/h/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/c/h/d/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->b:Lcom/kwad/sdk/c/h/d/b;

    invoke-virtual {v0, p2}, Lcom/kwad/sdk/c/h/d/a;->b(I)V

    :cond_f
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/c/h/d/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->b:Lcom/kwad/sdk/c/h/d/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/h/d/a;->f()V

    :cond_f
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/c/h/d/b;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->b:Lcom/kwad/sdk/c/h/d/b;

    invoke-virtual {v0, p2, p3}, Lcom/kwad/sdk/c/h/d/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/c/h/d/b;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->b:Lcom/kwad/sdk/c/h/d/b;

    invoke-virtual {v0, p2, p3}, Lcom/kwad/sdk/c/h/d/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/c/h/d/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->b:Lcom/kwad/sdk/c/h/d/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/h/d/a;->g()V

    :cond_f
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/c/h/d/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->b:Lcom/kwad/sdk/c/h/d/b;

    invoke-virtual {v0}, Lcom/kwad/sdk/c/h/d/a;->h()V

    :cond_f
    return-void
.end method

.method public onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/c/h/d/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->b:Lcom/kwad/sdk/c/h/d/b;

    invoke-virtual {v0, p2}, Lcom/kwad/sdk/c/h/d/a;->a(Landroid/media/TimedText;)V

    :cond_f
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/c/h/d/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/kwad/sdk/c/h/d/b$a;->b:Lcom/kwad/sdk/c/h/d/b;

    invoke-virtual {v0, p2, p3}, Lcom/kwad/sdk/c/h/d/a;->c(II)V

    :cond_f
    return-void
.end method
