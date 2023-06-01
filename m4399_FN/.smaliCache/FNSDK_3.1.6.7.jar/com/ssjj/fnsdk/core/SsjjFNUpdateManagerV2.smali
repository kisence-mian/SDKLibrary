.class public Lcom/ssjj/fnsdk/core/SsjjFNUpdateManagerV2;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManagerV2;->b(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->getInstance()Lcom/ssjj/fnsdk/core/FNUpdateManager;

    move-result-object v0

    check-cast p0, Landroid/app/Activity;

    new-instance v1, Lcom/ssjj/fnsdk/core/dg;

    invoke-direct {v1, p2}, Lcom/ssjj/fnsdk/core/dg;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->showUpdateDialog(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method public static checkUpdateInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->getInstance()Lcom/ssjj/fnsdk/core/FNUpdateManager;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/app/Activity;

    new-instance v0, Lcom/ssjj/fnsdk/core/df;

    invoke-direct {v0, p0, p3}, Lcom/ssjj/fnsdk/core/df;-><init>(Landroid/content/Context;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    invoke-virtual {p1, p2, v0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->getUpdateInfo(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method
