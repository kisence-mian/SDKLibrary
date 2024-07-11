.class final Lcom/anythink/nativead/splash/api/ATNativeSplash$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/api/ATNativeNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/nativead/splash/api/ATNativeSplash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/splash/api/ATNativeSplash;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .registers 6

    .line 74
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-boolean v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mIsOverLoad:Z

    if-eqz v0, :cond_7

    .line 75
    return-void

    .line 77
    :cond_7
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$2;-><init>(Lcom/anythink/nativead/splash/api/ATNativeSplash$1;Lcom/anythink/core/api/AdError;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method

.method public final onNativeAdLoaded()V
    .registers 5

    .line 41
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-boolean v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mIsOverLoad:Z

    if-eqz v0, :cond_7

    .line 42
    return-void

    .line 44
    :cond_7
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;-><init>(Lcom/anythink/nativead/splash/api/ATNativeSplash$1;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method
