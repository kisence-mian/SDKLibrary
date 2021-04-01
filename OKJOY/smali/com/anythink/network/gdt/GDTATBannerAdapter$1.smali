.class final Lcom/anythink/network/gdt/GDTATBannerAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/banner/BannerADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATBannerAdapter;->loadBannerAd(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/banner/unitgroup/api/CustomBannerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qq/e/ads/banner/BannerView;

.field final synthetic b:Lcom/anythink/network/gdt/GDTATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATBannerAdapter;Lcom/qq/e/ads/banner/BannerView;)V
    .registers 3

    .prologue
    .line 89
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iput-object p2, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->a:Lcom/qq/e/ads/banner/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClicked()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_f

    .line 122
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdClicked(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 124
    :cond_f
    return-void
.end method

.method public final onADCloseOverlay()V
    .registers 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v1}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->a(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onADCloseOverlay"

    invoke-static {v0, v1, v2}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c(Lcom/anythink/network/gdt/GDTATBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public final onADClosed()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_f

    .line 115
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdClose(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 117
    :cond_f
    return-void
.end method

.method public final onADExposure()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_f

    .line 108
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdShow(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 110
    :cond_f
    return-void
.end method

.method public final onADLeftApplication()V
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v1}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->a(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onADLeftApplication"

    invoke-static {v0, v1, v2}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->a(Lcom/anythink/network/gdt/GDTATBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public final onADOpenOverlay()V
    .registers 4

    .prologue
    .line 133
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-static {v1}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->a(Lcom/anythink/network/gdt/GDTATBannerAdapter;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onADOpenOverlay"

    invoke-static {v0, v1, v2}, Lcom/anythink/network/gdt/GDTATBannerAdapter;->b(Lcom/anythink/network/gdt/GDTATBannerAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public final onADReceiv()V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_15

    .line 100
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->a:Lcom/qq/e/ads/banner/BannerView;

    iput-object v1, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->d:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoaded(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 103
    :cond_15
    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 7

    .prologue
    .line 92
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_21

    .line 93
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$1;->b:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    const-string v2, "4001"

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    .line 95
    :cond_21
    return-void
.end method
