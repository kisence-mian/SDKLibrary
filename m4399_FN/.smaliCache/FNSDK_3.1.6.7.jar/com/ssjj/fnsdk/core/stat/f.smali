.class Lcom/ssjj/fnsdk/core/stat/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/stat/k$a;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/stat/d;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/stat/d;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/f;->a:Lcom/ssjj/fnsdk/core/stat/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ssjj/fnsdk/core/stat/j;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/f;->a:Lcom/ssjj/fnsdk/core/stat/d;

    const-string v1, "LogFile is full, send log..."

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/stat/d;->a(Lcom/ssjj/fnsdk/core/stat/d;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/f;->a:Lcom/ssjj/fnsdk/core/stat/d;

    invoke-static {v0, p1}, Lcom/ssjj/fnsdk/core/stat/d;->a(Lcom/ssjj/fnsdk/core/stat/d;Lcom/ssjj/fnsdk/core/stat/j;)V

    return-void
.end method
