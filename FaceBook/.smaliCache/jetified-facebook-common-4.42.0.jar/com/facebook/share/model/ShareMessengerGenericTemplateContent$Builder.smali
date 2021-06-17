.class public Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareMessengerGenericTemplateContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder<",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private genericTemplateElement:Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

.field private imageAspectRatio:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

.field private isSharable:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    .line 124
    iget-boolean v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->isSharable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    .line 124
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->imageAspectRatio:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    .line 124
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->genericTemplateElement:Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
    .registers 2

    .line 161
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    invoke-direct {v0, p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;-><init>(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .line 124
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->build()Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 2

    .line 124
    check-cast p1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;
    .registers 4
    .param p1, "model"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    .line 166
    if-nez p1, :cond_3

    .line 167
    return-object p0

    .line 169
    :cond_3
    nop

    .line 170
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    .line 171
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getIsSharable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->setIsSharable(Z)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getImageAspectRatio()Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->setImageAspectRatio(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->setGenericTemplateElement(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    move-result-object v0

    .line 169
    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 2

    .line 124
    check-cast p1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setGenericTemplateElement(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;
    .registers 2
    .param p1, "genericTemplateElement"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    .line 155
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->genericTemplateElement:Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    .line 156
    return-object p0
.end method

.method public setImageAspectRatio(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;
    .registers 2
    .param p1, "imageAspectRatio"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    .line 145
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->imageAspectRatio:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    .line 146
    return-object p0
.end method

.method public setIsSharable(Z)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;
    .registers 2
    .param p1, "isSharable"    # Z

    .line 136
    iput-boolean p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$Builder;->isSharable:Z

    .line 137
    return-object p0
.end method
