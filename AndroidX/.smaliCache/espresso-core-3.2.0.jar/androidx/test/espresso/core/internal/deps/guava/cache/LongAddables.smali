.class final Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;
.super Ljava/lang/Object;
.source "LongAddables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$PureJavaLongAddable;
    }
.end annotation


# static fields
.field private static final SUPPLIER:Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Supplier<",
            "Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    :try_start_0
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;-><init>()V

    .line 34
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$1;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$1;-><init>()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    .line 49
    goto :goto_11

    .line 41
    :catchall_b
    move-exception v0

    .line 42
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$2;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$2;-><init>()V

    .line 50
    :goto_11
    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->SUPPLIER:Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;

    .line 51
    return-void
.end method

.method public static create()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;
    .registers 1

    .line 54
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;->SUPPLIER:Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;

    invoke-interface {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    return-object v0
.end method
