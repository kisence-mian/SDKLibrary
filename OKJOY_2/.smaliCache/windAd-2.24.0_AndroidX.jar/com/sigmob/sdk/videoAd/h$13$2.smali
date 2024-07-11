.class Lcom/sigmob/sdk/videoAd/h$13$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$13$2;->a:Lcom/sigmob/sdk/videoAd/h$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 4

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h$13$2;->a:Lcom/sigmob/sdk/videoAd/h$13;

    iget-object p2, p2, Lcom/sigmob/sdk/videoAd/h$13;->a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-virtual {p2, p3, p1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->a(II)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$13$2;->a:Lcom/sigmob/sdk/videoAd/h$13;

    iget-object p1, p1, Lcom/sigmob/sdk/videoAd/h$13;->a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->requestLayout()V

    return-void
.end method
