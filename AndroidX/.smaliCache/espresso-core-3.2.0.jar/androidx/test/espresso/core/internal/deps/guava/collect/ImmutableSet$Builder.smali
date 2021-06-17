.class public Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private hashCode:I

.field hashTable:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 431
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    .line 432
    return-void
.end method

.method private addDeduping(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 485
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 486
    invoke-static {v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result v2

    .line 487
    :goto_d
    and-int/2addr v2, v0

    .line 488
    iget-object v3, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    aget-object v4, v3, v2

    .line 489
    if-nez v4, :cond_1f

    .line 490
    aput-object p1, v3, v2

    .line 491
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashCode:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashCode:I

    .line 492
    invoke-super {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;

    .line 493
    return-void

    .line 494
    :cond_1f
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 495
    return-void

    .line 486
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    .line 422
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    .line 422
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elements"
        }
    .end annotation

    .line 422
    invoke-virtual {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->add([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 451
    invoke-static {p1}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v0, :cond_16

    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    iget-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v0, v1, :cond_16

    .line 453
    invoke-direct {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->addDeduping(Ljava/lang/Object;)V

    .line 454
    return-object p0

    .line 456
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    .line 457
    invoke-super {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;

    .line 458
    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v0, :cond_10

    .line 474
    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_13

    aget-object v2, p1, v1

    .line 475
    invoke-virtual {p0, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;

    .line 474
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 478
    :cond_10
    invoke-super {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$ArrayBasedBuilder;->add([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection$Builder;

    .line 480
    :cond_13
    return-object p0
.end method

.method public build()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 546
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    packed-switch v0, :pswitch_data_60

    .line 553
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_4b

    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_4b

    .line 555
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    array-length v2, v2

    # invokes: Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->shouldTrim(II)Z
    invoke-static {v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->access$000(II)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    iget v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_3a

    .line 550
    :pswitch_29
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->of(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 548
    :pswitch_33
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->of()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 555
    :cond_38
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    :goto_3a
    move-object v3, v0

    .line 556
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;

    iget v4, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashCode:I

    iget-object v5, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v2, v5

    add-int/lit8 v6, v2, -0x1

    iget v7, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 559
    goto :goto_59

    .line 560
    :cond_4b
    iget v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    iget-object v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    # invokes: Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
    invoke-static {v0, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->access$100(I[Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object v0

    .line 563
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->size()I

    move-result v2

    iput v2, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->size:I

    .line 565
    :goto_59
    iput-boolean v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->forceCopy:Z

    .line 566
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    .line 567
    return-object v0

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_33
        :pswitch_29
    .end packed-switch
.end method
