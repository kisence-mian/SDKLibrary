.class Lcom/sigmob/sdk/videoAd/k$13$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k$13;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/k$13;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k$13;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$13$3;->a:Lcom/sigmob/sdk/videoAd/k$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13$3;->a:Lcom/sigmob/sdk/videoAd/k$13;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->r(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_14

    sparse-switch p2, :sswitch_data_50

    :cond_14
    :goto_14
    return v2

    :sswitch_15
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const-string v0, "mediaplayer onInfo start"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    goto :goto_14

    :sswitch_1e
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13$3;->a:Lcom/sigmob/sdk/videoAd/k$13;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->s(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13$3;->a:Lcom/sigmob/sdk/videoAd/k$13;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->t(Lcom/sigmob/sdk/videoAd/k;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13$3;->a:Lcom/sigmob/sdk/videoAd/k$13;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0, v2}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13$3;->a:Lcom/sigmob/sdk/videoAd/k$13;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;I)I

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13$3;->a:Lcom/sigmob/sdk/videoAd/k$13;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/k$13;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->u(Lcom/sigmob/sdk/videoAd/k;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13$3;->a:Lcom/sigmob/sdk/videoAd/k$13;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/k$13;->a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->pause()V

    goto :goto_14

    :sswitch_data_50
    .sparse-switch
        0x3 -> :sswitch_15
        0x324 -> :sswitch_1e
    .end sparse-switch
.end method
