.class Lcom/sigmob/sdk/videoAd/h$13$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h$13;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/h$13;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h$13;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$13$3;->a:Lcom/sigmob/sdk/videoAd/h$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 5

    iget-object p3, p0, Lcom/sigmob/sdk/videoAd/h$13$3;->a:Lcom/sigmob/sdk/videoAd/h$13;

    iget-object p3, p3, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p3}, Lcom/sigmob/sdk/videoAd/h;->r(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_51

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p3

    if-eqz p3, :cond_51

    sparse-switch p2, :sswitch_data_52

    goto :goto_51

    :sswitch_15
    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h$13$3;->a:Lcom/sigmob/sdk/videoAd/h$13;

    iget-object p2, p2, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p2}, Lcom/sigmob/sdk/videoAd/h;->s(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result p2

    if-nez p2, :cond_51

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h$13$3;->a:Lcom/sigmob/sdk/videoAd/h$13;

    iget-object p2, p2, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p2}, Lcom/sigmob/sdk/videoAd/h;->t(Lcom/sigmob/sdk/videoAd/h;)V

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h$13$3;->a:Lcom/sigmob/sdk/videoAd/h$13;

    iget-object p2, p2, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p2, v0}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;Z)Z

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h$13$3;->a:Lcom/sigmob/sdk/videoAd/h$13;

    iget-object p2, p2, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    invoke-static {p2, p1}, Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/videoAd/h;I)I

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$13$3;->a:Lcom/sigmob/sdk/videoAd/h$13;

    iget-object p1, p1, Lcom/sigmob/sdk/videoAd/h$13;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->u(Lcom/sigmob/sdk/videoAd/h;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$13$3;->a:Lcom/sigmob/sdk/videoAd/h$13;

    iget-object p1, p1, Lcom/sigmob/sdk/videoAd/h$13;->a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->pause()V

    const-string p1, "videoView.pause()"

    goto :goto_4e

    :sswitch_49
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const-string p1, "mediaplayer onInfo start"

    :goto_4e
    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    :cond_51
    :goto_51
    return v0

    :sswitch_data_52
    .sparse-switch
        0x3 -> :sswitch_49
        0x324 -> :sswitch_15
    .end sparse-switch
.end method
