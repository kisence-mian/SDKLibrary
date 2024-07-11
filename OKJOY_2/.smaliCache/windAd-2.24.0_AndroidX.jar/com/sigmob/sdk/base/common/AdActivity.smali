.class public Lcom/sigmob/sdk/base/common/AdActivity;
.super Lcom/sigmob/sdk/videoAd/BaseAdActivity;

# interfaces
.implements Lcom/sigmob/sdk/base/common/h;


# instance fields
.field private a:Lcom/sigmob/sdk/base/common/g;

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Intent;)J
    .registers 4

    const-string v0, "broadcastIdentifier"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Landroid/os/Bundle;)Lcom/sigmob/sdk/base/common/g;
    .registers 16

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ad_view_class_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_72

    goto :goto_30

    :sswitch_12
    const-string v1, "mraid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x2

    goto :goto_31

    :sswitch_1c
    const-string v1, "reward"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    goto :goto_31

    :sswitch_26
    const-string v1, "LandPage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v0, -0x1

    :goto_31
    packed-switch v0, :pswitch_data_80

    const/4 p1, 0x0

    return-object p1

    :pswitch_36
    new-instance v0, Lcom/sigmob/sdk/mraid/i;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iget-wide v5, p0, Lcom/sigmob/sdk/base/common/AdActivity;->b:J

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/sigmob/sdk/mraid/i;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/sigmob/sdk/base/common/h;)V

    return-object v0

    :pswitch_4a
    new-instance v0, Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    iget-wide v11, p0, Lcom/sigmob/sdk/base/common/AdActivity;->b:J

    move-object v7, v0

    move-object v8, p0

    move-object v10, p1

    move-object v13, p0

    invoke-direct/range {v7 .. v13}, Lcom/sigmob/sdk/base/common/q;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/sigmob/sdk/base/common/h;)V

    return-object v0

    :pswitch_5e
    new-instance v0, Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iget-wide v5, p0, Lcom/sigmob/sdk/base/common/AdActivity;->b:J

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/sigmob/sdk/videoAd/h;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/sigmob/sdk/base/common/h;)V

    return-object v0

    :sswitch_data_72
    .sparse-switch
        -0x5c8e20c6 -> :sswitch_26
        -0x37b0b0d1 -> :sswitch_1c
        0x6354d77 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_4a
        :pswitch_36
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    return-void
.end method

.method public a(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/AdActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->a:Lcom/sigmob/sdk/base/common/g;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/g;->a(IILandroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->a:Lcom/sigmob/sdk/base/common/g;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/g;->f()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->a:Lcom/sigmob/sdk/base/common/g;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/g;->e()V

    :cond_12
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->a:Lcom/sigmob/sdk/base/common/g;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/g;->a(Landroid/content/res/Configuration;)V

    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskId :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/content/Intent;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->b:J

    :try_start_27
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    return-void

    :cond_31
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/os/Bundle;)Lcom/sigmob/sdk/base/common/g;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/AdActivity;->a:Lcom/sigmob/sdk/base/common/g;

    if-eqz p1, :cond_5d

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/g;->a()V
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_3d

    goto :goto_5d

    :catchall_3d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/sigmob/sdk/base/common/AdActivity;->b:J

    const-string p1, "com.sigmob.action.rewardedvideo.playFail"

    invoke-static {p0, v1, v2, v0, p1}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    :cond_5d
    :goto_5d
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    const-string v0, "RewardVideoAdPlayerActivity onDestroy() called"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->a:Lcom/sigmob/sdk/base/common/g;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/g;->d()V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->a:Lcom/sigmob/sdk/base/common/g;

    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 5

    :try_start_0
    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->onPause()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->a:Lcom/sigmob/sdk/base/common/g;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/g;->b()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_2b

    :catchall_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Lcom/sigmob/sdk/base/common/AdActivity;->b:J

    const-string v0, "com.sigmob.action.rewardedvideo.playFail"

    invoke-static {p0, v2, v3, v1, v0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method protected onResume()V
    .registers 5

    :try_start_0
    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->onResume()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->a:Lcom/sigmob/sdk/base/common/g;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/g;->c()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    goto :goto_24

    :catchall_b
    move-exception v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Lcom/sigmob/sdk/base/common/AdActivity;->b:J

    const-string v0, "com.sigmob.action.rewardedvideo.playFail"

    invoke-static {p0, v2, v3, v1, v0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    :cond_24
    :goto_24
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->a:Lcom/sigmob/sdk/base/common/g;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/g;->a(Landroid/os/Bundle;)V

    :cond_a
    return-void
.end method

.method public onSetContentView(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/AdActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
