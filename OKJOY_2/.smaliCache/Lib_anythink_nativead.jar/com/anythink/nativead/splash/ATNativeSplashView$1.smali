.class final Lcom/anythink/nativead/splash/ATNativeSplashView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/api/ATNativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/splash/ATNativeSplashView;->renderAd(Landroid/view/ViewGroup;Lcom/anythink/nativead/api/NativeAd;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/nativead/splash/ATNativeSplashView;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/splash/ATNativeSplashView;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$1;->a:Lcom/anythink/nativead/splash/ATNativeSplashView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 3

    .line 88
    iget-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$1;->a:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object p1, p1, Lcom/anythink/nativead/splash/ATNativeSplashView;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    if-eqz p1, :cond_d

    .line 89
    iget-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$1;->a:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object p1, p1, Lcom/anythink/nativead/splash/ATNativeSplashView;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    invoke-interface {p1, p2}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onAdClick(Lcom/anythink/core/api/ATAdInfo;)V

    .line 91
    :cond_d
    return-void
.end method

.method public final onAdImpressed(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 3

    .line 80
    iget-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$1;->a:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object p1, p1, Lcom/anythink/nativead/splash/ATNativeSplashView;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    if-eqz p1, :cond_d

    .line 81
    iget-object p1, p0, Lcom/anythink/nativead/splash/ATNativeSplashView$1;->a:Lcom/anythink/nativead/splash/ATNativeSplashView;

    iget-object p1, p1, Lcom/anythink/nativead/splash/ATNativeSplashView;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    invoke-interface {p1, p2}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onAdShow(Lcom/anythink/core/api/ATAdInfo;)V

    .line 84
    :cond_d
    return-void
.end method

.method public final onAdVideoEnd(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 2

    .line 99
    return-void
.end method

.method public final onAdVideoProgress(Lcom/anythink/nativead/api/ATNativeAdView;I)V
    .registers 3

    .line 103
    return-void
.end method

.method public final onAdVideoStart(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 2

    .line 95
    return-void
.end method
