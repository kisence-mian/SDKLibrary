.class Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field mInvalidateOffsets:Z

.field mLayoutFromEnd:Z

.field mOffset:I

.field mPosition:I

.field mSpanReferenceLines:[I

.field mValid:Z

.field final synthetic this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 3243
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3244
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 3245
    return-void
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .registers 2

    .line 3270
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_15

    :cond_d
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    .line 3271
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_15
    iput v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 3272
    return-void
.end method

.method assignCoordinateFromPadding(I)V
    .registers 3
    .param p1, "addedDistance"    # I

    .line 3275
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_10

    .line 3276
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_1b

    .line 3278
    :cond_10
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Ltds/androidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 3280
    :goto_1b
    return-void
.end method

.method reset()V
    .registers 3

    .line 3248
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 3249
    const/high16 v1, -0x80000000

    iput v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 3250
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 3251
    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 3252
    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 3253
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-eqz v1, :cond_15

    .line 3254
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 3256
    :cond_15
    return-void
.end method

.method saveSpanReferenceLines([Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V
    .registers 7
    .param p1, "spans"    # [Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 3259
    array-length v0, p1

    .line 3260
    .local v0, "spanCount":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-eqz v1, :cond_8

    array-length v1, v1

    if-ge v1, v0, :cond_11

    .line 3261
    :cond_8
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->this$0:Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    .line 3263
    :cond_11
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_23

    .line 3265
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    aget-object v3, p1, v1

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Ltds/androidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    aput v3, v2, v1

    .line 3263
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 3267
    .end local v1    # "i":I
    :cond_23
    return-void
.end method
