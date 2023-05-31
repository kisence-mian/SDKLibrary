.class final Lcom/anythink/nativead/splash/api/ATNativeSplash$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->onNativeAdLoadFail(Lcom/anythink/core/api/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

.field final synthetic val$adError:Lcom/anythink/core/api/AdError;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/splash/api/ATNativeSplash$1;Lcom/anythink/core/api/AdError;)V
    .registers 3

    .prologue
    .line 71
    iput-object p1, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$2;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iput-object p2, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$2;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$2;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v1, v1, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v1, v1, Lcom/anythink/nativead/splash/api/ATNativeSplash;->overLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$2;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mListener:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    if-eqz v0, :cond_26

    .line 76
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$2;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mListener:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    iget-object v1, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$2;->val$adError:Lcom/anythink/core/api/AdError;

    invoke-virtual {v1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onNoAdError(Ljava/lang/String;)V

    .line 78
    :cond_26
    return-void
.end method
