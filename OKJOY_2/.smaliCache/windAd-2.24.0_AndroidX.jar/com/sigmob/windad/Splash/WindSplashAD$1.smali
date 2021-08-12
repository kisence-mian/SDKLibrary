.class Lcom/sigmob/windad/Splash/WindSplashAD$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/windad/Splash/WindSplashAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/Splash/WindSplashAD;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/Splash/WindSplashAD;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_42

    goto :goto_41

    :pswitch_c
    const-string p1, "splash load timeout"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {p1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    move-result-object v1

    const/4 v2, 0x0

    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_SPLASH_TIMEOUT:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v3

    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_SPLASH_TIMEOUT:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/SigmobError;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v0, "timeout"

    invoke-static/range {v0 .. v5}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindError(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    sget-object v0, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object v0, p1, Lcom/sigmob/windad/Splash/WindSplashAD;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    iget-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_SPLASH_TIMEOUT:Lcom/sigmob/windad/WindAdError;

    iget-object v1, p0, Lcom/sigmob/windad/Splash/WindSplashAD$1;->a:Lcom/sigmob/windad/Splash/WindSplashAD;

    invoke-static {v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;)Lcom/sigmob/windad/Splash/WindSplashAdRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sigmob/windad/Splash/WindSplashAD;->a(Lcom/sigmob/windad/Splash/WindSplashAD;Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method
