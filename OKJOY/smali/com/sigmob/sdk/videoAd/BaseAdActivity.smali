.class public Lcom/sigmob/sdk/videoAd/BaseAdActivity;
.super Landroid/app/Activity;


# static fields
.field protected static final a:Ljava/lang/String; = "ad_view_class_name"

.field public static final b:Ljava/lang/String; = "LandPage"

.field public static final c:Ljava/lang/String; = "reward"

.field public static final d:Ljava/lang/String; = "mraid"

.field private static final e:Ljava/lang/String; = "land_page_url"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sigmob/sdk/videoAd/BaseAdActivity;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "J)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, v6

    invoke-static/range {v1 .. v7}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;JLjava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;JLjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sigmob/sdk/videoAd/BaseAdActivity;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;JLjava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;JLjava/util/Map;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sigmob/sdk/videoAd/BaseAdActivity;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/videoAd/BaseAdActivity;->b(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;J)Landroid/content/Intent;

    move-result-object v1

    if-eqz p5, :cond_12

    :try_start_6
    const-string v0, "options"

    check-cast p5, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "ad_scene"

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_12} :catch_16

    :cond_12
    :goto_12
    :try_start_12
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_15
    return-void

    :catch_16
    move-exception v0

    const-string v2, "Activity add options error"

    invoke-static {v2, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1c} :catch_1d

    goto :goto_12

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.sigmob.action.rewardedvideo.playFail"

    invoke-static {p0, p3, p4, v1, v0}, Lcom/sigmob/sdk/base/common/BaseBroadcastReceiver;->a(Landroid/content/Context;JLjava/util/Map;Ljava/lang/String;)V

    goto :goto_15
.end method

.method private static b(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;J)Landroid/content/Intent;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sigmob/sdk/videoAd/BaseAdActivity;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "J)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "LandPage"

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1a

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd_type()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_28

    :cond_1a
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v0

    sget-object v2, Lcom/sigmob/sdk/base/common/q;->h:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v2

    if-ne v0, v2, :cond_3e

    const-string v0, "mraid"

    :cond_28
    :goto_28
    const-string v2, "ad_view_class_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const-string v2, "REQUESTED_ORIENTATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "broadcastIdentifier"

    invoke-virtual {v1, v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v1

    :cond_3e
    const-string v0, "reward"

    goto :goto_28
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

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    return-void
.end method
