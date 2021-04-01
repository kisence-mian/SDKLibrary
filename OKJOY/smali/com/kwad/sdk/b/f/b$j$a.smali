.class final Lcom/kwad/sdk/b/f/b$j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/b/f/b$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
        "<",
        "Lcom/kwad/sdk/b/f/b$j;",
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
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/kwad/sdk/b/f/b$j;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/b/f/b$j;

    invoke-direct {v0, p1, p2}, Lcom/kwad/sdk/b/f/b$j;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/b/f/b$j$a;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/kwad/sdk/b/f/b$j;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kwad/sdk/b/f/b$j;
    .registers 3

    new-array v0, p1, [Lcom/kwad/sdk/b/f/b$j;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/b/f/b$j$a;->newArray(I)[Lcom/kwad/sdk/b/f/b$j;

    move-result-object v0

    return-object v0
.end method
