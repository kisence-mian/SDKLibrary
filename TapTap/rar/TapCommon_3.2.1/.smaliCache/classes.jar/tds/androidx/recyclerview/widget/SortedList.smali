.class public Ltds/androidx/recyclerview/widget/SortedList;
.super Ljava/lang/Object;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;,
        Ltds/androidx/recyclerview/widget/SortedList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CAPACITY_GROWTH:I = 0xa

.field private static final DELETION:I = 0x2

.field private static final INSERTION:I = 0x1

.field public static final INVALID_POSITION:I = -0x1

.field private static final LOOKUP:I = 0x4

.field private static final MIN_CAPACITY:I = 0xa


# instance fields
.field private mBatchedCallback:Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;

.field private mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

.field mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mNewDataStart:I

.field private mOldData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mOldDataSize:I

.field private mOldDataStart:I

.field private mSize:I

.field private final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ltds/androidx/recyclerview/widget/SortedList$Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ltds/androidx/recyclerview/widget/SortedList$Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Ltds/androidx/recyclerview/widget/SortedList$Callback;, "Ltds/androidx/recyclerview/widget/SortedList$Callback<TT;>;"
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Ltds/androidx/recyclerview/widget/SortedList;-><init>(Ljava/lang/Class;Ltds/androidx/recyclerview/widget/SortedList$Callback;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ltds/androidx/recyclerview/widget/SortedList$Callback;I)V
    .registers 5
    .param p3, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ltds/androidx/recyclerview/widget/SortedList$Callback<",
            "TT;>;I)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "callback":Ltds/androidx/recyclerview/widget/SortedList$Callback;, "Ltds/androidx/recyclerview/widget/SortedList$Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    .line 103
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 104
    iput-object p2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    .line 106
    return-void
.end method

.method private add(Ljava/lang/Object;Z)I
    .registers 9
    .param p2, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .line 542
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ltds/androidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    .line 543
    .local v0, "index":I
    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    .line 544
    const/4 v0, 0x0

    goto :goto_3d

    .line 545
    :cond_12
    iget v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    if-ge v0, v2, :cond_3d

    .line 546
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 547
    .local v2, "existing":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 548
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 550
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 551
    return v0

    .line 553
    :cond_2f
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 554
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v3, v2, p1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 555
    return v0

    .line 559
    .end local v2    # "existing":Ljava/lang/Object;, "TT;"
    :cond_3d
    :goto_3d
    invoke-direct {p0, v0, p1}, Ltds/androidx/recyclerview/widget/SortedList;->addToData(ILjava/lang/Object;)V

    .line 560
    if-eqz p2, :cond_47

    .line 561
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v2, v0, v1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    .line 563
    :cond_47
    return v0
.end method

