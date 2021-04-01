.class public final Landroid/support/v4/os/ParcelCompat;
.super Ljava/lang/Object;
.source "ParcelCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBoolean(Landroid/os/Parcel;)Z
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static writeBoolean(Landroid/os/Parcel;Z)V
    .registers 3
    .param p0, "out"    # Landroid/os/Parcel;
    .param p1, "value"    # Z

    .prologue
    .line 41
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    return-void

    .line 41
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method
