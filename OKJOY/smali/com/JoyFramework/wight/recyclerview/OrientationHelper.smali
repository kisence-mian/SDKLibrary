.class public abstract Lcom/JoyFramework/wight/recyclerview/OrientationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_SIZE:I = -0x80000000

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mLastTotalSpace:I

.field protected final mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->mLastTotalSpace:I

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 50
    iput-object p1, p0, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;Lcom/JoyFramework/wight/recyclerview/b;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Lcom/JoyFramework/wight/recyclerview/OrientationHelper;
    .registers 2

    .prologue
    .line 242
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/b;

    invoke-direct {v0, p0}, Lcom/JoyFramework/wight/recyclerview/b;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public static createOrientationHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;I)Lcom/JoyFramework/wight/recyclerview/OrientationHelper;
    .registers 4

    .prologue
    .line 225
    packed-switch p1, :pswitch_data_16

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :pswitch_b
    invoke-static {p0}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    move-result-object v0

    .line 229
    :goto_f
    return-object v0

    :pswitch_10
    invoke-static {p0}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    move-result-object v0

    goto :goto_f

    .line 225
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method

.method public static createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Lcom/JoyFramework/wight/recyclerview/OrientationHelper;
    .registers 2

    .prologue
    .line 336
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/c;

    invoke-direct {v0, p0}, Lcom/JoyFramework/wight/recyclerview/c;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

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

    .prologue
    .line 73
    const/high16 v0, -0x80000000

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->mLastTotalSpace:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->mLastTotalSpace:I

    sub-int/2addr v0, v1

    goto :goto_7
.end method

.method public abstract getTotalSpaceInOther()I
.end method

.method public abstract getTransformedEndWithDecoration(Landroid/view/View;)I
.end method

.method public abstract getTransformedStartWithDecoration(Landroid/view/View;)I
.end method

.method public onLayoutComplete()V
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    iput v0, p0, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->mLastTotalSpace:I

    .line 60
    return-void
.end method
