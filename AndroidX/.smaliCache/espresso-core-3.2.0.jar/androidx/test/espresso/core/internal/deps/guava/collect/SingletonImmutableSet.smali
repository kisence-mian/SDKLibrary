.class final Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
.source "SingletonImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient cachedHashCode:I

.field final transient element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
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
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;-><init>()V

    .line 44
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "element",
            "hashCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 50
    iput p2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 51
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 80
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    aput-object v0, p1, p2

    .line 81
    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method createAsList()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->of(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 87
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 88
    if-nez v0, :cond_c

    .line 89
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;->cachedHashCode:I

    .line 91
    :cond_c
    return v0
.end method

.method isHashCodeFast()Z
    .registers 2

    .line 96
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;->cachedHashCode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 29
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;->iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 101
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
