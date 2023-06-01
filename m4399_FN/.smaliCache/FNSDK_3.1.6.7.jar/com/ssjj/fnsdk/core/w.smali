.class Lcom/ssjj/fnsdk/core/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/s;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/s;Lcom/ssjj/fnsdk/core/SsjjFNAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/w;->a:Lcom/ssjj/fnsdk/core/s;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/w;->b:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/w;->b:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x66

    invoke-static {v0, p1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    return-void
.end method

.method public onSucceed()V
    .registers 1

    return-void
.end method
