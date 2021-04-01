.class final Lcom/anythink/nativead/splash/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/api/ATNativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/nativead/splash/a;->a(Landroid/view/ViewGroup;Lcom/anythink/nativead/api/NativeAd;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/nativead/splash/a;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/splash/a;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/anythink/nativead/splash/a$1;->a:Lcom/anythink/nativead/splash/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$1;->a:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    if-eqz v0, :cond_d

    .line 82
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$1;->a:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    invoke-interface {v0, p2}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onAdClick(Lcom/anythink/core/api/ATAdInfo;)V

    .line 84
    :cond_d
    return-void
.end method

.method public final onAdImpressed(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$1;->a:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    if-eqz v0, :cond_d

    .line 74
    iget-object v0, p0, Lcom/anythink/nativead/splash/a$1;->a:Lcom/anythink/nativead/splash/a;

    iget-object v0, v0, Lcom/anythink/nativead/splash/a;->i:Lcom/anythink/nativead/splash/api/ATNativeSplashListener;

    invoke-interface {v0, p2}, Lcom/anythink/nativead/splash/api/ATNativeSplashListener;->onAdShow(Lcom/anythink/core/api/ATAdInfo;)V

    .line 77
    :cond_d
    return-void
.end method

.method public final onAdVideoEnd(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 2

    .prologue
    .line 92
    return-void
.end method

.method public final onAdVideoProgress(Lcom/anythink/nativead/api/ATNativeAdView;I)V
    .registers 3

    .prologue
    .line 96
    return-void
.end method

.method public final onAdVideoStart(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 2

    .prologue
    .line 88
    return-void
.end method
