.class public abstract Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
.super Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;,
        Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient asList:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 310
    invoke-direct {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method static synthetic access$000(II)Z
    .registers 2

    .line 48
    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->shouldTrim(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(I[Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
    .registers 2

    .line 48
    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static builder()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 383
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$Builder;-><init>()V

    return-object v0
.end method

.method static chooseTableSize(I)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "setSize"
        }
    .end annotation

    .line 210
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 212
    const/4 v0, 0x1

    const v1, 0x2ccccccc

    if-ge p0, v1, :cond_27

    .line 214
    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    .line 215
    :goto_13
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    int-to-double v3, p0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_26

    .line 216
    shl-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 218
    :cond_26
    return v0

    .line 222
    :cond_27
    const/high16 v1, 0x40000000    # 2.0f

    if-ge p0, v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    const-string p0, "collection too large"

    invoke-static {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 223
    return v1
.end method

.method private static varargs construct(I[Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_7a

    .line 152
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v1

    .line 153
    new-array v5, v1, [Ljava/lang/Object;

    .line 154
    add-int/lit8 v6, v1, -0x1

    .line 155
    nop

    .line 156
    nop

    .line 157
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_1e

    .line 147
    :pswitch_12
    aget-object p0, p1, v0

    .line 148
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->of(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 144
    :pswitch_19
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->of()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 157
    :goto_1e
    if-ge v2, p0, :cond_4a

    .line 158
    aget-object v3, p1, v2

    invoke-static {v3, v2}, Landroidx/test/espresso/core/internal/deps/guava/collect/ObjectArrays;->checkElementNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v8

    .line 160
    invoke-static {v8}, Landroidx/test/espresso/core/internal/deps/guava/collect/Hashing;->smear(I)I

    move-result v9

    .line 161
    :goto_2e
    and-int v10, v9, v6

    .line 162
    aget-object v11, v5, v10

    .line 163
    if-nez v11, :cond_3d

    .line 165
    add-int/lit8 v9, v7, 0x1

    aput-object v3, p1, v7

    .line 166
    aput-object v3, v5, v10

    .line 167
    add-int/2addr v4, v8

    .line 168
    move v7, v9

    goto :goto_44

    .line 169
    :cond_3d
    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 170
    nop

    .line 157
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 160
    :cond_47
    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    .line 174
    :cond_4a
    const/4 v2, 0x0

    invoke-static {p1, v7, p0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 175
    const/4 p0, 0x1

    if-ne v7, p0, :cond_59

    .line 178
    aget-object p0, p1, v0

    .line 179
    new-instance p1, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;

    invoke-direct {p1, p0, v4}, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 180
    :cond_59
    invoke-static {v7}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->chooseTableSize(I)I

    move-result p0

    div-int/lit8 v1, v1, 0x2

    if-ge p0, v1, :cond_66

    .line 182
    invoke-static {v7, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 185
    :cond_66
    array-length p0, p1

    invoke-static {v7, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->shouldTrim(II)Z

    move-result p0

    if-eqz p0, :cond_71

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_71
    move-object v3, p1

    .line 186
    new-instance p0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p0

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_19
        :pswitch_12
    .end packed-switch
.end method

.method public static copyOf([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
    .registers 2
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
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 300
    array-length v0, p0

    packed-switch v0, :pswitch_data_1e

    .line 306
    array-length v0, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 304
    :pswitch_10
    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->of(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 302
    :pswitch_18
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->of()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_10
    .end packed-switch
.end method

.method public static of()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 55
    sget-object v0, Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;->EMPTY:Landroidx/test/espresso/core/internal/deps/guava/collect/RegularImmutableSet;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;
    .registers 2
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
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;

    invoke-direct {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static shouldTrim(II)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actualUnique",
            "expectedUnique"
        }
    .end annotation

    .line 191
    shr-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    if-ge p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method


# virtual methods
.method public asList()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->asList:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    .line 345
    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->createAsList()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->asList:Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    :cond_a
    return-object v0
.end method

.method createAsList()Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 349
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 319
    if-ne p1, p0, :cond_4

    .line 320
    const/4 p1, 0x1

    return p1

    .line 321
    :cond_4
    instance-of v0, p1, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    if-eqz v0, :cond_23

    .line 322
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;

    .line 323
    invoke-virtual {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 324
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_23

    .line 325
    const/4 p1, 0x0

    return p1

    .line 327
    :cond_23
    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 332
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .registers 2

    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public abstract iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 46
    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->iterator()Landroidx/test/espresso/core/internal/deps/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .line 375
    new-instance v0, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$SerializedForm;

    invoke-virtual {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/collect/ImmutableSet$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
