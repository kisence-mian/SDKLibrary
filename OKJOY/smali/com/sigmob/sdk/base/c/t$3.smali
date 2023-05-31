.class Lcom/sigmob/sdk/base/c/t$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/volley/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/c/t;->c(Lcom/sigmob/volley/q;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/volley/q;

.field final synthetic b:Lcom/sigmob/sdk/base/c/t;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/c/t;Lcom/sigmob/volley/q;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/base/c/t$3;->b:Lcom/sigmob/sdk/base/c/t;

    iput-object p2, p0, Lcom/sigmob/sdk/base/c/t$3;->a:Lcom/sigmob/volley/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sigmob/volley/q;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/q",
            "<*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/t$3;->a:Lcom/sigmob/volley/q;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
