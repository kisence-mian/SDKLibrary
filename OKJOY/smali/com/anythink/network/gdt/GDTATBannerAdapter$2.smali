.class final Lcom/anythink/network/gdt/GDTATBannerAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/e/ads/banner2/UnifiedBannerADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/gdt/GDTATBannerAdapter;->loadBannerAd(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/banner/unitgroup/api/CustomBannerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/gdt/GDTATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/gdt/GDTATBannerAdapter;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onADClicked()V
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_f

    .line 176
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdClicked(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 178
    :cond_f
    return-void
.end method

.method public final onADCloseOverlay()V
    .registers 1

    .prologue
    .line 193
    return-void
.end method

.method public final onADClosed()V
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_f

    .line 169
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdClose(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 171
    :cond_f
    return-void
.end method

.method public final onADExposure()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_f

    .line 162
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdShow(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 164
    :cond_f
    return-void
.end method

.method public final onADLeftApplication()V
    .registers 1

    .prologue
    .line 183
    return-void
.end method

.method public final onADOpenOverlay()V
    .registers 1

    .prologue
    .line 188
    return-void
.end method

.method public final onADReceive()V
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_f

    .line 155
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoaded(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 157
    :cond_f
    return-void
.end method

.method public final onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .registers 7

    .prologue
    .line 146
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->d:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_26

    .line 148
    iget-object v0, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/gdt/GDTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/gdt/GDTATBannerAdapter$2;->a:Lcom/anythink/network/gdt/GDTATBannerAdapter;

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

    .line 150
    :cond_26
    return-void
.end method
