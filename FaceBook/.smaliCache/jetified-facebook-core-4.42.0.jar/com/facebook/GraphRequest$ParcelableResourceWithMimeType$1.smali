.class final Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType$1;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2342
    new-instance v0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcel;Lcom/facebook/GraphRequest$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 2340
    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;
    .registers 3
    .param p1, "size"    # I

    .line 2346
    new-array v0, p1, [Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 2340
    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType$1;->newArray(I)[Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    move-result-object p1

    return-object p1
.end method
