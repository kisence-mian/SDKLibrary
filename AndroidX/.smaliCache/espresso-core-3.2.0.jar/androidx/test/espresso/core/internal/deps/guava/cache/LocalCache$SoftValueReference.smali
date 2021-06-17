.class Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$SoftValueReference;
.super Ljava/lang/ref/SoftReference;
.source "LocalCache.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoftValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference<",
        "TV;>;",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final entry:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "queue",
            "referent",
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1494
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1495
    iput-object p3, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$SoftValueReference;->entry:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    .line 1496
    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "queue",
            "value",
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1514
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$SoftValueReference;

    invoke-direct {v0, p1, p2, p3}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$SoftValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)V

    return-object v0
.end method

.method public getEntry()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1505
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$SoftValueReference;->entry:Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;

    return-object v0
.end method

.method public getWeight()I
    .registers 2

    .line 1500
    const/4 v0, 0x1

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 1524
    const/4 v0, 0x1

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .line 1519
    const/4 v0, 0x0

    return v0
.end method

.method public notifyNewValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1509
    return-void
.end method
