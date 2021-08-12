.class Lcom/sigmob/sdk/common/mta/BuriedPointManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/common/e/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/common/mta/BuriedPointManager;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/common/mta/BuriedPointManager;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/common/mta/BuriedPointManager;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/mta/BuriedPointManager$1;->a:Lcom/sigmob/sdk/common/mta/BuriedPointManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/sigmob/volley/t;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/BuriedPointManager$1;->a:Lcom/sigmob/sdk/common/mta/BuriedPointManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/common/mta/BuriedPointManager;->a(Lcom/sigmob/sdk/common/mta/BuriedPointManager;Z)Z

    invoke-virtual {p1}, Lcom/sigmob/volley/t;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/mta/BuriedPointManager$1;->a:Lcom/sigmob/sdk/common/mta/BuriedPointManager;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/BuriedPointManager;->clearLog()V

    return-void
.end method
