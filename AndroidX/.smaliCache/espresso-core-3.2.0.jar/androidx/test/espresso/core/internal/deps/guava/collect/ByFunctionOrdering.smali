.class final Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;
.source "ByFunctionOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering<",
        "TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
            "TF;+TT;>;"
        }
    .end annotation
.end field

.field final ordering:Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/base/Function;Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "function",
            "ordering"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/base/Function<",
            "TF;+TT;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;-><init>()V

    .line 37
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    .line 38
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    iput-object p1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->ordering:Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    .line 39
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "right"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)I"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->ordering:Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    invoke-interface {v1, p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    invoke-interface {v1, p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 48
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 49
    return v0

    .line 51
    :cond_4
    instance-of v1, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 52
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;

    .line 53
    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    iget-object v3, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    invoke-interface {v1, v3}, Landroidx/test/espresso/core/internal/deps/guava/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->ordering:Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    iget-object p1, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->ordering:Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0

    .line 55
    :cond_22
    return v2
.end method

.method public hashCode()I
    .registers 4

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->ordering:Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 65
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->ordering:Landroidx/test/espresso/core/internal/deps/guava/collect/Ordering;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ByFunctionOrdering;->function:Landroidx/test/espresso/core/internal/deps/guava/base/Function;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xd

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".onResultOf("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
