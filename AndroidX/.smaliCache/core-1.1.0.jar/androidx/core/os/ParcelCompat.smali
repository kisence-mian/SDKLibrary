.class public final Landroidx/core/os/ParcelCompat;
.super Ljava/lang/Object;
.source "ParcelCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBoolean(Landroid/os/Parcel;)Z
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 32
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static writeBoolean(Landroid/os/Parcel;Z)V
    .registers 2
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "value"    # Z

    .line 43
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    return-void
.end method
