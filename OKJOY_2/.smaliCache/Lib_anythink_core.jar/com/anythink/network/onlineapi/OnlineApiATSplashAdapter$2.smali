.class final Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->k(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 151
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->l(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    .line 153
    :cond_11
    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->i(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 144
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->j(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 146
    :cond_11
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->g(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 137
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->h(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    .line 139
    :cond_11
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->m(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 158
    iget-object v0, p0, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter$2;->a:Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;->n(Lcom/anythink/network/onlineapi/OnlineApiATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onDeeplinkCallback(Z)V

    .line 160
    :cond_11
    return-void
.end method
