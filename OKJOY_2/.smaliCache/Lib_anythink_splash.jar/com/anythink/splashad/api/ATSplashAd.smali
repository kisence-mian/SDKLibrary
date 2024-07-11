.class public Lcom/anythink/splashad/api/ATSplashAd;
.super Ljava/lang/Object;


# instance fields
.field final TAG:Ljava/lang/String;

.field loadOverTimeRunnable:Ljava/lang/Runnable;

.field mActivityWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field mAdLoadManager:Lcom/anythink/splashad/a/a;

.field mContext:Landroid/content/Context;

.field mDefaultRequestInfo:Lcom/anythink/core/api/ATMediationRequestInfo;

.field mFetchAdTimeout:I

.field mHasDismiss:Z

.field mHasReturn:Z

.field mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

.field mPlacementId:Ljava/lang/String;

.field mSelfListener:Lcom/anythink/splashad/api/ATSplashExListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationRequestInfo;",
            "Lcom/anythink/splashad/api/ATSplashAdListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;I)V

    .line 209
    invoke-virtual {p0, p4}, Lcom/anythink/splashad/api/ATSplashAd;->setLocalExtra(Ljava/util/Map;)V

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/splashad/api/ATSplashAdListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/util/Map;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .registers 11

    .line 217
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;I)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;I)V
    .registers 7

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/anythink/splashad/api/ATSplashAd$1;

    invoke-direct {v0, p0}, Lcom/anythink/splashad/api/ATSplashAd$1;-><init>(Lcom/anythink/splashad/api/ATSplashAd;)V

    iput-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mSelfListener:Lcom/anythink/splashad/api/ATSplashExListener;

    .line 153
    new-instance v0, Lcom/anythink/splashad/api/ATSplashAd$2;

    invoke-direct {v0, p0}, Lcom/anythink/splashad/api/ATSplashAd$2;-><init>(Lcom/anythink/splashad/api/ATSplashAd;)V

    iput-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->loadOverTimeRunnable:Ljava/lang/Runnable;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mContext:Landroid/content/Context;

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mHasDismiss:Z

    .line 223
    iput-object p2, p0, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    .line 224
    iput-object p4, p0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 225
    iput-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd;->mDefaultRequestInfo:Lcom/anythink/core/api/ATMediationRequestInfo;

    .line 227
    iput p5, p0, Lcom/anythink/splashad/api/ATSplashAd;->mFetchAdTimeout:I

    .line 229
    instance-of p3, p1, Landroid/app/Activity;

    if-eqz p3, :cond_3a

    .line 230
    new-instance p3, Ljava/lang/ref/WeakReference;

    move-object p4, p1

    check-cast p4, Landroid/app/Activity;

    invoke-direct {p3, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    .line 234
    :cond_3a
    iget-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd;->mDefaultRequestInfo:Lcom/anythink/core/api/ATMediationRequestInfo;

    if-eqz p3, :cond_43

    .line 235
    const-string p4, "4"

    invoke-virtual {p3, p4}, Lcom/anythink/core/api/ATMediationRequestInfo;->setFormat(Ljava/lang/String;)V

    .line 238
    :cond_43
    nop

    .line 1049
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;)Lcom/anythink/core/common/d;

    move-result-object p3

    .line 1050
    if-eqz p3, :cond_52

    instance-of p4, p3, Lcom/anythink/splashad/a/a;

    if-nez p4, :cond_5e

    .line 1051
    :cond_52
    new-instance p3, Lcom/anythink/splashad/a/a;

    invoke-direct {p3, p1, p2}, Lcom/anythink/splashad/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1052
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;Lcom/anythink/core/common/d;)V

    .line 1054
    :cond_5e
    invoke-virtual {p3, p1}, Lcom/anythink/core/common/d;->a(Landroid/content/Context;)V

    .line 1055
    check-cast p3, Lcom/anythink/splashad/a/a;

    .line 238
    iput-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .registers 10

    .line 213
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;I)V

    .line 214
    return-void
.end method

.method public static checkSplashDefaultConfigList(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 335
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/anythink/core/common/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 336
    return-void
.end method


# virtual methods
.method public checkAdStatus()Lcom/anythink/core/api/ATAdStatusInfo;
    .registers 7

    .line 291
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 292
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 293
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_3f

    .line 298
    :cond_27
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/splashad/a/a;->c(Landroid/content/Context;)Lcom/anythink/core/api/ATAdStatusInfo;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->k:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->q:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATAdStatusInfo;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-object v0

    .line 294
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->TAG:Ljava/lang/String;

    const-string v1, "SDK init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Lcom/anythink/core/api/ATAdStatusInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/anythink/core/api/ATAdStatusInfo;-><init>(ZZLcom/anythink/core/api/ATAdInfo;)V

    return-object v0
.end method

.method public isAdReady()Z
    .registers 7

    .line 278
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 279
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 280
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_3f

    .line 285
    :cond_27
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/anythink/splashad/a/a;->b(Landroid/content/Context;)Z

    move-result v0

    .line 286
    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->k:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->p:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return v0

    .line 281
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->TAG:Ljava/lang/String;

    const-string v1, "SDK init error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd()V
    .registers 6

    .line 253
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/e$e;->m:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->n:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mHasReturn:Z

    .line 259
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$3;

    invoke-direct {v1, p0}, Lcom/anythink/splashad/api/ATSplashAd$3;-><init>(Lcom/anythink/splashad/api/ATSplashAd;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 275
    return-void
.end method

.method public onDestory()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    if-eqz v0, :cond_7

    .line 329
    invoke-virtual {v0}, Lcom/anythink/splashad/a/a;->g()V

    .line 332
    :cond_7
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

    .line 249
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 250
    return-void
.end method

.method public show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 8

    .line 305
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mPlacementId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/common/b/e$e;->k:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/common/b/e$e;->o:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/common/b/e$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 307
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 308
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_4f

    .line 314
    :cond_34
    if-nez p1, :cond_3d

    .line 315
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->TAG:Ljava/lang/String;

    const-string v1, "Splash Activity is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_3d
    if-nez p2, :cond_47

    .line 319
    iget-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd;->TAG:Ljava/lang/String;

    const-string p2, "Splash Container is null."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 323
    :cond_47
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mSelfListener:Lcom/anythink/splashad/api/ATSplashExListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/anythink/splashad/a/a;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/anythink/splashad/api/ATSplashAdListener;)V

    .line 324
    return-void

    .line 309
    :cond_4f
    :goto_4f
    const-string p1, "9999"

    const-string p2, "sdk init error"

    invoke-static {p1, v4, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    .line 310
    iget-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd;->TAG:Ljava/lang/String;

    const-string p2, "SDK init error!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method
