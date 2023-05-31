.class public Lcom/kwai/filedownloader/message/d$f;
.super Lcom/kwai/filedownloader/message/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/message/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private final c:J

.field private final d:J


# direct methods
.method constructor <init>(IJJ)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/d;-><init>(I)V

    iput-wide p2, p0, Lcom/kwai/filedownloader/message/d$f;->c:J

    iput-wide p4, p0, Lcom/kwai/filedownloader/message/d$f;->d:J

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/d;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/message/d$f;->c:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwai/filedownloader/message/d$f;->d:J

    return-void
.end method

.method constructor <init>(Lcom/kwai/filedownloader/message/d$f;)V
    .registers 8

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/d$f;->f()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/d$f;->g()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kwai/filedownloader/message/d$f;-><init>(IJJ)V

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

    iget-wide v0, p0, Lcom/kwai/filedownloader/message/d$f;->c:J

    return-wide v0
.end method

.method public g()J
    .registers 3

    iget-wide v0, p0, Lcom/kwai/filedownloader/message/d$f;->d:J

    return-wide v0
.end method

.method public k()B
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/kwai/filedownloader/message/MessageSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/kwai/filedownloader/message/d$f;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/kwai/filedownloader/message/d$f;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
