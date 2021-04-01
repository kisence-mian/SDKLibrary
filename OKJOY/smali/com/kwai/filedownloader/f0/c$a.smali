.class final Lcom/kwai/filedownloader/f0/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/f0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kwai/filedownloader/f0/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kwai/filedownloader/f0/c;
    .registers 3

    new-instance v0, Lcom/kwai/filedownloader/f0/c;

    invoke-direct {v0, p1}, Lcom/kwai/filedownloader/f0/c;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/f0/c$a;->createFromParcel(Landroid/os/Parcel;)Lcom/kwai/filedownloader/f0/c;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kwai/filedownloader/f0/c;
    .registers 3

    new-array v0, p1, [Lcom/kwai/filedownloader/f0/c;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/kwai/filedownloader/f0/c$a;->newArray(I)[Lcom/kwai/filedownloader/f0/c;

    move-result-object v0

    return-object v0
.end method
