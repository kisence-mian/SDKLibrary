.class public final Lcom/facebook/share/model/ShareStoryContent;
.super Lcom/facebook/share/model/ShareContent;
.source "ShareStoryContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareStoryContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent<",
        "Lcom/facebook/share/model/ShareStoryContent;",
        "Lcom/facebook/share/model/ShareStoryContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/ShareStoryContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributionLink:Ljava/lang/String;

.field private final mBackgroundAsset:Lcom/facebook/share/model/ShareMedia;

.field private final mBackgroundColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStickerAsset:Lcom/facebook/share/model/SharePhoto;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Lcom/facebook/share/model/ShareStoryContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareStoryContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareStoryContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 33
    const-class v0, Lcom/facebook/share/model/ShareMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMedia;

    iput-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mBackgroundAsset:Lcom/facebook/share/model/ShareMedia;

    .line 34
    const-class v0, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    iput-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mStickerAsset:Lcom/facebook/share/model/SharePhoto;

    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareStoryContent;->readUnmodifiableStringList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mBackgroundColorList:Ljava/util/List;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mAttributionLink:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareStoryContent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/ShareStoryContent$Builder;

    .line 24
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 25
    # getter for: Lcom/facebook/share/model/ShareStoryContent$Builder;->mBackgroundAsset:Lcom/facebook/share/model/ShareMedia;
    invoke-static {p1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->access$000(Lcom/facebook/share/model/ShareStoryContent$Builder;)Lcom/facebook/share/model/ShareMedia;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mBackgroundAsset:Lcom/facebook/share/model/ShareMedia;

    .line 26
    # getter for: Lcom/facebook/share/model/ShareStoryContent$Builder;->mStickerAsset:Lcom/facebook/share/model/SharePhoto;
    invoke-static {p1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->access$100(Lcom/facebook/share/model/ShareStoryContent$Builder;)Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mStickerAsset:Lcom/facebook/share/model/SharePhoto;

    .line 27
    # getter for: Lcom/facebook/share/model/ShareStoryContent$Builder;->mBackgroundColorList:Ljava/util/List;
    invoke-static {p1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->access$200(Lcom/facebook/share/model/ShareStoryContent$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mBackgroundColorList:Ljava/util/List;

    .line 28
    # getter for: Lcom/facebook/share/model/ShareStoryContent$Builder;->mAttributionLink:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->access$300(Lcom/facebook/share/model/ShareStoryContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mAttributionLink:Ljava/lang/String;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareStoryContent$Builder;Lcom/facebook/share/model/ShareStoryContent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareStoryContent$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/ShareStoryContent$1;

    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareStoryContent;-><init>(Lcom/facebook/share/model/ShareStoryContent$Builder;)V

    return-void
.end method

.method private readUnmodifiableStringList(Landroid/os/Parcel;)Ljava/util/List;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 86
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_14

    :cond_10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_14
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributionLink()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mAttributionLink:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundAsset()Lcom/facebook/share/model/ShareMedia;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mBackgroundAsset:Lcom/facebook/share/model/ShareMedia;

    return-object v0
.end method

.method public getBackgroundColorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mBackgroundColorList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    .line 49
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 48
    :goto_a
    return-object v0
.end method

.method public getStickerAsset()Lcom/facebook/share/model/SharePhoto;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mStickerAsset:Lcom/facebook/share/model/SharePhoto;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 63
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mBackgroundAsset:Lcom/facebook/share/model/ShareMedia;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 65
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mStickerAsset:Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 66
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mBackgroundColorList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 67
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent;->mAttributionLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    return-void
.end method
