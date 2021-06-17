.class final Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;
.super Ljava/lang/Object;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Cell"
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final valueOffset:J


# instance fields
.field volatile p0:J

.field volatile p1:J

.field volatile p2:J

.field volatile p3:J

.field volatile p4:J

.field volatile p5:J

.field volatile p6:J

.field volatile q0:J

.field volatile q1:J

.field volatile q2:J

.field volatile q3:J

.field volatile q4:J

.field volatile q5:J

.field volatile q6:J

.field volatile value:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 114
    :try_start_0
    # invokes: Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64;->access$000()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;->UNSAFE:Lsun/misc/Unsafe;

    .line 115
    const-class v1, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;

    .line 116
    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;->valueOffset:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    .line 119
    nop

    .line 120
    return-void

    .line 117
    :catch_16
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-wide p1, p0, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;->value:J

    .line 102
    return-void
.end method


# virtual methods
.method final cas(JJ)Z
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cmp",
            "val"
        }
    .end annotation

    .line 105
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Landroidx/test/espresso/core/internal/deps/guava/cache/Striped64$Cell;->valueOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method
