.class public Lcom/kwad/sdk/core/imageloader/cache/memory/impl/WeakMemoryCache;
.super Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/memory/BaseMemoryCache;-><init>()V

    return-void
.end method


# virtual methods
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
