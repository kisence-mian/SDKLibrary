.class Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->onVideoAdClosed(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$7;->b:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    iput-object p2, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$7;->b:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    invoke-static {v0}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->a(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;)Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$7;->b:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    invoke-static {v0}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->a(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;)Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$7;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;->onFullScreenVideoAdClosed(Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$7;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$7;->b:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    invoke-static {v0}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->b(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$7;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v1, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$7;->b:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    invoke-static {v1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->b(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$7;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->destory()V

    :cond_37
    return-void
.end method
