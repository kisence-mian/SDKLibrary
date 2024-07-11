.class public Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;
.source "TTFullScreenVideoActivity.java"


# static fields
.field private static aT:I

.field private static aV:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;


# instance fields
.field private aU:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

.field private aW:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const/4 v0, 0x5

    sput v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aW:Z

    return-void
.end method

.method private Q()V
    .registers 4

    .line 146
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 147
    if-nez v0, :cond_7

    return-void

    .line 148
    :cond_7
    const/4 v1, 0x1

    const-string v2, "show_download_bar"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->v:Z

    .line 149
    const-string v1, "video_cache_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->x:Ljava/lang/String;

    .line 150
    const/4 v1, 0x2

    const-string v2, "orientation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->y:I

    .line 151
    const-string v1, "rit_scene"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->af:Ljava/lang/String;

    .line 152
    const/4 v1, 0x0

    const-string v2, "is_verity_playable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->av:Z

    .line 153
    return-void
.end method

.method private R()V
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_f

    .line 232
    const-string v0, "TTFullScreenVideoActivity"

    const-string v1, "mMaterialMeta is null , no data to display ,the TTFullScreenVideoActivity finished !!"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->finish()V

    .line 234
    return-void

    .line 236
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 237
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->a(Landroid/content/Context;)V

    .line 240
    :cond_27
    const/16 v0, 0x8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->at:I

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->T:I

    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ak()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->R:I

    .line 243
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->K:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->L:Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->L()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->Q:I

    .line 246
    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->M:I

    .line 247
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->T:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->P:Z

    .line 248
    const/16 v0, 0xd54

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->N:I

    .line 251
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->n()V

    .line 252
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->P:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->a(Z)V

    .line 253
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->m()V

    .line 254
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->t()V

    .line 255
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->l()V

    .line 256
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->o()V

    .line 257
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->k()V

    .line 258
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->j()V

    .line 259
    const-string v0, "fullscreen_endcard"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->a(Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->S()V

    .line 261
    const-string v0, "fullscreen_interstitial_ad"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->b(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->q()V

    .line 263
    return-void
.end method

.method private S()V
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->j:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->j:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_1c

    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setListener(Lcom/bytedance/sdk/openadsdk/component/reward/top/b;)V

    .line 338
    :cond_1c
    return-void
.end method

.method private T()V
    .registers 4

    .line 532
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_12

    .line 533
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 v1, 0x0

    const-string v2, "\u8df3\u8fc7"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setSkipEnable(Z)V

    .line 536
    :cond_12
    return-void
.end method

.method private Z()V
    .registers 6

    .line 694
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 696
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    .line 697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->ax:J

    sub-long/2addr v1, v3

    .line 698
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    :cond_2a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v3, "fullscreen_interstitial_ad"

    const-string v4, "click_close"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/c/d;->g(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 701
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->Z()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;Ljava/lang/String;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .registers 9

    .line 157
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "fullscreen_interstitial_ad"

    const-string v2, "TTFullScreenVideoActivity"

    const/4 v3, 0x4

    const-string v4, "multi_process_meta_md5"

    if-eqz v0, :cond_4b

    .line 158
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_34

    .line 160
    const-string v5, "multi_process_materialmeta"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->u:Ljava/lang/String;

    .line 163
    if-eqz v5, :cond_34

    .line 164
    :try_start_21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_34

    .line 166
    :catch_2d
    move-exception v0

    .line 167
    const-string v5, "initData MultiGlobalInfo throws "

    invoke-static {v2, v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    nop

    .line 171
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    if-ne v0, v3, :cond_4a

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0, v5, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 175
    :cond_4a
    goto :goto_70

    .line 176
    :cond_4b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->c()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 177
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->e()Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aU:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 178
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->f()Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 179
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/u;->g()V

    .line 181
    :goto_70
    const/4 v0, 0x1

    if-eqz p1, :cond_f1

    .line 182
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aU:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-nez v5, :cond_7e

    .line 183
    sget-object v5, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aV:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    iput-object v5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aU:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 184
    const/4 v5, 0x0

    sput-object v5, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aV:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 187
    :cond_7e
    :try_start_7e
    const-string v5, "material_meta"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->u:Ljava/lang/String;

    .line 189
    const-string v4, "video_cache_url"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->x:Ljava/lang/String;

    .line 190
    const-string v4, "orientation"

    const/4 v6, 0x2

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->y:I

    .line 191
    const-string v4, "is_mute"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->P:Z

    .line 192
    const-string v4, "rit_scene"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->af:Ljava/lang/String;

    .line 194
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 196
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v5, "has_show_skip_btn"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 197
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_d5

    .line 198
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz p1, :cond_d2

    .line 199
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 201
    :cond_d2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->T()V
    :try_end_d5
    .catchall {:try_start_7e .. :try_end_d5} :catchall_d6

    .line 204
    :cond_d5
    goto :goto_d7

    .line 203
    :catchall_d6
    move-exception p1

    .line 206
    :goto_d7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-nez p1, :cond_f1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz p1, :cond_f1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 207
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result p1

    if-ne p1, v3, :cond_f1

    .line 208
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1, v3, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->E:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 211
    :cond_f1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/e;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 212
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v1, 0x0

    if-nez p1, :cond_108

    .line 213
    const-string p1, "mMaterialMeta is null , no data to display ,the TTFullScreenVideoActivity finished !!"

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->finish()V

    .line 215
    return v1

    .line 218
    :cond_108
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n()I

    move-result p1

    if-ne p1, v0, :cond_112

    move p1, v0

    goto :goto_113

    :cond_112
    move p1, v1

    :goto_113
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->ag:Z

    .line 219
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_11f

    move v1, v0

    :cond_11f
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->ah:Z

    .line 222
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz p1, :cond_12a

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    .line 227
    :cond_12a
    return v0
.end method

.method private aa()V
    .registers 9

    .line 707
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    if-nez v0, :cond_9

    goto :goto_2b

    .line 710
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-nez v0, :cond_12

    .line 711
    return-void

    .line 713
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->f:Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 714
    if-nez v5, :cond_1b

    .line 715
    return-void

    .line 717
    :cond_1b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v3, "fullscreen_interstitial_ad"

    const-string v4, "playable_show_status"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    .line 719
    return-void

    .line 708
    :cond_2b
    :goto_2b
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aa()V

    return-void
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aU:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-object p0
.end method

.method private d(I)V
    .registers 4

    .line 539
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_22

    .line 540
    new-instance v0, Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "s\u540e\u53ef\u8df3\u8fc7"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 541
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 543
    :cond_22
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 3

    .line 132
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/j/e;->b(Ljava/lang/Runnable;I)V

    .line 142
    return-void
.end method


# virtual methods
.method protected P()V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_8

    .line 93
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->finish()V

    .line 94
    return-void

    .line 96
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n()I

    move-result v0

    const-string v1, "tt_activity_full_video"

    if-nez v0, :cond_1a

    .line 97
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->setContentView(I)V

    goto :goto_47

    .line 98
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    .line 99
    const-string v0, "tt_activity_full_video_newstyle"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->setContentView(I)V

    goto :goto_47

    .line 100
    :cond_2d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_40

    .line 101
    const-string v0, "tt_activity_full_video_new_bar_3_style"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->setContentView(I)V

    goto :goto_47

    .line 103
    :cond_40
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->setContentView(I)V

    .line 105
    :goto_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlayBarStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "report-5"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public U()V
    .registers 2

    .line 558
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 559
    const-string v0, "onAdShow"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->e(Ljava/lang/String;)V

    goto :goto_13

    .line 561
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aU:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-eqz v0, :cond_13

    .line 562
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onAdShow()V

    .line 565
    :cond_13
    :goto_13
    return-void
.end method

.method protected V()Z
    .registers 3

    .line 341
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->T:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->j(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public W()V
    .registers 2

    .line 570
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 571
    const-string v0, "onAdVideoBarClick"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->e(Ljava/lang/String;)V

    goto :goto_13

    .line 573
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aU:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-eqz v0, :cond_13

    .line 574
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onAdVideoBarClick()V

    .line 577
    :cond_13
    :goto_13
    return-void
.end method

.method public X()V
    .registers 2

    .line 608
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aW:Z

    if-eqz v0, :cond_5

    .line 609
    return-void

    .line 611
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aW:Z

    .line 613
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 614
    const-string v0, "onAdClose"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->e(Ljava/lang/String;)V

    goto :goto_1b

    .line 616
    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aU:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-eqz v0, :cond_1b

    .line 617
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onAdClose()V

    .line 620
    :cond_1b
    :goto_1b
    return-void
.end method

.method protected Y()V
    .registers 2

    .line 681
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 682
    const-string v0, "onVideoComplete"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->e(Ljava/lang/String;)V

    goto :goto_13

    .line 684
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aU:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-eqz v0, :cond_13

    .line 685
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onVideoComplete()V

    .line 688
    :cond_13
    :goto_13
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .registers 6

    .line 547
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 548
    const-string p1, "onAdVideoBarClick"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->e(Ljava/lang/String;)V

    goto :goto_13

    .line 550
    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aU:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-eqz p1, :cond_13

    .line 551
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;->onAdVideoBarClick()V

    .line 554
    :cond_13
    :goto_13
    return-void
.end method

.method public a(JZ)Z
    .registers 19

    .line 346
    move-object v0, p0

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v1, :cond_12

    .line 347
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/b;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->e:Landroid/content/Context;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->o:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 349
    :cond_12
    nop

    .line 350
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->af:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_29

    .line 351
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 352
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->af:Ljava/lang/String;

    const-string v4, "rit_scene"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 350
    :cond_29
    move-object v1, v2

    .line 354
    :goto_2a
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/util/Map;)V

    .line 355
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;)V

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V

    .line 464
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v3

    if-eqz v3, :cond_4c

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/t;->i()Ljava/lang/String;

    move-result-object v3

    goto :goto_4d

    :cond_4c
    move-object v3, v2

    .line 465
    :goto_4d
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->x:Ljava/lang/String;

    if-eqz v4, :cond_6f

    .line 466
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->x:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6f

    .line 468
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->x:Ljava/lang/String;

    .line 469
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->z:Z

    move-object v6, v3

    goto :goto_70

    .line 472
    :cond_6f
    move-object v6, v3

    :goto_70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "videoUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wzj"

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    const/4 v4, 0x0

    if-nez v3, :cond_8e

    return v4

    .line 476
    :cond_8e
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 477
    const/16 v5, 0x12c

    iput v5, v3, Landroid/os/Message;->what:I

    .line 478
    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 479
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->I:Lcom/bytedance/sdk/openadsdk/utils/al;

    const-wide/16 v7, 0x1388

    invoke-virtual {v4, v3, v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/al;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 480
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->o:Landroid/widget/FrameLayout;

    .line 481
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v11

    iget-boolean v14, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->P:Z

    .line 480
    move-wide/from16 v12, p1

    invoke-interface/range {v5 .. v14}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    move-result v3

    .line 482
    if-eqz v3, :cond_f1

    if-nez p3, :cond_f1

    .line 483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pangolin ad show "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v5, v2}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AdEvent"

    invoke-static {v4, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->e:Landroid/content/Context;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v5, "fullscreen_interstitial_ad"

    invoke-static {v2, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/util/Map;)V

    .line 485
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->U()V

    .line 487
    :cond_f1
    return v3
.end method

.method protected e(I)V
    .registers 5

    .line 496
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->T:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->e(I)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aT:I

    .line 497
    if-gez v0, :cond_11

    .line 498
    const/4 v0, 0x5

    sput v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aT:I

    .line 500
    :cond_11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->T:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/h;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_46

    .line 501
    sget v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aT:I

    if-lt p1, v0, :cond_3c

    .line 502
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_38

    .line 503
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz p1, :cond_38

    .line 504
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 507
    :cond_38
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->T()V

    goto :goto_6c

    .line 509
    :cond_3c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz p1, :cond_6c

    .line 510
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setSkipEnable(Z)V

    goto :goto_6c

    .line 514
    :cond_46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_57

    .line 515
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_57

    .line 516
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 519
    :cond_57
    sget v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aT:I

    if-gt p1, v0, :cond_69

    .line 520
    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->d(I)V

    .line 521
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz p1, :cond_6c

    .line 522
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->c:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setSkipEnable(Z)V

    goto :goto_6c

    .line 525
    :cond_69
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->T()V

    .line 529
    :cond_6c
    :goto_6c
    return-void
.end method

.method public f(I)V
    .registers 3

    .line 581
    const/16 v0, 0x2712

    if-ne p1, v0, :cond_7

    .line 582
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->Y()V

    .line 584
    :cond_7
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 676
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 677
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aV:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 678
    return-void
.end method

.method public finish()V
    .registers 5

    .line 590
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->av:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->ar:I

    if-eqz v0, :cond_1d

    .line 591
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->O:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->ar:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->as:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/g/a;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    .line 594
    :cond_1d
    goto :goto_1f

    .line 593
    :catchall_1e
    move-exception v0

    .line 597
    :goto_1f
    :try_start_1f
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->av:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 598
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a;->b(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_35

    .line 601
    :cond_34
    goto :goto_36

    .line 600
    :catchall_35
    move-exception v0

    .line 602
    :goto_36
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->X()V

    .line 603
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->finish()V

    .line 604
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 66
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->Q()V

    .line 68
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->a(Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 70
    return-void

    .line 72
    :cond_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->b()V

    .line 73
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->P()V

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->f()V

    .line 75
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->R()V

    .line 76
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->d()V

    .line 77
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->z()V

    .line 78
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D()V

    .line 79
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz p1, :cond_32

    .line 80
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/aj;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->T:I

    .line 82
    :cond_32
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->a()V

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 650
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->onDestroy()V

    .line 651
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->X()V

    .line 652
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 653
    const-string v0, "recycleRes"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->e(Ljava/lang/String;)V

    .line 656
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aU:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    if-eqz v0, :cond_18

    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aU:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 660
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->J:Ljava/util/Map;

    if-eqz v0, :cond_42

    .line 661
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->J:Ljava/util/Map;

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

    .line 662
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 663
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->d()V

    .line 665
    :cond_41
    goto :goto_26

    .line 669
    :cond_42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 670
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->b()V

    .line 672
    :cond_55
    return-void
.end method

.method protected onPause()V
    .registers 4

    .line 637
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->onPause()V

    .line 639
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->J:Ljava/util/Map;

    if-eqz v0, :cond_2d

    .line 640
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->J:Ljava/util/Map;

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

    .line 641
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 642
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->c()V

    .line 644
    :cond_2c
    goto :goto_11

    .line 646
    :cond_2d
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 624
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->onResume()V

    .line 626
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->J:Ljava/util/Map;

    if-eqz v0, :cond_2d

    .line 627
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->J:Ljava/util/Map;

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

    .line 628
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 629
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 631
    :cond_2c
    goto :goto_11

    .line 633
    :cond_2d
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    .line 110
    if-nez p1, :cond_7

    .line 111
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aU:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    sput-object v0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->aV:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 116
    :try_start_b
    const-string v0, "material_meta"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "multi_process_meta_md5"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->u:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "video_current"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v1, :cond_30

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->w:J

    goto :goto_36

    :cond_30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->D:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->n()J

    move-result-wide v1

    :goto_36
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 119
    const-string v0, "video_cache_url"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "orientation"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v0, "is_mute"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->P:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    const-string v0, "rit_scene"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->af:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "has_show_skip_btn"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_60
    .catchall {:try_start_b .. :try_end_60} :catchall_61

    .line 125
    goto :goto_62

    .line 124
    :catchall_61
    move-exception v0

    .line 126
    :goto_62
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method s()Lcom/bytedance/sdk/openadsdk/c/p;
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    goto :goto_b

    :cond_a
    const/4 v0, 0x2

    .line 88
    :goto_b
    new-instance v1, Lcom/bytedance/sdk/openadsdk/c/p;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;->s:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-string v3, "fullscreen_interstitial_ad"

    invoke-direct {v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/c/p;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    return-object v1
.end method
