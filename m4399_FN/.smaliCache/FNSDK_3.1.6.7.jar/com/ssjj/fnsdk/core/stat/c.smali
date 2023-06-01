.class Lcom/ssjj/fnsdk/core/stat/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/stat/FNStat;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/stat/FNStat;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/c;->a:Lcom/ssjj/fnsdk/core/stat/FNStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/c;->a:Lcom/ssjj/fnsdk/core/stat/FNStat;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/stat/FNStat;->a(Lcom/ssjj/fnsdk/core/stat/FNStat;)Lcom/ssjj/fnsdk/core/stat/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/stat/d;->a()V

    return-void
.end method
