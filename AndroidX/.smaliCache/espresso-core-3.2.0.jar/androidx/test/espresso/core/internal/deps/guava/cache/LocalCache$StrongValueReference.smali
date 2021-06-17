.class Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongValueReference;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StrongValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "referent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1538
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongValueReference;->referent:Ljava/lang/Object;

    .line 1539
    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;)Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;
    .registers 4
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

    .line 1559
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1543
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$StrongValueReference;->referent:Ljava/lang/Object;

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

    .line 1553
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWeight()I
    .registers 2

    .line 1548
    const/4 v0, 0x1

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 1569
    const/4 v0, 0x1

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .line 1564
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

    .line 1578
    return-void
.end method
