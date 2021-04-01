.class final Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mintegral/msdk/out/BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a(Landroid/content/Context;Lcom/anythink/banner/api/ATBannerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/banner/api/ATBannerView;

.field final synthetic b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/mintegral/MintegralATBannerAdapter;Lcom/anythink/banner/api/ATBannerView;)V
    .registers 3

    .prologue
    .line 135
    iput-object p1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iput-object p2, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->a:Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final closeFullScreen()V
    .registers 1

    .prologue
    .line 179
    return-void
.end method

.method public final onClick()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_f

    .line 162
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdClicked(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 164
    :cond_f
    return-void
.end method

.method public final onCloseBanner()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_f

    .line 184
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdClose(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 186
    :cond_f
    return-void
.end method

.method public final onLeaveApp()V
    .registers 1

    .prologue
    .line 169
    return-void
.end method

.method public final onLoadFailed(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 138
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->a:Lcom/anythink/banner/api/ATBannerView;

    if-eqz v0, :cond_d

    .line 139
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->a:Lcom/anythink/banner/api/ATBannerView;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iget-object v1, v1, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a:Lcom/mintegral/msdk/out/MTGBannerView;

    invoke-virtual {v0, v1}, Lcom/anythink/banner/api/ATBannerView;->removeView(Landroid/view/View;)V

    .line 141
    :cond_d
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_24

    .line 142
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    const-string v2, "4001"

    const-string v3, ""

    invoke-static {v2, v3, p1}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    .line 144
    :cond_24
    return-void
.end method

.method public final onLoadSuccessed()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_18

    .line 149
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoaded(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 150
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$2;->b:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdShow(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 152
    :cond_18
    return-void
.end method

.method public final onLogImpression()V
    .registers 1

    .prologue
    .line 157
    return-void
.end method

.method public final showFullScreen()V
    .registers 1

    .prologue
    .line 174
    return-void
.end method
