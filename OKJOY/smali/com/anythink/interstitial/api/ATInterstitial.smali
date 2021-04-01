.class public Lcom/anythink/interstitial/api/ATInterstitial;
.super Ljava/lang/Object;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field mAdLoadManager:Lcom/anythink/interstitial/a/a;

.field public mContext:Landroid/content/Context;

.field private mInterListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

.field public mInterstitialListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

.field public mUnitid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/anythink/interstitial/api/ATInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/interstitial/api/ATInterstitial;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/anythink/interstitial/api/ATInterstitial$1;

    invoke-direct {v0, p0}, Lcom/anythink/interstitial/api/ATInterstitial$1;-><init>(Lcom/anythink/interstitial/api/ATInterstitial;)V

    iput-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 153
    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mUnitid:Ljava/lang/String;

    .line 156
    invoke-static {p1, p2}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/interstitial/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/anythink/interstitial/api/ATInterstitial;)Z
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/anythink/interstitial/api/ATInterstitial;->isNeedAutoLoadAfterClose()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/anythink/interstitial/api/ATInterstitial;Z)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/anythink/interstitial/api/ATInterstitial;->load(Z)V

    return-void
.end method

.method private controlShow(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 237
    .line 238
    if-nez p1, :cond_4

    .line 239
    iget-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    .line 242
    :cond_4
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mUnitid:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->j:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->o:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 244
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 245
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 246
    :cond_37
    sget-object v0, Lcom/anythink/interstitial/api/ATInterstitial;->TAG:Ljava/lang/String;

    const-string v1, "Show error: SDK init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_3e
    return-void

    .line 260
    :cond_3f
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    new-instance v1, Lcom/anythink/interstitial/a/c;

    iget-object v2, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-direct {v1, v2}, Lcom/anythink/interstitial/a/c;-><init>(Lcom/anythink/interstitial/api/ATInterstitialListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/interstitial/a/c;)V

    goto :goto_3e
.end method

.method private isNeedAutoLoadAfterClose()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 179
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mUnitid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v2

    .line 180
    if-eqz v2, :cond_27

    .line 181
    invoke-virtual {v2}, Lcom/anythink/core/c/c;->q()I

    move-result v2

    if-ne v2, v0, :cond_25

    iget-object v2, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    invoke-virtual {v2}, Lcom/anythink/interstitial/a/a;->e()Z

    move-result v2

    if-nez v2, :cond_25

    .line 183
    :goto_24
    return v0

    :cond_25
    move v0, v1

    .line 181
    goto :goto_24

    :cond_27
    move v0, v1

    .line 183
    goto :goto_24
.end method

.method private load(Z)V
    .registers 7

    .prologue
    .line 173
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mUnitid:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->j:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->n:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;)V

    .line 175
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

    invoke-virtual {v0, v1, p1, v2}, Lcom/anythink/interstitial/a/a;->a(Landroid/content/Context;ZLcom/anythink/interstitial/api/ATInterstitialListener;)V

    .line 176
    return-void
.end method


# virtual methods
.method public addSetting(ILcom/anythink/core/api/ATMediationSetting;)V
    .registers 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/anythink/interstitial/a/a;->a(ILcom/anythink/core/api/ATMediationSetting;)V

    .line 162
    return-void
.end method

.method public clean()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    return-void
.end method

.method public isAdReady()Z
    .registers 7

    .prologue
    .line 193
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 194
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 195
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 196
    :cond_26
    sget-object v0, Lcom/anythink/interstitial/api/ATInterstitial;->TAG:Ljava/lang/String;

    const-string v1, "SDK init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    .line 209
    :goto_2e
    return v0

    .line 207
    :cond_2f
    iget-object v0, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mAdLoadManager:Lcom/anythink/interstitial/a/a;

    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/interstitial/a/a;->c(Landroid/content/Context;)Z

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mUnitid:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->j:Ljava/lang/String;

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
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/interstitial/api/ATInterstitial;->load(Z)V

    .line 170
    return-void
.end method

.method public onDestory()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    return-void
.end method

.method public onPause()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    return-void
.end method

.method public onResume()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    return-void
.end method

.method public setAdListener(Lcom/anythink/interstitial/api/ATInterstitialListener;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/anythink/interstitial/api/ATInterstitial;->mInterstitialListener:Lcom/anythink/interstitial/api/ATInterstitialListener;

    .line 189
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
    .line 166
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 233
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/anythink/interstitial/api/ATInterstitial;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 221
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/anythink/interstitial/api/ATInterstitial;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 213
    .line 214
    invoke-static {p2}, Lcom/anythink/core/b/g/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/anythink/interstitial/api/ATInterstitial;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 225
    .line 226
    invoke-static {p1}, Lcom/anythink/core/b/g/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 229
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/anythink/interstitial/api/ATInterstitial;->controlShow(Landroid/app/Activity;Ljava/lang/String;)V

    .line 230
    return-void
.end method
