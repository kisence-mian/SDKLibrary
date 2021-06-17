.class public final Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;
.super Lcom/facebook/share/model/ShareContent;
.source "ShareMessengerOpenGraphMusicTemplateContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent<",
        "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;",
        "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final button:Lcom/facebook/share/model/ShareMessengerActionButton;

.field private final url:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 47
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->url:Landroid/net/Uri;

    .line 48
    const-class v0, Lcom/facebook/share/model/ShareMessengerActionButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerActionButton;

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    .line 49
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;

    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 41
    # getter for: Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->url:Landroid/net/Uri;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->access$000(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->url:Landroid/net/Uri;

    .line 42
    # getter for: Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->access$100(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$1;

    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;-><init>(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getButton()Lcom/facebook/share/model/ShareMessengerActionButton;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->url:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->url:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    return-void
.end method
