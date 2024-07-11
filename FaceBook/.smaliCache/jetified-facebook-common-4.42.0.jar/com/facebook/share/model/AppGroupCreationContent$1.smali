.class final Lcom/facebook/share/model/AppGroupCreationContent$1;
.super Ljava/lang/Object;
.source "AppGroupCreationContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/AppGroupCreationContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/share/model/AppGroupCreationContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/AppGroupCreationContent;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 86
    new-instance v0, Lcom/facebook/share/model/AppGroupCreationContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/AppGroupCreationContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/AppGroupCreationContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/AppGroupCreationContent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/share/model/AppGroupCreationContent;
    .registers 3
    .param p1, "size"    # I

    .line 90
    new-array v0, p1, [Lcom/facebook/share/model/AppGroupCreationContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/AppGroupCreationContent$1;->newArray(I)[Lcom/facebook/share/model/AppGroupCreationContent;

    move-result-object p1

    return-object p1
.end method
