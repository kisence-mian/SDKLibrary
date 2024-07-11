.class Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AccessQueue$2;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractSequentialIterator;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AccessQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractSequentialIterator<",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AccessQueue;


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AccessQueue;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "firstOrNull"
        }
    .end annotation

    .line 3773
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AccessQueue$2;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AccessQueue;

    invoke-direct {p0, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected computeNext(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previous"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3776
    invoke-interface {p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;->getNextInAccessQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    .line 3777
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AccessQueue$2;->this$0:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AccessQueue;

    iget-object v0, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AccessQueue;->head:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    if-ne p1, v0, :cond_b

    const/4 p1, 0x0

    :cond_b
    return-object p1
.end method

.method protected bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "previous"
        }
    .end annotation

    .line 3773
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$AccessQueue$2;->computeNext(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    return-object p1
.end method
