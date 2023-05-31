.class public Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;
.source "TTRewardVideoActivity.java"


# static fields
.field private static aK:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;


# instance fields
.field private aF:Lcom/bytedance/sdk/openadsdk/core/p;

.field private aG:Ljava/lang/String;

.field private aH:I

.field private aI:Ljava/lang/String;

.field private aJ:Ljava/lang/String;

.field private aL:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected aN:I

.field protected aO:I

.field protected aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

.field protected final aQ:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aL:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private J()V
    .registers 4

    .prologue
    const/4 v2, 0x7

    .line 232
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->f()Lcom/bytedance/sdk/openadsdk/core/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/core/p;

    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_16

    .line 235
    const-string v0, "TTRewardVideoActivity"

    const-string v1, "mMaterialMeta is null , no data to display ,the TTRewardVideoActivity finished !!"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->finish()V

    .line 267
    :goto_15
    return-void

    .line 240
    :cond_16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 241
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Landroid/content/Context;)V

    .line 244
    :cond_2e
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->ap:I

    .line 245
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->Q:I

    .line 246
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->Q:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->M:Z

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->Q()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->O:I

    .line 248
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->H:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->I:Ljava/lang/String;

    .line 250
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->G()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->N:I

    .line 251
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->J:I

    .line 252
    const/16 v0, 0xb89

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->K:I

    .line 254
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->k()V

    .line 255
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->M:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->c()V

    .line 257
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->j()V

    .line 258
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->p()V

    .line 259
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->i()V

    .line 260
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->g()V

    .line 261
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->l()V

    .line 262
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->h()V

    .line 263
    const-string v0, "reward_endcard"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->K()V

    .line 265
    const-string v0, "rewarded_video"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->b(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->n()V

    goto/16 :goto_15
.end method

.method private K()V
    .registers 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->h:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_1c

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/b;)V

    .line 315
    :cond_1c
    return-void
.end method

