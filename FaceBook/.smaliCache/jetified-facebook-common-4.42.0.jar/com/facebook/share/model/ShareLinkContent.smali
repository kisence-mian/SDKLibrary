.class public final Lcom/facebook/share/model/ShareLinkContent;
.super Lcom/facebook/share/model/ShareContent;
.source "ShareLinkContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareLinkContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent<",
        "Lcom/facebook/share/model/ShareLinkContent;",
        "Lcom/facebook/share/model/ShareLinkContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/ShareLinkContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contentDescription:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final contentTitle:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final imageUrl:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final quote:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 117
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareLinkContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->contentDescription:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->contentTitle:Ljava/lang/String;

    .line 55
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->imageUrl:Landroid/net/Uri;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->quote:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareLinkContent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 45
    # getter for: Lcom/facebook/share/model/ShareLinkContent$Builder;->contentDescription:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->access$000(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->contentDescription:Ljava/lang/String;

    .line 46
    # getter for: Lcom/facebook/share/model/ShareLinkContent$Builder;->contentTitle:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->access$100(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->contentTitle:Ljava/lang/String;

    .line 47
    # getter for: Lcom/facebook/share/model/ShareLinkContent$Builder;->imageUrl:Landroid/net/Uri;
    invoke-static {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->access$200(Lcom/facebook/share/model/ShareLinkContent$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->imageUrl:Landroid/net/Uri;

    .line 48
    # getter for: Lcom/facebook/share/model/ShareLinkContent$Builder;->quote:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->access$300(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->quote:Ljava/lang/String;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareLinkContent$Builder;Lcom/facebook/share/model/ShareLinkContent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareLinkContent$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/ShareLinkContent$1;

    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareLinkContent;-><init>(Lcom/facebook/share/model/ShareLinkContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Landroid/net/Uri;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->imageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getQuote()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->quote:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 109
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->contentDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->imageUrl:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent;->quote:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return-void
.end method
