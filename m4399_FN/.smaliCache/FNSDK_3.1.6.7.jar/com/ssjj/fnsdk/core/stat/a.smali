.class Lcom/ssjj/fnsdk/core/stat/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/stat/FNStat;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/stat/FNStat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/a;->a:Lcom/ssjj/fnsdk/core/stat/FNStat;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/stat/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/stat/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/stat/a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/a;->a:Lcom/ssjj/fnsdk/core/stat/FNStat;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/stat/FNStat;->a(Lcom/ssjj/fnsdk/core/stat/FNStat;)Lcom/ssjj/fnsdk/core/stat/d;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/stat/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/stat/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/stat/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
