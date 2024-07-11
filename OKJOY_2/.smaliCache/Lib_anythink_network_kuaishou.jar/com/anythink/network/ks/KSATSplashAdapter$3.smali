.class final Lcom/anythink/network/ks/KSATSplashAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/KsSplashScreenAd$SplashScreenAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/ks/KSATSplashAdapter;->show(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/ks/KSATSplashAdapter;


# direct methods
.method constructor <init>(Lcom/anythink/network/ks/KSATSplashAdapter;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/anythink/network/ks/KSATSplashAdapter$3;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/anythink/network/ks/KSATSplashAdapter$3;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATSplashAdapter;->f(Lcom/anythink/network/ks/KSATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 91
    iget-object v0, p0, Lcom/anythink/network/ks/KSATSplashAdapter$3;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATSplashAdapter;->g(Lcom/anythink/network/ks/KSATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdClicked()V

    .line 93
    :cond_11
    return-void
.end method

.method public final onAdShowEnd()V
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/anythink/network/ks/KSATSplashAdapter$3;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATSplashAdapter;->i(Lcom/anythink/network/ks/KSATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 103
    iget-object v0, p0, Lcom/anythink/network/ks/KSATSplashAdapter$3;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATSplashAdapter;->j(Lcom/anythink/network/ks/KSATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 105
    :cond_11
    return-void
.end method

.method public final onAdShowError(ILjava/lang/String;)V
    .registers 6

    .line 97
    iget-object v0, p0, Lcom/anythink/network/ks/KSATSplashAdapter$3;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATSplashAdapter;->h(Lcom/anythink/network/ks/KSATSplashAdapter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdShowError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public final onAdShowStart()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/anythink/network/ks/KSATSplashAdapter$3;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATSplashAdapter;->k(Lcom/anythink/network/ks/KSATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 110
    iget-object v0, p0, Lcom/anythink/network/ks/KSATSplashAdapter$3;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATSplashAdapter;->l(Lcom/anythink/network/ks/KSATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdShow()V

    .line 112
    :cond_11
    return-void
.end method

.method public final onSkippedAd()V
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/anythink/network/ks/KSATSplashAdapter$3;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATSplashAdapter;->m(Lcom/anythink/network/ks/KSATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 117
    iget-object v0, p0, Lcom/anythink/network/ks/KSATSplashAdapter$3;->a:Lcom/anythink/network/ks/KSATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/ks/KSATSplashAdapter;->n(Lcom/anythink/network/ks/KSATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/splashad/unitgroup/api/CustomSplashEventListener;->onSplashAdDismiss()V

    .line 119
    :cond_11
    return-void
.end method
