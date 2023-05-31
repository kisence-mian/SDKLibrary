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

    .prologue
    .line 32
    iput-object p1, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .registers 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-boolean v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mIsOverLoad:Z

    if-eqz v0, :cond_7

    .line 80
    :goto_6
    return-void

    .line 71
    :cond_7
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$2;

    invoke-direct {v1, p0, p1}, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$2;-><init>(Lcom/anythink/nativead/splash/api/ATNativeSplash$1;Lcom/anythink/core/api/AdError;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6
.end method

.method public final onNativeAdLoaded()V
    .registers 5

    .prologue
    .line 35
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-boolean v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mIsOverLoad:Z

    if-eqz v0, :cond_7

    .line 64
    :goto_6
    return-void

    .line 38
    :cond_7
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;

    invoke-direct {v1, p0}, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;-><init>(Lcom/anythink/nativead/splash/api/ATNativeSplash$1;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6
.end method
