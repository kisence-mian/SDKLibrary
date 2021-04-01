.class final Lcom/ss/android/socialbase/downloader/g/e$1;
.super Ljava/lang/Object;
.source "HttpHeader.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/g/e;
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
        "Lcom/ss/android/socialbase/downloader/g/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/ss/android/socialbase/downloader/g/e;
    .registers 3

    .prologue
    .line 28
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/e;

    invoke-direct {v0, p1}, Lcom/ss/android/socialbase/downloader/g/e;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/ss/android/socialbase/downloader/g/e;
    .registers 3

    .prologue
    .line 33
    new-array v0, p1, [Lcom/ss/android/socialbase/downloader/g/e;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/g/e$1;->a(Landroid/os/Parcel;)Lcom/ss/android/socialbase/downloader/g/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/g/e$1;->a(I)[Lcom/ss/android/socialbase/downloader/g/e;

    move-result-object v0

    return-object v0
.end method
