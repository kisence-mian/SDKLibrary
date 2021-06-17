.class public final Landroidx/test/espresso/core/internal/deps/guava/collect/Range;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/RangeGwtSerializationDependencies;
.source "Range.java"

# interfaces
.implements Landroidx/test/espresso/core/internal/deps/guava/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/RangeGwtSerializationDependencies;",
        "Landroidx/test/espresso/core/internal/deps/guava/base/Predicate<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL:Landroidx/test/espresso/core/internal/deps/guava/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Range<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field final lowerBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;"
        }
    .end annotation
.end field

.field final upperBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 297
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->belowAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object v1

    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->aboveAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;-><init>(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)V

    sput-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->ALL:Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    return-void
.end method

.method private constructor <init>(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lowerBound",
            "upperBound"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;)V"
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/RangeGwtSerializationDependencies;-><init>()V

    .line 352
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->lowerBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    .line 353
    invoke-static {p2}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->upperBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    .line 354
    invoke-virtual {p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->compareTo(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)I

    move-result v0

    if-gtz v0, :cond_27

    .line 355
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->aboveAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object v0

    if-eq p1, v0, :cond_27

    .line 356
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->belowAll()Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object v0

    if-ne p2, v0, :cond_26

    goto :goto_27

    .line 359
    :cond_26
    return-void

    .line 357
    :cond_27
    :goto_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid range: "

    invoke-static {p1, p2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->toString(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_3e

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_43

    :cond_3e
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_43
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static all()Landroidx/test/espresso/core/internal/deps/guava/collect/Range;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 306
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->ALL:Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    return-object v0
.end method

.method public static closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroidx/test/espresso/core/internal/deps/guava/collect/Range;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lower",
            "upper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(TC;TC;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 180
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->belowValue(Ljava/lang/Comparable;)Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object p0

    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->create(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method static compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 2
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

    .line 695
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static create(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)Landroidx/test/espresso/core/internal/deps/guava/collect/Range;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lowerBound",
            "upperBound"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "TC;>;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 155
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    invoke-direct {v0, p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;-><init>(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)V

    return-object v0
.end method

.method private static toString(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lowerBound",
            "upperBound"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "*>;",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/Cut<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 674
    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->describeAsLowerBound(Ljava/lang/StringBuilder;)V

    .line 675
    const-string p0, ".."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->describeAsUpperBound(Ljava/lang/StringBuilder;)V

    .line 677
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(Ljava/lang/Comparable;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->apply(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 432
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->lowerBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->upperBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result p1

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 650
    instance-of v0, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 651
    check-cast p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    .line 652
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->lowerBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    iget-object v2, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->lowerBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->upperBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    iget-object p1, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->upperBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {v0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1

    .line 654
    :cond_1d
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 660
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->lowerBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->upperBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-virtual {v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .registers 2

    .line 686
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->ALL:Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    invoke-virtual {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 687
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->all()Landroidx/test/espresso/core/internal/deps/guava/collect/Range;

    move-result-object v0

    return-object v0

    .line 689
    :cond_d
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 669
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->lowerBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->upperBound:Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Range;->toString(Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;Landroidx/test/espresso/core/internal/deps/guava/collect/Cut;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
