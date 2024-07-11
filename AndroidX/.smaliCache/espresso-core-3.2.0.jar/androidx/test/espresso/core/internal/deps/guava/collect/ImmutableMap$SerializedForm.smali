.class Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final keys:[Ljava/lang/Object;

.field private final values:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap<",
            "**>;)V"
        }
    .end annotation

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    .line 713
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    .line 714
    nop

    .line 715
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;->entrySet()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 716
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 717
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v0

    .line 718
    add-int/lit8 v0, v0, 0x1

    .line 719
    goto :goto_1d

    .line 720
    :cond_3c
    return-void
.end method


# virtual methods
.method createMap(Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 728
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    .line 729
    aget-object v1, v1, v0

    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$SerializedForm;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 731
    :cond_12
    invoke-virtual {p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;->build()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method readResolve()Ljava/lang/Object;
    .registers 3

    .line 723
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$SerializedForm;->keys:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;-><init>(I)V

    .line 724
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$SerializedForm;->createMap(Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap$Builder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
