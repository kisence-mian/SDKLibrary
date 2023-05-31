.class public abstract Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;
.super Lcom/anythink/banner/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/anythink/banner/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public isAdReady()Z
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;->getBannerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract loadBannerAd(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/banner/unitgroup/api/CustomBannerListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/banner/api/ATBannerView;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/anythink/core/api/ATMediationSetting;",
            "Lcom/anythink/banner/unitgroup/api/CustomBannerListener;",
            ")V"
        }
    .end annotation
.end method