.method private addAllInternal([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 252
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "newItems":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_5

    .line 253
    return-void

    .line 256
    :cond_5
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    move-result v0

    .line 258
    .local v0, "newSize":I
    iget v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    if-nez v1, :cond_18

    .line 259
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 260
    iput v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    .line 261
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    goto :goto_1b

    .line 263
    :cond_18
    invoke-direct {p0, p1, v0}, Ltds/androidx/recyclerview/widget/SortedList;->merge([Ljava/lang/Object;I)V

    .line 265
    :goto_1b
    return-void
.end method

.method private addToData(ILjava/lang/Object;)V
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 793
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    if-gt p1, v0, :cond_3c

    .line 797
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_2b

    .line 799
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    array-length v1, v1

    add-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 800
    .local v0, "newData":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 801
    aput-object p2, v0, p1

    .line 802
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    iput-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 804
    .end local v0    # "newData":[Ljava/lang/Object;, "[TT;"
    goto :goto_35

    .line 806
    :cond_2b
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 809
    :goto_35
    iget v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    .line 810
    return-void

    .line 794
    :cond_3c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot add item to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copyArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 813
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 814
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    return-object v0
.end method

.method private findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I
    .registers 12
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;III)I"
        }
    .end annotation

    .line 743
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p2, "mData":[Ljava/lang/Object;, "[TT;"
    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p3, p4, :cond_2f

    .line 744
    add-int v2, p3, p4

    div-int/lit8 v2, v2, 0x2

    .line 745
    .local v2, "middle":I
    aget-object v3, p2, v2

    .line 746
    .local v3, "myItem":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v3, p1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 747
    .local v4, "cmp":I
    if-gez v4, :cond_15

    .line 748
    add-int/lit8 p3, v2, 0x1

    goto :goto_2e

    .line 749
    :cond_15
    if-nez v4, :cond_2d

    .line 750
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v5, v3, p1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 751
    return v2

    .line 753
    :cond_20
    invoke-direct {p0, p1, v2, p3, p4}, Ltds/androidx/recyclerview/widget/SortedList;->linearEqualitySearch(Ljava/lang/Object;III)I

    move-result v5

    .line 754
    .local v5, "exact":I
    if-ne p5, v1, :cond_2c

    .line 755
    if-ne v5, v0, :cond_2a

    move v0, v2

    goto :goto_2b

    :cond_2a
    move v0, v5

    :goto_2b
    return v0

    .line 757
    :cond_2c
    return v5

    .line 761
    .end local v5    # "exact":I
    :cond_2d
    move p4, v2

    .line 763
    .end local v2    # "middle":I
    .end local v3    # "myItem":Ljava/lang/Object;, "TT;"
    .end local v4    # "cmp":I
    :goto_2e
    goto :goto_0

    .line 764
    :cond_2f
    if-ne p5, v1, :cond_32

    move v0, p3

    :cond_32
    return v0
.end method

.method private findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I
    .registers 8
    .param p3, "from"    # I
    .param p4, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[TT;II)I"
        }
    .end annotation

    .line 396
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    .local p2, "items":[Ljava/lang/Object;, "[TT;"
    move v0, p3

    .local v0, "pos":I
    :goto_1
    if-ge v0, p4, :cond_11

    .line 397
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2, p1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 398
    return v0

    .line 396
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    .end local v0    # "pos":I
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method private linearEqualitySearch(Ljava/lang/Object;III)I
    .registers 9
    .param p2, "middle"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)I"
        }
    .end annotation

    .line 769
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, p2, -0x1

    .local v0, "next":I
    :goto_2
    if-lt v0, p3, :cond_1d

    .line 770
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 771
    .local v1, "nextItem":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 772
    .local v2, "cmp":I
    if-eqz v2, :cond_11

    .line 773
    goto :goto_1d

    .line 775
    :cond_11
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v3, v1, p1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 776
    return v0

    .line 769
    .end local v1    # "nextItem":Ljava/lang/Object;, "TT;"
    .end local v2    # "cmp":I
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 779
    .end local v0    # "next":I
    :cond_1d
    :goto_1d
    add-int/lit8 v0, p2, 0x1

    .restart local v0    # "next":I
    :goto_1f
    if-ge v0, p4, :cond_3a

    .line 780
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 781
    .restart local v1    # "nextItem":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v2, v1, p1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 782
    .restart local v2    # "cmp":I
    if-eqz v2, :cond_2e

    .line 783
    goto :goto_3a

    .line 785
    :cond_2e
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v3, v1, p1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 786
    return v0

    .line 779
    .end local v1    # "nextItem":Ljava/lang/Object;, "TT;"
    .end local v2    # "cmp":I
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 789
    .end local v0    # "next":I
    :cond_3a
    :goto_3a
    const/4 v0, -0x1

    return v0
.end method

