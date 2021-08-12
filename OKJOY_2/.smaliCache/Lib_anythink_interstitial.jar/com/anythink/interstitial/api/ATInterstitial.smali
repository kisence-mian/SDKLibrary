.class public Lcom/anythink/interstitial/api/ATInterstitial;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mAdLoadManager:Lcom/anythink/interstitial/a/a;

.field public mContext:Landroid/content/Context;

.field private mInterListener:Lcom/anythink/interstitial/api/ATInterstitialExListener;

.field public mInterstitialListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

.field public mPlacementId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/interstitial/api/ATInterstitial;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/anythink/interstitial/api/ATInterstitial$1;

    invoke-direct {v0, p0}, Lcom/anythink/interstitial/api/ATInterstitial$1;-><init>(Lcom/anythink/interstitial/api/ATInterstitial;)V

    iput-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterListener:Lcom/anythink/interstitial/api/ATInterstitialExListener;

    .line 164
    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mPlacementId:Ljava/lang/String;

    .line 167
    invoke-static {p1, p2}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/interstitial/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/anythink/interstitial/api/ATInterstitial;)Z
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/anythink/interstitial/api/ATInterstitial;->isNeedAutoLoadAfterClose()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/anythink/interstitial/api/ATInterstitial;Z)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial;->load(Z)V

    return-void
.end method

.method private controlShow(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8

    .line 247
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/e$e;->j:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->o:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 249
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 250
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_51

    .line 257
    :cond_34
    nop

    .line 258
    if-nez p1, :cond_40

    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_40

    .line 259
    move-object p1, v0

    check-cast p1, Landroid/app/Activity;

    .line 262
    :cond_40
    if-nez p1, :cond_49

    .line 263
    sget-object v0, Lcom/anythink/interstitial/api/ATInterstitial;->TAG:Ljava/lang/String;

    const-string v1, "Interstitial Show Activity is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_49
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterListener:Lcom/anythink/interstitial/api/ATInterstitialExListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/interstitial/a/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    .line 275
    return-void

    .line 251
    :cond_51
    :goto_51
    sget-object p1, Lcom/anythink/interstitial/api/ATInterstitial;->TAG:Ljava/lang/String;

    const-string p2, "Show error: SDK init error!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method private isNeedAutoLoadAfterClose()Z
    .registers 4

    .line 186
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 187
    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 188
    invoke-virtual {v0}, Lcom/anythink/core/c/c;->w()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    invoke-virtual {v0}, Lcom/anythink/interstitial/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_25

    return v2

    :cond_25
    return v1

    .line 190
    :cond_26
    return v1
.end method

.method private load(Z)V
    .registers 7

    .line 180
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/e$e;->j:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->n:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;)V

    .line 182
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterListener:Lcom/anythink/interstitial/api/ATInterstitialExListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;ZLcom/anythink/interstitial/api/ATInterstitialListener;)V

    .line 183
    return-void
.end method


# virtual methods
.method public checkAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;
    .registers 7

    .line 220
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 221
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 222
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_3f

    .line 227
    :cond_27
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/a/a;->c(Landroid/content/Context;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->j:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->q:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-object v0

    .line 223
    :cond_3f
    :goto_3f
    sget-object v0, Lcom/anythink/interstitial/api/ATInterstitial;->TAG:Ljava/lang/String;

    const-string v1, "SDK init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    return-object v0
.end method

.method public isAdReady()Z
    .registers 7

    .line 200
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 201
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 202
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_3f

    .line 214
    :cond_27
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->j:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->p:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return v0

    .line 203
    :cond_3f
    :goto_3f
    sget-object v0, Lcom/anythink/interstitial/api/ATInterstitial;->TAG:Ljava/lang/String;

    const-string v1, "SDK init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public load()V
    .registers 2

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/interstitial/api/ATInterstitial;->load(Z)V

    .line 177
    return-void
.end method

.method public setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterstitialListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 196
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

    .line 172
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 173
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 3

    .line 242
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/anythink/interstitial/api/ATInterstitial;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .line 234
    nop

    .line 235
    invoke-static {p2}, Lcom/anythink/core/common/g/g;->c(Ljava/lang/String;)Z

    .line 236
    nop

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/anythink/interstitial/api/ATInterstitial;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    .line 239
    return-void
.end method
