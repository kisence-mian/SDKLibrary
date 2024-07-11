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

    .line 101
    iput-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked(Landroid/view/View;I)V
    .registers 3

    .line 105
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->i(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 106
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->j(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    .line 108
    :cond_11
    return-void
.end method

.method public final onAdShow(Landroid/view/View;I)V
    .registers 3

    .line 112
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->k(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 113
    iget-object p1, p0, Lcom/anythink/network/toutiao/TTATBannerAdapter$2;->a:Lcom/anythink/network/toutiao/TTATBannerAdapter;

    invoke-static {p1}, Lcom/anythink/network/toutiao/TTATBannerAdapter;->l(Lcom/anythink/network/toutiao/TTATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    .line 115
    :cond_11
    return-void
.end method
