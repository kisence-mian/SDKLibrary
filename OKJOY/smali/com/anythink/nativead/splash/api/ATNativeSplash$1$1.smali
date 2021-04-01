.class final Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->onNativeAdLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/splash/api/ATNativeSplash$1;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 41
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v1, v1, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v1, v1, Lcom/anythink/nativead/splash/api/ATNativeSplash;->overLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->anythinkNative:Lcom/anythink/nativead/api/ATNative;

    if-eqz v0, :cond_6b

    .line 43
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->anythinkNative:Lcom/anythink/nativead/api/ATNative;

    invoke-virtual {v0}, Lcom/anythink/nativead/api/ATNative;->getNativeAd()Lcom/anythink/nativead/api/NativeAd;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_6b

    .line 45
    new-instance v1, Lcom/anythink/nativead/splash/a;

    iget-object v2, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v2, v2, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v2, v2, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/nativead/splash/a;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object v2, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v2, v2, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v2, v2, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mListener:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    invoke-virtual {v1, v2}, Lcom/anythink/nativead/splash/a;->a(Lcom/anythink/nativead/splash/api/ATNativeSplashListener;)V

    .line 47
    iget-object v2, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v2, v2, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v2, v2, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mSkipView:Landroid/view/View;

    iget-object v3, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v3, v3, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-wide v4, v3, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mFetchDelay:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/anythink/nativead/splash/a;->a(Landroid/view/View;J)V

    .line 48
    iget-object v2, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v2, v2, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v2, v2, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v3, v3, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v3, v3, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/anythink/nativead/splash/a;->a(Landroid/view/ViewGroup;Lcom/anythink/nativead/api/NativeAd;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mListener:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    if-eqz v0, :cond_6a

    .line 51
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mListener:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    invoke-interface {v0}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onAdLoaded()V

    .line 61
    :cond_6a
    :goto_6a
    return-void

    .line 58
    :cond_6b
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mListener:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    if-eqz v0, :cond_6a

    .line 59
    iget-object v0, p0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1$1;->this$1:Lcom/anythink/nativead/splash/api/ATNativeSplash$1;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash$1;->this$0:Lcom/anythink/nativead/splash/api/ATNativeSplash;

    iget-object v0, v0, Lcom/anythink/nativead/splash/api/ATNativeSplash;->mListener:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    const-string v1, "Ad is empty!"

    invoke-interface {v0, v1}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onNoAdError(Ljava/lang/String;)V

    goto :goto_6a
.end method
