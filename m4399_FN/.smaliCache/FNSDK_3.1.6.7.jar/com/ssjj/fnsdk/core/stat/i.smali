.class Lcom/ssjj/fnsdk/core/stat/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/stat/q;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/stat/d;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/stat/j;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/stat/d;Lcom/ssjj/fnsdk/core/stat/j;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/i;->a:Lcom/ssjj/fnsdk/core/stat/d;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/stat/i;->b:Lcom/ssjj/fnsdk/core/stat/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/i;->b:Lcom/ssjj/fnsdk/core/stat/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ssjj/fnsdk/core/stat/j;->g:Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/i;->b:Lcom/ssjj/fnsdk/core/stat/j;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/stat/j;->h()V

    const-string v0, "#Send LogFile \'"

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/stat/i;->a:Lcom/ssjj/fnsdk/core/stat/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/i;->b:Lcom/ssjj/fnsdk/core/stat/j;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/stat/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/stat/d;->a(Lcom/ssjj/fnsdk/core/stat/d;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/stat/i;->b:Lcom/ssjj/fnsdk/core/stat/j;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/stat/j;->e()Z

    goto :goto_50

    :cond_32
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/stat/i;->a:Lcom/ssjj/fnsdk/core/stat/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/i;->b:Lcom/ssjj/fnsdk/core/stat/j;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/stat/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/stat/d;->a(Lcom/ssjj/fnsdk/core/stat/d;Ljava/lang/String;)V

    :goto_50
    return-void
.end method
