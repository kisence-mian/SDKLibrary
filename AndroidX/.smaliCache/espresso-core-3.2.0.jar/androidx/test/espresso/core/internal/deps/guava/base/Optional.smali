.class public abstract Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
.super Ljava/lang/Object;
.source "Optional.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static absent()Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 91
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Absent;->withType()Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static fromNullable(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nullableReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 114
    if-nez p0, :cond_7

    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->absent()Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object p0

    goto :goto_d

    :cond_7
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/Present;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Present;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_d
    return-object p0
.end method

.method public static of(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/Present;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Present;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static presentInstances(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "optionals"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "+TT;>;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 288
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional$1;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public abstract asSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract isPresent()Z
.end method

.method public abstract or(Landroidx/test/espresso/core/internal/deps/guava/base/Optional;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secondChoice"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "+TT;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract or(Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract or(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract orNull()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract transform(Landroidx/test/espresso/core/internal/deps/guava/base/Function;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
            "-TT;TV;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "TV;>;"
        }
    .end annotation
.end method
