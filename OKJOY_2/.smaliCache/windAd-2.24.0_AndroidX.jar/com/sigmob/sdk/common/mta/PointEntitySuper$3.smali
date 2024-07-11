.class Lcom/sigmob/sdk/common/mta/PointEntitySuper$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/common/mta/PointEntitySuper;->insertToDB(Lcom/sigmob/sdk/common/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/common/a/c$a;

.field final synthetic b:Lcom/sigmob/sdk/common/mta/PointEntitySuper;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/common/mta/PointEntitySuper;Lcom/sigmob/sdk/common/a/c$a;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper$3;->b:Lcom/sigmob/sdk/common/mta/PointEntitySuper;

    iput-object p2, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper$3;->a:Lcom/sigmob/sdk/common/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper$3;->a:Lcom/sigmob/sdk/common/a/c$a;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/sigmob/sdk/common/a/c$a;->onFailed(Ljava/lang/Throwable;)V

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .registers 2

    const-string v0, "insert success!"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/PointEntitySuper$3;->a:Lcom/sigmob/sdk/common/a/c$a;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/sigmob/sdk/common/a/c$a;->onSuccess()V

    :cond_c
    return-void
.end method
