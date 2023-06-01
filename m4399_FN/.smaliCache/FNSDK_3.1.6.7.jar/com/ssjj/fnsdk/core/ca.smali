.class Lcom/ssjj/fnsdk/core/ca;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/bz;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/bz;Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ca;->a:Lcom/ssjj/fnsdk/core/bz;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/ca;->b:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ca;->a:Lcom/ssjj/fnsdk/core/bz;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/bz;->a(Lcom/ssjj/fnsdk/core/bz;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ca;->b:Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V

    return-void
.end method
