.class abstract Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;
.super Ljava/lang/Object;
.source "AbstractIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->NOT_READY:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    .line 33
    return-void
.end method

.method private tryToComputeNext()Z
    .registers 3

    .line 67
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->FAILED:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    .line 68
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->DONE:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    if-eq v0, v1, :cond_16

    .line 70
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->READY:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    .line 71
    const/4 v0, 0x1

    return v0

    .line 73
    :cond_16
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 49
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->DONE:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 5

    .line 55
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->FAILED:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 56
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$1;->$SwitchMap$com$google$common$base$AbstractIterator$State:[I

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 63
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->tryToComputeNext()Z

    move-result v0

    return v0

    .line 60
    :pswitch_20
    return v3

    .line 58
    :pswitch_21
    return v2

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 81
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;->NOT_READY:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator$State;

    .line 82
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 84
    return-object v0

    .line 79
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 2

    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
