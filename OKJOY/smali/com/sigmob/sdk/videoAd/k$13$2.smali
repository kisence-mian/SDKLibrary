.class Lcom/sigmob/sdk/videoAd/k$13$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k$13;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/k$13;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k$13;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$13$2;->a:Lcom/sigmob/sdk/videoAd/k$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13$2;->a:Lcom/sigmob/sdk/videoAd/k$13;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/k$13;->a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->a(II)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$13$2;->a:Lcom/sigmob/sdk/videoAd/k$13;

    iget-object v0, v0, Lcom/sigmob/sdk/videoAd/k$13;->a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->requestLayout()V

    return-void
.end method
