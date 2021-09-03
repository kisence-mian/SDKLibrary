.class final Lcom/tapsdk/moment/AccessToken$1;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapsdk/moment/AccessToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tapsdk/moment/AccessToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tapsdk/moment/AccessToken;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 15
    new-instance v0, Lcom/tapsdk/moment/AccessToken;

    invoke-direct {v0, p1}, Lcom/tapsdk/moment/AccessToken;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/tapsdk/moment/AccessToken$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tapsdk/moment/AccessToken;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tapsdk/moment/AccessToken;
    .registers 3
    .param p1, "size"    # I

    .line 20
    new-array v0, p1, [Lcom/tapsdk/moment/AccessToken;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/tapsdk/moment/AccessToken$1;->newArray(I)[Lcom/tapsdk/moment/AccessToken;

    move-result-object p1

    return-object p1
.end method
