.class public abstract Ltds/androidx/customview/view/AbsSavedState;
.super Ljava/lang/Object;
.source "AbsSavedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltds/androidx/customview/view/AbsSavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_STATE:Ltds/androidx/customview/view/AbsSavedState;


# instance fields
.field private final mSuperState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ltds/androidx/customview/view/AbsSavedState$1;

    invoke-direct {v0}, Ltds/androidx/customview/view/AbsSavedState$1;-><init>()V

    sput-object v0, Ltds/androidx/customview/view/AbsSavedState;->EMPTY_STATE:Ltds/androidx/customview/view/AbsSavedState;

    .line 90
    new-instance v0, Ltds/androidx/customview/view/AbsSavedState$2;

    invoke-direct {v0}, Ltds/androidx/customview/view/AbsSavedState$2;-><init>()V

    sput-object v0, Ltds/androidx/customview/view/AbsSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 41
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltds/androidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 62
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 72
    .local v0, "superState":Landroid/os/Parcelable;
    if-eqz v0, :cond_b

    move-object v1, v0

    goto :goto_d

    :cond_b
    sget-object v1, Ltds/androidx/customview/view/AbsSavedState;->EMPTY_STATE:Ltds/androidx/customview/view/AbsSavedState;

    :goto_d
    iput-object v1, p0, Ltds/androidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 73
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-eqz p1, :cond_f

    .line 52
    sget-object v0, Ltds/androidx/customview/view/AbsSavedState;->EMPTY_STATE:Ltds/androidx/customview/view/AbsSavedState;

    if-eq p1, v0, :cond_b

    move-object v0, p1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-object v0, p0, Ltds/androidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 53
    return-void

    .line 50
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "superState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ltds/androidx/customview/view/AbsSavedState$1;)V
    .registers 2
    .param p1, "x0"    # Ltds/androidx/customview/view/AbsSavedState$1;

    .line 31
    invoke-direct {p0}, Ltds/androidx/customview/view/AbsSavedState;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public final getSuperState()Landroid/os/Parcelable;
    .registers 2

    .line 77
    iget-object v0, p0, Ltds/androidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    iget-object v0, p0, Ltds/androidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 88
    return-void
.end method
