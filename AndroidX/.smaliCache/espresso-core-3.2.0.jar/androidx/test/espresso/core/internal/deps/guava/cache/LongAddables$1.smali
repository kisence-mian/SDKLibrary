.class Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$1;
.super Ljava/lang/Object;
.source "LongAddables.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/test/espresso/core/internal/deps/guava/base/Supplier<",
        "Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;
    .registers 2

    .line 38
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAdder;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddables$1;->get()Landroidx/test/espresso/core/internal/deps/guava/cache/LongAddable;

    move-result-object v0

    return-object v0
.end method
