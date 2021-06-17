.class public final Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;
.super Ljava/lang/Object;
.source "Lists.java"


# direct methods
.method static computeArrayListCapacity(I)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arraySize"
        }
    .end annotation

    .line 148
    const-string v0, "arraySize"

    invoke-static {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 151
    int-to-long v0, p0

    const-wide/16 v2, 0x5

    add-long/2addr v0, v2

    div-int/lit8 p0, p0, 0xa

    int-to-long v2, p0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Landroidx/test/espresso/core/internal/deps/guava/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method

.method static equalsImpl(Ljava/util/List;Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thisList",
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 951
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    .line 952
    return v1

    .line 954
    :cond_8
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 955
    return v2

    .line 957
    :cond_e
    check-cast p1, Ljava/util/List;

    .line 958
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 959
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_1b

    .line 960
    return v2

    .line 962
    :cond_1b
    instance-of v3, p0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_39

    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_39

    .line 964
    const/4 v3, 0x0

    :goto_24
    if-ge v3, v0, :cond_38

    .line 965
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/test/espresso/core/internal/deps/guava/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 966
    return v2

    .line 964
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 969
    :cond_38
    return v1

    .line 971
    :cond_39
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators;->elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method static indexOfImpl(Ljava/util/List;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 988
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_9

    .line 989
    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->indexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 991
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 992
    :cond_d
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 993
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 994
    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0

    .line 997
    :cond_22
    const/4 p0, -0x1

    return p0
.end method

.method private static indexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1002
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1003
    const/4 v1, 0x0

    if-nez p1, :cond_14

    .line 1004
    nop

    :goto_8
    if-ge v1, v0, :cond_25

    .line 1005
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_11

    .line 1006
    return v1

    .line 1004
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1010
    :cond_14
    nop

    :goto_15
    if-ge v1, v0, :cond_25

    .line 1011
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1012
    return v1

    .line 1010
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1016
    :cond_25
    const/4 p0, -0x1

    return p0
.end method

.method static lastIndexOfImpl(Ljava/util/List;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1021
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_9

    .line 1022
    invoke-static {p0, p1}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->lastIndexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 1024
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    .line 1025
    :cond_11
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1026
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/test/espresso/core/internal/deps/guava/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1027
    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0

    .line 1030
    :cond_26
    const/4 p0, -0x1

    return p0
.end method

.method private static lastIndexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1035
    if-nez p1, :cond_14

    .line 1036
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_8
    if-ltz p1, :cond_2a

    .line 1037
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    .line 1038
    return p1

    .line 1036
    :cond_11
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    .line 1042
    :cond_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1a
    if-ltz v0, :cond_2a

    .line 1043
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1044
    return v0

    .line 1042
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    .line 1048
    :cond_2a
    const/4 p0, -0x1

    return p0
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;
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
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 125
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_11

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_19

    .line 129
    :cond_11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 127
    :goto_19
    return-object v0
.end method

.method public static newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;
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
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 141
    invoke-static {}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    invoke-static {v0, p0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 143
    return-object v0
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
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
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 102
    invoke-static {p0}, Landroidx/test/espresso/core/internal/deps/guava/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    array-length v0, p0

    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/Lists;->computeArrayListCapacity(I)I

    move-result v0

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 107
    return-object v1
.end method

.method public static newArrayListWithCapacity(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialArraySize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 172
    const-string v0, "initialArraySize"

    invoke-static {p0, v0}, Landroidx/test/espresso/core/internal/deps/guava/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static newLinkedList()Ljava/util/LinkedList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedList<",
            "TE;>;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method
