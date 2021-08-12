.class Lcom/bytedance/sdk/openadsdk/component/reward/i;
.super Ljava/lang/Object;
.source "TTFullScreenVideoAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/d/l;

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
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 6

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->f:Z

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->k:Z

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 64
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->getInteractionType()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_25

    .line 66
    const-string p3, "fullscreen_interstitial_ad"

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 68
    :cond_25
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->g:Z

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->hashCode()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->l:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private a(I)V
    .registers 3

    .line 248
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 249
    return-void

    .line 251
    :cond_7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/i$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/i;I)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/j/e;->b(Ljava/lang/Runnable;I)V

    .line 278
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->k:Z

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Landroid/content/Context;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/component/reward/i;)Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->l:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 80
    return-void

    .line 82
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->g:Z

    .line 83
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->h:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->k:Z

    .line 76
    return-void
.end method

.method public getFullVideoAdType()I
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    .line 238
    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 239
    const/4 v0, 0x2

    return v0

    .line 240
    :cond_17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->C()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->i()I

    move-result v0

    if-nez v0, :cond_28

    .line 241
    return v1

    .line 243
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method public getInteractionType()I
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_6

    .line 102
    const/4 v0, -0x1

    return v0

    .line 104
    :cond_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result v0

    return v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_9

    .line 230
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->as()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 232
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_7

    .line 95
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 97
    :cond_7
    return-void
.end method

.method public setFullScreenVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 89
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a(I)V

    .line 90
    return-void
.end method

.method public setShowDownLoadBar(Z)V
    .registers 2

    .line 224
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->f:Z

    .line 225
    return-void
.end method

.method public showFullScreenVideoAd(Landroid/app/Activity;)V
    .registers 6

    .line 109
    const-string v0, "TTFullScreenVideoAdImpl"

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 110
    const-string p1, "showFullScreenVideoAd error1: activity is finishing"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void

    .line 113
    :cond_10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_13f

    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 119
    return-void

    .line 121
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_13e

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->R()Lcom/bytedance/sdk/openadsdk/core/d/t;

    move-result-object v0

    if-nez v0, :cond_35

    goto/16 :goto_13e

    .line 126
    :cond_35
    if-nez p1, :cond_3a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    goto :goto_3b

    :cond_3a
    move-object v0, p1

    .line 127
    :goto_3b
    if-nez v0, :cond_41

    .line 128
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    .line 130
    :cond_41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_52

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenExpressVideoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_59

    .line 133
    :cond_52
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bytedance/sdk/openadsdk/activity/base/TTFullScreenVideoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    :goto_59
    if-nez p1, :cond_60

    .line 136
    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    :cond_60
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->f:Z

    const-string v2, "show_download_bar"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getOrientation()I

    move-result p1

    const-string v2, "orientation"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->k:Z

    const-string v2, "is_verity_playable"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 141
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->i:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_88

    .line 142
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->i:Ljava/lang/String;

    const-string v2, "rit_scene"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    :cond_88
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->g:Z

    if-eqz p1, :cond_93

    .line 146
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->h:Ljava/lang/String;

    const-string v2, "video_cache_url"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :cond_93
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/k;->e(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_be

    .line 151
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aF()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "multi_process_materialmeta"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->l:Ljava/lang/String;

    const-string v3, "multi_process_meta_md5"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e2

    .line 154
    :cond_be
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/u;->g()V

    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 156
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V

    .line 157
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/u;->a()Lcom/bytedance/sdk/openadsdk/core/u;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->e:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/u;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 159
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->d:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 162
    :goto_e2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/i$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/i$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/i;)V

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    .line 189
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13d

    .line 191
    :try_start_f6
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 192
    const-string v0, "rit"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Ljava/lang/String;)V

    .line 195
    if-eqz v0, :cond_13b

    .line 196
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->g:Z

    if-eqz p1, :cond_132

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_132

    .line 197
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_13b

    .line 200
    :cond_132
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    :try_end_13b
    .catchall {:try_start_f6 .. :try_end_13b} :catchall_13c

    .line 204
    :cond_13b
    :goto_13b
    goto :goto_13d

    .line 203
    :catchall_13c
    move-exception p1

    .line 206
    :cond_13d
    :goto_13d
    return-void

    .line 123
    :cond_13e
    :goto_13e
    return-void

    .line 114
    :cond_13f
    const-string p1, "showFullScreenVideoAd error2: not main looper"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\u4e0d\u80fd\u5728\u5b50\u7ebf\u7a0b\u8c03\u7528 TTFullScreenVideoAd.showFullScreenVideoAd"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showFullScreenVideoAd(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .registers 5

    .line 210
    if-nez p2, :cond_a

    .line 211
    const-string p1, "TTFullScreenVideoAdImpl"

    const-string p2, "The param ritScenes can not be null!"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void

    .line 214
    :cond_a
    sget-object v0, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->CUSTOMIZE_SCENES:Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;

    if-ne p2, v0, :cond_11

    .line 215
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->i:Ljava/lang/String;

    goto :goto_17

    .line 217
    :cond_11
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;->getScenesName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/i;->i:Ljava/lang/String;

    .line 219
    :goto_17
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/i;->showFullScreenVideoAd(Landroid/app/Activity;)V

    .line 220
    return-void
.end method
