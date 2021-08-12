.class public Lcom/anythink/rewardvideo/api/ATRewardVideoAd;
.super Ljava/lang/Object;


# instance fields
.field final TAG:Ljava/lang/String;

.field mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

.field mContext:Landroid/content/Context;

.field private mInterListener:Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

.field mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

.field mPlacementId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;

    invoke-direct {v0, p0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd;)V

    iput-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mInterListener:Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    .line 163
    iput-object p2, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mContext:Landroid/content/Context;

    .line 165
    invoke-static {p1, p2}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/rewardvideo/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/anythink/rewardvideo/api/ATRewardVideoAd;)Z
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->isNeedAutoLoadAfterClose()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/anythink/rewardvideo/api/ATRewardVideoAd;Z)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load(Z)V

    return-void
.end method

.method private controlShow(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8

    .line 236
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/e$e;->k:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->o:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 238
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 239
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_51

    .line 248
    :cond_34
    nop

    .line 249
    if-nez p1, :cond_40

    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_40

    .line 250
    move-object p1, v0

    check-cast p1, Landroid/app/Activity;

    .line 253
    :cond_40
    if-nez p1, :cond_49

    .line 254
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "RewardedVideo Show Activity is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_49
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mInterListener:Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V

    .line 258
    return-void

    .line 240
    :cond_51
    :goto_51
    const-string p1, "9999"

    const-string p2, "sdk init error"

    invoke-static {p1, v4, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    .line 241
    iget-object p2, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz p2, :cond_65

    .line 242
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/common/b/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V

    .line 244
    :cond_65
    iget-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->TAG:Ljava/lang/String;

    const-string p2, "SDK init error!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method private isNeedAutoLoadAfterClose()Z
    .registers 4

    .line 180
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 181
    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 182
    invoke-virtual {v0}, Lcom/anythink/core/c/c;->w()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    invoke-virtual {v0}, Lcom/anythink/rewardvideo/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_25

    return v2

    :cond_25
    return v1

    .line 184
    :cond_26
    return v1
.end method

.method private load(Z)V
    .registers 7

    .line 174
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/e$e;->k:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->n:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/content/Context;)V

    .line 176
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mInterListener:Lcom/anythink/rewardvideo/api/ATRewardVideoExListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/content/Context;ZLcom/anythink/rewardvideo/api/ATRewardVideoListener;)V

    .line 177
    return-void
.end method


# virtual methods
.method public checkAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;
    .registers 7

    .line 209
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 210
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 211
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_3f

    .line 216
    :cond_27
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/a/a;->c(Landroid/content/Context;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->k:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->q:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-object v0

    .line 212
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "SDK init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    return-object v0
.end method

.method public isAdReady()Z
    .registers 7

    .line 196
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 197
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 198
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_3f

    .line 203
    :cond_27
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->k:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->p:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return v0

    .line 199
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "SDK init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .registers 2

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load(Z)V

    .line 171
    return-void
.end method

.method public setAdListener(Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 193
    return-void
.end method

.method public setLocalExtra(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 188
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 189
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 3

    .line 231
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 223
    nop

    .line 224
    invoke-static {p2}, Lcom/anythink/core/common/g/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 225
    goto :goto_a

    .line 224
    :cond_8
    const-string p2, ""

    .line 227
    :goto_a
    invoke-direct {p0, p1, p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    .line 228
    return-void
.end method
