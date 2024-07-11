.class final Lcom/anythink/network/adx/AdxATSplashAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/adx/AdxATSplashAdapter;->a(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/adx/AdxATSplashAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/adx/AdxATSplashAdapter;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->a:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClick()V
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->a:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->k(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 147
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->a:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->l(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    .line 149
    :cond_11
    return-void
.end method

.method public final onAdClosed()V
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->a:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->i(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 140
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->a:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->j(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 142
    :cond_11
    return-void
.end method

.method public final onAdShow()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->a:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->g(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 133
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->a:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->h(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    .line 135
    :cond_11
    return-void
.end method

.method public final onDeeplinkCallback(Z)V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->a:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->m(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 154
    iget-object v0, p0, Lcom/anythink/network/adx/AdxATSplashAdapter$2;->a:Lcom/anythink/network/adx/AdxATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/adx/AdxATSplashAdapter;->n(Lcom/anythink/network/adx/AdxATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onDeeplinkCallback(Z)V

    .line 156
    :cond_11
    return-void
.end method
