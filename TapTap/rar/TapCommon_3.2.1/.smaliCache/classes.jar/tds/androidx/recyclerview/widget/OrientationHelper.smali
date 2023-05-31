.class public abstract Ltds/androidx/recyclerview/widget/OrientationHelper;
.super Ljava/lang/Object;
.source "OrientationHelper.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_SIZE:I = -0x80000000

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 3
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, -0x80000000

    iput v0, p0, Ltds/androidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 47
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Ltds/androidx/recyclerview/widget/OrientationHelper$1;)V
    .registers 3
    .param p1, "x0"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "x1"    # Ltds/androidx/recyclerview/widget/OrientationHelper$1;

    .line 32
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/OrientationHelper;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static createHorizontalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;
    .registers 2
    .param p0, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 258
    new-instance v0, Ltds/androidx/recyclerview/widget/OrientationHelper$1;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/OrientationHelper$1;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public static createOrientationHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;I)Ltds/androidx/recyclerview/widget/OrientationHelper;
    .registers 4
    .param p0, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p1, "orientation"    # I

    .line 241
    packed-switch p1, :pswitch_data_16

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :pswitch_b
    invoke-static {p0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    .line 243
    :pswitch_10
    invoke-static {p0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method public static createVerticalHelper(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/OrientationHelper;
    .registers 2
    .param p0, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 356
    new-instance v0, Ltds/androidx/recyclerview/widget/OrientationHelper$2;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/OrientationHelper$2;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method


# virtual methods
.method public abstract getDecoratedEnd(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurement(Landroid/view/View;)I
.end method

.method public abstract getDecoratedMeasurementInOther(Landroid/view/View;)I
.end method

.method public abstract getDecoratedStart(Landroid/view/View;)I
.end method

.method public abstract getEnd()I
.end method

.method public abstract getEndAfterPadding()I
.end method

.method public abstract getEndPadding()I
.end method

.method public getLayoutManager()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 2

    .line 55
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public abstract getMode()I
.end method

.method public abstract getModeInOther()I
.end method

.method public abstract getStartAfterPadding()I
.end method

.method public abstract getTotalSpace()I
.end method

.method public getTotalSpaceChange()I
    .registers 3

    .line 78
    iget v0, p0, Ltds/androidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    goto :goto_f

    :cond_8
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Ltds/androidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    sub-int/2addr v0, v1

    :goto_f
    return v0
.end method

.method public abstract getTransformedEndWithDecoration(Landroid/view/View;)I
.end method

.method public abstract getTransformedStartWithDecoration(Landroid/view/View;)I
.end method

.method public abstract offsetChild(Landroid/view/View;I)V
.end method

.method public abstract offsetChildren(I)V
.end method

.method public onLayoutComplete()V
    .registers 2

    .line 64
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/OrientationHelper;->mLastTotalSpace:I

    .line 65
    return-void
.end method
