.class final Lcom/tds/common/tracker/entities/TrackMessageList$1;
.super Ljava/lang/Object;
.source "TrackMessageList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/tracker/entities/TrackMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tds/common/tracker/entities/TrackMessageList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tds/common/tracker/entities/TrackMessageList;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    new-instance v0, Lcom/tds/common/tracker/entities/TrackMessageList;

    invoke-direct {v0, p1}, Lcom/tds/common/tracker/entities/TrackMessageList;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/tds/common/tracker/entities/TrackMessageList$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tds/common/tracker/entities/TrackMessageList;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tds/common/tracker/entities/TrackMessageList;
    .registers 3
    .param p1, "size"    # I

    .line 43
    new-array v0, p1, [Lcom/tds/common/tracker/entities/TrackMessageList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/tds/common/tracker/entities/TrackMessageList$1;->newArray(I)[Lcom/tds/common/tracker/entities/TrackMessageList;

    move-result-object p1

    return-object p1
.end method
