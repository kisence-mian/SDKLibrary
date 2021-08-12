.class public Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;
.source "TTRewardVideoActivity.java"


# static fields
.field private static aY:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# instance fields
.field private aT:Lcom/bytedance/sdk/openadsdk/core/q;

.field private aU:Ljava/lang/String;

.field private aV:I

.field private aW:Ljava/lang/String;

.field private aX:Ljava/lang/String;

.field private aZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ba:Z

.field protected bb:I

.field protected bc:I

.field protected bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

.field protected final be:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private bf:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 59
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->be:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->ba:Z

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bf:I

    return-void
.end method

.method private Q()V
    .registers 4

    .line 260
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Lcom/bytedance/sdk/openadsdk/core/q;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/q;

    .line 262
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_15

    .line 263
    const-string v0, "TTRewardVideoActivity"

    const-string v1, "mMaterialMeta is null , no data to display ,the TTRewardVideoActivity finished !!"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->finish()V

    .line 265
    return-void

    .line 268
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 269
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->a(Landroid/content/Context;)V

    .line 272
    :cond_2d
    const/4 v0, 0x7

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->at:I

    .line 273
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->T:I

    .line 274
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->T:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/h/h;->b(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->P:Z

    .line 275
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->R:I

    .line 276
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->K:Ljava/lang/String;

    .line 277
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->L:Ljava/lang/String;

    .line 278
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->L()D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->Q:I

    .line 279
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->M:I

    .line 280
    const/16 v0, 0xd54

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->N:I

    .line 282
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->n()V

    .line 283
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->P:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->a(Z)V

    .line 284
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e()V

    .line 285
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->m()V

    .line 286
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->t()V

    .line 287
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->l()V

    .line 288
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->j()V

    .line 289
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->o()V

    .line 290
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->k()V

    .line 291
    const-string v0, "reward_endcard"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->a(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->R()V

    .line 293
    const-string v0, "rewarded_video"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->q()V

    .line 295
    return-void
.end method

.method private R()V
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    .line 299
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->j:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_1c

    .line 320
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/b;)V

    .line 361
    :cond_1c
    return-void
.end method

.method private S()V
    .registers 5

    .line 484
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_9

    .line 485
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->m()V

    .line 487
    :cond_9
    const/4 v0, 0x0

    const-string v1, "rewarded_video"

    const-string v2, "skip"

    invoke-virtual {p0, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 489
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 490
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->af:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 491
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->af:Ljava/lang/String;

    const-string v3, "rit_scene"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_25
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->z:Z

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "play_type"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v2, "feed_break"

    invoke-virtual {p0, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 496
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->I()V

    .line 498
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 499
    const-string v0, "onSkippedVideo"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e(Ljava/lang/String;)V

    goto :goto_51

    .line 501
    :cond_4a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_51

    .line 502
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onSkippedVideo()V

    .line 505
    :cond_51
    :goto_51
    return-void
.end method

.method private T()V
    .registers 4

    .line 508
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 509
    if-nez v0, :cond_7

    .line 510
    return-void

    .line 512
    :cond_7
    const-string v1, "reward_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aU:Ljava/lang/String;

    .line 513
    const/4 v1, 0x0

    const-string v2, "reward_amount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aV:I

    .line 514
    const-string v1, "media_extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aW:Ljava/lang/String;

    .line 515
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aX:Ljava/lang/String;

    .line 516
    const/4 v1, 0x1

    const-string v2, "show_download_bar"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->v:Z

    .line 517
    const-string v1, "video_cache_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->x:Ljava/lang/String;

    .line 518
    const/4 v1, 0x2

    const-string v2, "orientation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->y:I

    .line 520
    const-string v1, "rit_scene"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->af:Ljava/lang/String;

    .line 522
    return-void
.end method

.method private Z()Lorg/json/JSONObject;
    .registers 8

    .line 780
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 781
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    move v1, v2

    goto :goto_18

    :cond_10
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v1

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/utils/c;->a:F

    .line 782
    :goto_18
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v3

    if-nez v3, :cond_21

    goto :goto_29

    :cond_21
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v2

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/utils/c;->b:F

    .line 783
    :goto_29
    nop

    .line 784
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    const/4 v4, 0x0

    if-eqz v3, :cond_37

    .line 785
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->s()J

    move-result-wide v5

    long-to-int v3, v5

    goto :goto_38

    .line 784
    :cond_37
    move v3, v4

    .line 788
    :goto_38
    :try_start_38
    const-string v5, "oversea_version_type"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 789
    const-string v4, "reward_name"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aU:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 790
    const-string v4, "reward_amount"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aV:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 791
    const-string v4, "network"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e:Landroid/content/Context;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/x;->c(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 792
    const-string v4, "latitude"

    float-to-double v5, v1

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 793
    const-string v1, "longitude"

    float-to-double v4, v2

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 794
    const-string v1, "sdk_version"

    const-string v2, "3.4.1.2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    const-string v1, "user_agent"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aj;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    const-string v1, "extra"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->L:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 797
    const-string v1, "media_extra"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    const-string v1, "video_duration"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->L()D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 799
    const-string v1, "play_start_ts"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bb:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 800
    const-string v1, "play_end_ts"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bc:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 801
    const-string v1, "duration"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 802
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 803
    const-string v1, "trans_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_bd
    .catchall {:try_start_38 .. :try_end_bd} :catchall_bf

    .line 807
    nop

    .line 808
    return-object v0

    .line 805
    :catchall_bf
    move-exception v0

    .line 806
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aa()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 59
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->a(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;Z)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->f(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V
    .registers 16

    .line 150
    new-instance v8, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {v8, p1}, Lcom/bytedance/sdk/openadsdk/j/e;->b(Ljava/lang/Runnable;I)V

    .line 160
    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .registers 10

    .line 184
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "rewarded_video"

    const-string v2, "TTRewardVideoActivity"

    const/4 v3, 0x4

    const-string v4, "multi_process_meta_md5"

    if-eqz v0, :cond_4b

    .line 185
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_34

    .line 187
    const-string v5, "multi_process_materialmeta"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->u:Ljava/lang/String;

    .line 190
    if-eqz v5, :cond_34

    .line 191
    :try_start_21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_34

    .line 193
    :catch_2d
    move-exception v0

    .line 194
    const-string v5, "TTRewardVideoActivity MultiGlobalInfo throw "

    invoke-static {v2, v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    .line 198
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    if-ne v0, v3, :cond_4a

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 202
    :cond_4a
    goto :goto_70

    .line 203
    :cond_4b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->c()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 204
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->d()Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 205
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->f()Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 206
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->g()V

    .line 208
    :goto_70
    const/4 v0, 0x1

    if-eqz p1, :cond_fa

    .line 209
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    const/4 v6, 0x0

    if-nez v5, :cond_7e

    .line 210
    sget-object v5, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aY:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    iput-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 211
    sput-object v6, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aY:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 214
    :cond_7e
    :try_start_7e
    const-string v5, "material_meta"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->u:Ljava/lang/String;

    .line 216
    const-string v4, "video_cache_url"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->x:Ljava/lang/String;

    .line 217
    const-string v4, "orientation"

    const/4 v7, 0x2

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->y:I

    .line 218
    const-string v4, "is_mute"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->P:Z

    .line 219
    const-string v4, "rit_scene"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->af:Ljava/lang/String;

    .line 221
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 223
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v5, "has_show_skip_btn"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 224
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_de

    .line 225
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz p1, :cond_de

    .line 226
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 227
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const-string v4, "\u8df3\u8fc7"

    invoke-virtual {p1, v6, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 228
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setSkipEnable(Z)V
    :try_end_de
    .catchall {:try_start_7e .. :try_end_de} :catchall_df

    .line 232
    :cond_de
    goto :goto_e0

    .line 231
    :catchall_df
    move-exception p1

    .line 234
    :goto_e0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-nez p1, :cond_fa

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz p1, :cond_fa

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 235
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result p1

    if-ne p1, v3, :cond_fa

    .line 236
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1, v3, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 240
    :cond_fa
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/e;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 241
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x0

    if-nez p1, :cond_111

    .line 242
    const-string p1, "mMaterialMeta is null , no data to display ,the TTRewardVideoActivity finished !!"

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->finish()V

    .line 244
    return v1

    .line 247
    :cond_111
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n()I

    move-result p1

    if-ne p1, v0, :cond_11b

    move p1, v0

    goto :goto_11c

    :cond_11b
    move p1, v1

    :goto_11c
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->ag:Z

    .line 248
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_128

    move v1, v0

    :cond_128
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->ah:Z

    .line 251
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz p1, :cond_133

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    .line 256
    :cond_133
    return v0
.end method

.method private aa()V
    .registers 6

    .line 917
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 919
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->ax:J

    sub-long/2addr v1, v3

    .line 921
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v2, 0x0

    const-string v3, "rewarded_video"

    const-string v4, "click_close"

    invoke-static {v0, v1, v3, v4, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->g(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 924
    return-void
.end method

.method private ab()V
    .registers 9

    .line 930
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-nez v0, :cond_9

    goto :goto_2b

    .line 933
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-nez v0, :cond_12

    .line 934
    return-void

    .line 937
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 938
    if-nez v5, :cond_1b

    .line 939
    return-void

    .line 942
    :cond_1b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v3, "rewarded_video"

    const-string v4, "playable_show_status"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    .line 944
    return-void

    .line 931
    :cond_2b
    :goto_2b
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->ab()V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->S()V

    return-void
.end method

.method private f(Z)V
    .registers 7

    .line 364
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->T:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->d(Ljava/lang/String;)Z

    move-result v0

    .line 365
    if-nez v0, :cond_1a

    .line 367
    if-eqz p1, :cond_16

    .line 368
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->finish()V

    .line 369
    return-void

    .line 371
    :cond_16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->S()V

    .line 372
    return-void

    .line 375
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 377
    if-eqz p1, :cond_28

    .line 378
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->finish()V

    .line 379
    return-void

    .line 381
    :cond_28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->S()V

    .line 382
    return-void

    .line 385
    :cond_2c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aa:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 387
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_3b

    .line 388
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->h()V

    .line 390
    :cond_3b
    if-eqz p1, :cond_40

    .line 391
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->G()V

    .line 393
    :cond_40
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/c;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/c;-><init>(Landroid/content/Context;)V

    .line 394
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->ab:Lcom/bytedance/sdk/openadsdk/core/widget/c;

    .line 395
    const-string v2, "\u653e\u5f03\u5956\u52b1"

    if-eqz p1, :cond_7e

    .line 434
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->T:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/h/h;->m(Ljava/lang/String;)I

    move-result v3

    .line 436
    const-string v4, "\u8bd5\u73a9\u65f6\u957f\u8fbe\u6807\u624d\u80fd\u9886\u53d6\u5956\u52b1"

    if-ne v3, v1, :cond_5e

    .line 437
    goto :goto_6e

    .line 439
    :cond_5e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->F:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/x;->e()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 440
    const-string v4, "\u8bd5\u73a9\u540e\u624d\u80fd\u9886\u53d6\u5956\u52b1"

    goto :goto_6e

    .line 442
    :cond_6d
    nop

    .line 445
    :goto_6e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->ab:Lcom/bytedance/sdk/openadsdk/core/widget/c;

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/c;

    move-result-object v1

    .line 446
    const-string v3, "\u7ee7\u7eed\u8bd5\u73a9"

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/c;

    move-result-object v1

    .line 447
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/c;

    .line 448
    goto :goto_8f

    .line 449
    :cond_7e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->ab:Lcom/bytedance/sdk/openadsdk/core/widget/c;

    const-string v3, "\u89c2\u770b\u5b8c\u6574\u89c6\u9891\u624d\u80fd\u83b7\u5f97\u5956\u52b1"

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/c;

    move-result-object v1

    .line 450
    const-string v3, "\u7ee7\u7eed\u89c2\u770b"

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/c;

    move-result-object v1

    .line 451
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/c;

    .line 453
    :goto_8f
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->ab:Lcom/bytedance/sdk/openadsdk/core/widget/c;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;ZLcom/bytedance/sdk/openadsdk/core/widget/c;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->a(Lcom/bytedance/sdk/openadsdk/core/widget/c$a;)Lcom/bytedance/sdk/openadsdk/core/widget/c;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/c;->show()V

    .line 480
    return-void
.end method


# virtual methods
.method protected P()V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_8

    .line 165
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->finish()V

    .line 166
    return-void

    .line 168
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n()I

    move-result v0

    const-string v1, "tt_activity_rewardvideo"

    if-nez v0, :cond_1a

    .line 169
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->setContentView(I)V

    goto :goto_47

    .line 170
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    .line 172
    const-string v0, "tt_activity_reward_video_newstyle"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->setContentView(I)V

    goto :goto_47

    .line 173
    :cond_2d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_40

    .line 174
    const-string v0, "tt_activity_rewardvideo_new_bar_3_style"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->setContentView(I)V

    goto :goto_47

    .line 176
    :cond_40
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->setContentView(I)V

    .line 179
    :goto_47
    return-void
.end method

.method public U()V
    .registers 2

    .line 719
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 720
    const-string v0, "onAdShow"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e(Ljava/lang/String;)V

    goto :goto_13

    .line 722
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_13

    .line 723
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onAdShow()V

    .line 726
    :cond_13
    :goto_13
    return-void
.end method

.method protected V()V
    .registers 15

    .line 729
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 731
    return-void

    .line 734
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 736
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->T:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->n(Ljava/lang/String;)Z

    move-result v0

    .line 737
    if-eqz v0, :cond_44

    .line 739
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 740
    const/4 v3, 0x1

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aV:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aU:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v2, "onRewardVerify"

    const-string v7, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->a(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    goto :goto_43

    .line 742
    :cond_34
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v8, :cond_43

    .line 743
    const/4 v9, 0x1

    iget v10, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aV:I

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aU:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, ""

    invoke-interface/range {v8 .. v13}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V

    .line 746
    :cond_43
    :goto_43
    return-void

    .line 749
    :cond_44
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->Z()Lorg/json/JSONObject;

    move-result-object v0

    .line 750
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aT:Lcom/bytedance/sdk/openadsdk/core/q;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;)V

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/q;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/q$c;)V

    .line 775
    return-void
.end method

.method public W()V
    .registers 2

    .line 813
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 814
    const-string v0, "onAdVideoBarClick"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e(Ljava/lang/String;)V

    goto :goto_13

    .line 816
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_13

    .line 817
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onAdVideoBarClick()V

    .line 820
    :cond_13
    :goto_13
    return-void
.end method

.method public X()V
    .registers 2

    .line 839
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->ba:Z

    if-eqz v0, :cond_5

    .line 840
    return-void

    .line 842
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->ba:Z

    .line 844
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 845
    const-string v0, "onAdClose"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e(Ljava/lang/String;)V

    goto :goto_1b

    .line 847
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_1b

    .line 848
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onAdClose()V

    .line 851
    :cond_1b
    :goto_1b
    return-void
.end method

.method protected Y()V
    .registers 2

    .line 905
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 906
    const-string v0, "onVideoComplete"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e(Ljava/lang/String;)V

    goto :goto_13

    .line 908
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_13

    .line 909
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onVideoComplete()V

    .line 912
    :cond_13
    :goto_13
    return-void
.end method

.method protected a(JJ)V
    .registers 7

    .line 525
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bf:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 526
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->T:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/h/a;->g:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bf:I

    .line 529
    :cond_17
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1e

    .line 530
    return-void

    .line 535
    :cond_1e
    const-wide/16 v0, 0x7530

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2e

    const-wide/16 v0, 0x6978

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2e

    .line 536
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->V()V

    .line 537
    return-void

    .line 541
    :cond_2e
    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bf:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_3f

    .line 542
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->V()V

    .line 543
    return-void

    .line 546
    :cond_3f
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .registers 6

    .line 708
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 709
    const-string p1, "onAdVideoBarClick"

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e(Ljava/lang/String;)V

    goto :goto_13

    .line 711
    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz p1, :cond_13

    .line 712
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onAdVideoBarClick()V

    .line 715
    :cond_13
    :goto_13
    return-void
.end method

.method public a(JZ)Z
    .registers 20

    .line 550
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v1, :cond_13

    .line 551
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/f;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e:Landroid/content/Context;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->o:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/f;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 553
    :cond_13
    nop

    .line 554
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->af:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 555
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 556
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->af:Ljava/lang/String;

    const-string v4, "rit_scene"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 554
    :cond_2a
    move-object v1, v2

    .line 558
    :goto_2b
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/util/Map;)V

    .line 559
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$5;

    invoke-direct {v4, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;)V

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V

    .line 679
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v3

    if-eqz v3, :cond_4d

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v3

    goto :goto_4e

    :cond_4d
    move-object v3, v2

    .line 680
    :goto_4e
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->x:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_70

    .line 681
    new-instance v4, Ljava/io/File;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->x:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_70

    .line 683
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->x:Ljava/lang/String;

    .line 684
    iput-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->z:Z

    move-object v7, v3

    goto :goto_71

    .line 687
    :cond_70
    move-object v7, v3

    :goto_71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wzj"

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v3, :cond_8f

    const/4 v1, 0x0

    return v1

    .line 691
    :cond_8f
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 692
    const/16 v4, 0x12c

    iput v4, v3, Landroid/os/Message;->what:I

    .line 693
    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 694
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 695
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v8

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->o:Landroid/widget/FrameLayout;

    .line 696
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v12

    iget-boolean v15, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->P:Z

    .line 695
    move-wide/from16 v13, p1

    invoke-interface/range {v6 .. v15}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    move-result v3

    .line 697
    if-eqz v3, :cond_fc

    if-nez p3, :cond_fc

    .line 698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pangolin ad show "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AdEvent"

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e:Landroid/content/Context;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v5, "rewarded_video"

    invoke-static {v2, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/util/Map;)V

    .line 700
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->U()V

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    long-to-int v1, v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bb:I

    .line 703
    :cond_fc
    return v3
.end method

.method protected e(Ljava/lang/String;)V
    .registers 9

    .line 139
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->a(Ljava/lang/String;ZILjava/lang/String;ILjava/lang/String;)V

    .line 140
    return-void
.end method

.method public f(I)V
    .registers 3

    .line 824
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_8

    .line 825
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->V()V

    goto :goto_f

    .line 826
    :cond_8
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_f

    .line 827
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->Y()V

    .line 829
    :cond_f
    :goto_f
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 144
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aY:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 146
    return-void
.end method

.method public finish()V
    .registers 1

    .line 833
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->X()V

    .line 834
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->finish()V

    .line 835
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 93
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->T()V

    .line 95
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->a(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 97
    return-void

    .line 99
    :cond_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->b()V

    .line 100
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->P()V

    .line 101
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->f()V

    .line 102
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->Q()V

    .line 103
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->d()V

    .line 104
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->z()V

    .line 105
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D()V

    .line 106
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->a()V

    .line 107
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 879
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->onDestroy()V

    .line 880
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->X()V

    .line 881
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 882
    const-string v0, "recycleRes"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->e(Ljava/lang/String;)V

    .line 885
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_18

    .line 887
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 890
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->J:Ljava/util/Map;

    if-eqz v0, :cond_42

    .line 891
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->J:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 892
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 893
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 895
    :cond_41
    goto :goto_26

    .line 899
    :cond_42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 900
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a()V

    .line 902
    :cond_55
    return-void
.end method

.method protected onPause()V
    .registers 4

    .line 867
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->onPause()V

    .line 868
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->J:Ljava/util/Map;

    if-eqz v0, :cond_2d

    .line 869
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->J:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 870
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 871
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    .line 873
    :cond_2c
    goto :goto_11

    .line 875
    :cond_2d
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 855
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->onResume()V

    .line 856
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->J:Ljava/util/Map;

    if-eqz v0, :cond_2d

    .line 857
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->J:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 858
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 859
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 861
    :cond_2c
    goto :goto_11

    .line 863
    :cond_2d
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 117
    if-nez p1, :cond_7

    .line 118
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 121
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->bd:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->aY:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 123
    :try_start_b
    const-string v0, "material_meta"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "multi_process_meta_md5"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "video_current"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v1, :cond_30

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->w:J

    goto :goto_36

    :cond_30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->n()J

    move-result-wide v1

    :goto_36
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 126
    const-string v0, "video_cache_url"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "orientation"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string v0, "is_mute"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->P:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    const-string v0, "has_show_skip_btn"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    const-string v0, "rit_scene"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->af:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_b .. :try_end_60} :catchall_61

    .line 132
    goto :goto_62

    .line 131
    :catchall_61
    move-exception v0

    .line 134
    :goto_62
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    return-void
.end method

.method s()Lcom/bytedance/sdk/openadsdk/c/p;
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    goto :goto_b

    :cond_a
    const/4 v0, 0x2

    .line 112
    :goto_b
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/p;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTRewardVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v3, "rewarded_video"

    invoke-direct {v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/c/p;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    return-object v1
.end method
