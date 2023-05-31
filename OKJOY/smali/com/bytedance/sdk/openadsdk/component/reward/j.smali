.class Lcom/bytedance/sdk/openadsdk/component/reward/j;
.super Ljava/lang/Object;
.source "TTRewardVideoAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private final c:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

.field private e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->f:Z

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 61
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->getInteractionType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_27

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v2, "rewarded_video"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 66
    :cond_27
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->g:Z

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ae()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->k:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)V
    .registers 5

    .prologue
    .line 230
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 260
    :goto_6
    return-void

    .line 233
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/j$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/j;I)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;I)V

    goto :goto_6
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    return-object v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/j;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 78
    :goto_8
    return-void

    .line 76
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->g:Z

    .line 77
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->h:Ljava/lang/String;

    goto :goto_8
.end method

.method public getInteractionType()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_6

    .line 96
    const/4 v0, -0x1

    .line 98
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    goto :goto_5
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_b

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->X()Ljava/util/Map;

    move-result-object v0

    .line 212
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getRewardVideoAdType()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 108
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v1, :cond_7

    const/4 v0, -0x1

    .line 114
    :cond_6
    :goto_6
    return v0

    .line 109
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v1

    if-ne v1, v0, :cond_19

    .line 110
    const/4 v0, 0x2

    goto :goto_6

    .line 111
    :cond_19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    :cond_29
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_9

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 91
    :cond_9
    return-void
.end method

.method public setRewardAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V
    .registers 3

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a(I)V

    .line 84
    return-void
.end method

.method public setShowDownLoadBar(Z)V
    .registers 2

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->f:Z

    .line 104
    return-void
.end method

.method public showRewardVideoAd(Landroid/app/Activity;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 120
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 121
    const-string v0, "TTRewardVideoAdImpl"

    const-string v1, "showRewardVideoAd error1: activity is finishing"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_10
    :goto_10
    return-void

    .line 124
    :cond_11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2a

    .line 125
    const-string v0, "TTRewardVideoAdImpl"

    const-string v1, "showRewardVideoAd error2: not main looper"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u4e0d\u80fd\u5728\u5b50\u7ebf\u7a0b\u8c03\u7528 TTRewardVideoAd.showRewardVideoAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 137
    if-nez p1, :cond_12d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a:Landroid/content/Context;

    .line 138
    :goto_48
    if-nez v0, :cond_4e

    .line 139
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    .line 141
    :cond_4e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v1

    if-eqz v1, :cond_130

    .line 142
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    :goto_5d
    if-nez p1, :cond_64

    .line 147
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    :cond_64
    const-string v2, "reward_name"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRewardName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v2, "reward_amount"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRewardAmount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string v2, "media_extra"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediaExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v2, "show_download_bar"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->f:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    const-string v2, "orientation"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getOrientation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 156
    const-string v2, "rit_scene"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    :cond_b1
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->g:Z

    if-eqz v2, :cond_bc

    .line 159
    const-string v2, "video_cache_url"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    :cond_bc
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    if-eqz v2, :cond_139

    .line 163
    const-string v2, "multi_process_materialmeta"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ae()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v2, "multi_process_meta_md5"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :goto_d8
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/j$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/j$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/j;)V

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)V

    .line 188
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 190
    :try_start_ec
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    const-string v1, "rit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Ljava/lang/String;)V

    .line 194
    if-eqz v1, :cond_10

    .line 195
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->g:Z

    if-eqz v0, :cond_15f

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15f

    .line 196
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    :try_end_128
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_128} :catch_12a

    goto/16 :goto_10

    .line 202
    :catch_12a
    move-exception v0

    goto/16 :goto_10

    :cond_12d
    move-object v0, p1

    .line 137
    goto/16 :goto_48

    .line 144
    :cond_130
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_5d

    .line 166
    :cond_139
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/u;->g()V

    .line 167
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 168
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;)V

    .line 169
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 171
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->d:Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd$RewardAdInteractionListener;

    goto/16 :goto_d8

    .line 199
    :cond_15f
    :try_start_15f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    :try_end_168
    .catch Ljava/lang/Throwable; {:try_start_15f .. :try_end_168} :catch_12a

    goto/16 :goto_10
.end method

.method public showRewardVideoAd(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 217
    if-nez p2, :cond_a

    .line 218
    const-string v0, "TTRewardVideoAdImpl"

    const-string v1, "The param ritScenes can not be null!"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_9
    return-void

    .line 221
    :cond_a
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    if-ne p2, v0, :cond_14

    .line 222
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->i:Ljava/lang/String;

    .line 226
    :goto_10
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/j;->showRewardVideoAd(Landroid/app/Activity;)V

    goto :goto_9

    .line 224
    :cond_14
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->getScenesName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/j;->i:Ljava/lang/String;

    goto :goto_10
.end method
