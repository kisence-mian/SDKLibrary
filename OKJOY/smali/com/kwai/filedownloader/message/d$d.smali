.class public Lcom/kwai/filedownloader/message/d$d;
.super Lcom/kwai/filedownloader/message/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/message/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final c:J

.field private final d:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(IJLjava/lang/Throwable;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/d;-><init>(I)V

    iput-wide p2, p0, Lcom/kwai/filedownloader/message/d$d;->c:J

    iput-object p4, p0, Lcom/kwai/filedownloader/message/d$d;->d:Ljava/lang/Throwable;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/d;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/message/d$d;->c:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/kwai/filedownloader/message/d$d;->d:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/message/d$d;->c:J

    return-wide v0
.end method

.method public k()B
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public l()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/message/d$d;->d:Ljava/lang/Throwable;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/kwai/filedownloader/message/MessageSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/kwai/filedownloader/message/d$d;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/kwai/filedownloader/message/d$d;->d:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
