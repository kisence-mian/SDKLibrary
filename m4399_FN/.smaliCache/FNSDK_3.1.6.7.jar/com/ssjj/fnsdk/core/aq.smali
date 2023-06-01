.class Lcom/ssjj/fnsdk/core/aq;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/aq;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/aq;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;J)V

    return-void
.end method
