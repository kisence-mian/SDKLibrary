.class public final Landroidx/test/espresso/util/EspressoOptional;
.super Ljava/lang/Object;
.source "EspressoOptional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/base/Optional;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "op"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Optional<",
            "TT;>;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    .line 52
    return-void
.end method

.method public static absent()Landroidx/test/espresso/util/EspressoOptional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/test/espresso/util/EspressoOptional<",
            "TT;>;"
        }
    .end annotation

    .line 43
    new-instance v0, Landroidx/test/espresso/util/EspressoOptional;

    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->absent()Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/espresso/util/EspressoOptional;-><init>(Landroidx/test/espresso/core/internal/deps/guava/base/Optional;)V

    return-object v0
.end method

.method public static fromNullable(Ljava/lang/Object;)Landroidx/test/espresso/util/EspressoOptional;
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
            "Landroidx/test/espresso/util/EspressoOptional<",
            "TT;>;"
        }
    .end annotation

    .line 47
    new-instance v0, Landroidx/test/espresso/util/EspressoOptional;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->fromNullable(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/test/espresso/util/EspressoOptional;-><init>(Landroidx/test/espresso/core/internal/deps/guava/base/Optional;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Landroidx/test/espresso/util/EspressoOptional;
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
            "Landroidx/test/espresso/util/EspressoOptional<",
            "TT;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Landroidx/test/espresso/util/EspressoOptional;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->of(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/test/espresso/util/EspressoOptional;-><init>(Landroidx/test/espresso/core/internal/deps/guava/base/Optional;)V

    return-object v0
.end method

.method public static presentInstances(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 1
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

    .line 108
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->presentInstances(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->asSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 84
    instance-of v0, p1, Landroidx/test/espresso/util/EspressoOptional;

    if-eqz v0, :cond_f

    .line 85
    check-cast p1, Landroidx/test/espresso/util/EspressoOptional;

    .line 86
    iget-object p1, p1, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 88
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 93
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPresent()Z
    .registers 2

    .line 55
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public or(Landroidx/test/espresso/core/internal/deps/guava/base/Optional;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .registers 3
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

    .line 63
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->or(Landroidx/test/espresso/core/internal/deps/guava/base/Optional;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object p1

    return-object p1
.end method

.method public or(Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;)Ljava/lang/Object;
    .registers 3
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

    .line 67
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->or(Landroidx/test/espresso/core/internal/deps/guava/base/Supplier;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public or(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
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

    .line 71
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public orNull()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroidx/test/espresso/core/internal/deps/guava/base/Function;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;
    .registers 3
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

    .line 102
    iget-object v0, p0, Landroidx/test/espresso/util/EspressoOptional;->delegate:Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Optional;->transform(Landroidx/test/espresso/core/internal/deps/guava/base/Function;)Landroidx/test/espresso/core/internal/deps/guava/base/Optional;

    move-result-object p1

    return-object p1
.end method