.method private merge([Ljava/lang/Object;I)V
    .registers 13
    .param p2, "newDataSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 408
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "newData":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    instance-of v0, v0, Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 409
    .local v0, "forceBatchedUpdates":Z
    if-eqz v0, :cond_b

    .line 410
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    .line 413
    :cond_b
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iput-object v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 414
    const/4 v2, 0x0

    iput v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 415
    iget v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    iput v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataSize:I

    .line 417
    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0xa

    .line 418
    .local v3, "mergedCapacity":I
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 419
    iput v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 421
    const/4 v2, 0x0

    .line 422
    .local v2, "newDataStart":I
    :goto_28
    iget v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v5, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataSize:I

    if-lt v4, v5, :cond_30

    if-ge v2, p2, :cond_5e

    .line 423
    :cond_30
    if-ne v4, v5, :cond_4c

    .line 425
    sub-int v1, p2, v2

    .line 426
    .local v1, "itemCount":I
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v5, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    invoke-static {p1, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/2addr v4, v1

    iput v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 428
    iget v5, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    add-int/2addr v5, v1

    iput v5, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    .line 429
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    sub-int/2addr v4, v1

    invoke-virtual {v5, v4, v1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    .line 430
    goto :goto_5e

    .line 433
    .end local v1    # "itemCount":I
    :cond_4c
    if-ne v2, p2, :cond_67

    .line 435
    sub-int/2addr v5, v4

    .line 436
    .local v5, "itemCount":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    invoke-static {v1, v4, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    iget v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/2addr v1, v5

    iput v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 438
    nop

    .line 467
    .end local v5    # "itemCount":I
    :cond_5e
    :goto_5e
    const/4 v1, 0x0

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 469
    if-eqz v0, :cond_66

    .line 470
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    .line 472
    :cond_66
    return-void

    .line 441
    :cond_67
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    aget-object v4, v5, v4

    .line 442
    .local v4, "oldItem":Ljava/lang/Object;, "TT;"
    aget-object v5, p1, v2

    .line 443
    .local v5, "newItem":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v6, v4, v5}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 444
    .local v6, "compare":I
    if-lez v6, :cond_8d

    .line 446
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v8, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aput-object v5, v7, v8

    .line 447
    iget v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    add-int/2addr v7, v1

    iput v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    .line 448
    add-int/lit8 v2, v2, 0x1

    .line 449
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    sub-int/2addr v9, v1

    invoke-virtual {v7, v9, v1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    goto :goto_cc

    .line 450
    :cond_8d
    if-nez v6, :cond_bd

    iget-object v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v7, v4, v5}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bd

    .line 452
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v8, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aput-object v5, v7, v8

    .line 453
    add-int/lit8 v2, v2, 0x1

    .line 454
    iget v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    add-int/2addr v7, v1

    iput v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 455
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v7, v4, v5}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_cc

    .line 456
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    iget v8, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    sub-int/2addr v8, v1

    .line 457
    invoke-virtual {v7, v4, v5}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 456
    invoke-virtual {v7, v8, v1, v9}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    goto :goto_cc

    .line 462
    :cond_bd
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v8, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aput-object v4, v7, v8

    .line 463
    iget v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    add-int/2addr v7, v1

    iput v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 465
    .end local v4    # "oldItem":Ljava/lang/Object;, "TT;"
    .end local v5    # "newItem":Ljava/lang/Object;, "TT;"
    .end local v6    # "compare":I
    :cond_cc
    :goto_cc
    goto/16 :goto_28
.end method

.method private remove(Ljava/lang/Object;Z)Z
    .registers 9
    .param p2, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 593
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ltds/androidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    .line 594
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 595
    const/4 v1, 0x0

    return v1

    .line 597
    :cond_11
    invoke-direct {p0, v0, p2}, Ltds/androidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    .line 598
    const/4 v1, 0x1

    return v1
.end method

.method private removeItemAtIndex(IZ)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "notify"    # Z

    .line 602
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    iget v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    sub-int/2addr v0, v3

    iput v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    .line 604
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 605
    if-eqz p2, :cond_1d

    .line 606
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v0, p1, v3}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    .line 608
    :cond_1d
    return-void
.end method

.method private replaceAllInsert(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 334
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "newItem":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aput-object p1, v0, v1

    .line 335
    const/4 v0, 0x1

    add-int/2addr v1, v0

    iput v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 336
    iget v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    add-int/2addr v2, v0

    iput v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    .line 337
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1, v0}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    .line 338
    return-void
.end method

.method private replaceAllInternal([Ljava/lang/Object;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 268
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "newData":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    instance-of v0, v0, Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 269
    .local v0, "forceBatchedUpdates":Z
    if-eqz v0, :cond_b

    .line 270
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    .line 273
    :cond_b
    const/4 v2, 0x0

    iput v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 274
    iget v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    iput v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataSize:I

    .line 275
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iput-object v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 277
    iput v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 278
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/SortedList;->sortAndDedup([Ljava/lang/Object;)I

    move-result v2

    .line 279
    .local v2, "newSize":I
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    .line 281
    :goto_28
    iget v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    if-lt v3, v2, :cond_32

    iget v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v5, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataSize:I

    if-ge v4, v5, :cond_5f

    .line 282
    :cond_32
    iget v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v5, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataSize:I

    if-lt v4, v5, :cond_51

    .line 283
    iget v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 284
    .local v1, "insertIndex":I
    sub-int v3, v2, v3

    .line 285
    .local v3, "itemCount":I
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    invoke-static {p1, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/2addr v4, v3

    iput v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 287
    iget v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    add-int/2addr v4, v3

    iput v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    .line 288
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v1, v3}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onInserted(II)V

    .line 289
    goto :goto_5f

    .line 291
    .end local v1    # "insertIndex":I
    .end local v3    # "itemCount":I
    :cond_51
    if-lt v3, v2, :cond_68

    .line 292
    sub-int/2addr v5, v4

    .line 293
    .local v5, "itemCount":I
    iget v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    sub-int/2addr v1, v5

    iput v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    .line 294
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v1, v3, v5}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    .line 295
    nop

    .line 326
    .end local v5    # "itemCount":I
    :cond_5f
    :goto_5f
    const/4 v1, 0x0

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    .line 328
    if-eqz v0, :cond_67

    .line 329
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    .line 331
    :cond_67
    return-void

    .line 298
    :cond_68
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    aget-object v4, v5, v4

    .line 299
    .local v4, "oldItem":Ljava/lang/Object;, "TT;"
    aget-object v3, p1, v3

    .line 301
    .local v3, "newItem":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v5, v4, v3}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 302
    .local v5, "result":I
    if-gez v5, :cond_7a

    .line 303
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SortedList;->replaceAllRemove()V

    goto :goto_b1

    .line 304
    :cond_7a
    if-lez v5, :cond_80

    .line 305
    invoke-direct {p0, v3}, Ltds/androidx/recyclerview/widget/SortedList;->replaceAllInsert(Ljava/lang/Object;)V

    goto :goto_b1

    .line 307
    :cond_80
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v6, v4, v3}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8f

    .line 310
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SortedList;->replaceAllRemove()V

    .line 311
    invoke-direct {p0, v3}, Ltds/androidx/recyclerview/widget/SortedList;->replaceAllInsert(Ljava/lang/Object;)V

    goto :goto_b1

    .line 313
    :cond_8f
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    iget v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    aput-object v3, v6, v7

    .line 314
    iget v6, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    add-int/2addr v6, v1

    iput v6, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 315
    add-int/2addr v7, v1

    iput v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    .line 316
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v6, v4, v3}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b1

    .line 319
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    iget v7, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    sub-int/2addr v7, v1

    .line 320
    invoke-virtual {v6, v4, v3}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 319
    invoke-virtual {v6, v7, v1, v8}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 324
    .end local v3    # "newItem":Ljava/lang/Object;, "TT;"
    .end local v4    # "oldItem":Ljava/lang/Object;, "TT;"
    .end local v5    # "result":I
    :cond_b1
    :goto_b1
    goto/16 :goto_28
