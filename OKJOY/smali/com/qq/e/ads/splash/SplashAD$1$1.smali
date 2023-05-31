.class Lcom/qq/e/ads/splash/SplashAD$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/splash/SplashAD$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/splash/SplashAD$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/splash/SplashAD$1;Lcom/qq/e/comm/pi/POFactory;)V
    .registers 3
    .param p1, "this$1"    # Lcom/qq/e/ads/splash/SplashAD$1;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iput-object p2, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v0, :cond_14e

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v2, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/splash/SplashAD$1;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v3, v3, Lcom/qq/e/ads/splash/SplashAD$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v4, v4, Lcom/qq/e/ads/splash/SplashAD$1;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/qq/e/comm/pi/POFactory;->getNativeSplashAdView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/comm/pi/NSPVI;)Lcom/qq/e/comm/pi/NSPVI;

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    if-eqz v0, :cond_117

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->b(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/constants/LoadAdParams;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v1}, Lcom/qq/e/ads/splash/SplashAD;->b(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/constants/LoadAdParams;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NSPVI;->setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V

    :cond_44
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/splash/SplashAD$1;->d:Ljava/util/Map;

    iget-object v2, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/splash/SplashAD$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;Ljava/util/Map;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget v1, v1, Lcom/qq/e/ads/splash/SplashAD$1;->e:I

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NSPVI;->setFetchDelay(I)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    new-instance v1, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;

    iget-object v2, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/qq/e/ads/splash/SplashAD$ADListenerAdapter;-><init>(Lcom/qq/e/ads/splash/SplashAD;B)V

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NSPVI;->setAdListener(Lcom/qq/e/comm/adevent/ADListener;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/splash/SplashAD$1;->f:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NSPVI;->setSkipView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/splash/SplashAD$1;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NSPVI;->setFloatView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v1}, Lcom/qq/e/ads/splash/SplashAD;->c(Lcom/qq/e/ads/splash/SplashAD;)I

    move-result v1

    iget-object v2, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v2}, Lcom/qq/e/ads/splash/SplashAD;->d(Lcom/qq/e/ads/splash/SplashAD;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/qq/e/comm/pi/NSPVI;->setAdLogoMargin(II)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v1}, Lcom/qq/e/ads/splash/SplashAD;->e(Lcom/qq/e/ads/splash/SplashAD;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NSPVI;->setPreloadView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->f(Lcom/qq/e/ads/splash/SplashAD;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v1}, Lcom/qq/e/ads/splash/SplashAD;->f(Lcom/qq/e/ads/splash/SplashAD;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/splash/SplashAD;->fetchAndShowIn(Landroid/view/ViewGroup;)V

    :cond_dc
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->g(Lcom/qq/e/ads/splash/SplashAD;)Z

    move-result v0

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->preload()V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;Z)Z

    :cond_f9
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->h(Lcom/qq/e/ads/splash/SplashAD;)Z

    move-result v0

    if-eqz v0, :cond_116

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->fetchAdOnly()V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qq/e/ads/splash/SplashAD;->b(Lcom/qq/e/ads/splash/SplashAD;Z)Z

    :cond_116
    :goto_116
    return-void

    :cond_117
    const-string v0, "SplashAdView created by factory return null"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/splash/SplashAD$1;->h:Lcom/qq/e/ads/splash/SplashADListener;

    const v2, 0x30da7

    invoke-static {v0, v1, v2}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/ads/splash/SplashADListener;I)V
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12a} :catch_12b

    goto :goto_116

    :catch_12b
    move-exception v0

    const-string v1, "Unknown Exception"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qq/e/comm/managers/plugin/PM;->autoRollbackPlugin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/splash/SplashAD$1;->h:Lcom/qq/e/ads/splash/SplashADListener;

    const/16 v2, 0x25d

    invoke-static {v0, v1, v2}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/ads/splash/SplashADListener;I)V

    goto :goto_116

    :cond_14e
    :try_start_14e
    const-string v0, "factory return null"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/splash/SplashAD$1;->h:Lcom/qq/e/ads/splash/SplashADListener;

    const v2, 0x30da7

    invoke-static {v0, v1, v2}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/ads/splash/SplashADListener;I)V
    :try_end_161
    .catch Ljava/lang/Throwable; {:try_start_14e .. :try_end_161} :catch_12b

    goto :goto_116
.end method
