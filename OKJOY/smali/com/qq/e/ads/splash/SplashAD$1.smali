.class Lcom/qq/e/ads/splash/SplashAD$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/splash/SplashAD;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/qq/e/ads/splash/SplashADListener;ILjava/util/Map;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:I

.field final synthetic f:Landroid/view/View;

.field final synthetic g:Landroid/view/View;

.field final synthetic h:Lcom/qq/e/ads/splash/SplashADListener;

.field final synthetic i:Lcom/qq/e/ads/splash/SplashAD;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/splash/SplashAD;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILandroid/view/View;Landroid/view/View;Lcom/qq/e/ads/splash/SplashADListener;)V
    .registers 10
    .param p1, "this$0"    # Lcom/qq/e/ads/splash/SplashAD;

    .prologue
    iput-object p1, p0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    iput-object p2, p0, Lcom/qq/e/ads/splash/SplashAD$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/qq/e/ads/splash/SplashAD$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/qq/e/ads/splash/SplashAD$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/qq/e/ads/splash/SplashAD$1;->d:Ljava/util/Map;

    iput p6, p0, Lcom/qq/e/ads/splash/SplashAD$1;->e:I

    iput-object p7, p0, Lcom/qq/e/ads/splash/SplashAD$1;->f:Landroid/view/View;

    iput-object p8, p0, Lcom/qq/e/ads/splash/SplashAD$1;->g:Landroid/view/View;

    iput-object p9, p0, Lcom/qq/e/ads/splash/SplashAD$1;->h:Lcom/qq/e/ads/splash/SplashADListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/qq/e/ads/splash/SplashAD$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :try_start_e
    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/e/comm/managers/plugin/PM;->getPOFactory()Lcom/qq/e/comm/pi/POFactory;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/qq/e/ads/splash/SplashAD$1$1;

    invoke-direct {v2, p0, v0}, Lcom/qq/e/ads/splash/SplashAD$1$1;-><init>(Lcom/qq/e/ads/splash/SplashAD$1;Lcom/qq/e/comm/pi/POFactory;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2b
    .catch Lcom/qq/e/comm/managers/plugin/c; {:try_start_e .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2b} :catch_3d

    :cond_2b
    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    const-string v1, "Fail to init splash plugin"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1;->h:Lcom/qq/e/ads/splash/SplashADListener;

    const v2, 0x30da6

    invoke-static {v0, v1, v2}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/ads/splash/SplashADListener;I)V

    goto :goto_2b

    :catch_3d
    move-exception v0

    const-string v1, "Unknown Exception"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/qq/e/ads/splash/SplashAD$1;->i:Lcom/qq/e/ads/splash/SplashAD;

    iget-object v1, p0, Lcom/qq/e/ads/splash/SplashAD$1;->h:Lcom/qq/e/ads/splash/SplashADListener;

    const/16 v2, 0x25d

    invoke-static {v0, v1, v2}, Lcom/qq/e/ads/splash/SplashAD;->a(Lcom/qq/e/ads/splash/SplashAD;Lcom/qq/e/ads/splash/SplashADListener;I)V

    goto :goto_2b
.end method
