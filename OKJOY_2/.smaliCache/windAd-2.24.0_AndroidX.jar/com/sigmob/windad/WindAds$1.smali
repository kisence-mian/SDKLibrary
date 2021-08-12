.class Lcom/sigmob/windad/WindAds$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/WindAds;->startWithOptions(Landroid/content/Context;Lcom/sigmob/windad/WindAdOptions;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/WindAds;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/WindAds;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/WindAds$1;->a:Lcom/sigmob/windad/WindAds;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_24

    goto :goto_23

    :pswitch_6
    invoke-static {}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->sharedInstance()Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/rewardedVideo/WindRewardedVideoAd;->autoLoadAd()V

    invoke-static {}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->sharedInstance()Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenVideoAd;->autoLoadAd()V

    iget-object p1, p0, Lcom/sigmob/windad/WindAds$1;->a:Lcom/sigmob/windad/WindAds;

    invoke-static {p1}, Lcom/sigmob/windad/WindAds;->a(Lcom/sigmob/windad/WindAds;)Landroid/os/Handler;

    move-result-object p1

    sget v0, Lcom/sigmob/windad/WindAds;->a:I

    const/16 v1, 0x3e8

    mul-int/2addr v0, v1

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x3e8
        :pswitch_6
    .end packed-switch
.end method
