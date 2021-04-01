.class final Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/api/ATNativeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/nativead/banner/api/ATNativeBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;


# direct methods
.method constructor <init>(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V
    .registers 2

    .prologue
    .line 161
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    if-eqz v0, :cond_d

    .line 177
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    invoke-interface {v0, p2}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdClick(Lcom/anythink/core/api/ATAdInfo;)V

    .line 179
    :cond_d
    return-void
.end method

.method public final onAdImpressed(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    if-eqz v0, :cond_13

    .line 165
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-boolean v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    if-eqz v0, :cond_14

    .line 166
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    invoke-interface {v0, p2}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAutoRefresh(Lcom/anythink/core/api/ATAdInfo;)V

    .line 172
    :cond_13
    :goto_13
    return-void

    .line 168
    :cond_14
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    invoke-interface {v0, p2}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdShow(Lcom/anythink/core/api/ATAdInfo;)V

    goto :goto_13
.end method

.method public final onAdVideoEnd(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 2

    .prologue
    .line 187
    return-void
.end method

.method public final onAdVideoProgress(Lcom/anythink/nativead/api/ATNativeAdView;I)V
    .registers 3

    .prologue
    .line 191
    return-void
.end method

.method public final onAdVideoStart(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 2

    .prologue
    .line 183
    return-void
.end method
