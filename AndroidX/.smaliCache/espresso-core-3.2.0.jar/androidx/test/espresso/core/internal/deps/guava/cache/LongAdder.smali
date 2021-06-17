.class final Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;
.super Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;
.source "LongAdder.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->busy:I

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->cells:[Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;

    .line 191
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->base:J

    .line 192
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 184
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 185
    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->cells:[Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;

    if-nez v0, :cond_e

    iget-wide v1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->base:J

    add-long v3, v1, p1

    invoke-virtual {p0, v1, v2, v3, v4}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->casBase(JJ)Z

    move-result v1

    if-nez v1, :cond_35

    .line 68
    :cond_e
    nop

    .line 69
    sget-object v1, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->threadHashCode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x1

    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    array-length v3, v0

    if-lt v3, v2, :cond_32

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    aget v4, v1, v4

    and-int/2addr v3, v4

    aget-object v0, v0, v3

    if-eqz v0, :cond_32

    iget-wide v2, v0, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;->value:J

    add-long v4, v2, p1

    .line 73
    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;->cas(JJ)Z

    move-result v2

    if-nez v2, :cond_35

    :cond_32
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->retryUpdate(J[IZ)V

    .line 75
    :cond_35
    return-void
.end method

.method public doubleValue()D
    .registers 3

    .line 179
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 3

    .line 173
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method final fn(JJ)J
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "x"
        }
    .end annotation

    .line 49
    add-long/2addr p1, p3

    return-wide p1
.end method

.method public increment()V
    .registers 3

    .line 80
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->add(J)V

    .line 81
    return-void
.end method

.method public intValue()I
    .registers 3

    .line 167
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public longValue()J
    .registers 3

    .line 161
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public sum()J
    .registers 8

    .line 97
    iget-wide v0, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->base:J

    .line 98
    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->cells:[Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;

    .line 99
    if-eqz v2, :cond_14

    .line 100
    array-length v3, v2

    .line 101
    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_14

    .line 102
    aget-object v5, v2, v4

    .line 103
    if-eqz v5, :cond_11

    iget-wide v5, v5, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;->value:J

    add-long/2addr v0, v5

    .line 101
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 106
    :cond_14
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 151
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
