.class Lcom/sigmob/sdk/a$1;
.super Lcom/sigmob/sdk/base/common/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/a;-><init>(Ljava/lang/String;Landroid/content/Context;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/a;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/a$1;->a:Lcom/sigmob/sdk/a;

    invoke-direct {p0, p2}, Lcom/sigmob/sdk/base/common/a/c;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/c/z;->f()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryFaildTracking error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_3
.end method
