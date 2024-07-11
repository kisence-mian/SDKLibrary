.class public Landroidx/navigation/NavGraph;
.super Landroidx/navigation/NavDestination;
.source "NavGraph.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestination;",
        "Ljava/lang/Iterable<",
        "Landroidx/navigation/NavDestination;",
        ">;"
    }
.end annotation


# instance fields
.field final mNodes:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation
.end field

.field private mStartDestId:I

.field private mStartDestIdName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/Navigator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavGraph;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p1, "navGraphNavigator":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<+Landroidx/navigation/NavGraph;>;"
    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    .line 42
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    .line 59
    return-void
.end method


# virtual methods
.method public final addAll(Landroidx/navigation/NavGraph;)V
    .registers 4
    .param p1, "other"    # Landroidx/navigation/NavGraph;

    .line 222
    invoke-virtual {p1}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 223
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/navigation/NavDestination;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    .line 225
    .local v1, "destination":Landroidx/navigation/NavDestination;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 226
    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    .line 227
    .end local v1    # "destination":Landroidx/navigation/NavDestination;
    goto :goto_4

    .line 228
    :cond_17
    return-void
.end method

.method public final addDestination(Landroidx/navigation/NavDestination;)V
    .registers 5
    .param p1, "node"    # Landroidx/navigation/NavDestination;

    .line 99
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    if-eqz v0, :cond_36

    .line 103
    iget-object v0, p0, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    .line 104
    .local v0, "existingDestination":Landroidx/navigation/NavDestination;
    if-ne v0, p1, :cond_15

    .line 105
    return-void

    .line 107
    :cond_15
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    if-nez v1, :cond_2e

    .line 111
    if-eqz v0, :cond_21

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    .line 114
    :cond_21
    invoke-virtual {p1, p0}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    .line 115
    iget-object v1, p0, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 116
    return-void

    .line 108
    :cond_2e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Destination already has a parent set. Call NavGraph.remove() to remove the previous parent."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    .end local v0    # "existingDestination":Landroidx/navigation/NavDestination;
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destinations must have an id. Call setId() or include an android:id in your navigation XML."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addDestinations(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/navigation/NavDestination;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p1, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/navigation/NavDestination;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    .line 130
    .local v1, "node":Landroidx/navigation/NavDestination;
    if-nez v1, :cond_13

    .line 131
    goto :goto_4

    .line 133
    :cond_13
    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    .line 134
    .end local v1    # "node":Landroidx/navigation/NavDestination;
    goto :goto_4

    .line 135
    :cond_17
    return-void
.end method

