.class public Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FIFOLimitedMemoryCache;
.super Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;


# instance fields
.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;-><init>(I)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-super {p0}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->clear()V

    return-void
.end method

.method protected createReference(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Ljava/lang/ref/Reference;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;",
            ")",
            "Ljava/lang/ref/Reference<",
            "Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected getSize(Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)I
    .registers 2

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;->getByteSize()I

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->put(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public remove(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .registers 4

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->get(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b
    invoke-super {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/memory/LimitedMemoryCache;->remove(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    move-result-object p1

    return-object p1
.end method

.method protected removeNext()Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/memory/impl/FIFOLimitedMemoryCache;->queue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/core/decode/DecodedResult;

    return-object v0
.end method
