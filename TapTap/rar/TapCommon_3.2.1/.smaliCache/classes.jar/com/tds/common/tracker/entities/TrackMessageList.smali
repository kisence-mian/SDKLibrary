.class public Lcom/tds/common/tracker/entities/TrackMessageList;
.super Ljava/lang/Object;
.source "TrackMessageList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tds/common/tracker/entities/TrackMessageList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public trackMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/TrackMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Lcom/tds/common/tracker/entities/TrackMessageList$1;

    invoke-direct {v0}, Lcom/tds/common/tracker/entities/TrackMessageList$1;-><init>()V

    sput-object v0, Lcom/tds/common/tracker/entities/TrackMessageList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tds/common/tracker/entities/TrackMessageList;->trackMessageList:Ljava/util/List;

    .line 22
    sget-object v1, Lcom/tds/common/tracker/entities/TrackMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/common/tracker/entities/TrackMessage;",
            ">;)V"
        }
    .end annotation

    .line 16
    .local p1, "trackMessageList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/common/tracker/entities/TrackMessage;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tds/common/tracker/entities/TrackMessageList;->trackMessageList:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 27
    iget-object v0, p0, Lcom/tds/common/tracker/entities/TrackMessageList;->trackMessageList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 28
    return-void
.end method
