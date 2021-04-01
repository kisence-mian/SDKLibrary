.class Lcom/sigmob/sdk/videoAd/k$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k;->a(Landroid/content/Context;I)Lcom/sigmob/sdk/videoAd/BaseVideoView;
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

.field final synthetic b:Lcom/sigmob/sdk/videoAd/k;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k;Lcom/sigmob/sdk/videoAd/BaseVideoView;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/k$15;->a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 12

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    const-string v0, "what %d, extra %d"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->r(Lcom/sigmob/sdk/videoAd/k;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->t(Lcom/sigmob/sdk/videoAd/k;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0, v3}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;I)I

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->u(Lcom/sigmob/sdk/videoAd/k;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$15;->a:Lcom/sigmob/sdk/videoAd/BaseVideoView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/BaseVideoView;->pause()V

    move v0, v3

    :goto_40
    return v0

    :cond_41
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0, v3}, Lcom/sigmob/sdk/videoAd/k;->b(Lcom/sigmob/sdk/videoAd/k;Z)Z

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/k;->n()Lcom/sigmob/sdk/base/common/w;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/a;->E:Lcom/sigmob/sdk/base/common/a;

    iget-object v2, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v2}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/w;->a(Lcom/sigmob/sdk/base/common/a;I)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->u(Lcom/sigmob/sdk/videoAd/k;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->w(Lcom/sigmob/sdk/videoAd/k;)V

    const-string v0, ""

    :try_start_63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_80

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v4

    array-length v5, v4

    move v1, v6

    :goto_6f
    if-ge v1, v5, :cond_80

    aget-object v2, v4, v1

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_7a} :catch_ea

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_6f

    :cond_80
    move-object v2, v0

    :goto_81
    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->m(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/videoAd/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/k;->x(Lcom/sigmob/sdk/videoAd/k;)Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "what %d, extra %d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v3}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v3

    sget-object v4, Lcom/sigmob/sdk/base/common/b/b;->n:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {v5}, Lcom/sigmob/sdk/videoAd/k;->t()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/videoAd/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "error"

    const-string v2, "ad_unit_key Serializable is null"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    const-string v2, "com.sigmob.action.rewardedvideo.playFail"

    invoke-static {v1, v2, v0}, Lcom/sigmob/sdk/videoAd/k;->a(Lcom/sigmob/sdk/videoAd/k;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$15;->b:Lcom/sigmob/sdk/videoAd/k;

    invoke-static {v0}, Lcom/sigmob/sdk/videoAd/k;->y(Lcom/sigmob/sdk/videoAd/k;)Lcom/sigmob/sdk/base/common/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/sigmob/sdk/base/common/o;->a()V

    move v0, v6

    goto/16 :goto_40

    :catch_ea
    move-exception v1

    move-object v2, v0

    goto :goto_81
.end method
