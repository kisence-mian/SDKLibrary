.class final Ltds/androidx/recyclerview/widget/RecyclerView$SavedState$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 12512
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 3

    .line 12512
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 12520
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 12515
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    invoke-direct {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 12512
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState$1;->newArray(I)[Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;
    .registers 3
    .param p1, "size"    # I

    .line 12525
    new-array v0, p1, [Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    return-object v0
.end method
