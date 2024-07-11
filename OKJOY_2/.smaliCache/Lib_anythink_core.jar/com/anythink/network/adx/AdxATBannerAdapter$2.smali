.class final Lcom/anythink/network/adx/AdxATBannerAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATBannerAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/adx/AdxATBannerAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/adx/AdxATBannerAdapter;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$2;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$2;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->n(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 128
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$2;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->o(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClicked()V

    .line 130
    :cond_11
    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$2;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->l(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 121
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$2;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->m(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdClose()V

    .line 123
    :cond_11
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$2;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->j(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 114
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$2;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->k(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onBannerAdShow()V

    .line 116
    :cond_11
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$2;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->p(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 135
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATBannerAdapter$2;->a:Lcom/anythink/network/adx/AdxATBannerAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATBannerAdapter;->q(Lcom/anythink/network/adx/AdxATBannerAdapter;)Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/banner/unitgroup/api/CustomBannerEventListener;->onDeeplinkCallback(Z)V

    .line 137
    :cond_11
    return-void
.end method
