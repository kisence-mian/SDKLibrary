.class Lcom/facebook/share/widget/ShareDialog$WebShareHandler;
.super Lcom/facebook/internal/FacebookDialogBase$ModeHandler;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebShareHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/Sharer$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/ShareDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/ShareDialog;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p0, p1}, Lcom/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/ShareDialog;Lcom/facebook/share/widget/ShareDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/widget/ShareDialog;
    .param p2, "x1"    # Lcom/facebook/share/widget/ShareDialog$1;

    .line 387
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;-><init>(Lcom/facebook/share/widget/ShareDialog;)V

    return-void
.end method

.method private createAndMapAttachments(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Lcom/facebook/share/model/SharePhotoContent;
    .registers 12
    .param p1, "content"    # Lcom/facebook/share/model/SharePhotoContent;
    .param p2, "callId"    # Ljava/util/UUID;

    .line 439
    new-instance v0, Lcom/facebook/share/model/SharePhotoContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;-><init>()V

    .line 440
    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->readFrom(Lcom/facebook/share/model/SharePhotoContent;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object v0

    .line 441
    .local v0, "contentBuilder":Lcom/facebook/share/model/SharePhotoContent$Builder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v1, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v2, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5a

    .line 444
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/share/model/SharePhoto;

    .line 445
    .local v4, "sharePhoto":Lcom/facebook/share/model/SharePhoto;
    invoke-virtual {v4}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 447
    .local v5, "photoBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_54

    .line 448
    nop

    .line 449
    invoke-static {p2, v5}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->createAttachment(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v6

    .line 450
    .local v6, "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    new-instance v7, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v7}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    .line 451
    invoke-virtual {v7, v4}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v7

    .line 452
    invoke-virtual {v6}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/facebook/share/model/SharePhoto$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v7

    const/4 v8, 0x0

    .line 453
    invoke-virtual {v7, v8}, Lcom/facebook/share/model/SharePhoto$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v7

    .line 454
    invoke-virtual {v7}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v4

    .line 455
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v6    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    :cond_54
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v4    # "sharePhoto":Lcom/facebook/share/model/SharePhoto;
    .end local v5    # "photoBitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 460
    .end local v3    # "i":I
    :cond_5a
    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->setPhotos(Ljava/util/List;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    .line 461
    invoke-static {v2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->addAttachments(Ljava/util/Collection;)V

    .line 462
    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v3

    return-object v3
.end method

.method private getActionName(Lcom/facebook/share/model/ShareContent;)Ljava/lang/String;
    .registers 3
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .line 426
    instance-of v0, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez v0, :cond_12

    instance-of v0, p1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v0, :cond_9

    goto :goto_12

    .line 429
    :cond_9
    instance-of v0, p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_10

    .line 430
    const-string v0, "share_open_graph"

    return-object v0

    .line 433
    :cond_10
    const/4 v0, 0x0

    return-object v0

    .line 428
    :cond_12
    :goto_12
    const-string v0, "share"

    return-object v0
.end method


# virtual methods
.method public canShow(Lcom/facebook/share/model/ShareContent;Z)Z
    .registers 4
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "isBestEffort"    # Z

    .line 395
    if-eqz p1, :cond_a

    # invokes: Lcom/facebook/share/widget/ShareDialog;->canShowWebCheck(Lcom/facebook/share/model/ShareContent;)Z
    invoke-static {p1}, Lcom/facebook/share/widget/ShareDialog;->access$900(Lcom/facebook/share/model/ShareContent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .registers 3

    .line 387
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->canShow(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result p1

    return p1
.end method

.method public createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;
    .registers 5
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;

    .line 400
    iget-object v0, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    # invokes: Lcom/facebook/share/widget/ShareDialog;->getActivityContext()Landroid/app/Activity;
    invoke-static {v0}, Lcom/facebook/share/widget/ShareDialog;->access$1000(Lcom/facebook/share/widget/ShareDialog;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    # invokes: Lcom/facebook/share/widget/ShareDialog;->logDialogShare(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V
    invoke-static {v0, v1, p1, v2}, Lcom/facebook/share/widget/ShareDialog;->access$700(Lcom/facebook/share/widget/ShareDialog;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 402
    iget-object v0, p0, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->this$0:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {v0}, Lcom/facebook/share/widget/ShareDialog;->createBaseAppCall()Lcom/facebook/internal/AppCall;

    move-result-object v0

    .line 404
    .local v0, "appCall":Lcom/facebook/internal/AppCall;
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateForWebShare(Lcom/facebook/share/model/ShareContent;)V

    .line 407
    instance-of v1, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v1, :cond_20

    .line 408
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v1}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, "params":Landroid/os/Bundle;
    goto :goto_3b

    .line 409
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_20
    instance-of v1, p1, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v1, :cond_34

    .line 410
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/SharePhotoContent;

    .line 411
    invoke-virtual {v0}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->createAndMapAttachments(Lcom/facebook/share/model/SharePhotoContent;Ljava/util/UUID;)Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v1

    .line 412
    .local v1, "photoContent":Lcom/facebook/share/model/SharePhotoContent;
    invoke-static {v1}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/SharePhotoContent;)Landroid/os/Bundle;

    move-result-object v1

    .line 413
    .local v1, "params":Landroid/os/Bundle;
    goto :goto_3b

    .line 414
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_34
    move-object v1, p1

    check-cast v1, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-static {v1}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/ShareOpenGraphContent;)Landroid/os/Bundle;

    move-result-object v1

    .line 417
    .restart local v1    # "params":Landroid/os/Bundle;
    :goto_3b
    nop

    .line 419
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->getActionName(Lcom/facebook/share/model/ShareContent;)Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-static {v0, v2, v1}, Lcom/facebook/internal/DialogPresenter;->setupAppCallForWebDialog(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 422
    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/facebook/internal/AppCall;
    .registers 2

    .line 387
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareDialog$WebShareHandler;->createAppCall(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method

.method public getMode()Ljava/lang/Object;
    .registers 2

    .line 390
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object v0
.end method
