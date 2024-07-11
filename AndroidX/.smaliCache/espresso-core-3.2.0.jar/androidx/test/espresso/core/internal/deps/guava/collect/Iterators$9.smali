.class Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$9;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$value"
        }
    .end annotation

    .line 1056
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$9;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 1061
    iget-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$9;->done:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1066
    iget-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$9;->done:Z

    if-nez v0, :cond_a

    .line 1069
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$9;->done:Z

    .line 1070
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators$9;->val$value:Ljava/lang/Object;

    return-object v0

    .line 1067
    :cond_a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
