.class public Lcom/facebook/share/model/ShareHashtag;
.super Ljava/lang/Object;
.source "ShareHashtag.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareHashtag$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/ShareHashtag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hashtag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Lcom/facebook/share/model/ShareHashtag$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareHashtag$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareHashtag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareHashtag;->hashtag:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareHashtag$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/ShareHashtag$Builder;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    # getter for: Lcom/facebook/share/model/ShareHashtag$Builder;->hashtag:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareHashtag$Builder;->access$000(Lcom/facebook/share/model/ShareHashtag$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareHashtag;->hashtag:Ljava/lang/String;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareHashtag$Builder;Lcom/facebook/share/model/ShareHashtag$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareHashtag$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/ShareHashtag$1;

    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareHashtag;-><init>(Lcom/facebook/share/model/ShareHashtag$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getHashtag()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/facebook/share/model/ShareHashtag;->hashtag:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 56
    iget-object v0, p0, Lcom/facebook/share/model/ShareHashtag;->hashtag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
