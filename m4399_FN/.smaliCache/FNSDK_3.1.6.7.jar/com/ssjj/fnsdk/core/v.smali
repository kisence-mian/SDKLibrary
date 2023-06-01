.class Lcom/ssjj/fnsdk/core/v;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/s;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/v;->a:Lcom/ssjj/fnsdk/core/s;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/v;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/v;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/v;->a:Lcom/ssjj/fnsdk/core/s;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/s;->c(Lcom/ssjj/fnsdk/core/s;)Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/v;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/v;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->checkAndUpdateVersion(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/v;->a:Lcom/ssjj/fnsdk/core/s;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/s;->d(Lcom/ssjj/fnsdk/core/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_30

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/v;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/v;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    invoke-virtual {v1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->checkAndUpdateVersion(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_17

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_30
    return-void
.end method
