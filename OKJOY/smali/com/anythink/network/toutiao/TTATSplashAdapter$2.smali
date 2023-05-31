.class final Lcom/anythink/network/toutiao/TTATSplashAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/toutiao/TTATSplashAdapter;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/anythink/network/toutiao/TTATSplashAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATSplashAdapter;Landroid/view/ViewGroup;)V
    .registers 3

    .prologue
    .line 88
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iput-object p2, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 91
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_19

    .line 92
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    const-string v2, "4001"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {v2, v3, p2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 92
    invoke-interface {v0, v1, v2}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdFailed(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    .line 95
    :cond_19
    return-void
.end method

.method public final onSplashAdLoad(Lcom/bytedance/sdk/openadsdk/TTSplashAd;)V
    .registers 7

    .prologue
    .line 107
    if-eqz p1, :cond_41

    .line 109
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->setSplashInteractionListener(Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;)V

    .line 110
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTSplashAd;->getSplashView()Landroid/view/View;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_27

    .line 112
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iget-object v1, v1, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v1, :cond_1c

    .line 113
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iget-object v1, v1, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    iget-object v2, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    invoke-interface {v1, v2}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdLoaded(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    .line 115
    :cond_1c
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 116
    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 130
    :cond_26
    :goto_26
    return-void

    .line 118
    :cond_27
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_26

    .line 119
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    const-string v2, "4001"

    const-string v3, ""

    const-string v4, ""

    .line 120
    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 119
    invoke-interface {v0, v1, v2}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdFailed(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_26

    .line 125
    :cond_41
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_26

    .line 126
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    const-string v2, "4001"

    const-string v3, ""

    const-string v4, ""

    .line 127
    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 126
    invoke-interface {v0, v1, v2}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdFailed(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    goto :goto_26
.end method

.method public final onTimeout()V
    .registers 6

    .prologue
    .line 99
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    if-eqz v0, :cond_19

    .line 100
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATSplashAdapter;->d:Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATSplashAdapter$2;->b:Lcom/anythink/network/toutiao/TTATSplashAdapter;

    const-string v2, "2001"

    const-string v3, ""

    const-string v4, ""

    .line 101
    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    .line 100
    invoke-interface {v0, v1, v2}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdFailed(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    .line 103
    :cond_19
    return-void
.end method
