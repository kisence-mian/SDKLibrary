.class public Lcom/sigmob/sdk/videoAd/BaseAdActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sigmob/sdk/videoAd/BaseAdActivity;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "J)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;JLjava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;JLjava/util/Map;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sigmob/sdk/videoAd/BaseAdActivity;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->b(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;J)Landroid/content/Intent;

    move-result-object p1

    if-eqz p5, :cond_19

    :try_start_6
    const-string p2, "options"

    check-cast p5, Ljava/util/HashMap;

    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "ad_scene"

    invoke-virtual {p1, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    goto :goto_19

    :catchall_13
    move-exception p2

    :try_start_14
    const-string p5, "Activity add options error"

    invoke-static {p5, p2}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    :goto_19
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1d

    goto :goto_31

    :catchall_1d
    move-exception p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p5, "error"

    invoke-virtual {p2, p5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "com.sigmob.action.rewardedvideo.playFail"

    invoke-static {p0, p3, p4, p2, p1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/util/Map;Ljava/lang/String;)V

    :goto_31
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;J)Landroid/content/Intent;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sigmob/sdk/videoAd/BaseAdActivity;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "J)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1c

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_19

    goto :goto_1c

    :cond_19
    const-string p1, "LandPage"

    goto :goto_2d

    :cond_1c
    :goto_1c
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result p1

    sget-object p2, Lcom/sigmob/sdk/base/common/j;->h:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result p2

    if-ne p1, p2, :cond_2b

    const-string p1, "mraid"

    goto :goto_2d

    :cond_2b
    const-string p1, "reward"

    :goto_2d
    const-string p2, "ad_view_class_name"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p0

    const-string p1, "REQUESTED_ORIENTATION"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "broadcastIdentifier"

    invoke-virtual {v0, p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/sigmob/sdk/videoAd/BaseAdActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/sigmob/sdk/videoAd/BaseAdActivity$1;-><init>(Lcom/sigmob/sdk/videoAd/BaseAdActivity;Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_11
    const-string v0, "BaseAdActivity onDestroy() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method
