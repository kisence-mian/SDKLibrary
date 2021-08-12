.class final Lcom/kwad/sdk/core/response/model/TrendInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/response/model/TrendInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/kwad/sdk/core/response/model/TrendInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/response/model/TrendInfo;Lcom/kwad/sdk/core/response/model/TrendInfo;)I
    .registers 5

    iget v0, p1, Lcom/kwad/sdk/core/response/model/TrendInfo;->rank:I

    iget v1, p2, Lcom/kwad/sdk/core/response/model/TrendInfo;->rank:I

    if-ne v0, v1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    iget p1, p1, Lcom/kwad/sdk/core/response/model/TrendInfo;->rank:I

    iget p2, p2, Lcom/kwad/sdk/core/response/model/TrendInfo;->rank:I

    if-le p1, p2, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, -0x1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/kwad/sdk/core/response/model/TrendInfo;

    check-cast p2, Lcom/kwad/sdk/core/response/model/TrendInfo;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/core/response/model/TrendInfo$1;->a(Lcom/kwad/sdk/core/response/model/TrendInfo;Lcom/kwad/sdk/core/response/model/TrendInfo;)I

    move-result p1

    return p1
.end method
