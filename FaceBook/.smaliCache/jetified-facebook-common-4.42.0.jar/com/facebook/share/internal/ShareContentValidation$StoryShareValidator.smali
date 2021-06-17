.class Lcom/facebook/share/internal/ShareContentValidation$StoryShareValidator;
.super Lcom/facebook/share/internal/ShareContentValidation$Validator;
.source "ShareContentValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/ShareContentValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoryShareValidator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/internal/ShareContentValidation$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/facebook/share/internal/ShareContentValidation$1;

    .line 443
    invoke-direct {p0}, Lcom/facebook/share/internal/ShareContentValidation$StoryShareValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/facebook/share/model/ShareStoryContent;)V
    .registers 2
    .param p1, "storyContent"    # Lcom/facebook/share/model/ShareStoryContent;

    .line 446
    # invokes: Lcom/facebook/share/internal/ShareContentValidation;->validateStoryContent(Lcom/facebook/share/model/ShareStoryContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V
    invoke-static {p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->access$400(Lcom/facebook/share/model/ShareStoryContent;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 447
    return-void
.end method
