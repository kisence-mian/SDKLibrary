.class Lcom/sigmob/sdk/videoAd/k$13$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k$13;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/k$13;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k$13;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$13$1;->a:Lcom/sigmob/sdk/videoAd/k$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13$1;->a:Lcom/sigmob/sdk/videoAd/k$13;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->f(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13$1;->a:Lcom/sigmob/sdk/videoAd/k$13;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13$1;->a:Lcom/sigmob/sdk/videoAd/k$13;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/views/AlertDialogWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/AlertDialogWidget;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_31

    :cond_22
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13$1;->a:Lcom/sigmob/sdk/videoAd/k$13;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->g(Lcom/sigmob/sdk/videoAd/k;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const-string v0, "mediaplayer omPrepared start"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    :cond_31
    return-void
.end method
