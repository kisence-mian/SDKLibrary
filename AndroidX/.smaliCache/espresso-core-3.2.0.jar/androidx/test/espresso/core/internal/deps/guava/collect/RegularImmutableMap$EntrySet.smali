.class Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient keyOffset:I

.field private final transient map:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;[Ljava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "map",
            "alternatingKeysAndValues",
            "keyOffset",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;-><init>()V

    .line 276
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->map:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;

    .line 277
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 278
    iput p3, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->keyOffset:I

    .line 279
    iput p4, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->size:I

    .line 280
    return-void
.end method

.method static synthetic access$000(Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;)I
    .registers 1

    .line 269
    iget p0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->size:I

    return p0
.end method

.method static synthetic access$100(Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;)[Ljava/lang/Object;
    .registers 1

    .line 269
    iget-object p0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->alternatingKeysAndValues:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;)I
    .registers 1

    .line 269
    iget p0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->keyOffset:I

    return p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 319
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 320
    check-cast p1, Ljava/util/Map$Entry;

    .line 321
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 322
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 323
    if-eqz p1, :cond_1e

    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->map:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;

    invoke-virtual {v2, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1

    .line 325
    :cond_1f
    return v1
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dst",
            "offset"
        }
    .end annotation

    .line 289
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->asList()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method createAsList()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 294
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet$1;-><init>(Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;)V

    return-object v0
.end method

.method public iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->asList()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 269
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 335
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$EntrySet;->size:I

    return v0
.end method
