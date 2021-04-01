.class public Lcom/sigmob/sdk/base/common/AdActivity;
.super Lcom/sigmob/sdk/videoAd/BaseAdActivity;

# interfaces
.implements Lcom/sigmob/sdk/base/common/o;


# instance fields
.field private e:Lcom/sigmob/sdk/base/common/n;

.field private f:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Intent;)J
    .registers 5

    const-string v0, "broadcastIdentifier"

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Landroid/os/Bundle;)Lcom/sigmob/sdk/base/common/n;
    .registers 9

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ad_view_class_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_6e

    :cond_12
    :goto_12
    packed-switch v0, :pswitch_data_7c

    const/4 v0, 0x0

    :goto_16
    return-object v0

    :sswitch_17
    const-string v2, "reward"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    goto :goto_12

    :sswitch_21
    const-string v2, "LandPage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    goto :goto_12

    :sswitch_2b
    const-string v2, "mraid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x2

    goto :goto_12

    :pswitch_35
    new-instance v0, Lcom/sigmob/sdk/videoAd/k;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-wide v4, p0, Lcom/sigmob/sdk/base/common/AdActivity;->f:J

    move-object v1, p0

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/videoAd/k;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/sigmob/sdk/base/common/o;)V

    goto :goto_16

    :pswitch_48
    new-instance v0, Lcom/sigmob/sdk/base/common/y;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-wide v4, p0, Lcom/sigmob/sdk/base/common/AdActivity;->f:J

    move-object v1, p0

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/y;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/sigmob/sdk/base/common/o;)V

    goto :goto_16

    :pswitch_5b
    new-instance v0, Lcom/sigmob/sdk/mraid/x;

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-wide v4, p0, Lcom/sigmob/sdk/base/common/AdActivity;->f:J

    move-object v1, p0

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/mraid/x;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/sigmob/sdk/base/common/o;)V

    goto :goto_16

    :sswitch_data_6e
    .sparse-switch
        -0x5c8e20c6 -> :sswitch_21
        -0x37b0b0d1 -> :sswitch_17
        0x6354d77 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_35
        :pswitch_48
        :pswitch_5b
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;)V
    .registers 7

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    return-void

    :cond_4
    :try_start_4
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_c} :catch_36

    move-object v2, v0

    :goto_d
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1a
    if-ge v1, v4, :cond_3

    aget-object v0, v3, v1

    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_28

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_28
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_32

    instance-of v5, v5, Landroid/view/View;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_30} :catch_41

    if-nez v5, :cond_3c

    :cond_32
    :goto_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v1

    goto :goto_d

    :cond_3c
    const/4 v5, 0x0

    :try_start_3d
    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_32

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_32
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

.method public a(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/AdActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public a(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {p0, p1, p3}, Lcom/sigmob/sdk/base/common/utils/o;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    :try_start_7
    invoke-virtual {p0, v0, p2}, Lcom/sigmob/sdk/base/common/AdActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_2

    :catch_b
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found. Did you declare it in your AndroidManifest.xml?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/n;->a(IILandroid/content/Intent;)V

    :cond_9
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/n;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->onBackPressed()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/n;->e()V

    :cond_14
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/n;->a(Landroid/content/res/Configuration;)V

    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

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

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/content/Intent;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->f:J

    :try_start_27
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    :cond_30
    :goto_30
    return-void

    :cond_31
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/os/Bundle;)Lcom/sigmob/sdk/base/common/n;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/n;->a()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_40} :catch_41

    goto :goto_30

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Lcom/sigmob/sdk/base/common/AdActivity;->f:J

    const-string v0, "com.sigmob.action.rewardedvideo.playFail"

    invoke-static {p0, v2, v3, v1, v0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    goto :goto_30
.end method

.method protected onDestroy()V
    .registers 2

    const-string v0, "RewardVideoAdPlayerActivity onDestroy() called"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/n;->d()V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 5

    :try_start_0
    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->onPause()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/n;->b()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Lcom/sigmob/sdk/base/common/AdActivity;->f:J

    const-string v0, "com.sigmob.action.rewardedvideo.playFail"

    invoke-static {p0, v2, v3, v1, v0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    goto :goto_c
.end method

.method protected onResume()V
    .registers 5

    :try_start_0
    invoke-super {p0}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->onResume()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/n;->c()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Lcom/sigmob/sdk/base/common/AdActivity;->f:J

    const-string v0, "com.sigmob.action.rewardedvideo.playFail"

    invoke-static {p0, v2, v3, v1, v0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/AdActivity;->finish()V

    goto :goto_c
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/AdActivity;->e:Lcom/sigmob/sdk/base/common/n;

    invoke-virtual {v0, p1}, Lcom/sigmob/sdk/base/common/n;->a(Landroid/os/Bundle;)V

    :cond_c
    return-void
.end method
