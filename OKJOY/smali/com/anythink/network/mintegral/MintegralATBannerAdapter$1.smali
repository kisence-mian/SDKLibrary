.class final Lcom/anythink/network/mintegral/MintegralATBannerAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/network/mintegral/MintegralATInitManager$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->loadBannerAd(Lcom/anythink/banner/api/ATBannerView;Landroid/content/Context;Ljava/util/Map;Lcom/anythink/core/api/ATMediationSetting;Lcom/anythink/banner/unitgroup/api/CustomBannerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/banner/api/ATBannerView;

.field final synthetic c:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/mintegral/MintegralATBannerAdapter;Landroid/content/Context;Lcom/anythink/banner/api/ATBannerView;)V
    .registers 4

    .prologue
    .line 86
    iput-object p1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$1;->c:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iput-object p2, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$1;->b:Lcom/anythink/banner/api/ATBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 94
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$1;->c:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_1b

    .line 95
    const-string v0, "4001"

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$1;->c:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iget-object v1, v1, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->f:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$1;->c:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    invoke-interface {v1, v2, v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdLoadFail(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;Lcom/anythink/core/api/AdError;)V

    .line 98
    :cond_1b
    return-void
.end method

.method public final onSuccess()V
    .registers 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$1;->c:Lcom/anythink/network/mintegral/MintegralATBannerAdapter;

    iget-object v1, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/network/mintegral/MintegralATBannerAdapter$1;->b:Lcom/anythink/banner/api/ATBannerView;

    invoke-static {v0, v1, v2}, Lcom/anythink/network/mintegral/MintegralATBannerAdapter;->a(Lcom/anythink/network/mintegral/MintegralATBannerAdapter;Landroid/content/Context;Lcom/anythink/banner/api/ATBannerView;)V

    .line 90
    return-void
.end method
