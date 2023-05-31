.class Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->onFullScreenVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/WindAdError;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$10;->c:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    iput-object p2, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$10;->a:Lcom/sigmob/windad/WindAdError;

    iput-object p3, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$10;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$10;->c:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    invoke-static {v0}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->a(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;)Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;

    move-result-object v0

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFullScreenVideoAdPlayError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$10;->a:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$10;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$10;->c:Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    invoke-static {v0}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->a(Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;)Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$10;->a:Lcom/sigmob/windad/WindAdError;

    iget-object v2, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd$10;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAdListener;->onFullScreenVideoAdPlayError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_39
    return-void
.end method
