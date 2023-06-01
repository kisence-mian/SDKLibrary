.class Lcom/ssjj/fnsdk/core/cj;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cj;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cj;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/cj;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/cj;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "bind delay on"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cj;->b:Landroid/app/Activity;

    new-instance v1, Lcom/ssjj/fnsdk/core/ck;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cj;->b:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/ssjj/fnsdk/core/ck;-><init>(Lcom/ssjj/fnsdk/core/cj;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
