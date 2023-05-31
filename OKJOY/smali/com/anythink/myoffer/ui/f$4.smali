.class final Lcom/anythink/myoffer/ui/f$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/f;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/ui/f;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/ui/f;)V
    .registers 2

    .prologue
    .line 436
    iput-object p1, p0, Lcom/anythink/myoffer/ui/f$4;->a:Lcom/anythink/myoffer/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 439
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$4;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->x(Lcom/anythink/myoffer/ui/f;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 440
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$4;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->e(Lcom/anythink/myoffer/ui/f;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$4;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->v(Lcom/anythink/myoffer/ui/f;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$4;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->v(Lcom/anythink/myoffer/ui/f;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$4;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->y(Lcom/anythink/myoffer/ui/f;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$4;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->y(Lcom/anythink/myoffer/ui/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f$4;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/f;->v(Lcom/anythink/myoffer/ui/f;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 444
    const-wide/16 v0, 0xc8

    :try_start_41
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_0

    .line 446
    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 450
    :cond_4a
    return-void
.end method
