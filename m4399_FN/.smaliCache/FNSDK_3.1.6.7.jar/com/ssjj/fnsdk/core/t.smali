.class Lcom/ssjj/fnsdk/core/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/s;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:J

.field private final synthetic d:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;JLcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/t;->a:Lcom/ssjj/fnsdk/core/s;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/t;->b:Landroid/app/Activity;

    iput-wide p3, p0, Lcom/ssjj/fnsdk/core/t;->c:J

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/t;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/t;->a:Lcom/ssjj/fnsdk/core/s;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/t;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/s;->a(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init cb fail "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ssjj/fnsdk/core/t;->c:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    const/16 v0, 0x65

    invoke-static {v0, p1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/t;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onSucceed()V
    .registers 6

    const/16 v0, 0x64

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/t;->a:Lcom/ssjj/fnsdk/core/s;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/t;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/s;->a(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init cb succ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ssjj/fnsdk/core/t;->c:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/t;->d:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    invoke-interface {v0}, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;->onSucceed()V

    return-void
.end method
