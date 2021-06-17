.class final Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$PureJavaLongAddable;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "LongAddables.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PureJavaLongAddable"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$1;)V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$PureJavaLongAddable;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$PureJavaLongAddable;->getAndAdd(J)J

    .line 66
    return-void
.end method

.method public increment()V
    .registers 1

    .line 60
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$PureJavaLongAddable;->getAndIncrement()J

    .line 61
    return-void
.end method
