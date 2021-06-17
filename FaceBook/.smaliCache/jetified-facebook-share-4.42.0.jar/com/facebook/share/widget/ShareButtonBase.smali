.class public abstract Lcom/facebook/share/widget/ShareButtonBase;
.super Lcom/facebook/FacebookButtonBase;
.source "ShareButtonBase.java"


# instance fields
.field private enabledExplicitlySet:Z

.field private requestCode:I

.field private shareContent:Lcom/facebook/share/model/ShareContent;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "analyticsButtonCreatedEventName"    # Ljava/lang/String;
    .param p5, "analyticsButtonTappedEventName"    # Ljava/lang/String;

    .line 50
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->requestCode:I

    .line 42
    iput-boolean v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->enabledExplicitlySet:Z

    .line 57
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->getDefaultRequestCode()I

    move-result v1

    :goto_1b
    iput v1, p0, Lcom/facebook/share/widget/ShareButtonBase;->requestCode:I

    .line 58
    invoke-direct {p0, v0}, Lcom/facebook/share/widget/ShareButtonBase;->internalSetEnabled(Z)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/widget/ShareButtonBase;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/widget/ShareButtonBase;
    .param p1, "x1"    # Landroid/view/View;

    .line 39
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareButtonBase;->callExternalOnClickListener(Landroid/view/View;)V

    return-void
.end method

.method private internalSetEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 176
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareButtonBase;->setEnabled(Z)V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->enabledExplicitlySet:Z

    .line 178
    return-void
.end method


# virtual methods
.method protected canShare()Z
    .registers 3

    .line 160
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->getDialog()Lcom/facebook/internal/FacebookDialogBase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/internal/FacebookDialogBase;->canShow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 156
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->getShareOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/widget/ShareButtonBase;->setInternalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method

.method protected abstract getDialog()Lcom/facebook/internal/FacebookDialogBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "Lcom/facebook/share/model/ShareContent;",
            "Lcom/facebook/share/Sharer$Result;",
            ">;"
        }
    .end annotation
.end method

.method public getRequestCode()I
    .registers 2

    .line 93
    iget v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->requestCode:I

    return v0
.end method

.method public getShareContent()Lcom/facebook/share/model/ShareContent;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->shareContent:Lcom/facebook/share/model/ShareContent;

    return-object v0
.end method

.method protected getShareOnClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 164
    new-instance v0, Lcom/facebook/share/widget/ShareButtonBase$1;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/ShareButtonBase$1;-><init>(Lcom/facebook/share/widget/ShareButtonBase;)V

    return-object v0
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .registers 4
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->getRequestCode()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->registerSharerCallback(ILcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 126
    return-void
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;I)V
    .registers 4
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;I)V"
        }
    .end annotation

    .line 145
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    invoke-virtual {p0, p3}, Lcom/facebook/share/widget/ShareButtonBase;->setRequestCode(I)V

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/facebook/share/widget/ShareButtonBase;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 147
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 82
    invoke-super {p0, p1}, Lcom/facebook/FacebookButtonBase;->setEnabled(Z)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->enabledExplicitlySet:Z

    .line 84
    return-void
.end method

.method protected setRequestCode(I)V
    .registers 5
    .param p1, "requestCode"    # I

    .line 105
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->isFacebookRequestCode(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 109
    iput p1, p0, Lcom/facebook/share/widget/ShareButtonBase;->requestCode:I

    .line 110
    return-void

    .line 106
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be within the range reserved by the Facebook SDK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShareContent(Lcom/facebook/share/model/ShareContent;)V
    .registers 3
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .line 74
    iput-object p1, p0, Lcom/facebook/share/widget/ShareButtonBase;->shareContent:Lcom/facebook/share/model/ShareContent;

    .line 75
    iget-boolean v0, p0, Lcom/facebook/share/widget/ShareButtonBase;->enabledExplicitlySet:Z

    if-nez v0, :cond_d

    .line 76
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButtonBase;->canShare()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/ShareButtonBase;->internalSetEnabled(Z)V

    .line 78
    :cond_d
    return-void
.end method
