.class public Lcom/anythink/rewardvideo/api/ATRewardVideoAd;
.super Ljava/lang/Object;


# instance fields
.field final TAG:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

.field private mInterListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

.field mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

.field mPlacementId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;

    invoke-direct {v0, p0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd$1;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoAd;)V

    iput-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mInterListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 139
    iput-object p2, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mActivity:Landroid/app/Activity;

    .line 141
    invoke-static {p1, p2}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/anythink/rewardvideo/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/anythink/rewardvideo/api/ATRewardVideoAd;)Z
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->isNeedAutoLoadAfterClose()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/anythink/rewardvideo/api/ATRewardVideoAd;Z)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load(Z)V

    return-void
.end method

.method private controlShow(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 216
    .line 217
    if-nez p1, :cond_4

    .line 218
    iget-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mActivity:Landroid/app/Activity;

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->k:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->o:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 223
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 224
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 225
    :cond_37
    const-string v0, "9999"

    const-string v1, ""

    const-string v2, "sdk init error"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    if-eqz v1, :cond_4f

    .line 227
    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/anythink/core/api/ATAdInfo;->fromAdapter(Lcom/anythink/core/b/a/b;)Lcom/anythink/core/api/ATAdInfo;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/anythink/rewardvideo/api/ATRewardVideoListener;->onRewardedVideoAdPlayFailed(Lcom/anythink/core/api/AdError;Lcom/anythink/core/api/ATAdInfo;)V

    .line 229
    :cond_4f
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "SDK init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_56
    return-void

    .line 233
    :cond_57
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    new-instance v1, Lcom/anythink/rewardvideo/a/d;

    iget-object v2, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mInterListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-direct {v1, v2}, Lcom/anythink/rewardvideo/a/d;-><init>(Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/rewardvideo/a/d;)V

    goto :goto_56
.end method

.method private isNeedAutoLoadAfterClose()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 159
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v2

    .line 160
    if-eqz v2, :cond_27

    .line 161
    invoke-virtual {v2}, Lcom/anythink/core/c/c;->q()I

    move-result v2

    if-ne v2, v0, :cond_25

    iget-object v2, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    invoke-virtual {v2}, Lcom/anythink/rewardvideo/a/a;->e()Z

    move-result v2

    if-nez v2, :cond_25

    .line 163
    :goto_24
    return v0

    :cond_25
    move v0, v1

    .line 161
    goto :goto_24

    :cond_27
    move v0, v1

    .line 163
    goto :goto_24
.end method

.method private load(Z)V
    .registers 7

    .prologue
    .line 153
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->k:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->n:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/content/Context;)V

    .line 155
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mInterListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/rewardvideo/a/a;->a(Landroid/app/Activity;ZLcom/anythink/rewardvideo/api/ATRewardVideoListener;)V

    .line 156
    return-void
.end method


# virtual methods
.method public addSetting(ILcom/anythink/core/api/ATMediationSetting;)V
    .registers 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/rewardvideo/a/a;->a(ILcom/anythink/core/api/ATMediationSetting;)V

    .line 168
    return-void
.end method

.method public clean()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    return-void
.end method

.method public isAdReady()Z
    .registers 7

    .prologue
    .line 175
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 176
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 177
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 178
    :cond_26
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->TAG:Ljava/lang/String;

    const-string v1, "SDK init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x0

    .line 184
    :goto_2e
    return v0

    .line 182
    :cond_2f
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anythink/rewardvideo/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->k:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d$e;->p:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public load()V
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->load(Z)V

    .line 150
    return-void
.end method

.method public onDestory()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    return-void
.end method

.method public onPause()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    return-void
.end method

.method public onResume()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    return-void
.end method

.method public setAdListener(Lcom/anythink/rewardvideo/api/ATRewardVideoListener;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mListener:Lcom/anythink/rewardvideo/api/ATRewardVideoListener;

    .line 172
    return-void
.end method

.method public setCustomExtra(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->mAdLoadManager:Lcom/anythink/rewardvideo/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/rewardvideo/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 212
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 200
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 192
    const-string v0, ""

    .line 193
    invoke-static {p2}, Lcom/anythink/core/b/g/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 196
    :goto_8
    invoke-direct {p0, p1, p2}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    .line 197
    return-void

    :cond_c
    move-object p2, v0

    goto :goto_8
.end method

.method public show(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 204
    const-string v0, ""

    .line 205
    invoke-static {p1}, Lcom/anythink/core/b/g/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 208
    :goto_8
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/anythink/rewardvideo/api/ATRewardVideoAd;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    .line 209
    return-void

    :cond_d
    move-object p1, v0

    goto :goto_8
.end method
