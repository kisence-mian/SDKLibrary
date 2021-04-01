.class public Lcom/kwai/filedownloader/message/h$f;
.super Lcom/kwai/filedownloader/message/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/message/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(III)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/h;-><init>(I)V

    iput p2, p0, Lcom/kwai/filedownloader/message/h$f;->c:I

    iput p3, p0, Lcom/kwai/filedownloader/message/h$f;->d:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/h;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kwai/filedownloader/message/h$f;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kwai/filedownloader/message/h$f;->d:I

    return-void
.end method

.method constructor <init>(Lcom/kwai/filedownloader/message/h$f;)V
    .registers 5

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/MessageSnapshot;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/h$f;->i()I

    move-result v1

    invoke-virtual {p1}, Lcom/kwai/filedownloader/message/h$f;->j()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/kwai/filedownloader/message/h$f;-><init>(III)V

    return-void
.end method


# virtual methods
.method public i()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/message/h$f;->c:I

    return v0
.end method

.method public j()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/message/h$f;->d:I

    return v0
.end method

.method public k()B
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/kwai/filedownloader/message/MessageSnapshot;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/kwai/filedownloader/message/h$f;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/kwai/filedownloader/message/h$f;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
