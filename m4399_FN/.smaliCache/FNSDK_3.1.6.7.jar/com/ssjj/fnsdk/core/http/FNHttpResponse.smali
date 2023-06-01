.class public Lcom/ssjj/fnsdk/core/http/FNHttpResponse;
.super Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ssjj/fnsdk/core/http/FNHttpResponseType<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/http/FNHttpRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;-><init>(Lcom/ssjj/fnsdk/core/http/FNHttpRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ssjj/fnsdk/core/http/FNHttpResponseType<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;-><init>(Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;)V

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;->data:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpResponse;->data:Ljava/lang/Object;

    return-void
.end method
