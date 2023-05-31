.class public Lcom/kwai/filedownloader/message/d$b;
.super Lcom/kwai/filedownloader/message/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/message/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final c:Z

.field private final d:J


# direct methods
.method constructor <init>(IZJ)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/d;-><init>(I)V

    iput-boolean p2, p0, Lcom/kwai/filedownloader/message/d$b;->c:Z

    iput-wide p3, p0, Lcom/kwai/filedownloader/message/d$b;->d:J

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/d;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/kwai/filedownloader/message/d$b;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/message/d$b;->d:J

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/message/d$b;->d:J

    return-wide v0
.end method

.method public k()B
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/message/d$b;->c:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/kwai/filedownloader/message/MessageSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/kwai/filedownloader/message/d$b;->c:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/kwai/filedownloader/message/d$b;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
