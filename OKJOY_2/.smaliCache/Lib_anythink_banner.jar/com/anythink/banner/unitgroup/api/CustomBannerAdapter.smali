.class public abstract Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;
.super Lcom/anythink/core/api/ATBaseAdAdapter;


# instance fields
.field protected mATBannerView:Lcom/anythink/banner/api/ATBannerView;

.field protected mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBannerView()Landroid/view/View;
.end method

.method public final isAdReady()Z
    .registers 2

    .line 22
    invoke-virtual {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final releaseLoadResource()V
    .registers 2

    .line 36
    invoke-super {p0}, Lcom/anythink/core/api/ATBaseAdAdapter;->releaseLoadResource()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mATBannerView:Lcom/anythink/banner/api/ATBannerView;

    .line 38
    return-void
.end method

.method public final setATBannerView(Lcom/anythink/banner/api/ATBannerView;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mATBannerView:Lcom/anythink/banner/api/ATBannerView;

    .line 33
    return-void
.end method

.method public setAdEventListener(Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->mImpressionEventListener:Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    .line 29
    return-void
.end method
