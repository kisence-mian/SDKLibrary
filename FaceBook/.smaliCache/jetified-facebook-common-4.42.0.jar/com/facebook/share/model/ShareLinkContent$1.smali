.class final Lcom/facebook/share/model/ShareLinkContent$1;
.super Ljava/lang/Object;
.source "ShareLinkContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareLinkContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/share/model/ShareLinkContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareLinkContent;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/ShareLinkContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 118
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareLinkContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/share/model/ShareLinkContent;
    .registers 3
    .param p1, "size"    # I

    .line 124
    new-array v0, p1, [Lcom/facebook/share/model/ShareLinkContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 118
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareLinkContent$1;->newArray(I)[Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    return-object p1
.end method
