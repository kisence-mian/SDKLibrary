.class public final Lcom/facebook/share/widget/DeviceShareButton;
.super Lcom/facebook/FacebookButtonBase;
.source "DeviceShareButton.java"


# instance fields
.field private dialog:Lcom/facebook/share/DeviceShareDialog;

.field private enabledExplicitlySet:Z

.field private requestCode:I

.field private shareContent:Lcom/facebook/share/model/ShareContent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/share/widget/DeviceShareButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/share/widget/DeviceShareButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 67
    const/4 v4, 0x0

    const-string v5, "fb_device_share_button_create"

    const-string v6, "fb_device_share_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->requestCode:I

    .line 45
    iput-boolean v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->enabledExplicitlySet:Z

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    .line 74
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getDefaultRequestCode()I

    move-result v1

    :goto_20
    iput v1, p0, Lcom/facebook/share/widget/DeviceShareButton;->requestCode:I

    .line 75
    invoke-direct {p0, v0}, Lcom/facebook/share/widget/DeviceShareButton;->internalSetEnabled(Z)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/widget/DeviceShareButton;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/widget/DeviceShareButton;
    .param p1, "x1"    # Landroid/view/View;

    .line 42
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->callExternalOnClickListener(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/widget/DeviceShareButton;)Lcom/facebook/share/DeviceShareDialog;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/widget/DeviceShareButton;

    .line 42
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getDialog()Lcom/facebook/share/DeviceShareDialog;

    move-result-object v0

    return-object v0
.end method

.method private canShare()Z
    .registers 3

    .line 188
    new-instance v0, Lcom/facebook/share/DeviceShareDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/DeviceShareDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/DeviceShareDialog;->canShow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getDialog()Lcom/facebook/share/DeviceShareDialog;
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    if-eqz v0, :cond_5

    .line 193
    return-object v0

    .line 195
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 196
    new-instance v0, Lcom/facebook/share/DeviceShareDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/DeviceShareDialog;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    goto :goto_34

    .line 197
    :cond_17
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 198
    new-instance v0, Lcom/facebook/share/DeviceShareDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/DeviceShareDialog;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    goto :goto_34

    .line 200
    :cond_29
    new-instance v0, Lcom/facebook/share/DeviceShareDialog;

    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/DeviceShareDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    .line 202
    :goto_34
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->dialog:Lcom/facebook/share/DeviceShareDialog;

    return-object v0
.end method

.method private internalSetEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 175
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/DeviceShareButton;->setEnabled(Z)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->enabledExplicitlySet:Z

    .line 177
    return-void
.end method

.method private setRequestCode(I)V
    .registers 5
    .param p1, "requestCode"    # I

    .line 180
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->isFacebookRequestCode(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 184
    iput p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->requestCode:I

    .line 185
    return-void

    .line 181
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


# virtual methods
.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 151
    invoke-virtual {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getShareOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/widget/DeviceShareButton;->setInternalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    return-void
.end method

.method protected getDefaultRequestCode()I
    .registers 2

    .line 161
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Share:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    return v0
.end method

.method protected getDefaultStyleResource()I
    .registers 2

    .line 156
    sget v0, Lcom/facebook/share/R$style;->com_facebook_button_share:I

    return v0
.end method

.method public getRequestCode()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->requestCode:I

    return v0
.end method

.method public getShareContent()Lcom/facebook/share/model/ShareContent;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->shareContent:Lcom/facebook/share/model/ShareContent;

    return-object v0
.end method

.method protected getShareOnClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 165
    new-instance v0, Lcom/facebook/share/widget/DeviceShareButton$1;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/DeviceShareButton$1;-><init>(Lcom/facebook/share/widget/DeviceShareButton;)V

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
            "Lcom/facebook/share/DeviceShareDialog$Result;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/DeviceShareDialog$Result;>;"
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getDialog()Lcom/facebook/share/DeviceShareDialog;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/share/DeviceShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 121
    return-void
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;I)V
    .registers 5
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/DeviceShareDialog$Result;",
            ">;I)V"
        }
    .end annotation

    .line 140
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/DeviceShareDialog$Result;>;"
    invoke-direct {p0, p3}, Lcom/facebook/share/widget/DeviceShareButton;->setRequestCode(I)V

    .line 141
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->getDialog()Lcom/facebook/share/DeviceShareDialog;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/share/DeviceShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;I)V

    .line 142
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 99
    invoke-super {p0, p1}, Lcom/facebook/FacebookButtonBase;->setEnabled(Z)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->enabledExplicitlySet:Z

    .line 101
    return-void
.end method

.method public setShareContent(Lcom/facebook/share/model/ShareContent;)V
    .registers 3
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .line 91
    iput-object p1, p0, Lcom/facebook/share/widget/DeviceShareButton;->shareContent:Lcom/facebook/share/model/ShareContent;

    .line 92
    iget-boolean v0, p0, Lcom/facebook/share/widget/DeviceShareButton;->enabledExplicitlySet:Z

    if-nez v0, :cond_d

    .line 93
    invoke-direct {p0}, Lcom/facebook/share/widget/DeviceShareButton;->canShare()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/DeviceShareButton;->internalSetEnabled(Z)V

    .line 95
    :cond_d
    return-void
.end method
