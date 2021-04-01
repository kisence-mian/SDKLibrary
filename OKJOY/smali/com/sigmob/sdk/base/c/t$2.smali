.class Lcom/sigmob/sdk/base/c/t$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/c/t;->a(Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/sigmob/sdk/base/c/t;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/c/t;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/base/c/t$2;->b:Lcom/sigmob/sdk/base/c/t;

    iput-object p2, p0, Lcom/sigmob/sdk/base/c/t$2;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/q;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/volley/q;->j()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/t$2;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
