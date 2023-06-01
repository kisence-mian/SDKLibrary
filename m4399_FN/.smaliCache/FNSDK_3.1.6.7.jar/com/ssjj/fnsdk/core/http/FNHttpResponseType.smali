.class public Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

.field public code:I

.field public data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/http/FNHttpRequest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-void
.end method

.method public constructor <init>(Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ssjj/fnsdk/core/http/FNHttpResponseType<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;->code:I

    iput v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;->code:I

    iget-object v0, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;->msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;->msg:Ljava/lang/String;

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/ssjj/fnsdk/core/http/FNHttpRequest;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;->a:Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-object v0
.end method

.method public isSucc()Z
    .registers 3

    iget v0, p0, Lcom/ssjj/fnsdk/core/http/FNHttpResponseType;->code:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
