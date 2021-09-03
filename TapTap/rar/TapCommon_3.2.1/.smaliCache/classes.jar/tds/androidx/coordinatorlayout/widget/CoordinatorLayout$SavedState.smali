.class public Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
.super Ltds/androidx/customview/view/AbsSavedState;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
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
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field behaviorStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 3375
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$1;

    invoke-direct {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState$1;-><init>()V

    sput-object v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 10
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 3337
    invoke-direct {p0, p1, p2}, Ltds/androidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 3339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3341
    .local v0, "size":I
    new-array v1, v0, [I

    .line 3342
    .local v1, "ids":[I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3344
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 3346
    .local v2, "states":[Landroid/os/Parcelable;
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 3347
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v0, :cond_26

    .line 3348
    iget-object v4, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    aget v5, v1, v3

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3347
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 3350
    .end local v3    # "i":I
    :cond_26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 3353
    invoke-direct {p0, p1}, Ltds/androidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3354
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3358
    invoke-super {p0, p1, p2}, Ltds/androidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3360
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 3361
    .local v0, "size":I
    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3363
    new-array v1, v0, [I

    .line 3364
    .local v1, "ids":[I
    new-array v2, v0, [Landroid/os/Parcelable;

    .line 3366
    .local v2, "states":[Landroid/os/Parcelable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v0, :cond_2c

    .line 3367
    iget-object v4, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 3368
    iget-object v4, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    aput-object v4, v2, v3

    .line 3366
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 3370
    .end local v3    # "i":I
    :cond_2c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3371
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 3373
    return-void
.end method
