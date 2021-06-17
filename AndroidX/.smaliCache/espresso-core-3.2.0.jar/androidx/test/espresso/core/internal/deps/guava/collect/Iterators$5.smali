.class Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$5;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators;->filter(Ljava/util/Iterator;Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;)Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$retainIfTrue:Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;

.field final synthetic val$unfiltered:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$unfiltered",
            "val$retainIfTrue"
        }
    .end annotation

    .line 632
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$5;->val$unfiltered:Ljava/util/Iterator;

    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$5;->val$retainIfTrue:Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;

    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 635
    :goto_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$5;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 636
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$5;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 637
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$5;->val$retainIfTrue:Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;

    invoke-interface {v1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 638
    return-object v0

    .line 640
    :cond_17
    goto :goto_0

    .line 641
    :cond_18
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$5;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
