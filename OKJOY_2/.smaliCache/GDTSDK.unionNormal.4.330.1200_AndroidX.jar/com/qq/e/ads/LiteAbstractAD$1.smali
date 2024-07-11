.class Lcom/qq/e/ads/LiteAbstractAD$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/LiteAbstractAD;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/qq/e/ads/LiteAbstractAD;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/LiteAbstractAD;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/qq/e/ads/LiteAbstractAD$1;->d:Lcom/qq/e/ads/LiteAbstractAD;

    iput-object p2, p0, Lcom/qq/e/ads/LiteAbstractAD$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/qq/e/ads/LiteAbstractAD$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/qq/e/ads/LiteAbstractAD$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qq/e/ads/LiteAbstractAD$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/qq/e/ads/LiteAbstractAD$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qq/e/comm/managers/GDTADManager;->initWith(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

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

    new-instance v2, Lcom/qq/e/ads/LiteAbstractAD$1$1;

    invoke-direct {v2, p0, v0}, Lcom/qq/e/ads/LiteAbstractAD$1$1;-><init>(Lcom/qq/e/ads/LiteAbstractAD$1;Lcom/qq/e/comm/pi/POFactory;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v0

    const-string v1, "Exception while init plugin"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/qq/e/ads/LiteAbstractAD$1;->d:Lcom/qq/e/ads/LiteAbstractAD;

    const v1, 0x30da6

    :goto_37
    invoke-virtual {v0, v1}, Lcom/qq/e/ads/LiteAbstractAD;->a(I)V

    return-void

    :cond_3b
    const-string v0, "Fail to init ADManager"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/LiteAbstractAD$1;->d:Lcom/qq/e/ads/LiteAbstractAD;

    const v1, 0x30da5

    goto :goto_37
.end method
