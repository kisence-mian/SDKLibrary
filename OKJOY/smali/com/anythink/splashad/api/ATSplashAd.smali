.class public Lcom/anythink/splashad/api/ATSplashAd;
.super Ljava/lang/Object;


# instance fields
.field final TAG:Ljava/lang/String;

.field loadOverTimeRunnable:Ljava/lang/Runnable;

.field mAdLoadManager:Lcom/anythink/splashad/a/a;

.field mContainer:Landroid/view/ViewGroup;

.field mHasDismiss:Z

.field mHasReturn:Z

.field mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

.field mSelfListener:Lcom/anythink/splashad/api/ATSplashAdListener;

.field mUnitId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;J)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Lcom/anythink/splashad/api/ATSplashAdListener;",
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
    .line 141
    const-wide/16 v6, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;J)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;Ljava/util/Map;J)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Lcom/anythink/splashad/api/ATSplashAdListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/anythink/splashad/api/ATSplashAd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;J)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/anythink/splashad/api/ATSplashAdListener;)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/anythink/splashad/api/ATSplashAd$1;

    invoke-direct {v0, p0}, Lcom/anythink/splashad/api/ATSplashAd$1;-><init>(Lcom/anythink/splashad/api/ATSplashAd;)V

    iput-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mSelfListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 121
    new-instance v0, Lcom/anythink/splashad/api/ATSplashAd$2;

    invoke-direct {v0, p0}, Lcom/anythink/splashad/api/ATSplashAd$2;-><init>(Lcom/anythink/splashad/api/ATSplashAd;)V

    iput-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->loadOverTimeRunnable:Ljava/lang/Runnable;

    .line 161
    if-eqz p1, :cond_20

    if-nez p2, :cond_37

    .line 162
    :cond_20
    if-eqz p4, :cond_2f

    .line 163
    const-string v0, "9999"

    const-string v1, ""

    const-string v2, "activity, constainer could not be null!"

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/anythink/splashad/api/ATSplashAdListener;->onNoAdError(Lcom/anythink/core/api/AdError;)V

    .line 165
    :cond_2f
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->TAG:Ljava/lang/String;

    const-string v1, "activity, constainer could not be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_36
    return-void

    .line 170
    :cond_37
    iput-object p2, p0, Lcom/anythink/splashad/api/ATSplashAd;->mContainer:Landroid/view/ViewGroup;

    .line 171
    iput-boolean v3, p0, Lcom/anythink/splashad/api/ATSplashAd;->mHasDismiss:Z

    .line 172
    iput-object p3, p0, Lcom/anythink/splashad/api/ATSplashAd;->mUnitId:Ljava/lang/String;

    .line 173
    iput-object p4, p0, Lcom/anythink/splashad/api/ATSplashAd;->mListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    .line 175
    invoke-static {p1, p3}, Lcom/anythink/splashad/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/anythink/splashad/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    .line 176
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/anythink/splashad/api/ATSplashAd;->mSelfListener:Lcom/anythink/splashad/api/ATSplashAdListener;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/splashad/a/a;->a(Landroid/view/ViewGroup;Lcom/anythink/splashad/api/ATSplashAdListener;)V

    .line 178
    iput-boolean v3, p0, Lcom/anythink/splashad/api/ATSplashAd;->mHasReturn:Z

    .line 182
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/splashad/api/ATSplashAd$3;-><init>(Lcom/anythink/splashad/api/ATSplashAd;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 191
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mUnitId:Ljava/lang/String;

    sget-object v1, Lcom/anythink/core/b/a/d$e;->m:Ljava/lang/String;

    sget-object v2, Lcom/anythink/core/b/a/d$e;->n:Ljava/lang/String;

    sget-object v3, Lcom/anythink/core/b/a/d$e;->h:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/anythink/core/api/ATSDK;->apiLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method


# virtual methods
.method public onDestory()V
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    if-eqz v0, :cond_9

    .line 197
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    invoke-virtual {v0}, Lcom/anythink/splashad/a/a;->g()V

    .line 200
    :cond_9
    return-void
.end method
