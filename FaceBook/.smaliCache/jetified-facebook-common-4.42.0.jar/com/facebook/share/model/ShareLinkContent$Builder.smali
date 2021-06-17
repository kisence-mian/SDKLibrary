.class public final Lcom/facebook/share/model/ShareLinkContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareLinkContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareLinkContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder<",
        "Lcom/facebook/share/model/ShareLinkContent;",
        "Lcom/facebook/share/model/ShareLinkContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private contentDescription:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private contentTitle:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private imageUrl:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private quote:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 133
    const-class v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/share/model/ShareLinkContent$Builder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 131
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 131
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareLinkContent$Builder;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 131
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->imageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 131
    iget-object v0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->quote:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareLinkContent;
    .registers 3

    .line 192
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareLinkContent;-><init>(Lcom/facebook/share/model/ShareLinkContent$Builder;Lcom/facebook/share/model/ShareLinkContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 131
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 2

    .line 131
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->readFrom(Lcom/facebook/share/model/ShareLinkContent;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/ShareLinkContent;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .registers 4
    .param p1, "model"    # Lcom/facebook/share/model/ShareLinkContent;

    .line 197
    if-nez p1, :cond_3

    .line 198
    return-object p0

    .line 200
    :cond_3
    nop

    .line 201
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 202
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 200
    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 131
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->readFrom(Lcom/facebook/share/model/ShareLinkContent;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .registers 4
    .param p1, "contentDescription"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    sget-object v0, Lcom/facebook/share/model/ShareLinkContent$Builder;->TAG:Ljava/lang/String;

    const-string v1, "This method does nothing. ContentDescription is deprecated in Graph API 2.9."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .registers 4
    .param p1, "contentTitle"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    sget-object v0, Lcom/facebook/share/model/ShareLinkContent$Builder;->TAG:Ljava/lang/String;

    const-string v1, "This method does nothing. ContentTitle is deprecated in Graph API 2.9."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-object p0
.end method

.method public setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .registers 4
    .param p1, "imageUrl"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    sget-object v0, Lcom/facebook/share/model/ShareLinkContent$Builder;->TAG:Ljava/lang/String;

    const-string v1, "This method does nothing. ImageUrl is deprecated in Graph API 2.9."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-object p0
.end method

.method public setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .registers 2
    .param p1, "quote"    # Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->quote:Ljava/lang/String;

    .line 187
    return-object p0
.end method
