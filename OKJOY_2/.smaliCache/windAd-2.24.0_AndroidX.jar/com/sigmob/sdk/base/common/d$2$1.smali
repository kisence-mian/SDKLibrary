.class Lcom/sigmob/sdk/base/common/d$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/d$2;->a(Ljava/lang/Error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/d$2;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/d$2;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/d$2$1;->a:Lcom/sigmob/sdk/base/common/d$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/common/a/c;->a()Lcom/sigmob/sdk/common/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/a/c;->b()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_10

    :catchall_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_10
    return-void
.end method
