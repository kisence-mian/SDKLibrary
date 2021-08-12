.class final Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->i(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 108
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->j(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    .line 110
    :cond_11
    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->g(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 101
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->h(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 103
    :cond_11
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->e(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 94
    iget-object v0, p0, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter$2;->a:Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;->f(Lcom/anythink/network/myoffer/MyOfferATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    .line 96
    :cond_11
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 2

    .line 115
    return-void
.end method
