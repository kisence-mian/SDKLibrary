.class Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$1;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 698
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .registers 2

    .line 680
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntry()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 690
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWeight()I
    .registers 2

    .line 685
    const/4 v0, 0x0

    return v0
.end method

.method public isActive()Z
    .registers 2

    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .line 703
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

    .line 717
    return-void
.end method
