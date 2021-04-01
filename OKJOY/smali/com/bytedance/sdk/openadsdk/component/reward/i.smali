.class Lcom/bytedance/sdk/openadsdk/component/reward/i;
.super Ljava/lang/Object;
.source "TTFullScreenVideoAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private final c:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

.field private e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Z

.field private l:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->f:Z

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->k:Z

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 61
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->getInteractionType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_29

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-string v2, "fullscreen_interstitial_ad"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 65
    :cond_29
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->g:Z

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ae()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->l:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)V
    .registers 5

    .prologue
    .line 229
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 259
    :goto_6
    return-void

    .line 232
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/i;I)V

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a;->a(Ljava/lang/Runnable;I)V

    goto :goto_6
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-object v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 81
    :goto_8
    return-void

    .line 79
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->g:Z

    .line 80
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->h:Ljava/lang/String;

    goto :goto_8
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->k:Z

    .line 73
    return-void
.end method

.method public getFullVideoAdType()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 218
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v1, :cond_7

    const/4 v0, -0x1

    .line 224
    :cond_6
    :goto_6
    return v0

    .line 219
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v1

    if-ne v1, v0, :cond_19

    .line 220
    const/4 v0, 0x2

    goto :goto_6

    .line 221
    :cond_19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->q()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c()I

    move-result v1

    if-eqz v1, :cond_6

    .line 224
    :cond_29
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getInteractionType()I
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_6

    .line 99
    const/4 v0, -0x1

    .line 101
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

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
    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_b

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->X()Ljava/util/Map;

    move-result-object v0

    .line 213
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_9

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 94
    :cond_9
    return-void
.end method

.method public setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V
    .registers 3

    .prologue
    .line 85
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(I)V

    .line 87
    return-void
.end method

.method public setShowDownLoadBar(Z)V
    .registers 2

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->f:Z

    .line 206
    return-void
.end method

.method public showFullScreenVideoAd(Landroid/app/Activity;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 106
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 107
    const-string v0, "TTFullScreenVideoAdImpl"

    const-string v1, "showFullScreenVideoAd error1: activity is finishing"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_10
    :goto_10
    return-void

    .line 110
    :cond_11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2a

    .line 111
    const-string v0, "TTFullScreenVideoAdImpl"

    const-string v1, "showFullScreenVideoAd error2: not main looper"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u4e0d\u80fd\u5728\u5b50\u7ebf\u7a0b\u8c03\u7528 TTFullScreenVideoAd.showFullScreenVideoAd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 123
    if-nez p1, :cond_108

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    .line 124
    :goto_48
    if-nez v0, :cond_4e

    .line 125
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    .line 127
    :cond_4e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v1

    if-eqz v1, :cond_10b

    .line 128
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    :goto_5d
    if-nez p1, :cond_64

    .line 133
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 135
    :cond_64
    const-string v2, "show_download_bar"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->f:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    const-string v2, "orientation"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getOrientation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v2, "is_verity_playable"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->k:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 139
    const-string v2, "rit_scene"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :cond_8c
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->g:Z

    if-eqz v2, :cond_97

    .line 143
    const-string v2, "video_cache_url"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :cond_97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    if-eqz v2, :cond_114

    .line 147
    const-string v2, "multi_process_materialmeta"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->ae()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v2, "multi_process_meta_md5"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    :goto_b3
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/i$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/i$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/i;)V

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)V

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 172
    :try_start_c7
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v1, "rit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Ljava/lang/String;)V

    .line 176
    if-eqz v1, :cond_10

    .line 177
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->g:Z

    if-eqz v0, :cond_13a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13a

    .line 178
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    :try_end_103
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_103} :catch_105

    goto/16 :goto_10

    .line 184
    :catch_105
    move-exception v0

    goto/16 :goto_10

    :cond_108
    move-object v0, p1

    .line 123
    goto/16 :goto_48

    .line 130
    :cond_10b
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenVideoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_5d

    .line 150
    :cond_114
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/u;->g()V

    .line 151
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 152
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 153
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 155
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    goto/16 :goto_b3

    .line 181
    :cond_13a
    :try_start_13a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_13a .. :try_end_143} :catch_105

    goto/16 :goto_10
.end method

.method public showFullScreenVideoAd(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 191
    if-nez p2, :cond_a

    .line 192
    const-string v0, "TTFullScreenVideoAdImpl"

    const-string v1, "The param ritScenes can not be null!"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_9
    return-void

    .line 195
    :cond_a
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    if-ne p2, v0, :cond_14

    .line 196
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->i:Ljava/lang/String;

    .line 200
    :goto_10
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->showFullScreenVideoAd(Landroid/app/Activity;)V

    goto :goto_9

    .line 198
    :cond_14
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->getScenesName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->i:Ljava/lang/String;

    goto :goto_10
.end method