.method public final varargs addDestinations([Landroidx/navigation/NavDestination;)V
    .registers 5
    .param p1, "nodes"    # [Landroidx/navigation/NavDestination;

    .line 148
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_f

    aget-object v2, p1, v1

    .line 149
    .local v2, "node":Landroidx/navigation/NavDestination;
    if-nez v2, :cond_9

    .line 150
    goto :goto_c

    .line 152
    :cond_9
    invoke-virtual {p0, v2}, Landroidx/navigation/NavGraph;->addDestination(Landroidx/navigation/NavDestination;)V

    .line 148
    .end local v2    # "node":Landroidx/navigation/NavDestination;
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 154
    :cond_f
    return-void
.end method

.method public final clear()V
    .registers 3

    .line 247
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 248
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/navigation/NavDestination;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 249
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 252
    :cond_11
    return-void
.end method

.method public final findNode(I)Landroidx/navigation/NavDestination;
    .registers 3
    .param p1, "resid"    # I

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavGraph;->findNode(IZ)Landroidx/navigation/NavDestination;

    move-result-object v0

    return-object v0
.end method

.method final findNode(IZ)Landroidx/navigation/NavDestination;
    .registers 5
    .param p1, "resid"    # I
    .param p2, "searchParents"    # Z

    .line 171
    iget-object v0, p0, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    .line 174
    .local v0, "destination":Landroidx/navigation/NavDestination;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_1e

    :cond_c
    if-eqz p2, :cond_1d

    .line 176
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 174
    :goto_1e
    return-object v1
.end method

.method getDisplayName()Ljava/lang/String;
    .registers 2

    .line 257
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Landroidx/navigation/NavDestination;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_b
    const-string v0, "the root navigation"

    :goto_d
    return-object v0
.end method

.method getStartDestDisplayName()Ljava/lang/String;
    .registers 2

    .line 282
    iget-object v0, p0, Landroidx/navigation/NavGraph;->mStartDestIdName:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 283
    iget v0, p0, Landroidx/navigation/NavGraph;->mStartDestId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavGraph;->mStartDestIdName:Ljava/lang/String;

    .line 285
    :cond_c
    iget-object v0, p0, Landroidx/navigation/NavGraph;->mStartDestIdName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartDestination()I
    .registers 2

    .line 267
    iget v0, p0, Landroidx/navigation/NavGraph;->mStartDestId:I

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Landroidx/navigation/NavGraph$1;

    invoke-direct {v0, p0}, Landroidx/navigation/NavGraph$1;-><init>(Landroidx/navigation/NavGraph;)V

    return-object v0
.end method

.method matchDeepLink(Landroid/net/Uri;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;

    .line 76
    invoke-super {p0, p1}, Landroidx/navigation/NavDestination;->matchDeepLink(Landroid/net/Uri;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    .line 78
    .local v0, "bestMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    .line 79
    .local v2, "child":Landroidx/navigation/NavDestination;
    invoke-virtual {v2, p1}, Landroidx/navigation/NavDestination;->matchDeepLink(Landroid/net/Uri;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v3

    .line 80
    .local v3, "childBestMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    if-eqz v3, :cond_23

    if-eqz v0, :cond_22

    .line 81
    invoke-virtual {v3, v0}, Landroidx/navigation/NavDestination$DeepLinkMatch;->compareTo(Landroidx/navigation/NavDestination$DeepLinkMatch;)I

    move-result v4

    if-lez v4, :cond_23

    .line 82
    :cond_22
    move-object v0, v3

    .line 84
    .end local v2    # "child":Landroidx/navigation/NavDestination;
    .end local v3    # "childBestMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    :cond_23
    goto :goto_8

    .line 85
    :cond_24
    return-object v0
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 63
    invoke-super {p0, p1, p2}, Landroidx/navigation/NavDestination;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Landroidx/navigation/common/R$styleable;->NavGraphNavigator:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/navigation/common/R$styleable;->NavGraphNavigator_startDestination:I

    .line 67
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 66
    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraph;->setStartDestination(I)V

    .line 68
    iget v1, p0, Landroidx/navigation/NavGraph;->mStartDestId:I

    invoke-static {p1, v1}, Landroidx/navigation/NavGraph;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/navigation/NavGraph;->mStartDestIdName:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void
.end method

.method public final remove(Landroidx/navigation/NavDestination;)V
    .registers 5
    .param p1, "node"    # Landroidx/navigation/NavDestination;

    .line 236
    iget-object v0, p0, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->indexOfKey(I)I

    move-result v0

    .line 237
    .local v0, "index":I
    if-ltz v0, :cond_1d

    .line 238
    iget-object v1, p0, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    .line 239
    iget-object v1, p0, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 241
    :cond_1d
    return-void
.end method

.method public final setStartDestination(I)V
    .registers 3
    .param p1, "startDestId"    # I

    .line 276
    iput p1, p0, Landroidx/navigation/NavGraph;->mStartDestId:I

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/navigation/NavGraph;->mStartDestIdName:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Landroidx/navigation/NavDestination;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, " startDestination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 295
    .local v1, "startDestination":Landroidx/navigation/NavDestination;
    if-nez v1, :cond_32

    .line 296
    iget-object v2, p0, Landroidx/navigation/NavGraph;->mStartDestIdName:Ljava/lang/String;

    if-nez v2, :cond_2e

    .line 297
    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget v2, p0, Landroidx/navigation/NavGraph;->mStartDestId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 300
    :cond_2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 303
    :cond_32
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :goto_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
