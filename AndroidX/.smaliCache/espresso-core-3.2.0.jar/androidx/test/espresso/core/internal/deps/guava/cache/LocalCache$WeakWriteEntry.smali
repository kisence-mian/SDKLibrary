.class final Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakWriteEntry;
.super Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakWriteEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field nextWrite:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousWrite:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile writeTime:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "queue",
            "key",
            "hash",
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1314
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 1319
    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakWriteEntry;->writeTime:J

    .line 1332
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->nullEntry()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakWriteEntry;->nextWrite:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 1345
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->nullEntry()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakWriteEntry;->previousWrite:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 1315
    return-void
.end method


# virtual methods
.method public getNextInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1336
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakWriteEntry;->nextWrite:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1349
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakWriteEntry;->previousWrite:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .registers 3

    .line 1323
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public setNextInWriteQueue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1341
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakWriteEntry;->nextWrite:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 1342
    return-void
.end method

.method public setPreviousInWriteQueue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 2
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
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1354
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakWriteEntry;->previousWrite:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 1355
    return-void
.end method

.method public setWriteTime(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1328
    iput-wide p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$WeakWriteEntry;->writeTime:J

    .line 1329
    return-void
.end method
