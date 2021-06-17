.class final Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongAccessEntry;
.super Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongAccessEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile accessTime:J

.field nextAccess:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousAccess:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "hash",
            "next"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 979
    invoke-direct {p0, p1, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILandroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    .line 984
    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongAccessEntry;->accessTime:J

    .line 997
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->nullEntry()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongAccessEntry;->nextAccess:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 1010
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;->nullEntry()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongAccessEntry;->previousAccess:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 980
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .registers 3

    .line 988
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongAccessEntry;->accessTime:J

    return-wide v0
.end method

.method public getNextInAccessQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1001
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongAccessEntry;->nextAccess:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1014
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongAccessEntry;->previousAccess:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    return-object v0
.end method

.method public setAccessTime(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 993
    iput-wide p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongAccessEntry;->accessTime:J

    .line 994
    return-void
.end method

.method public setNextInAccessQueue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
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

    .line 1006
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongAccessEntry;->nextAccess:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 1007
    return-void
.end method

.method public setPreviousInAccessQueue(Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
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

    .line 1019
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongAccessEntry;->previousAccess:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 1020
    return-void
.end method
