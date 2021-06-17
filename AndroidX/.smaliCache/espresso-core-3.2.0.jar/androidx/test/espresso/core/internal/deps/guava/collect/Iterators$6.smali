.class Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$6;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/TransformedIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators;->transform(Ljava/util/Iterator;Landroidx/test/espresso/core/internal/deps/guava/base/Function;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/collect/TransformedIterator<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Landroidx/test/espresso/core/internal/deps/guava/base/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x1010
        }
        names = {
            "backingIterator",
            "val$function"
        }
    .end annotation

    .line 783
    iput-object p2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$6;->val$function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    invoke-direct {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .line 786
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$6;->val$function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    invoke-interface {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
