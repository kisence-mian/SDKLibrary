.class Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1$1;
.super Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1;


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 292
    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1$1;->this$0:Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1;

    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;-><init>()V

    .line 293
    iget-object p1, p1, Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1;->val$optionals:Ljava/lang/Iterable;

    .line 294
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    .line 293
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

    .line 298
    :goto_0
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 299
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    .line 300
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 301
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 303
    :cond_1b
    goto :goto_0

    .line 304
    :cond_1c
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
