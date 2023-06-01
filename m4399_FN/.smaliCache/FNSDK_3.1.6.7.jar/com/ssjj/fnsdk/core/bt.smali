.class Lcom/ssjj/fnsdk/core/bt;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bt;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bt;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;->f:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$CheckOrderListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$CheckOrderListener;->onFail()V

    return-void
.end method
