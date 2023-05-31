.class Lcom/sigmob/sdk/base/c/u$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/c/u;-><init>(Lcom/sigmob/sdk/base/c/t;Lcom/sigmob/volley/q;ILandroid/os/Handler;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/c/t;

.field final synthetic b:Lcom/sigmob/volley/q;

.field final synthetic c:Lcom/sigmob/sdk/base/c/u;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/c/u;Lcom/sigmob/sdk/base/c/t;Lcom/sigmob/volley/q;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/sdk/base/c/u$1;->c:Lcom/sigmob/sdk/base/c/u;

    iput-object p2, p0, Lcom/sigmob/sdk/base/c/u$1;->a:Lcom/sigmob/sdk/base/c/t;

    iput-object p3, p0, Lcom/sigmob/sdk/base/c/u$1;->b:Lcom/sigmob/volley/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/u$1;->c:Lcom/sigmob/sdk/base/c/u;

    iget-object v0, v0, Lcom/sigmob/sdk/base/c/u;->d:Lcom/sigmob/sdk/base/c/t;

    invoke-static {v0}, Lcom/sigmob/sdk/base/c/t;->a(Lcom/sigmob/sdk/base/c/t;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/u$1;->b:Lcom/sigmob/volley/q;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/u$1;->c:Lcom/sigmob/sdk/base/c/u;

    iget-object v0, v0, Lcom/sigmob/sdk/base/c/u;->d:Lcom/sigmob/sdk/base/c/t;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/u$1;->b:Lcom/sigmob/volley/q;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/c/t;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/q;

    return-void
.end method
