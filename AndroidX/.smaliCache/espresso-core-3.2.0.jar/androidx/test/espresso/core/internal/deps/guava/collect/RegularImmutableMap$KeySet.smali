.class final Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient list:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient map:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "map",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap<",
            "TK;*>;",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TK;>;)V"
        }
    .end annotation

    .line 379
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;-><init>()V

    .line 380
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;->map:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;

    .line 381
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;->list:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    .line 382
    return-void
.end method


# virtual methods
.method public asList()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TK;>;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;->list:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;->map:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
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

    .line 391
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;->asList()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator<",
            "TK;>;"
        }
    .end annotation

    .line 386
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;->asList()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 375
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;->iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 411
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableMap$KeySet;->map:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method
