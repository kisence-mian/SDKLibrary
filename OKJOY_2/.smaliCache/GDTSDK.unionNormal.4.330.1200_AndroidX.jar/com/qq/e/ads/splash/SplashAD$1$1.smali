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

    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iput-object p2, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    const v1, 0x30da7

    if-eqz v0, :cond_149

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v2, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v3, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v3, v3, Lcom/qq/e/ads/splash/SplashAD$1;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v4, v4, Lcom/qq/e/ads/splash/SplashAD$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v5, v5, Lcom/qq/e/ads/splash/SplashAD$1;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/qq/e/comm/pi/POFactory;->getNativeSplashAdView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/comm/pi/NSPVI;)Lcom/qq/e/comm/pi/NSPVI;

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    if-eqz v0, :cond_138

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->b(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/constants/LoadAdParams;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v1}, Lcom/qq/e/ads/splash/SplashAD;->b(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/constants/LoadAdParams;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NSPVI;->setLoadAdParams(Lcom/qq/e/comm/constants/LoadAdParams;)V

    :cond_47
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

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->h:Lcom/qq/e/ads/splash/SplashADListener;

    instance-of v0, v0, Lcom/qq/e/ads/splash/SplashADZoomOutListener;

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->h:Lcom/qq/e/ads/splash/SplashADListener;

    check-cast v0, Lcom/qq/e/ads/splash/SplashADZoomOutListener;

    invoke-interface {v0}, Lcom/qq/e/ads/splash/SplashADZoomOutListener;->isSupportZoomOut()Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/NSPVI;->setSupportZoomOut(Z)V

    :cond_e6
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->f(Lcom/qq/e/ads/splash/SplashAD;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v1}, Lcom/qq/e/ads/splash/SplashAD;->f(Lcom/qq/e/ads/splash/SplashAD;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/splash/SplashAD;->fetchAndShowIn(Landroid/view/ViewGroup;)V

    :cond_ff
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->g(Lcom/qq/e/ads/splash/SplashAD;)Z

    move-result v0

    if-eqz v0, :cond_11b

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->preload()V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0, v3}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;Z)Z

    :cond_11b
    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->h(Lcom/qq/e/ads/splash/SplashAD;)Z

    move-result v0

    if-eqz v0, :cond_159

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;)Lcom/qq/e/comm/pi/NSPVI;

    move-result-object v0

    invoke-interface {v0}, Lcom/qq/e/comm/pi/NSPVI;->fetchAdOnly()V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    invoke-static {v0, v3}, Lcom/qq/e/ads/splash/SplashAD;->b(Lcom/qq/e/ads/splash/SplashAD;Z)Z

    goto :goto_16d

    :cond_138
    const-string v0, "SplashAdView created by factory return null"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v2, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/splash/SplashAD$1;->h:Lcom/qq/e/ads/splash/SplashADListener;

    invoke-static {v0, v2, v1}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/ads/splash/SplashADListener;I)V

    goto :goto_16d

    :cond_149
    const-string v0, "factory return null"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v2, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/splash/SplashAD$1;->h:Lcom/qq/e/ads/splash/SplashADListener;

    invoke-static {v0, v2, v1}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/ads/splash/SplashADListener;I)V
    :try_end_159
    .catchall {:try_start_0 .. :try_end_159} :catchall_15a

    :cond_159
    return-void

    :catchall_15a
    move-exception v0

    const-string v1, "Unknown Exception"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1$1;->b:Lcom/qq/e/ads/splash/SplashAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/splash/SplashAD$1;->h:Lcom/qq/e/ads/splash/SplashADListener;

    const/16 v2, 0x1770

    invoke-static {v0, v1, v2}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/ads/splash/SplashADListener;I)V

    :goto_16d
    return-void
.end method
