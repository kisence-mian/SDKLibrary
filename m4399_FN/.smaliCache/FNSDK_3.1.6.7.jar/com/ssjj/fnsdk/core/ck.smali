.class Lcom/ssjj/fnsdk/core/ck;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/cj;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/cj;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/ck;->a:Lcom/ssjj/fnsdk/core/cj;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/ck;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/ck;->a:Lcom/ssjj/fnsdk/core/cj;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/cj;->a(Lcom/ssjj/fnsdk/core/cj;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/ck;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/Activity;)V

    return-void
.end method