.method private L()V
    .registers 5

    .prologue
    .line 385
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_9

    .line 386
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->l()V

    .line 388
    :cond_9
    const-string v0, "rewarded_video"

    const-string v1, "skip"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 391
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->ac:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 392
    const-string v1, "rit_scene"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->ac:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_25
    const-string v1, "play_type"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->x:Z

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v1, "rewarded_video"

    const-string v2, "feed_break"

    invoke-virtual {p0, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 397
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->D()V

    .line 399
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 400
    const-string v0, "onSkippedVideo"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d(Ljava/lang/String;)V

    .line 406
    :cond_4b
    :goto_4b
    return-void

    .line 402
    :cond_4c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_4b

    .line 403
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onSkippedVideo()V

    goto :goto_4b
.end method

.method private M()V
    .registers 4

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 410
    if-nez v0, :cond_7

    .line 423
    :goto_6
    return-void

    .line 413
    :cond_7
    const-string v1, "reward_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aG:Ljava/lang/String;

    .line 414
    const-string v1, "reward_amount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aH:I

    .line 415
    const-string v1, "media_extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aI:Ljava/lang/String;

    .line 416
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aJ:Ljava/lang/String;

    .line 417
    const-string v1, "show_download_bar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->t:Z

    .line 418
    const-string v1, "video_cache_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->v:Ljava/lang/String;

    .line 419
    const-string v1, "orientation"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->w:I

    .line 421
    const-string v1, "rit_scene"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->ac:Ljava/lang/String;

    goto :goto_6
.end method

.method private R()Lorg/json/JSONObject;
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 638
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 639
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v0

    if-nez v0, :cond_a9

    move v0, v1

    .line 640
    :goto_10
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v4

    if-nez v4, :cond_b3

    .line 642
    :goto_18
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v4, :cond_23

    .line 643
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->r()J

    move-result-wide v4

    long-to-int v3, v4

    .line 646
    :cond_23
    :try_start_23
    const-string v4, "oversea_version_type"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 647
    const-string v4, "reward_name"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aG:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    const-string v4, "reward_amount"

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aH:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 649
    const-string v4, "network"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 650
    const-string v4, "latitude"

    float-to-double v6, v0

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 651
    const-string v0, "longitude"

    float-to-double v4, v1

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 652
    const-string v0, "sdk_version"

    const-string v1, "2.9.5.3"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    const-string v0, "user_agent"

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 654
    const-string v0, "extra"

    new-instance v1, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->I:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 655
    const-string v0, "media_extra"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aI:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 656
    const-string v0, "video_duration"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->G()D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 657
    const-string v0, "play_start_ts"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aN:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 658
    const-string v0, "play_end_ts"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aO:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 659
    const-string v0, "duration"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 660
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aJ:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 661
    const-string v0, "trans_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_a7} :catch_bd

    move-object v0, v2

    .line 666
    :goto_a8
    return-object v0

    .line 639
    :cond_a9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/utils/c;->a:F

    goto/16 :goto_10

    .line 640
    :cond_b3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/c;

    move-result-object v1

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/utils/c;->b:F

    goto/16 :goto_18

    .line 663
    :catch_bd
    move-exception v0

    .line 664
    const/4 v0, 0x0

    goto :goto_a8
.end method

.method private S()V
    .registers 7

    .prologue
    .line 765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 767
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->as:J

    sub-long/2addr v2, v4

    .line 769
    const-string v1, "duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v2, "rewarded_video"

    const-string v3, "click_close"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->n(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 772
    return-void
.end method

.method private T()V
    .registers 6

    .prologue
    .line 778
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->e:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-nez v0, :cond_9

    .line 792
    :cond_8
    :goto_8
    return-void

    .line 781
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 785
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->e:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 786
    if-eqz v0, :cond_8

    .line 790
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v3, "rewarded_video"

    const-string v4, "playable_show_status"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_8
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->S()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;Ljava/lang/String;ZILjava/lang/String;)V
    .registers 5

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Ljava/lang/String;ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;Z)V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->e(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;ZILjava/lang/String;)V
    .registers 12

    .prologue
    .line 124
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;Ljava/lang/String;ZILjava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {v6, v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;I)V

    .line 134
    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 158
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 159
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_2a

    .line 161
    const-string v3, "multi_process_materialmeta"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    const-string v4, "multi_process_meta_md5"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->s:Ljava/lang/String;

    .line 164
    if-eqz v3, :cond_2a

    .line 165
    :try_start_1f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2a} :catch_d3

    .line 172
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_43

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v4, "rewarded_video"

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->B:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 182
    :cond_43
    :goto_43
    if-eqz p1, :cond_c4

    .line 183
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-nez v0, :cond_4f

    .line 184
    sget-object v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aK:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 185
    sput-object v5, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aK:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 188
    :cond_4f
    :try_start_4f
    const-string v0, "material_meta"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v3, "multi_process_meta_md5"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->s:Ljava/lang/String;

    .line 190
    const-string v3, "video_cache_url"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->v:Ljava/lang/String;

    .line 191
    const-string v3, "orientation"

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->w:I

    .line 192
    const-string v3, "is_mute"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->M:Z

    .line 193
    const-string v3, "rit_scene"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->ac:Ljava/lang/String;

    .line 195
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "has_show_skip_btn"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_b4

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 v3, 0x0

    const-string v4, "\u8df3\u8fc7"

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setSkipEnable(Z)V
    :try_end_b4
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_b4} :catch_12b

    .line 208
    :cond_b4
    :goto_b4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->B:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-nez v0, :cond_c4

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v4, "rewarded_video"

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->B:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 213
    :cond_c4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_104

    .line 214
    const-string v0, "TTRewardVideoActivity"

    const-string v1, "mMaterialMeta is null , no data to display ,the TTRewardVideoActivity finished !!"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->finish()V

    .line 228
    :goto_d2
    return v2

    .line 167
    :catch_d3
    move-exception v0

    .line 168
    const-string v3, "TTRewardVideoActivity"

    const-string v4, "TTRewardVideoActivity MultiGlobalInfo throw "

    invoke-static {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 177
    :cond_dd
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->c()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 178
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->d()Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 179
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->f()Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->B:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 180
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->g()V

    goto/16 :goto_43

    .line 219
    :cond_104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->h()I

    move-result v0

    if-ne v0, v1, :cond_129

    move v0, v1

    :goto_10d
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->ad:Z

    .line 220
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->h()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_119

    move v2, v1

    :cond_119
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->ae:Z

    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_127

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_127

    :cond_127
    move v2, v1

    .line 228
    goto :goto_d2

    :cond_129
    move v0, v2

    .line 219
    goto :goto_10d

    .line 205
    :catch_12b
    move-exception v0

    goto :goto_b4
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->T()V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->L()V

    return-void
.end method

.method private e(Z)V
    .registers 4

    .prologue
    .line 318
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->Q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->d(Ljava/lang/String;)Z

    move-result v0

    .line 319
    if-nez v0, :cond_1a

    .line 321
    if-eqz p1, :cond_16

    .line 322
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->finish()V

    .line 381
    :goto_15
    return-void

    .line 325
    :cond_16
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->L()V

    goto :goto_15

    .line 329
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aL:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 331
    if-eqz p1, :cond_28

    .line 332
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->finish()V

    goto :goto_15

    .line 335
    :cond_28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->L()V

    goto :goto_15

    .line 339
    :cond_2c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->X:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 341
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_3b

    .line 342
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->h()V

    .line 344
    :cond_3b
    if-eqz p1, :cond_40

    .line 345
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->B()V

    .line 347
    :cond_40
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->Y:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    .line 348
    if-eqz p1, :cond_6b

    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->Y:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    const-string v1, "\u8bd5\u73a9\u540e\u624d\u53ef\u9886\u53d6\u5956\u52b1"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/a;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u8bd5\u73a9"

    .line 350
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/a;

    move-result-object v0

    const-string v1, "\u653e\u5f03\u5956\u52b1"

    .line 351
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/a;

    .line 357
    :goto_5c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->Y:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Lcom/bytedance/sdk/openadsdk/core/widget/a$a;)Lcom/bytedance/sdk/openadsdk/core/widget/a;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->show()V

    goto :goto_15

    .line 353
    :cond_6b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->Y:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    const-string v1, "\u89c2\u770b\u5b8c\u6574\u89c6\u9891\u624d\u80fd\u83b7\u5f97\u5956\u52b1"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/a;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u89c2\u770b"

    .line 354
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/a;

    move-result-object v0

    const-string v1, "\u653e\u5f03\u5956\u52b1"

    .line 355
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/a;

    goto :goto_5c
