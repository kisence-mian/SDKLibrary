.class final Lcom/facebook/share/internal/ShareFeedContent$1;
.super Ljava/lang/Object;
.source "ShareFeedContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/ShareFeedContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/share/internal/ShareFeedContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/internal/ShareFeedContent;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 109
    new-instance v0, Lcom/facebook/share/internal/ShareFeedContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/internal/ShareFeedContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 107
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/ShareFeedContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/internal/ShareFeedContent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/facebook/share/internal/ShareFeedContent;
    .registers 3
    .param p1, "size"    # I

    .line 113
    new-array v0, p1, [Lcom/facebook/share/internal/ShareFeedContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 107
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/ShareFeedContent$1;->newArray(I)[Lcom/facebook/share/internal/ShareFeedContent;

    move-result-object p1

    return-object p1
.end method
