.class public Lcom/kwai/filedownloader/message/h$b;
.super Lcom/kwai/filedownloader/message/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/message/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final c:Z

.field private final d:I


# direct methods
.method constructor <init>(IZI)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/h;-><init>(I)V

    iput-boolean p2, p0, Lcom/kwai/filedownloader/message/h$b;->c:Z

    iput p3, p0, Lcom/kwai/filedownloader/message/h$b;->d:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/h;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/kwai/filedownloader/message/h$b;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kwai/filedownloader/message/h$b;->d:I

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

.method public j()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/message/h$b;->d:I

    return v0
.end method

.method public k()B
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwai/filedownloader/message/h$b;->c:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/kwai/filedownloader/message/MessageSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/kwai/filedownloader/message/h$b;->c:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/kwai/filedownloader/message/h$b;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