.end method


# virtual methods
.method protected I()V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_8

    .line 139
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->finish()V

    .line 153
    :goto_7
    return-void

    .line 142
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->h()I

    move-result v0

    if-nez v0, :cond_1a

    .line 143
    const-string v0, "tt_activity_rewardvideo"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->setContentView(I)V

    goto :goto_7

    .line 144
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->h()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 146
    const-string v0, "tt_activity_reward_video_newstyle"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->setContentView(I)V

    goto :goto_7

    .line 147
    :cond_2d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->h()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_40

    .line 148
    const-string v0, "tt_activity_rewardvideo_new_bar_3_style"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->setContentView(I)V

    goto :goto_7

    .line 150
    :cond_40
    const-string v0, "tt_activity_rewardvideo"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->setContentView(I)V

    goto :goto_7
.end method

.method public N()V
    .registers 2

    .prologue
    .line 577
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 578
    const-string v0, "onAdShow"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d(Ljava/lang/String;)V

    .line 584
    :cond_b
    :goto_b
    return-void

    .line 580
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_b

    .line 581
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onAdShow()V

    goto :goto_b
.end method

.method protected O()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 587
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aL:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 633
    :cond_9
    :goto_9
    return-void

    .line 592
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aL:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 594
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->Q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/l;->n(Ljava/lang/String;)Z

    move-result v0

    .line 595
    if-eqz v0, :cond_3d

    .line 597
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 598
    const-string v0, "onRewardVerify"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aH:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aG:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Ljava/lang/String;ZILjava/lang/String;)V

    goto :goto_9

    .line 600
    :cond_2f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_9

    .line 601
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aH:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aG:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onRewardVerify(ZILjava/lang/String;)V

    goto :goto_9

    .line 607
    :cond_3d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->R()Lorg/json/JSONObject;

    move-result-object v0

    .line 608
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/core/p;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$6;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)V

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/p$c;)V

    goto :goto_9
.end method

.method public P()V
    .registers 2

    .prologue
    .line 671
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 672
    const-string v0, "onAdVideoBarClick"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d(Ljava/lang/String;)V

    .line 678
    :cond_b
    :goto_b
    return-void

    .line 674
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_b

    .line 675
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onAdVideoBarClick()V

    goto :goto_b
.end method

.method protected Q()V
    .registers 2

    .prologue
    .line 753
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 754
    const-string v0, "onVideoComplete"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d(Ljava/lang/String;)V

    .line 760
    :cond_b
    :goto_b
    return-void

    .line 756
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_b

    .line 757
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onVideoComplete()V

    goto :goto_b
.end method

.method public a(Landroid/view/View;IIII)V
    .registers 7

    .prologue
    .line 566
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 567
    const-string v0, "onAdVideoBarClick"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d(Ljava/lang/String;)V

    .line 573
    :cond_b
    :goto_b
    return-void

    .line 569
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_b

    .line 570
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onAdVideoBarClick()V

    goto :goto_b
