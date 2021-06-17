.class public final Lcom/facebook/share/model/ShareStoryContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareStoryContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareStoryContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder<",
        "Lcom/facebook/share/model/ShareStoryContent;",
        "Lcom/facebook/share/model/ShareStoryContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mAttributionLink:Ljava/lang/String;

.field private mBackgroundAsset:Lcom/facebook/share/model/ShareMedia;

.field private mBackgroundColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStickerAsset:Lcom/facebook/share/model/SharePhoto;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    const-class v0, Lcom/facebook/share/model/ShareStoryContent$Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/share/model/ShareStoryContent$Builder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareStoryContent$Builder;)Lcom/facebook/share/model/ShareMedia;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareStoryContent$Builder;

    .line 92
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->mBackgroundAsset:Lcom/facebook/share/model/ShareMedia;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareStoryContent$Builder;)Lcom/facebook/share/model/SharePhoto;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareStoryContent$Builder;

    .line 92
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->mStickerAsset:Lcom/facebook/share/model/SharePhoto;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareStoryContent$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareStoryContent$Builder;

    .line 92
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->mBackgroundColorList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/ShareStoryContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareStoryContent$Builder;

    .line 92
    iget-object v0, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->mAttributionLink:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareStoryContent;
    .registers 3

    .line 143
    new-instance v0, Lcom/facebook/share/model/ShareStoryContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareStoryContent;-><init>(Lcom/facebook/share/model/ShareStoryContent$Builder;Lcom/facebook/share/model/ShareStoryContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 92
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent$Builder;->build()Lcom/facebook/share/model/ShareStoryContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 2

    .line 92
    check-cast p1, Lcom/facebook/share/model/ShareStoryContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->readFrom(Lcom/facebook/share/model/ShareStoryContent;)Lcom/facebook/share/model/ShareStoryContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 92
    check-cast p1, Lcom/facebook/share/model/ShareStoryContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->readFrom(Lcom/facebook/share/model/ShareStoryContent;)Lcom/facebook/share/model/ShareStoryContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/ShareStoryContent;)Lcom/facebook/share/model/ShareStoryContent$Builder;
    .registers 4
    .param p1, "model"    # Lcom/facebook/share/model/ShareStoryContent;

    .line 148
    if-nez p1, :cond_3

    .line 149
    return-object p0

    .line 151
    :cond_3
    nop

    .line 152
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareStoryContent$Builder;

    .line 153
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundAsset()Lcom/facebook/share/model/ShareMedia;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->setBackgroundAsset(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareStoryContent$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareStoryContent;->getStickerAsset()Lcom/facebook/share/model/SharePhoto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->setStickerAsset(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/ShareStoryContent$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundColorList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->setBackgroundColorList(Ljava/util/List;)Lcom/facebook/share/model/ShareStoryContent$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareStoryContent;->getAttributionLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareStoryContent$Builder;->setAttributionLink(Ljava/lang/String;)Lcom/facebook/share/model/ShareStoryContent$Builder;

    move-result-object v0

    .line 151
    return-object v0
.end method

.method public setAttributionLink(Ljava/lang/String;)Lcom/facebook/share/model/ShareStoryContent$Builder;
    .registers 2
    .param p1, "attributionLink"    # Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->mAttributionLink:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public setBackgroundAsset(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareStoryContent$Builder;
    .registers 2
    .param p1, "backgroundAsset"    # Lcom/facebook/share/model/ShareMedia;

    .line 106
    iput-object p1, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->mBackgroundAsset:Lcom/facebook/share/model/ShareMedia;

    .line 107
    return-object p0
.end method

.method public setBackgroundColorList(Ljava/util/List;)Lcom/facebook/share/model/ShareStoryContent$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/share/model/ShareStoryContent$Builder;"
        }
    .end annotation

    .line 126
    .local p1, "backgroundColorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->mBackgroundColorList:Ljava/util/List;

    .line 127
    return-object p0
.end method

.method public setStickerAsset(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/ShareStoryContent$Builder;
    .registers 2
    .param p1, "stickerAsset"    # Lcom/facebook/share/model/SharePhoto;

    .line 116
    iput-object p1, p0, Lcom/facebook/share/model/ShareStoryContent$Builder;->mStickerAsset:Lcom/facebook/share/model/SharePhoto;

    .line 117
    return-object p0
.end method
