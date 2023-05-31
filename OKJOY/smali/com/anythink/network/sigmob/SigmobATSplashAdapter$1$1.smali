.class final Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/Splash/WindSplashADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;


# direct methods
.method constructor <init>(Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSplashAdClicked()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 87
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    iget-object v1, v1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdClicked(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    .line 89
    :cond_19
    return-void
.end method

.method public final onSplashAdFailToPresent(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 79
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 80
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    iget-object v1, v1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    const-string v2, "4001"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdFailed(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;Lcom/anythink/core/api/AdError;)V

    .line 82
    :cond_34
    return-void
.end method

.method public final onSplashAdSuccessPresentScreen()V
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 71
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    iget-object v1, v1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdLoaded(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    .line 72
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    iget-object v1, v1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdShow(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    .line 75
    :cond_28
    return-void
.end method

.method public final onSplashClosed()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 94
    iget-object v0, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    iget-object v0, v0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-static {v0}, Lcom/anythink/network/sigmob/SigmobATSplashAdapter;->b(Lcom/anythink/network/sigmob/SigmobATSplashAdapter;)Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1$1;->a:Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;

    iget-object v1, v1, Lcom/anythink/network/sigmob/SigmobATSplashAdapter$1;->c:Lcom/anythink/network/sigmob/SigmobATSplashAdapter;

    invoke-interface {v0, v1}, Lcom/anythink/splashad/unitgroup/api/CustomSplashListener;->onSplashAdDismiss(Lcom/anythink/splashad/unitgroup/api/CustomSplashAdapter;)V

    .line 96
    :cond_19
    return-void
.end method
