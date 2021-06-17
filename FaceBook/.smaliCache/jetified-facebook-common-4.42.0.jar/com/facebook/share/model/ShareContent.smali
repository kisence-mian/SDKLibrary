.class public abstract Lcom/facebook/share/model/ShareContent;
.super Ljava/lang/Object;
.source "ShareContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/facebook/share/model/ShareContent;",
        "E:",
        "Lcom/facebook/share/model/ShareContent$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModel;"
    }
.end annotation


# instance fields
.field private final contentUrl:Landroid/net/Uri;

.field private final hashtag:Lcom/facebook/share/model/ShareHashtag;

.field private final pageId:Ljava/lang/String;

.field private final peopleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final placeId:Ljava/lang/String;

.field private final ref:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    .local p0, "this":Lcom/facebook/share/model/ShareContent;, "Lcom/facebook/share/model/ShareContent<TP;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/share/model/ShareContent;->contentUrl:Landroid/net/Uri;

    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;->readUnmodifiableStringList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareContent;->peopleIds:Ljava/util/List;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareContent;->placeId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareContent;->pageId:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareContent;->ref:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/facebook/share/model/ShareHashtag$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareHashtag$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareHashtag$Builder;->readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareHashtag$Builder;->build()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareContent;->hashtag:Lcom/facebook/share/model/ShareHashtag;

    .line 61
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/share/model/ShareContent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/ShareContent$Builder;

    .line 45
    .local p0, "this":Lcom/facebook/share/model/ShareContent;, "Lcom/facebook/share/model/ShareContent<TP;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    # getter for: Lcom/facebook/share/model/ShareContent$Builder;->contentUrl:Landroid/net/Uri;
    invoke-static {p1}, Lcom/facebook/share/model/ShareContent$Builder;->access$000(Lcom/facebook/share/model/ShareContent$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareContent;->contentUrl:Landroid/net/Uri;

    .line 47
    # getter for: Lcom/facebook/share/model/ShareContent$Builder;->peopleIds:Ljava/util/List;
    invoke-static {p1}, Lcom/facebook/share/model/ShareContent$Builder;->access$100(Lcom/facebook/share/model/ShareContent$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareContent;->peopleIds:Ljava/util/List;

    .line 48
    # getter for: Lcom/facebook/share/model/ShareContent$Builder;->placeId:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareContent$Builder;->access$200(Lcom/facebook/share/model/ShareContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareContent;->placeId:Ljava/lang/String;

    .line 49
    # getter for: Lcom/facebook/share/model/ShareContent$Builder;->pageId:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareContent$Builder;->access$300(Lcom/facebook/share/model/ShareContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareContent;->pageId:Ljava/lang/String;

    .line 50
    # getter for: Lcom/facebook/share/model/ShareContent$Builder;->ref:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareContent$Builder;->access$400(Lcom/facebook/share/model/ShareContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareContent;->ref:Ljava/lang/String;

    .line 51
    # getter for: Lcom/facebook/share/model/ShareContent$Builder;->hashtag:Lcom/facebook/share/model/ShareHashtag;
    invoke-static {p1}, Lcom/facebook/share/model/ShareContent$Builder;->access$500(Lcom/facebook/share/model/ShareContent$Builder;)Lcom/facebook/share/model/ShareHashtag;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareContent;->hashtag:Lcom/facebook/share/model/ShareHashtag;

    .line 52
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

    .line 146
    .local p0, "this":Lcom/facebook/share/model/ShareContent;, "Lcom/facebook/share/model/ShareContent<TP;TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_10

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

    .line 133
    .local p0, "this":Lcom/facebook/share/model/ShareContent;, "Lcom/facebook/share/model/ShareContent<TP;TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getContentUrl()Landroid/net/Uri;
    .registers 2

    .line 73
    .local p0, "this":Lcom/facebook/share/model/ShareContent;, "Lcom/facebook/share/model/ShareContent<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent;->contentUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getPageId()Ljava/lang/String;
    .registers 2

    .line 108
    .local p0, "this":Lcom/facebook/share/model/ShareContent;, "Lcom/facebook/share/model/ShareContent<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent;->pageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPeopleIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/facebook/share/model/ShareContent;, "Lcom/facebook/share/model/ShareContent<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent;->peopleIds:Ljava/util/List;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .registers 2

    .line 97
    .local p0, "this":Lcom/facebook/share/model/ShareContent;, "Lcom/facebook/share/model/ShareContent<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .registers 2

    .line 119
    .local p0, "this":Lcom/facebook/share/model/ShareContent;, "Lcom/facebook/share/model/ShareContent<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getShareHashtag()Lcom/facebook/share/model/ShareHashtag;
    .registers 2

    .line 129
    .local p0, "this":Lcom/facebook/share/model/ShareContent;, "Lcom/facebook/share/model/ShareContent<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent;->hashtag:Lcom/facebook/share/model/ShareHashtag;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 137
    .local p0, "this":Lcom/facebook/share/model/ShareContent;, "Lcom/facebook/share/model/ShareContent<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent;->contentUrl:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 138
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent;->peopleIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 139
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent;->placeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent;->pageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent;->ref:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/facebook/share/model/ShareContent;->hashtag:Lcom/facebook/share/model/ShareHashtag;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 143
    return-void
.end method
