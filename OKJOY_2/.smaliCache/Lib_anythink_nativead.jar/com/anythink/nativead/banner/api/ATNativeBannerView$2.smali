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

    .line 174
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 3

    .line 189
    iget-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object p1, p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    if-eqz p1, :cond_d

    .line 190
    iget-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object p1, p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    invoke-interface {p1, p2}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdClick(Lcom/anythink/core/api/ATAdInfo;)V

    .line 192
    :cond_d
    return-void
.end method

.method public final onAdImpressed(Lcom/anythink/nativead/api/ATNativeAdView;Lcom/anythink/core/api/ATAdInfo;)V
    .registers 3

    .line 177
    iget-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object p1, p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    if-eqz p1, :cond_1b

    .line 178
    iget-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-boolean p1, p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    if-eqz p1, :cond_14

    .line 179
    iget-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object p1, p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    invoke-interface {p1, p2}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAutoRefresh(Lcom/anythink/core/api/ATAdInfo;)V

    return-void

    .line 181
    :cond_14
    iget-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$2;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object p1, p1, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    invoke-interface {p1, p2}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdShow(Lcom/anythink/core/api/ATAdInfo;)V

    .line 185
    :cond_1b
    return-void
.end method

.method public final onAdVideoEnd(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 2

    .line 200
    return-void
.end method

.method public final onAdVideoProgress(Lcom/anythink/nativead/api/ATNativeAdView;I)V
    .registers 3

    .line 204
    return-void
.end method

.method public final onAdVideoStart(Lcom/anythink/nativead/api/ATNativeAdView;)V
    .registers 2

    .line 196
    return-void
.end method
