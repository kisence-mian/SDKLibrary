.class Lcom/sigmob/sdk/base/common/b/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/c/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/b/a;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/b/a;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/b/a$3;->a:Lcom/sigmob/sdk/base/common/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$3;->a:Lcom/sigmob/sdk/base/common/b/a;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/b/a;->e(Lcom/sigmob/sdk/base/common/b/a;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/ae;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/b/a$3;->a:Lcom/sigmob/sdk/base/common/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/common/b/a;Z)Z

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    return-void
.end method
