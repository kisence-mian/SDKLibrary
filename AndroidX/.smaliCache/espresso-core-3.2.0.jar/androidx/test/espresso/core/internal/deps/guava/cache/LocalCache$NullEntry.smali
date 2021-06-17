.class final enum Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;
.super Ljava/lang/Enum;
.source "LocalCache.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NullEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;",
        ">;",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;

.field public static final enum INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 727
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;->INSTANCE:Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;

    .line 726
    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;

    aput-object v0, v1, v2

    sput-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 726
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;
    .registers 1

    .line 726
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;->$VALUES:[Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;

    invoke-virtual {v0}, [Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$NullEntry;

    return-object v0
.end method


# virtual methods
.method public getAccessTime()J
    .registers 3

    .line 754
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHash()I
    .registers 2

    .line 744
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .line 749
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNext()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
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

    .line 739
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextInAccessQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 762
    return-object p0
.end method

.method public getNextInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 786
    return-object p0
.end method

.method public getPreviousInAccessQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 770
    return-object p0
.end method

.method public getPreviousInWriteQueue()Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/ReferenceEntry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 794
    return-object p0
.end method

.method public getValueReference()Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 731
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWriteTime()J
    .registers 3

    .line 778
    const-wide/16 v0, 0x0

    return-wide v0
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

    .line 758
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
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 766
    return-void
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
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 790
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
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 774
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
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 798
    return-void
.end method

.method public setValueReference(Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "valueReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LocalCache$ValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 735
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

    .line 782
    return-void
.end method
