.class Lcom/facebook/share/internal/ShareContentValidation$Validator;
.super Ljava/lang/Object;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/ShareContentValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Validator"
.end annotation


# instance fields
.field private isOpenGraphContent:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/facebook/share/internal/ShareContentValidation$1;

    .line 503
    invoke-direct {p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>()V

    return-void
.end method


# virtual methods
.method public isOpenGraphContent()Z
    .registers 2

    .line 573
    iget-boolean v0, p0, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    return v0
.end method

.method public validate(Lcom/facebook/share/model/ShareCameraEffectContent;)V
    .registers 2
    .param p1, "cameraEffectContent"    # Lcom/facebook/share/model/ShareCameraEffectContent;

    .line 523
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateCameraEffectContent(Lcom/facebook/share/model/ShareCameraEffectContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1100(Lcom/facebook/share/model/ShareCameraEffectContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 524
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareLinkContent;)V
    .registers 2
    .param p1, "linkContent"    # Lcom/facebook/share/model/ShareLinkContent;

    .line 507
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$700(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 508
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareMedia;)V
    .registers 2
    .param p1, "medium"    # Lcom/facebook/share/model/ShareMedia;

    .line 553
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateMedium(Lcom/facebook/share/model/ShareMedia;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 554
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareMediaContent;)V
    .registers 2
    .param p1, "mediaContent"    # Lcom/facebook/share/model/ShareMediaContent;

    .line 519
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateMediaContent(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1000(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 520
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    .registers 2
    .param p1, "content"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    .line 561
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerGenericTemplateContent(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->access$1900(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V

    .line 562
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .registers 2
    .param p1, "content"    # Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    .line 565
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerMediaTemplateContent(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->access$2000(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V

    .line 566
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    .registers 2
    .param p1, "content"    # Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    .line 557
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateMessengerOpenGraphMusicTemplate(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    invoke-static {p1}, Lcom/facebook/share/internal/ShareContentValidation;->access$1800(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V

    .line 558
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphAction;)V
    .registers 2
    .param p1, "openGraphAction"    # Lcom/facebook/share/model/ShareOpenGraphAction;

    .line 532
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphAction(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1300(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 533
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphContent;)V
    .registers 3
    .param p1, "openGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent:Z

    .line 528
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1200(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 529
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphObject;)V
    .registers 2
    .param p1, "openGraphObject"    # Lcom/facebook/share/model/ShareOpenGraphObject;

    .line 536
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1400(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 537
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V
    .registers 3
    .param p1, "openGraphValueContainer"    # Lcom/facebook/share/model/ShareOpenGraphValueContainer;
    .param p2, "requireNamespace"    # Z

    .line 541
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainer(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V
    invoke-static {p1, p0, p2}, Lcom/facebook/share/internal/ShareContentValidation;->access$1500(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V

    .line 542
    return-void
.end method

.method public validate(Lcom/facebook/share/model/SharePhoto;)V
    .registers 2
    .param p1, "photo"    # Lcom/facebook/share/model/SharePhoto;

    .line 545
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForNativeDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1600(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 546
    return-void
.end method

.method public validate(Lcom/facebook/share/model/SharePhotoContent;)V
    .registers 2
    .param p1, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;

    .line 511
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$800(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 512
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareStoryContent;)V
    .registers 2
    .param p1, "storyContent"    # Lcom/facebook/share/model/ShareStoryContent;

    .line 569
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateStoryContent(Lcom/facebook/share/model/ShareStoryContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$400(Lcom/facebook/share/model/ShareStoryContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 570
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareVideo;)V
    .registers 2
    .param p1, "video"    # Lcom/facebook/share/model/ShareVideo;

    .line 549
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateVideo(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$1700(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 550
    return-void
.end method

.method public validate(Lcom/facebook/share/model/ShareVideoContent;)V
    .registers 2
    .param p1, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;

    .line 515
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$900(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 516
    return-void
.end method