.end method

.method public a(JZ)Z
    .registers 15

    .prologue
    const/4 v6, 0x0

    .line 427
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v0, :cond_12

    .line 428
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->m:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/f;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 431
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->ac:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 432
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 433
    const-string v1, "rit_scene"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->ac:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :goto_26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/util/Map;)V

    .line 436
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V

    .line 542
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v1

    .line 543
    :goto_47
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->v:Ljava/lang/String;

    if-eqz v2, :cond_67

    .line 544
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->v:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_67

    .line 546
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->v:Ljava/lang/String;

    .line 547
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->x:Z

    :cond_67
    move-object v2, v1

    .line 550
    const-string v1, "wzj"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v1, :cond_88

    const/4 v0, 0x0

    .line 561
    :goto_85
    return v0

    :cond_86
    move-object v1, v6

    .line 542
    goto :goto_47

    .line 554
    :cond_88
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->m:Landroid/widget/FrameLayout;

    .line 555
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v7

    iget-boolean v10, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->M:Z

    move-wide v8, p1

    .line 554
    invoke-interface/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    move-result v1

    .line 556
    if-eqz v1, :cond_c3

    if-nez p3, :cond_c3

    .line 557
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v4, "rewarded_video"

    invoke-static {v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;Ljava/util/Map;)V

    .line 558
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->N()V

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aN:I

    :cond_c3
    move v0, v1

    .line 561
    goto :goto_85

    :cond_c5
    move-object v0, v6

    goto/16 :goto_26
.end method

.method protected d(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 114
    const-string v0, ""

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Ljava/lang/String;ZILjava/lang/String;)V

    .line 115
    return-void
.end method

.method public f(I)V
    .registers 3

    .prologue
    .line 682
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_8

    .line 683
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->O()V

    .line 687
    :cond_7
    :goto_7
    return-void

    .line 684
    :cond_8
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_7

    .line 685
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->Q()V

    goto :goto_7
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aK:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 121
    return-void
.end method

.method public finish()V
    .registers 2

    .prologue
    .line 691
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 692
    const-string v0, "onAdClose"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d(Ljava/lang/String;)V

    .line 698
    :cond_b
    :goto_b
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->finish()V

    .line 699
    return-void

    .line 694
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_b

    .line 695
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;->onAdClose()V

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->M()V

    .line 78
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 88
    :goto_c
    return-void

    .line 82
    :cond_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->I()V

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d()V

    .line 84
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->J()V

    .line 85
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->a()V

    .line 86
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->u()V

    .line 87
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->y()V

    goto :goto_c
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 728
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->onDestroy()V

    .line 729
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 730
    const-string v0, "recycleRes"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->d(Ljava/lang/String;)V

    .line 733
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    if-eqz v0, :cond_15

    .line 735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 738
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->G:Ljava/util/Map;

    if-eqz v0, :cond_3f

    .line 739
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->G:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 740
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 741
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    goto :goto_23

    .line 747
    :cond_3f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 748
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a()V

    .line 750
    :cond_52
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 716
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->onPause()V

    .line 717
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->G:Ljava/util/Map;

    if-eqz v0, :cond_2d

    .line 718
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->G:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 719
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 720
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    goto :goto_11

    .line 724
    :cond_2d
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 703
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->onResume()V

    .line 705
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->G:Ljava/util/Map;

    if-eqz v0, :cond_2d

    .line 706
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->G:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 707
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 708
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    goto :goto_11

    .line 712
    :cond_2d
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 92
    if-nez p1, :cond_7

    .line 93
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 96
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aP:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->aK:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 98
    :try_start_b
    const-string v1, "material_meta"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->q:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ae()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "multi_process_meta_md5"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "video_current"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v0, :cond_5d

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->u:J

    :goto_2d
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 101
    const-string v0, "video_cache_url"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "orientation"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->w:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v0, "is_mute"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->M:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    const-string v0, "has_show_skip_btn"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->T:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    const-string v0, "rit_scene"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->ac:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_57} :catch_64

    .line 109
    :goto_57
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTBaseVideoActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    return-void

    .line 98
    :cond_5b
    const/4 v0, 0x0

    goto :goto_1b

    .line 100
    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->m()J
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_62} :catch_64

    move-result-wide v0

    goto :goto_2d

    .line 106
    :catch_64
    move-exception v0

    goto :goto_57
.end method
