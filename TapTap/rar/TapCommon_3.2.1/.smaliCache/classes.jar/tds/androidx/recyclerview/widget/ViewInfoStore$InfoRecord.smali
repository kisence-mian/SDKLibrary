.class Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/ViewInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InfoRecord"
.end annotation


# static fields
.field static final FLAG_APPEAR:I = 0x2

.field static final FLAG_APPEAR_AND_DISAPPEAR:I = 0x3

.field static final FLAG_APPEAR_PRE_AND_POST:I = 0xe

.field static final FLAG_DISAPPEARED:I = 0x1

.field static final FLAG_POST:I = 0x8

.field static final FLAG_PRE:I = 0x4

.field static final FLAG_PRE_AND_POST:I = 0xc

.field static sPool:Ltds/androidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/core/util/Pools$Pool<",
            "Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field flags:I

.field postInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

.field preInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 311
    new-instance v0, Ltds/androidx/core/util/Pools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ltds/androidx/core/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Ltds/androidx/core/util/Pools$Pool;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    return-void
.end method

.method static drainCache()V
    .registers 1

    .line 330
    :goto_0
    sget-object v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Ltds/androidx/core/util/Pools$Pool;

    invoke-interface {v0}, Ltds/androidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 331
    :cond_9
    return-void
.end method

.method static obtain()Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    .registers 2

    .line 317
    sget-object v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Ltds/androidx/core/util/Pools$Pool;

    invoke-interface {v0}, Ltds/androidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 318
    .local v0, "record":Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_10

    new-instance v1, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    invoke-direct {v1}, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;-><init>()V

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    return-object v1
.end method

.method static recycle(Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;)V
    .registers 2
    .param p0, "record"    # Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 324
    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 325
    sget-object v0, Ltds/androidx/recyclerview/widget/ViewInfoStore$InfoRecord;->sPool:Ltds/androidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Ltds/androidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method
