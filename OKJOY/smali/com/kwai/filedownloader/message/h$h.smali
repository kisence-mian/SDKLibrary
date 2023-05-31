.class public Lcom/kwai/filedownloader/message/h$h;
.super Lcom/kwai/filedownloader/message/h$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/message/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private final e:I


# direct methods
.method constructor <init>(IILjava/lang/Throwable;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/kwai/filedownloader/message/h$d;-><init>(IILjava/lang/Throwable;)V

    iput p4, p0, Lcom/kwai/filedownloader/message/h$h;->e:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwai/filedownloader/message/h$d;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kwai/filedownloader/message/h$h;->e:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/kwai/filedownloader/message/h$h;->e:I

    return v0
.end method

.method public k()B
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/kwai/filedownloader/message/h$d;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/kwai/filedownloader/message/h$h;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
