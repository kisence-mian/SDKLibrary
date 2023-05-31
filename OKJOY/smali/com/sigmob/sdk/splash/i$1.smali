.class Lcom/sigmob/sdk/splash/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/splash/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/splash/i;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/splash/i;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lcom/sigmob/sdk/splash/i;->a:I

    invoke-virtual {p1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/i;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/i$1;->a:Lcom/sigmob/sdk/splash/i;

    iget-wide v2, v1, Lcom/sigmob/sdk/splash/i;->b:J

    const-string v1, "com.sigmob.action.interstitial.show"

    invoke-static {v0, v2, v3, v1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/lang/String;)V

    const-string v0, "video onPrepared"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method
