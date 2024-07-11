.class final Lcom/anythink/splashad/api/ATSplashAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/splashad/api/ATSplashExListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/splashad/api/ATSplashAd;
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

    .line 55
    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .line 123
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$1$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/splashad/api/ATSplashAd$1$5;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method

.method public final onAdDismiss(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    if-eqz v0, :cond_d

    .line 136
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    invoke-virtual {v0}, Lcom/anythink/splashad/a/a;->g()V

    .line 138
    :cond_d
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-boolean v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mHasDismiss:Z

    if-nez v0, :cond_24

    .line 139
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/splashad/api/ATSplashAd;->mHasDismiss:Z

    .line 140
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$1$6;

    invoke-direct {v1, p0, p1}, Lcom/anythink/splashad/api/ATSplashAd$1$6;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 149
    :cond_24
    return-void
.end method

.method public final onAdLoaded()V
    .registers 3

    .line 70
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v1, v1, Lcom/anythink/splashad/api/ATSplashAd;->loadOverTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->c(Ljava/lang/Runnable;)V

    .line 71
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$1$2;

    invoke-direct {v1, p0}, Lcom/anythink/splashad/api/ATSplashAd$1$2;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public final onAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .line 111
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$1$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/splashad/api/ATSplashAd$1$4;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public final onDeeplinkCallback(Lcom/anythink/core/api/ATAdInfo;Z)V
    .registers 5

    .line 58
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/splashad/api/ATSplashAd$1$1;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1;Lcom/anythink/core/api/ATAdInfo;Z)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method

.method public final onNoAdError(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    if-eqz v0, :cond_d

    .line 88
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mAdLoadManager:Lcom/anythink/splashad/a/a;

    invoke-virtual {v0}, Lcom/anythink/splashad/a/a;->a()V

    .line 95
    :cond_d
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v1, v1, Lcom/anythink/splashad/api/ATSplashAd;->loadOverTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->c(Ljava/lang/Runnable;)V

    .line 96
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$1$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/splashad/api/ATSplashAd$1$3;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method
