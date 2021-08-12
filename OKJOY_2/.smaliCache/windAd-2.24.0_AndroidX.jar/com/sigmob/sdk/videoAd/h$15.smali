.class Lcom/sigmob/sdk/videoAd/h$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h;->a(Landroid/content/Context;I)Lcom/sigmob/sdk/videoAd/BaseVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

.field final synthetic b:Lcom/sigmob/sdk/videoAd/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h;Lcom/sigmob/sdk/videoAd/BaseVideoView;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/h$15;->a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 15

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "what %d, extra %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->r(Lcom/sigmob/sdk/videoAd/h;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p2}, Lcom/sigmob/sdk/videoAd/h;->t(Lcom/sigmob/sdk/videoAd/h;)V

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p2, v4}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;Z)Z

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    invoke-static {p2, p1}, Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/videoAd/h;I)I

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->u(Lcom/sigmob/sdk/videoAd/h;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$15;->a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->pause()V

    const-string p1, "videoView.pause()"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return v4

    :cond_45
    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1, v4}, Lcom/sigmob/sdk/videoAd/h;->b(Lcom/sigmob/sdk/videoAd/h;Z)Z

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v1}, Lcom/sigmob/sdk/videoAd/h;->m()Lcom/sigmob/sdk/base/common/p;

    move-result-object v1

    sget-object v5, Lcom/sigmob/sdk/base/common/a;->E:Lcom/sigmob/sdk/base/common/a;

    iget-object v6, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v6}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/sigmob/sdk/base/common/p;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->u(Lcom/sigmob/sdk/videoAd/h;)V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->w(Lcom/sigmob/sdk/videoAd/h;)V

    const-string v1, ""

    :try_start_67
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_83

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object p1

    array-length v5, p1

    move v6, v3

    :goto_73
    if-ge v6, v5, :cond_83

    aget-object v7, p1, v6

    invoke-virtual {v7}, Landroid/media/MediaPlayer$TrackInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_7f
    .catchall {:try_start_67 .. :try_end_7f} :catchall_82

    add-int/lit8 v6, v6, 0x1

    goto :goto_73

    :catchall_82
    move-exception p1

    :cond_83
    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->m(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v5

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->x(Lcom/sigmob/sdk/videoAd/h;)Landroid/content/Context;

    move-result-object v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v4

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v8

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p1}, Lcom/sigmob/sdk/videoAd/h;->r()I

    move-result v10

    const-string v9, "video"

    invoke-virtual/range {v5 .. v10}, Lcom/sigmob/sdk/videoAd/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "error"

    const-string p3, "ad_unit_key Serializable is null"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    const-string p3, "com.sigmob.action.rewardedvideo.playFail"

    invoke-static {p2, p3, p1}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/sigmob/sdk/videoAd/h$15;->b:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {p1}, Lcom/sigmob/sdk/videoAd/h;->y(Lcom/sigmob/sdk/videoAd/h;)Lcom/sigmob/sdk/base/common/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/sigmob/sdk/base/common/h;->a()V

    return v3
.end method
