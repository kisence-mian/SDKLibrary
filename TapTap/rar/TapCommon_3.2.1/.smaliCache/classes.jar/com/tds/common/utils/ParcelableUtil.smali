.class public Lcom/tds/common/utils/ParcelableUtil;
.super Ljava/lang/Object;
.source "ParcelableUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall(Landroid/os/Parcelable;)[B
    .registers 3
    .param p0, "parcelable"    # Landroid/os/Parcelable;

    .line 9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 11
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 12
    .local v1, "bytes":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13
    return-object v1
.end method

.method public static unmarshall([B)Landroid/os/Parcel;
    .registers 4
    .param p0, "bytes"    # [B

    .line 17
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 18
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 19
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 20
    return-object v0
.end method

.method public static unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .registers 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 24
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-static {p0}, Lcom/tds/common/utils/ParcelableUtil;->unmarshall([B)Landroid/os/Parcel;

    move-result-object v0

    .line 25
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    .local v1, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    return-object v1
.end method
