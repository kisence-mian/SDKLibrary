.class final Lcom/anythink/network/toutiao/TTATBannerAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTBannerAd$AdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/network/toutiao/TTATBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/toutiao/TTATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/toutiao/TTATBannerAdapter;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 105
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_f

    .line 106
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdClicked(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 108
    :cond_f
    return-void
.end method

.method public final onAdShow(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 112
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    if-eqz v0, :cond_f

    .line 113
    iget-object v0, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    iget-object v0, v0, Lcom/anythink/network/toutiao/TTATBannerAdapter;->c:Lcom/anythink/banner/unitgroup/api/CustomBannerListener;

    iget-object v1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/banner/unitgroup/api/CustomBannerListener;->onBannerAdShow(Lcom/anythink/banner/unitgroup/api/CustomBannerAdapter;)V

    .line 115
    :cond_f
    return-void
.end method
