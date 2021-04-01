.class final Lcom/ss/android/socialbase/downloader/g/b$1;
.super Ljava/lang/Object;
.source "DownloadChunk.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/g/b;
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
        "Lcom/ss/android/socialbase/downloader/g/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/ss/android/socialbase/downloader/g/b;
    .registers 3

    .prologue
    .line 120
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/b;

    invoke-direct {v0, p1}, Lcom/ss/android/socialbase/downloader/g/b;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/ss/android/socialbase/downloader/g/b;
    .registers 3

    .prologue
    .line 125
    new-array v0, p1, [Lcom/ss/android/socialbase/downloader/g/b;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/g/b$1;->a(Landroid/os/Parcel;)Lcom/ss/android/socialbase/downloader/g/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/g/b$1;->a(I)[Lcom/ss/android/socialbase/downloader/g/b;

    move-result-object v0

    return-object v0
.end method