.end method

.method private replaceAllRemove()V
    .registers 4

    .line 341
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    iget v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    .line 342
    iget v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    add-int/2addr v0, v1

    iput v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    .line 343
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    iget v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    invoke-virtual {v0, v2, v1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    .line 344
    return-void
.end method

.method private sortAndDedup([Ljava/lang/Object;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .line 353
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    if-nez v0, :cond_5

    .line 354
    const/4 v0, 0x0

    return v0

    .line 358
    :cond_5
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "rangeStart":I
    const/4 v1, 0x1

    .line 365
    .local v1, "rangeEnd":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_d
    array-length v3, p1

    if-ge v2, v3, :cond_38

    .line 366
    aget-object v3, p1, v2

    .line 368
    .local v3, "currentItem":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    aget-object v5, p1, v0

    invoke-virtual {v4, v5, v3}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 370
    .local v4, "compare":I
    if-nez v4, :cond_2d

    .line 372
    invoke-direct {p0, v3, p1, v0, v1}, Ltds/androidx/recyclerview/widget/SortedList;->findSameItem(Ljava/lang/Object;[Ljava/lang/Object;II)I

    move-result v5

    .line 373
    .local v5, "sameItemPos":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_26

    .line 375
    aput-object v3, p1, v5

    goto :goto_2c

    .line 378
    :cond_26
    if-eq v1, v2, :cond_2a

    .line 379
    aput-object v3, p1, v1

    .line 381
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 383
    .end local v5    # "sameItemPos":I
    :goto_2c
    goto :goto_35

    .line 385
    :cond_2d
    if-eq v1, v2, :cond_31

    .line 386
    aput-object v3, p1, v1

    .line 388
    :cond_31
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "rangeEnd":I
    .local v5, "rangeEnd":I
    move v0, v1

    move v1, v5

    .line 365
    .end local v3    # "currentItem":Ljava/lang/Object;, "TT;"
    .end local v4    # "compare":I
    .end local v5    # "rangeEnd":I
    .restart local v1    # "rangeEnd":I
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 391
    .end local v2    # "i":I
    :cond_38
    return v1
.end method

.method private throwIfInMutationOperation()V
    .registers 3

    .line 479
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 483
    return-void

    .line 480
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 143
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ltds/androidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 193
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 194
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ltds/androidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;Z)V

    .line 195
    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 182
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltds/androidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;Z)V

    .line 183
    return-void
.end method

.method public addAll([Ljava/lang/Object;Z)V
    .registers 4
    .param p2, "mayModifyInput"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 163
    array-length v0, p1

    if-nez v0, :cond_7

    .line 164
    return-void

    .line 167
    :cond_7
    if-eqz p2, :cond_d

    .line 168
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/SortedList;->addAllInternal([Ljava/lang/Object;)V

    goto :goto_14

    .line 170
    :cond_d
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/SortedList;->addAllInternal([Ljava/lang/Object;)V

    .line 172
    :goto_14
    return-void
.end method

.method public beginBatchedUpdates()V
    .registers 3

    .line 518
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 519
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    instance-of v0, v0, Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;

    if-eqz v0, :cond_a

    .line 520
    return-void

    .line 522
    :cond_a
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mBatchedCallback:Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;

    if-nez v0, :cond_17

    .line 523
    new-instance v0, Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-direct {v0, v1}, Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;-><init>(Ltds/androidx/recyclerview/widget/SortedList$Callback;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mBatchedCallback:Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 525
    :cond_17
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mBatchedCallback:Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    .line 526
    return-void
.end method

.method public clear()V
    .registers 5

    .line 822
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 823
    iget v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    if-nez v0, :cond_8

    .line 824
    return-void

    .line 826
    :cond_8
    iget v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    .line 827
    .local v0, "prevSize":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 828
    iput v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    .line 829
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v1, v3, v0}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onRemoved(II)V

    .line 830
    return-void
.end method

.method public endBatchedUpdates()V
    .registers 3

    .line 532
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 533
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    instance-of v1, v0, Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;

    if-eqz v1, :cond_e

    .line 534
    check-cast v0, Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 536
    :cond_e
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mBatchedCallback:Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;

    if-ne v0, v1, :cond_18

    .line 537
    iget-object v0, v1, Ltds/androidx/recyclerview/widget/SortedList$BatchedCallback;->mWrappedCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    .line 539
    :cond_18
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 705
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    iget v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    if-ge p1, v0, :cond_1b

    if-ltz p1, :cond_1b

    .line 709
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 712
    iget v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    if-lt p1, v1, :cond_16

    .line 713
    sub-int v1, p1, v1

    iget v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 716
    :cond_16
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 706
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asked to get item at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 728
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    if-eqz v0, :cond_2c

    .line 729
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    const/4 v6, 0x4

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Ltds/androidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    .line 730
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 731
    return v0

    .line 733
    :cond_14
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldData:[Ljava/lang/Object;

    iget v5, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    iget v6, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataSize:I

    const/4 v7, 0x4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Ltds/androidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    .line 734
    if-eq v0, v1, :cond_2b

    .line 735
    iget v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mOldDataStart:I

    sub-int v1, v0, v1

    iget v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mNewDataStart:I

    add-int/2addr v1, v2

    return v1

    .line 737
    :cond_2b
    return v1

    .line 739
    .end local v0    # "index":I
    :cond_2c
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    const/4 v7, 0x4

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Ltds/androidx/recyclerview/widget/SortedList;->findIndexOf(Ljava/lang/Object;[Ljava/lang/Object;III)I

    move-result v0

    return v0
.end method

.method public recalculatePositionOfItemAt(I)V
    .registers 5
    .param p1, "index"    # I

    .line 685
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 687
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 688
    .local v0, "item":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ltds/androidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    .line 689
    invoke-direct {p0, v0, v1}, Ltds/androidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v1

    .line 690
    .local v1, "newIndex":I
    if-eq p1, v1, :cond_16

    .line 691
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v2, p1, v1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onMoved(II)V

    .line 693
    :cond_16
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 574
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 575
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ltds/androidx/recyclerview/widget/SortedList;->remove(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public removeItemAt(I)Ljava/lang/Object;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 586
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 587
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 588
    .local v0, "item":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Ltds/androidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    .line 589
    return-object v0
.end method

.method public replaceAll(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 247
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mTClass:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 248
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ltds/androidx/recyclerview/widget/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    .line 249
    return-void
.end method

.method public varargs replaceAll([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 235
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltds/androidx/recyclerview/widget/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    .line 236
    return-void
.end method

.method public replaceAll([Ljava/lang/Object;Z)V
    .registers 4
    .param p2, "mayModifyInput"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .line 217
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p1, "items":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 219
    if-eqz p2, :cond_9

    .line 220
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/SortedList;->replaceAllInternal([Ljava/lang/Object;)V

    goto :goto_10

    .line 222
    :cond_9
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/SortedList;->copyArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/SortedList;->replaceAllInternal([Ljava/lang/Object;)V

    .line 224
    :goto_10
    return-void
.end method

.method public size()I
    .registers 2

    .line 114
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    iget v0, p0, Ltds/androidx/recyclerview/widget/SortedList;->mSize:I

    return v0
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .registers 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 631
    .local p0, "this":Ltds/androidx/recyclerview/widget/SortedList;, "Ltds/androidx/recyclerview/widget/SortedList<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SortedList;->throwIfInMutationOperation()V

    .line 632
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 634
    .local v0, "existing":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p2, :cond_16

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v3, v0, p2}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_16

    :cond_14
    move v3, v1

    goto :goto_17

    :cond_16
    :goto_16
    move v3, v2

    .line 635
    .local v3, "contentsChanged":Z
    :goto_17
    if-eq v0, p2, :cond_31

    .line 637
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v0, p2}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 638
    .local v4, "cmp":I
    if-nez v4, :cond_31

    .line 639
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mData:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 640
    if-eqz v3, :cond_30

    .line 641
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v1, v0, p2}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, p1, v2, v5}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 643
    :cond_30
    return-void

    .line 646
    .end local v4    # "cmp":I
    :cond_31
    if-eqz v3, :cond_3c

    .line 647
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v0, p2}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p1, v2, v5}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 650
    :cond_3c
    invoke-direct {p0, p1, v1}, Ltds/androidx/recyclerview/widget/SortedList;->removeItemAtIndex(IZ)V

    .line 651
    invoke-direct {p0, p2, v1}, Ltds/androidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;Z)I

    move-result v1

    .line 652
    .local v1, "newIndex":I
    if-eq p1, v1, :cond_4a

    .line 653
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/SortedList;->mCallback:Ltds/androidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v2, p1, v1}, Ltds/androidx/recyclerview/widget/SortedList$Callback;->onMoved(II)V

    .line 655
    :cond_4a
    return-void
.end method
