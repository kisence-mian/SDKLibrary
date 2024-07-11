.class final Lcom/anythink/splashad/api/ATSplashAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/splashad/api/ATSplashAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/splashad/api/ATSplashAd;


# direct methods
.method constructor <init>(Lcom/anythink/splashad/api/ATSplashAd;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$3;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 263
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$3;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mFetchAdTimeout:I

    .line 264
    if-gtz v0, :cond_2c

    .line 266
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$3;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->F()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_27

    const/16 v0, 0x1388

    goto :goto_2c

    :cond_27
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->F()J

    move-result-wide v0

    long-to-int v0, v0

    .line 270
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$3;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v1, v1, Lcom/anythink/splashad/api/ATSplashAd;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$3;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v1, v1, Lcom/anythink/splashad/api/ATSplashAd;->mActivityWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    .line 271
    :goto_3e
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    iget-object v3, p0, Lcom/anythink/splashad/api/ATSplashAd$3;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v3, v3, Lcom/anythink/splashad/api/ATSplashAd;->loadOverTimeRunnable:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;J)V

    .line 272
    iget-object v2, p0, Lcom/anythink/splashad/api/ATSplashAd$3;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v2, v2, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    if-eqz v1, :cond_51

    goto :goto_55

    :cond_51
    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$3;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v1, v1, Lcom/anythink/splashad/api/ATSplashAd;->mContext:Landroid/content/Context;

    :goto_55
    iget-object v3, p0, Lcom/anythink/splashad/api/ATSplashAd$3;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v3, v3, Lcom/anythink/splashad/api/ATSplashAd;->mDefaultRequestInfo:Lcom/anythink/core/api/ATMediationRequestInfo;

    iget-object v4, p0, Lcom/anythink/splashad/api/ATSplashAd$3;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v4, v4, Lcom/anythink/splashad/api/ATSplashAd;->mSelfListener:Lcom/anythink/splashad/api/ATSplashExListener;

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/anythink/splashad/a/a;->a(Landroid/content/Context;Lcom/anythink/core/api/ATMediationRequestInfo;Lcom/anythink/splashad/api/ATSplashAdListener;I)V

    .line 273
    return-void
.end method
