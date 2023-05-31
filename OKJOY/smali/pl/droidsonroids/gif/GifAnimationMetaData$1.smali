.class final Lpl/droidsonroids/gif/GifAnimationMetaData$1;
.super Ljava/lang/Object;
.source "GifAnimationMetaData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/GifAnimationMetaData;
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
        "Lpl/droidsonroids/gif/GifAnimationMetaData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData$1;->createFromParcel(Landroid/os/Parcel;)Lpl/droidsonroids/gif/GifAnimationMetaData;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lpl/droidsonroids/gif/GifAnimationMetaData;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 308
    new-instance v0, Lpl/droidsonroids/gif/GifAnimationMetaData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lpl/droidsonroids/gif/GifAnimationMetaData;-><init>(Landroid/os/Parcel;Lpl/droidsonroids/gif/GifAnimationMetaData$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifAnimationMetaData$1;->newArray(I)[Lpl/droidsonroids/gif/GifAnimationMetaData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lpl/droidsonroids/gif/GifAnimationMetaData;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 312
    new-array v0, p1, [Lpl/droidsonroids/gif/GifAnimationMetaData;

    return-object v0
.end method
