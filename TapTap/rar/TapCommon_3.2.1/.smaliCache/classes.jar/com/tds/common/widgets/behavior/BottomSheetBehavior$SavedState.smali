.class public Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;
.super Ltds/androidx/customview/view/AbsSavedState;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/widgets/behavior/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field fitToContents:Z

.field hideable:Z

.field peekHeight:I

.field skipCollapsed:Z

.field final state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1465
    new-instance v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState$1;

    invoke-direct {v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState$1;-><init>()V

    sput-object v0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1419
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1420
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 1423
    invoke-direct {p0, p1, p2}, Ltds/androidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->state:I

    .line 1426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->peekHeight:I

    .line 1427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->fitToContents:Z

    .line 1428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_24

    move v0, v2

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->hideable:Z

    .line 1429
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2e

    move v1, v2

    :cond_2e
    iput-boolean v1, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    .line 1430
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;I)V
    .registers 3
    .param p1, "superstate"    # Landroid/os/Parcelable;
    .param p2, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1451
    invoke-direct {p0, p1}, Ltds/androidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1452
    iput p2, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->state:I

    .line 1453
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Lcom/tds/common/widgets/behavior/BottomSheetBehavior;)V
    .registers 4
    .param p1, "superState"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<",
            "*>;)V"
        }
    .end annotation

    .line 1433
    .local p2, "behavior":Lcom/tds/common/widgets/behavior/BottomSheetBehavior;, "Lcom/tds/common/widgets/behavior/BottomSheetBehavior<*>;"
    invoke-direct {p0, p1}, Ltds/androidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1434
    iget v0, p2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->state:I

    iput v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->state:I

    .line 1435
    # getter for: Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->peekHeight:I
    invoke-static {p2}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->access$000(Lcom/tds/common/widgets/behavior/BottomSheetBehavior;)I

    move-result v0

    iput v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->peekHeight:I

    .line 1436
    iget-boolean v0, p2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->fitToContents:Z

    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->fitToContents:Z

    .line 1437
    iget-boolean v0, p2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->hideable:Z

    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->hideable:Z

    .line 1438
    iget-boolean v0, p2, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->skipCollapsed:Z

    iput-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    .line 1439
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1457
    invoke-super {p0, p1, p2}, Ltds/androidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1458
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1459
    iget v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->peekHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1460
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->fitToContents:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1461
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->hideable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1462
    iget-boolean v0, p0, Lcom/tds/common/widgets/behavior/BottomSheetBehavior$SavedState;->skipCollapsed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1463
    return-void
.end method
