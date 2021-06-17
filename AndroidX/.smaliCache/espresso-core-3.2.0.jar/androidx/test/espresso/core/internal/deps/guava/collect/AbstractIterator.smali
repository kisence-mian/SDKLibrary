.class public abstract Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator<",
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

.field private state:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;-><init>()V

    .line 65
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;->NOT_READY:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    .line 68
    return-void
.end method

.method private tryToComputeNext()Z
    .registers 3

    .line 140
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;->FAILED:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    .line 141
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;->DONE:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    if-eq v0, v1, :cond_16

    .line 143
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;->READY:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    .line 144
    const/4 v0, 0x1

    return v0

    .line 146
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

    .line 121
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;->DONE:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 5

    .line 128
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;->FAILED:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkState(Z)V

    .line 129
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$1;->$SwitchMap$com$google$common$collect$AbstractIterator$State:[I

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 136
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->tryToComputeNext()Z

    move-result v0

    return v0

    .line 133
    :pswitch_20
    return v2

    .line 131
    :pswitch_21
    return v3

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

    .line 152
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 155
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;->NOT_READY:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->state:Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator$State;

    .line 156
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 158
    return-object v0

    .line 153
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0

    .line 170
    :cond_9
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
