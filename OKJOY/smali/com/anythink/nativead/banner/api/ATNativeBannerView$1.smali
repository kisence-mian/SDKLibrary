.class final Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/nativead/api/ATNativeNetworkListener;


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
    .line 44
    iput-object p1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNativeAdLoadFail(Lcom/anythink/core/api/AdError;)V
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsLoading:Z

    .line 66
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    if-eqz v0, :cond_1c

    .line 67
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-boolean v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    if-nez v0, :cond_1d

    .line 68
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdError(Ljava/lang/String;)V

    .line 74
    :cond_1c
    :goto_1c
    return-void

    .line 70
    :cond_1d
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAutoRefreshFail(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public final onNativeAdLoaded()V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsLoading:Z

    .line 49
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->visibility:I

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    invoke-virtual {v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-boolean v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->hasTouchWindow:Z

    if-eqz v0, :cond_2d

    .line 50
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object v1, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object v1, v1, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    # invokes: Lcom/anythink/nativead/banner/api/ATNativeBannerView;->addNativeView(Lcom/anythink/nativead/banner/api/ATNativeBannerListener;)V
    invoke-static {v0, v1}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->access$000(Lcom/anythink/nativead/banner/api/ATNativeBannerView;Lcom/anythink/nativead/banner/api/ATNativeBannerListener;)V

    .line 52
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    # invokes: Lcom/anythink/nativead/banner/api/ATNativeBannerView;->stopAutoRefresh()V
    invoke-static {v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->access$100(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    .line 53
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    # invokes: Lcom/anythink/nativead/banner/api/ATNativeBannerView;->startAutoRefresh()V
    invoke-static {v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->access$200(Lcom/anythink/nativead/banner/api/ATNativeBannerView;)V

    .line 61
    :cond_2c
    :goto_2c
    return-void

    .line 55
    :cond_2d
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-boolean v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mIsRefresh:Z

    if-nez v0, :cond_2c

    .line 56
    iget-object v0, p0, Lcom/anythink/nativead/banner/api/ATNativeBannerView$1;->this$0:Lcom/anythink/nativead/banner/api/ATNativeBannerView;

    iget-object v0, v0, Lcom/anythink/nativead/banner/api/ATNativeBannerView;->mListener:Lcom/anythink/nativead/banner/api/ATNativeBannerListener;

    invoke-interface {v0}, Lcom/anythink/nativead/banner/api/ATNativeBannerListener;->onAdLoaded()V

    goto :goto_2c
.end method
