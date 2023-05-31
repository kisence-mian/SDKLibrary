.class Lcom/sigmob/sdk/base/common/e$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/e$3;->a(Ljava/lang/Error;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/e$3;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/e$3;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/e$3$1;->a:Lcom/sigmob/sdk/base/common/e$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/base/a/l;->a()Lcom/sigmob/sdk/base/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/a/l;->b()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_7
.end method
