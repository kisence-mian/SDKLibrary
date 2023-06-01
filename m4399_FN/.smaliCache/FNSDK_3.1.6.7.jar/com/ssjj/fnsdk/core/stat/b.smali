.class Lcom/ssjj/fnsdk/core/stat/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/stat/FNStat;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/stat/FNStat;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/b;->a:Lcom/ssjj/fnsdk/core/stat/FNStat;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/stat/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/b;->a:Lcom/ssjj/fnsdk/core/stat/FNStat;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/stat/FNStat;->a(Lcom/ssjj/fnsdk/core/stat/FNStat;)Lcom/ssjj/fnsdk/core/stat/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/stat/d;->a(Ljava/lang/String;)V

    return-void
.end method
