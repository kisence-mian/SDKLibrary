.class public Lcom/facebook/share/internal/ShareContentValidation;
.super Ljava/lang/Object;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/ShareContentValidation$Validator;,
        Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;,
        Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;,
        Lcom/facebook/share/internal/ShareContentValidation$StoryShareValidator;
    }
.end annotation


# static fields
.field private static ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

.field private static DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

.field private static StoryValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

.field private static WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareMediaContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 59
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateMediaContent(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/share/model/ShareCameraEffectContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareCameraEffectContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 59
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateCameraEffectContent(Lcom/facebook/share/model/ShareCameraEffectContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 59
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphAction;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 59
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphAction(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 59
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphValueContainer;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .param p2, "x2"    # Z

    .line 59
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainer(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 59
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForNativeDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareVideo;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 59
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateVideo(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    .registers 1
    .param p0, "x0"    # Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    .line 59
    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateMessengerOpenGraphMusicTemplate(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    .registers 1
    .param p0, "x0"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    .line 59
    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerGenericTemplateContent(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .registers 1
    .param p0, "x0"    # Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    .line 59
    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerMediaTemplateContent(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/share/model/ShareStoryContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareStoryContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 59
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateStoryContent(Lcom/facebook/share/model/ShareStoryContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 59
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForWebDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 59
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareLinkContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 59
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhotoContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 59
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method static synthetic access$900(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "x1"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 59
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    return-void
.end method

.method private static getApiValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .registers 2

    .line 101
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_c

    .line 102
    new-instance v0, Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v0, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 104
    :cond_c
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->ApiValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .registers 2

    .line 94
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_c

    .line 95
    new-instance v0, Lcom/facebook/share/internal/ShareContentValidation$Validator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v0, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 97
    :cond_c
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->DefaultValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static getStoryValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .registers 2

    .line 87
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->StoryValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_c

    .line 88
    new-instance v0, Lcom/facebook/share/internal/ShareContentValidation$StoryShareValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/share/internal/ShareContentValidation$StoryShareValidator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v0, Lcom/facebook/share/internal/ShareContentValidation;->StoryValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 90
    :cond_c
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->StoryValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static getWebShareValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .registers 2

    .line 108
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    if-nez v0, :cond_c

    .line 109
    new-instance v0, Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/share/internal/ShareContentValidation$WebShareValidator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    sput-object v0, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 111
    :cond_c
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->WebShareValidator:Lcom/facebook/share/internal/ShareContentValidation$Validator;

    return-object v0
.end method

.method private static validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 4
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;
        }
    .end annotation

    .line 116
    if-eqz p0, :cond_70

    .line 120
    instance-of v0, p0, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v0, :cond_d

    .line 121
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareLinkContent;)V

    goto :goto_6f

    .line 122
    :cond_d
    instance-of v0, p0, Lcom/facebook/share/model/SharePhotoContent;

    if-eqz v0, :cond_18

    .line 123
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhotoContent;)V

    goto :goto_6f

    .line 124
    :cond_18
    instance-of v0, p0, Lcom/facebook/share/model/ShareVideoContent;

    if-eqz v0, :cond_23

    .line 125
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideoContent;)V

    goto :goto_6f

    .line 126
    :cond_23
    instance-of v0, p0, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v0, :cond_2e

    .line 127
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphContent;)V

    goto :goto_6f

    .line 128
    :cond_2e
    instance-of v0, p0, Lcom/facebook/share/model/ShareMediaContent;

    if-eqz v0, :cond_39

    .line 129
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/ShareMediaContent;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMediaContent;)V

    goto :goto_6f

    .line 130
    :cond_39
    instance-of v0, p0, Lcom/facebook/share/model/ShareCameraEffectContent;

    if-eqz v0, :cond_44

    .line 131
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/ShareCameraEffectContent;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareCameraEffectContent;)V

    goto :goto_6f

    .line 132
    :cond_44
    instance-of v0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    if-eqz v0, :cond_4f

    .line 133
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V

    goto :goto_6f

    .line 134
    :cond_4f
    instance-of v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    if-eqz v0, :cond_5a

    .line 135
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V

    goto :goto_6f

    .line 136
    :cond_5a
    instance-of v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    if-eqz v0, :cond_65

    .line 137
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V

    goto :goto_6f

    .line 138
    :cond_65
    instance-of v0, p0, Lcom/facebook/share/model/ShareStoryContent;

    if-eqz v0, :cond_6f

    .line 139
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/ShareStoryContent;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareStoryContent;)V

    .line 141
    :cond_6f
    :goto_6f
    return-void

    .line 117
    :cond_70
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must provide non-null content to share"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateCameraEffectContent(Lcom/facebook/share/model/ShareCameraEffectContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 5
    .param p0, "cameraEffectContent"    # Lcom/facebook/share/model/ShareCameraEffectContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 281
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareCameraEffectContent;->getEffectId()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "effectId":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 285
    return-void

    .line 283
    :cond_b
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Must specify a non-empty effectId"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static validateForApiShare(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .line 79
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getApiValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 80
    return-void
.end method

.method public static validateForMessage(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .line 67
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 68
    return-void
.end method

.method public static validateForNativeShare(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .line 71
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getDefaultValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 72
    return-void
.end method

.method public static validateForStoryShare(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .line 83
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getStoryValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 84
    return-void
.end method

.method public static validateForWebShare(Lcom/facebook/share/model/ShareContent;)V
    .registers 2
    .param p0, "content"    # Lcom/facebook/share/model/ShareContent;

    .line 75
    invoke-static {}, Lcom/facebook/share/internal/ShareContentValidation;->getWebShareValidator()Lcom/facebook/share/internal/ShareContentValidation$Validator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation;->validate(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 76
    return-void
.end method

.method private static validateLinkContent(Lcom/facebook/share/model/ShareLinkContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 5
    .param p0, "linkContent"    # Lcom/facebook/share/model/ShareLinkContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 160
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    .line 161
    .local v0, "imageUrl":Landroid/net/Uri;
    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_15

    .line 162
    :cond_d
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Image Url must be an http:// or https:// url"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_15
    :goto_15
    return-void
.end method

.method private static validateMediaContent(Lcom/facebook/share/model/ShareMediaContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 8
    .param p0, "mediaContent"    # Lcom/facebook/share/model/ShareMediaContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 249
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMediaContent;->getMedia()Ljava/util/List;

    move-result-object v0

    .line 250
    .local v0, "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    if-eqz v0, :cond_40

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 253
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_28

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/ShareMedia;

    .line 261
    .local v2, "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {p1, v2}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMedia;)V

    .line 262
    .end local v2    # "medium":Lcom/facebook/share/model/ShareMedia;
    goto :goto_17

    .line 263
    :cond_27
    return-void

    .line 254
    :cond_28
    new-instance v1, Lcom/facebook/FacebookException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 258
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    .line 255
    const-string v2, "Cannot add more than %d media."

    invoke-static {v3, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_40
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Must specify at least one medium in ShareMediaContent."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :goto_48
    throw v1

    :goto_49
    goto :goto_48
.end method

.method public static validateMedium(Lcom/facebook/share/model/ShareMedia;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 7
    .param p0, "medium"    # Lcom/facebook/share/model/ShareMedia;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 266
    instance-of v0, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_b

    .line 267
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    goto :goto_15

    .line 268
    :cond_b
    instance-of v0, p0, Lcom/facebook/share/model/ShareVideo;

    if-eqz v0, :cond_16

    .line 269
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/ShareVideo;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideo;)V

    .line 277
    :goto_15
    return-void

    .line 271
    :cond_16
    new-instance v0, Lcom/facebook/FacebookException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 275
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 272
    const-string v3, "Invalid media type: %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateMessengerOpenGraphMusicTemplate(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    .registers 3
    .param p0, "content"    # Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    .line 354
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 358
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 362
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)V

    .line 363
    return-void

    .line 359
    :cond_18
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify url for ShareMessengerOpenGraphMusicTemplateContent"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_20
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify Page Id for ShareMessengerOpenGraphMusicTemplateContent"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateOpenGraphAction(Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 4
    .param p0, "openGraphAction"    # Lcom/facebook/share/model/ShareOpenGraphAction;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 307
    if-eqz p0, :cond_19

    .line 311
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    .line 316
    return-void

    .line 312
    :cond_11
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "ShareOpenGraphAction must have a non-empty actionType"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_19
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify a non-null ShareOpenGraphAction"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 6
    .param p0, "openGraphContent"    # Lcom/facebook/share/model/ShareOpenGraphContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 289
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphAction;)V

    .line 291
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getPreviewPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "previewPropertyName":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 296
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphContent;->getAction()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/share/model/ShareOpenGraphAction;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 302
    return-void

    .line 297
    :cond_1c
    new-instance v1, Lcom/facebook/FacebookException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" was not found on the action. The name of the preview property must match the name of an action property."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_3b
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Must specify a previewPropertyName."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static validateOpenGraphKey(Ljava/lang/String;Z)V
    .registers 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "requireNamespace"    # Z

    .line 419
    if-nez p1, :cond_3

    .line 420
    return-void

    .line 423
    :cond_3
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "components":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_2b

    .line 427
    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2a

    aget-object v5, v0, v2

    .line 428
    .local v5, "component":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 427
    .end local v5    # "component":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 429
    .restart local v5    # "component":Ljava/lang/String;
    :cond_1e
    new-instance v1, Lcom/facebook/FacebookException;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    const-string v3, "Invalid key found in Open Graph dictionary: %s"

    invoke-direct {v1, v3, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 432
    .end local v5    # "component":Ljava/lang/String;
    :cond_2a
    return-void

    .line 425
    :cond_2b
    new-instance v1, Lcom/facebook/FacebookException;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    const-string v3, "Open Graph keys must be namespaced: %s"

    invoke-direct {v1, v3, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_38

    :goto_37
    throw v1

    :goto_38
    goto :goto_37
.end method

.method private static validateOpenGraphObject(Lcom/facebook/share/model/ShareOpenGraphObject;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 4
    .param p0, "openGraphObject"    # Lcom/facebook/share/model/ShareOpenGraphObject;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 321
    if-eqz p0, :cond_7

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Z)V

    .line 326
    return-void

    .line 322
    :cond_7
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot share a null ShareOpenGraphObject"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateOpenGraphValueContainer(Lcom/facebook/share/model/ShareOpenGraphValueContainer;Lcom/facebook/share/internal/ShareContentValidation$Validator;Z)V
    .registers 10
    .param p0, "valueContainer"    # Lcom/facebook/share/model/ShareOpenGraphValueContainer;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;
    .param p2, "requireNamespace"    # Z

    .line 332
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 333
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 334
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphKey(Ljava/lang/String;Z)V

    .line 335
    invoke-virtual {p0, v2}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 336
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_3f

    .line 337
    move-object v4, v3

    check-cast v4, Ljava/util/List;

    .line 338
    .local v4, "list":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 339
    .local v6, "objectInList":Ljava/lang/Object;
    if-eqz v6, :cond_36

    .line 344
    invoke-static {v6, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 345
    .end local v6    # "objectInList":Ljava/lang/Object;
    goto :goto_26

    .line 340
    .restart local v6    # "objectInList":Ljava/lang/Object;
    :cond_36
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v5, "Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions"

    invoke-direct {v1, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    .end local v4    # "list":Ljava/util/List;
    .end local v6    # "objectInList":Ljava/lang/Object;
    :cond_3e
    goto :goto_42

    .line 347
    :cond_3f
    invoke-static {v3, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 349
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "o":Ljava/lang/Object;
    :goto_42
    goto :goto_8

    .line 350
    :cond_43
    return-void
.end method

.method private static validateOpenGraphValueContainerObject(Ljava/lang/Object;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 436
    instance-of v0, p0, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v0, :cond_b

    .line 437
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareOpenGraphObject;)V

    goto :goto_15

    .line 438
    :cond_b
    instance-of v0, p0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v0, :cond_15

    .line 439
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    .line 441
    :cond_15
    :goto_15
    return-void
.end method

.method private static validatePhoto(Lcom/facebook/share/model/SharePhoto;)V
    .registers 5
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;

    .line 186
    if-eqz p0, :cond_18

    .line 190
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, "photoBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    .line 193
    .local v1, "photoUri":Landroid/net/Uri;
    if-nez v0, :cond_17

    if-eqz v1, :cond_f

    goto :goto_17

    .line 194
    :cond_f
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "SharePhoto does not have a Bitmap or ImageUrl specified"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :cond_17
    :goto_17
    return-void

    .line 187
    .end local v0    # "photoBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "photoUri":Landroid/net/Uri;
    :cond_18
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot share a null SharePhoto"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validatePhotoContent(Lcom/facebook/share/model/SharePhotoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 8
    .param p0, "photoContent"    # Lcom/facebook/share/model/SharePhotoContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 168
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v0

    .line 169
    .local v0, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    if-eqz v0, :cond_40

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_28

    .line 180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/share/model/SharePhoto;

    .line 181
    .local v2, "photo":Lcom/facebook/share/model/SharePhoto;
    invoke-virtual {p1, v2}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    .line 182
    .end local v2    # "photo":Lcom/facebook/share/model/SharePhoto;
    goto :goto_17

    .line 183
    :cond_27
    return-void

    .line 173
    :cond_28
    new-instance v1, Lcom/facebook/FacebookException;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    .line 174
    const-string v2, "Cannot add more than %d photos."

    invoke-static {v3, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    :cond_40
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Must specify at least one Photo in SharePhotoContent."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :goto_48
    throw v1

    :goto_49
    goto :goto_48
.end method

.method private static validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 6
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 199
    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhoto(Lcom/facebook/share/model/SharePhoto;)V

    .line 201
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    .local v0, "photoBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    .line 204
    .local v1, "photoUri":Landroid/net/Uri;
    if-nez v0, :cond_22

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->isOpenGraphContent()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_22

    .line 205
    :cond_1a
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_22
    :goto_22
    return-void
.end method

.method private static validatePhotoForNativeDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 3
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 212
    invoke-static {p0, p1}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhotoForApi(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 214
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhoto;->getImageUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 215
    :cond_13
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasContentProvider(Landroid/content/Context;)V

    .line 217
    :cond_1a
    return-void
.end method

.method private static validatePhotoForWebDialog(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 2
    .param p0, "photo"    # Lcom/facebook/share/model/SharePhoto;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 220
    invoke-static {p0}, Lcom/facebook/share/internal/ShareContentValidation;->validatePhoto(Lcom/facebook/share/model/SharePhoto;)V

    .line 221
    return-void
.end method

.method private static validateShareMessengerActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)V
    .registers 3
    .param p0, "button"    # Lcom/facebook/share/model/ShareMessengerActionButton;

    .line 398
    if-nez p0, :cond_3

    .line 399
    return-void

    .line 402
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerActionButton;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 406
    instance-of v0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    if-eqz v0, :cond_17

    .line 407
    move-object v0, p0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    invoke-static {v0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerURLActionButton(Lcom/facebook/share/model/ShareMessengerURLActionButton;)V

    .line 409
    :cond_17
    return-void

    .line 403
    :cond_18
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify title for ShareMessengerActionButton"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateShareMessengerGenericTemplateContent(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    .registers 3
    .param p0, "content"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    .line 367
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 371
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 375
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 379
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)V

    .line 380
    return-void

    .line 376
    :cond_2a
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify title for ShareMessengerGenericTemplateElement"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_32
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify element for ShareMessengerGenericTemplateContent"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_3a
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify Page Id for ShareMessengerGenericTemplateContent"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateShareMessengerMediaTemplateContent(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .registers 3
    .param p0, "content"    # Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    .line 384
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 388
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaUrl()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getAttachmentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_23

    .line 389
    :cond_1b
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify either attachmentId or mediaURL for ShareMessengerMediaTemplateContent"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_23
    :goto_23
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/internal/ShareContentValidation;->validateShareMessengerActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)V

    .line 394
    return-void

    .line 385
    :cond_2b
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify Page Id for ShareMessengerMediaTemplateContent"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateShareMessengerURLActionButton(Lcom/facebook/share/model/ShareMessengerURLActionButton;)V
    .registers 3
    .param p0, "button"    # Lcom/facebook/share/model/ShareMessengerURLActionButton;

    .line 413
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 416
    return-void

    .line 414
    :cond_7
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify url for ShareMessengerURLActionButton"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateStoryContent(Lcom/facebook/share/model/ShareStoryContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 4
    .param p0, "storyContent"    # Lcom/facebook/share/model/ShareStoryContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 145
    if-eqz p0, :cond_29

    .line 146
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundAsset()Lcom/facebook/share/model/ShareMedia;

    move-result-object v0

    if-nez v0, :cond_e

    .line 147
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getStickerAsset()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 150
    :cond_e
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundAsset()Lcom/facebook/share/model/ShareMedia;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 151
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getBackgroundAsset()Lcom/facebook/share/model/ShareMedia;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareMedia;)V

    .line 153
    :cond_1b
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getStickerAsset()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 154
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareStoryContent;->getStickerAsset()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    .line 156
    :cond_28
    return-void

    .line 148
    :cond_29
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must pass the Facebook app a background asset, a sticker asset, or both"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateVideo(Lcom/facebook/share/model/ShareVideo;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 5
    .param p0, "video"    # Lcom/facebook/share/model/ShareVideo;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 234
    if-eqz p0, :cond_26

    .line 238
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v0

    .line 239
    .local v0, "localUri":Landroid/net/Uri;
    if-eqz v0, :cond_1e

    .line 243
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_1d

    .line 244
    :cond_15
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "ShareVideo must reference a video that is on the device"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_1d
    :goto_1d
    return-void

    .line 240
    :cond_1e
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "ShareVideo does not have a LocalUrl specified"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    .end local v0    # "localUri":Landroid/net/Uri;
    :cond_26
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot share a null ShareVideo"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateVideoContent(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    .registers 3
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "validator"    # Lcom/facebook/share/internal/ShareContentValidation$Validator;

    .line 225
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/ShareVideo;)V

    .line 227
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getPreviewPhoto()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    .line 228
    .local v0, "previewPhoto":Lcom/facebook/share/model/SharePhoto;
    if-eqz v0, :cond_10

    .line 229
    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;->validate(Lcom/facebook/share/model/SharePhoto;)V

    .line 231
    :cond_10
    return-void
.end method
