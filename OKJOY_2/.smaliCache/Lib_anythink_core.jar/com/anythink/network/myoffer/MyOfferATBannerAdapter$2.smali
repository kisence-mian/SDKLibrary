.class final Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->l(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 103
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->m(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    .line 105
    :cond_11
    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->j(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 96
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->k(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClose()V

    .line 98
    :cond_11
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->h(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 89
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;->i(Lcom/anythink/network/myoffer/MyOfferATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    .line 91
    :cond_11
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 2

    .line 110
    return-void
.end method
