.class Lcom/ssjj/fnsdk/core/cg;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;ZLjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cg;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iput-boolean p2, p0, Lcom/ssjj/fnsdk/core/cg;->b:Z

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/cg;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cg;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iget-boolean v1, p0, Lcom/ssjj/fnsdk/core/cg;->b:Z

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cg;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;ZLjava/lang/String;)V

    return-void
.end method
