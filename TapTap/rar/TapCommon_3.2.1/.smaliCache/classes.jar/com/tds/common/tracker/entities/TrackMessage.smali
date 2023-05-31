.class public Lcom/tds/common/tracker/entities/TrackMessage;
.super Ljava/lang/Object;
.source "TrackMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tds/common/tracker/entities/TrackMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final createTime:J

.field public final logCommonParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final logContentsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/tds/common/tracker/entities/TrackMessage$1;

    invoke-direct {v0}, Lcom/tds/common/tracker/entities/TrackMessage$1;-><init>()V

    sput-object v0, Lcom/tds/common/tracker/entities/TrackMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-class v0, Lcom/tds/common/tracker/TdsTrackerConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tds/common/tracker/TdsTrackerConfig;

    iput-object v0, p0, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/tracker/entities/TrackMessage;->logContentsMap:Ljava/util/Map;

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tds/common/tracker/entities/TrackMessage;->createTime:J

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tds/common/tracker/entities/TrackMessage;->logCommonParams:Ljava/util/Map;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/tds/common/tracker/TdsTrackerConfig;Ljava/util/Map;JLjava/util/Map;)V
    .registers 6
    .param p1, "tdsTrackerConfig"    # Lcom/tds/common/tracker/TdsTrackerConfig;
    .param p3, "createTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/tracker/TdsTrackerConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    .local p2, "logContentsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "logCommonParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    .line 23
    iput-object p2, p0, Lcom/tds/common/tracker/entities/TrackMessage;->logContentsMap:Ljava/util/Map;

    .line 24
    iput-wide p3, p0, Lcom/tds/common/tracker/entities/TrackMessage;->createTime:J

    .line 25
    iput-object p5, p0, Lcom/tds/common/tracker/entities/TrackMessage;->logCommonParams:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackMessage{tdsTrackerConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logContentsMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/tracker/entities/TrackMessage;->logContentsMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 39
    iget-object v0, p0, Lcom/tds/common/tracker/entities/TrackMessage;->tdsTrackerConfig:Lcom/tds/common/tracker/TdsTrackerConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    iget-object v0, p0, Lcom/tds/common/tracker/entities/TrackMessage;->logContentsMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 41
    iget-wide v0, p0, Lcom/tds/common/tracker/entities/TrackMessage;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-object v0, p0, Lcom/tds/common/tracker/entities/TrackMessage;->logCommonParams:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 43
    return-void
.end method
