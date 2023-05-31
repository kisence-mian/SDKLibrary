.class final Lcom/anythink/splashad/api/ATSplashAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/splashad/api/ATSplashAdListener;


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

    .prologue
    .line 35
    iput-object p1, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 83
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$1$4;

    invoke-direct {v1, p0, p1}, Lcom/anythink/splashad/api/ATSplashAd$1$4;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public final onAdDismiss(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-boolean v0, v0, Lcom/anythink/splashad/api/ATSplashAd;->mHasDismiss:Z

    if-nez v0, :cond_17

    .line 96
    iget-object v0, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anythink/splashad/api/ATSplashAd;->mHasDismiss:Z

    .line 97
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$1$5;

    invoke-direct {v1, p0, p1}, Lcom/anythink/splashad/api/ATSplashAd$1$5;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 106
    :cond_17
    return-void
.end method

.method public final onAdLoaded()V
    .registers 3

    .prologue
    .line 38
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v1, v1, Lcom/anythink/splashad/api/ATSplashAd;->loadOverTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->c(Ljava/lang/Runnable;)V

    .line 39
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/splashad/api/ATSplashAd$1$1;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public final onAdShow(Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 71
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$1$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/splashad/api/ATSplashAd$1$3;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1;Lcom/anythink/core/api/ATAdInfo;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public final onAdTick(J)V
    .registers 6

    .prologue
    .line 110
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$1$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/anythink/splashad/api/ATSplashAd$1$6;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1;J)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public final onNoAdError(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 55
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/splashad/api/ATSplashAd$1;->this$0:Lcom/anythink/splashad/api/ATSplashAd;

    iget-object v1, v1, Lcom/anythink/splashad/api/ATSplashAd;->loadOverTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->c(Ljava/lang/Runnable;)V

    .line 56
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/splashad/api/ATSplashAd$1$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/splashad/api/ATSplashAd$1$2;-><init>(Lcom/anythink/splashad/api/ATSplashAd$1;Lcom/anythink/core/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method
