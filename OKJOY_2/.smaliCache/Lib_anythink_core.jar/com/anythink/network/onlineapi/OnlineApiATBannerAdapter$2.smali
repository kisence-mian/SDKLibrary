.class final Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->n(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 129
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->o(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    .line 131
    :cond_11
    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->l(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 122
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->m(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClose()V

    .line 124
    :cond_11
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->j(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 115
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->k(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    .line 117
    :cond_11
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->p(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 136
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;->q(Lcom/anythink/network/onlineapi/OnlineApiATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onDeeplinkCallback(Z)V

    .line 138
    :cond_11
    return-void
.end method
