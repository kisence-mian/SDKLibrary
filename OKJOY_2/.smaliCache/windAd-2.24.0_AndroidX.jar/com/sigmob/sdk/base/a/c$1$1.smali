.class Lcom/sigmob/sdk/base/a/c$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/a/c$1;->a(Lcom/sigmob/volley/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/a/c$1;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/a/c$1;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/a/c$1$1;->a:Lcom/sigmob/sdk/base/a/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/c$1$1;->a:Lcom/sigmob/sdk/base/a/c$1;

    iget-object v0, v0, Lcom/sigmob/sdk/base/a/c$1;->a:Lcom/sigmob/sdk/base/common/e;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/e;->c()V

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/a;->a(Z)V

    return-void
.end method
