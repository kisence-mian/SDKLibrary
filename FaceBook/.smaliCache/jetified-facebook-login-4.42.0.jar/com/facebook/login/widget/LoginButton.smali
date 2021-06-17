.class public Lcom/facebook/login/widget/LoginButton;
.super Lcom/facebook/FacebookButtonBase;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/LoginButton$LoginClickListener;,
        Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;,
        Lcom/facebook/login/widget/LoginButton$ToolTipMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private confirmLogout:Z

.field private loginLogoutEventName:Ljava/lang/String;

.field private loginManager:Lcom/facebook/login/LoginManager;

.field private loginText:Ljava/lang/String;

.field private logoutText:Ljava/lang/String;

.field private properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

.field private toolTipChecked:Z

.field private toolTipDisplayTime:J

.field private toolTipMode:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

.field private toolTipPopup:Lcom/facebook/login/widget/ToolTipPopup;

.field private toolTipStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 120
    const-class v0, Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/widget/LoginButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 205
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    .line 125
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 129
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipDisplayTime:J

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 220
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    .line 125
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 129
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipDisplayTime:J

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 235
    const/4 v4, 0x0

    const-string v5, "fb_login_button_create"

    const-string v6, "fb_login_button_did_tap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/FacebookButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    .line 125
    const-string v0, "fb_login_view_usage"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/facebook/login/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/login/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 129
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipDisplayTime:J

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/login/widget/LoginButton;Lcom/facebook/internal/FetchedAppSettings;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/LoginButton;
    .param p1, "x1"    # Lcom/facebook/internal/FetchedAppSettings;

    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/LoginButton;->showToolTipPerSettings(Lcom/facebook/internal/FetchedAppSettings;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/LoginButton;

    .line 65
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/login/widget/LoginButton;)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/LoginButton;

    .line 65
    iget-boolean v0, p0, Lcom/facebook/login/widget/LoginButton;->confirmLogout:Z

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/login/widget/LoginButton;)V
    .registers 1
    .param p0, "x0"    # Lcom/facebook/login/widget/LoginButton;

    .line 65
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->setButtonText()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/login/widget/LoginButton;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/LoginButton;
    .param p1, "x1"    # Landroid/view/View;

    .line 65
    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/LoginButton;->callExternalOnClickListener(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/login/widget/LoginButton;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/LoginButton;

    .line 65
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/LoginButton;

    .line 65
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/LoginButton;

    .line 65
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/LoginButton;

    .line 65
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private checkToolTipSettings()V
    .registers 4

    .line 538
    sget-object v0, Lcom/facebook/login/widget/LoginButton$3;->$SwitchMap$com$facebook$login$widget$LoginButton$ToolTipMode:[I

    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipMode:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    goto :goto_31

    .line 556
    :pswitch_e
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/login/R$string;->com_facebook_tooltip_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "toolTipString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->displayToolTip(Ljava/lang/String;)V

    .line 559
    goto :goto_31

    .line 541
    .end local v0    # "toolTipString":Ljava/lang/String;
    :pswitch_1c
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/login/widget/LoginButton$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/login/widget/LoginButton$1;-><init>(Lcom/facebook/login/widget/LoginButton;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 554
    nop

    .line 563
    .end local v0    # "appId":Ljava/lang/String;
    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_e
    .end packed-switch
.end method

.method private displayToolTip(Ljava/lang/String;)V
    .registers 5
    .param p1, "toolTipString"    # Ljava/lang/String;

    .line 531
    new-instance v0, Lcom/facebook/login/widget/ToolTipPopup;

    invoke-direct {v0, p1, p0}, Lcom/facebook/login/widget/ToolTipPopup;-><init>(Ljava/lang/String;Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipPopup:Lcom/facebook/login/widget/ToolTipPopup;

    .line 532
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    invoke-virtual {v0, v1}, Lcom/facebook/login/widget/ToolTipPopup;->setStyle(Lcom/facebook/login/widget/ToolTipPopup$Style;)V

    .line 533
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipPopup:Lcom/facebook/login/widget/ToolTipPopup;

    iget-wide v1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipDisplayTime:J

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/widget/ToolTipPopup;->setNuxDisplayTime(J)V

    .line 534
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipPopup:Lcom/facebook/login/widget/ToolTipPopup;

    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup;->show()V

    .line 535
    return-void
.end method

.method private measureButtonWidth(Ljava/lang/String;)I
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .line 701
    invoke-virtual {p0, p1}, Lcom/facebook/login/widget/LoginButton;->measureTextWidth(Ljava/lang/String;)I

    move-result v0

    .line 702
    .local v0, "textWidth":I
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundPaddingLeft()I

    move-result v1

    .line 703
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundDrawablePadding()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 705
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 702
    return v1
.end method

.method private parseLoginButtonAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 651
    sget-object v0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipMode:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 652
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/facebook/login/R$styleable;->com_facebook_login_view:[I

    invoke-virtual {v0, p2, v1, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 658
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_e
    sget v1, Lcom/facebook/login/R$styleable;->com_facebook_login_view_com_facebook_confirm_logout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/login/widget/LoginButton;->confirmLogout:Z

    .line 659
    sget v1, Lcom/facebook/login/R$styleable;->com_facebook_login_view_com_facebook_login_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/login/widget/LoginButton;->loginText:Ljava/lang/String;

    .line 660
    sget v1, Lcom/facebook/login/R$styleable;->com_facebook_login_view_com_facebook_logout_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/login/widget/LoginButton;->logoutText:Ljava/lang/String;

    .line 661
    sget v1, Lcom/facebook/login/R$styleable;->com_facebook_login_view_com_facebook_tooltip_mode:I

    sget-object v2, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 663
    invoke-virtual {v2}, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->getValue()I

    move-result v2

    .line 661
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->fromInt(I)Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipMode:Lcom/facebook/login/widget/LoginButton$ToolTipMode;
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_3e

    .line 665
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 666
    nop

    .line 667
    return-void

    .line 665
    :catchall_3e
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 666
    throw v1
.end method

.method private setButtonText()V
    .registers 6

    .line 709
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 710
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 711
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->logoutText:Ljava/lang/String;

    if-eqz v1, :cond_15

    goto :goto_1b

    :cond_15
    sget v1, Lcom/facebook/login/R$string;->com_facebook_loginview_log_out_button:I

    .line 713
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 711
    :goto_1b
    invoke-virtual {p0, v1}, Lcom/facebook/login/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 715
    :cond_1f
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton;->loginText:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 716
    invoke-virtual {p0, v1}, Lcom/facebook/login/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 718
    :cond_27
    sget v1, Lcom/facebook/login/R$string;->com_facebook_loginview_log_in_button_continue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getWidth()I

    move-result v2

    .line 722
    .local v2, "width":I
    if-eqz v2, :cond_3f

    .line 724
    invoke-direct {p0, v1}, Lcom/facebook/login/widget/LoginButton;->measureButtonWidth(Ljava/lang/String;)I

    move-result v3

    .line 725
    .local v3, "measuredWidth":I
    if-le v3, v2, :cond_3f

    .line 727
    sget v4, Lcom/facebook/login/R$string;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 730
    .end local v3    # "measuredWidth":I
    :cond_3f
    invoke-virtual {p0, v1}, Lcom/facebook/login/widget/LoginButton;->setText(Ljava/lang/CharSequence;)V

    .line 733
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "width":I
    :goto_42
    return-void
.end method

.method private showToolTipPerSettings(Lcom/facebook/internal/FetchedAppSettings;)V
    .registers 3
    .param p1, "settings"    # Lcom/facebook/internal/FetchedAppSettings;

    .line 524
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/facebook/internal/FetchedAppSettings;->getNuxEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    .line 525
    invoke-virtual {p1}, Lcom/facebook/internal/FetchedAppSettings;->getNuxContent()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "toolTipString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/LoginButton;->displayToolTip(Ljava/lang/String;)V

    .line 528
    .end local v0    # "toolTipString":Ljava/lang/String;
    :cond_15
    return-void
.end method


# virtual methods
.method public clearPermissions()V
    .registers 2

    .line 376
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->clearPermissions()V

    .line 377
    return-void
.end method

.method protected configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 604
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/FacebookButtonBase;->configureButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 605
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getNewLoginClickListener()Lcom/facebook/login/widget/LoginButton$LoginClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton;->setInternalOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/login/widget/LoginButton;->parseLoginButtonAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 609
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 612
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/common/R$color;->com_facebook_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/widget/LoginButton;->setBackgroundColor(I)V

    .line 615
    const-string v0, "Continue with Facebook"

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->loginText:Ljava/lang/String;

    goto :goto_2c

    .line 617
    :cond_25
    new-instance v0, Lcom/facebook/login/widget/LoginButton$2;

    invoke-direct {v0, p0}, Lcom/facebook/login/widget/LoginButton$2;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 627
    :goto_2c
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->setButtonText()V

    .line 630
    nop

    .line 631
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/login/R$drawable;->com_facebook_button_login_logo:I

    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 630
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/facebook/login/widget/LoginButton;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 635
    return-void
.end method

.method public dismissToolTip()V
    .registers 2

    .line 477
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipPopup:Lcom/facebook/login/widget/ToolTipPopup;

    if-eqz v0, :cond_a

    .line 478
    invoke-virtual {v0}, Lcom/facebook/login/widget/ToolTipPopup;->dismiss()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipPopup:Lcom/facebook/login/widget/ToolTipPopup;

    .line 481
    :cond_a
    return-void
.end method

.method public getAuthType()Ljava/lang/String;
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->getAuthType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAudience()Lcom/facebook/login/DefaultAudience;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultRequestCode()I
    .registers 2

    .line 737
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    return v0
.end method

.method protected getDefaultStyleResource()I
    .registers 2

    .line 643
    sget v0, Lcom/facebook/login/R$style;->com_facebook_loginview_default_style:I

    return v0
.end method

.method public getLoginBehavior()Lcom/facebook/login/LoginBehavior;
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v0

    return-object v0
.end method

.method getLoginManager()Lcom/facebook/login/LoginManager;
    .registers 2

    .line 741
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->loginManager:Lcom/facebook/login/LoginManager;

    if-nez v0, :cond_a

    .line 742
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/widget/LoginButton;->loginManager:Lcom/facebook/login/LoginManager;

    .line 744
    :cond_a
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->loginManager:Lcom/facebook/login/LoginManager;

    return-object v0
.end method

.method protected getNewLoginClickListener()Lcom/facebook/login/widget/LoginButton$LoginClickListener;
    .registers 2

    .line 638
    new-instance v0, Lcom/facebook/login/widget/LoginButton$LoginClickListener;

    invoke-direct {v0, p0}, Lcom/facebook/login/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/login/widget/LoginButton;)V

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->getPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToolTipDisplayTime()J
    .registers 3

    .line 470
    iget-wide v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipDisplayTime:J

    return-wide v0
.end method

.method public getToolTipMode()Lcom/facebook/login/widget/LoginButton$ToolTipMode;
    .registers 2

    .line 448
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipMode:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 506
    invoke-super {p0}, Lcom/facebook/FacebookButtonBase;->onAttachedToWindow()V

    .line 507
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->isTracking()Z

    move-result v0

    if-nez v0, :cond_15

    .line 508
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->startTracking()V

    .line 509
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->setButtonText()V

    .line 511
    :cond_15
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 573
    invoke-super {p0}, Lcom/facebook/FacebookButtonBase;->onDetachedFromWindow()V

    .line 574
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_a

    .line 575
    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->stopTracking()V

    .line 577
    :cond_a
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->dismissToolTip()V

    .line 578
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 515
    invoke-super {p0, p1}, Lcom/facebook/FacebookButtonBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 517
    iget-boolean v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipChecked:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_13

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/login/widget/LoginButton;->toolTipChecked:Z

    .line 519
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->checkToolTipSettings()V

    .line 521
    :cond_13
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 567
    invoke-super/range {p0 .. p5}, Lcom/facebook/FacebookButtonBase;->onLayout(ZIIII)V

    .line 568
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->setButtonText()V

    .line 569
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 671
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 672
    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundPaddingTop()I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 673
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v1, v2

    .line 674
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getCompoundPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 676
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 677
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton;->loginText:Ljava/lang/String;

    .line 680
    .local v3, "text":Ljava/lang/String;
    if-nez v3, :cond_43

    .line 681
    sget v4, Lcom/facebook/login/R$string;->com_facebook_loginview_log_in_button_continue:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 682
    invoke-direct {p0, v3}, Lcom/facebook/login/widget/LoginButton;->measureButtonWidth(Ljava/lang/String;)I

    move-result v4

    .line 683
    .local v4, "logInWidth":I
    invoke-static {v4, p1}, Lcom/facebook/login/widget/LoginButton;->resolveSize(II)I

    move-result v5

    .line 684
    .local v5, "width":I
    if-ge v5, v4, :cond_43

    .line 685
    sget v6, Lcom/facebook/login/R$string;->com_facebook_loginview_log_in_button:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 688
    .end local v4    # "logInWidth":I
    .end local v5    # "width":I
    :cond_43
    invoke-direct {p0, v3}, Lcom/facebook/login/widget/LoginButton;->measureButtonWidth(Ljava/lang/String;)I

    move-result v4

    .line 690
    .restart local v4    # "logInWidth":I
    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton;->logoutText:Ljava/lang/String;

    .line 691
    if-nez v3, :cond_51

    .line 692
    sget v5, Lcom/facebook/login/R$string;->com_facebook_loginview_log_out_button:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 694
    :cond_51
    invoke-direct {p0, v3}, Lcom/facebook/login/widget/LoginButton;->measureButtonWidth(Ljava/lang/String;)I

    move-result v5

    .line 696
    .local v5, "logOutWidth":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, p1}, Lcom/facebook/login/widget/LoginButton;->resolveSize(II)I

    move-result v6

    .line 697
    .local v6, "width":I
    invoke-virtual {p0, v6, v1}, Lcom/facebook/login/widget/LoginButton;->setMeasuredDimension(II)V

    .line 698
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 582
    invoke-super {p0, p1, p2}, Lcom/facebook/FacebookButtonBase;->onVisibilityChanged(Landroid/view/View;I)V

    .line 584
    if-eqz p2, :cond_8

    .line 585
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->dismissToolTip()V

    .line 587
    :cond_8
    return-void
.end method

.method public registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V
    .registers 4
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/CallbackManager;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;)V"
        }
    .end annotation

    .line 492
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/login/LoginResult;>;"
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getLoginManager()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 493
    return-void
.end method

.method public setAuthType(Ljava/lang/String;)V
    .registers 3
    .param p1, "authType"    # Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setAuthType(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/login/DefaultAudience;)V
    .registers 3
    .param p1, "defaultAudience"    # Lcom/facebook/login/DefaultAudience;

    .line 262
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setDefaultAudience(Lcom/facebook/login/DefaultAudience;)V

    .line 263
    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/login/LoginBehavior;)V
    .registers 3
    .param p1, "loginBehavior"    # Lcom/facebook/login/LoginBehavior;

    .line 389
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)V

    .line 390
    return-void
.end method

.method setLoginManager(Lcom/facebook/login/LoginManager;)V
    .registers 2
    .param p1, "loginManager"    # Lcom/facebook/login/LoginManager;

    .line 748
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->loginManager:Lcom/facebook/login/LoginManager;

    .line 749
    return-void
.end method

.method public setLoginText(Ljava/lang/String;)V
    .registers 2
    .param p1, "loginText"    # Ljava/lang/String;

    .line 245
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->loginText:Ljava/lang/String;

    .line 246
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->setButtonText()V

    .line 247
    return-void
.end method

.method public setLogoutText(Ljava/lang/String;)V
    .registers 2
    .param p1, "logoutText"    # Ljava/lang/String;

    .line 250
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->logoutText:Ljava/lang/String;

    .line 251
    invoke-direct {p0}, Lcom/facebook/login/widget/LoginButton;->setButtonText()V

    .line 252
    return-void
.end method

.method setProperties(Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;)V
    .registers 2
    .param p1, "properties"    # Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    .line 595
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    .line 596
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 344
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setPublishPermissions(Ljava/util/List;)V

    .line 345
    return-void
.end method

.method public varargs setPublishPermissions([Ljava/lang/String;)V
    .registers 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setPublishPermissions(Ljava/util/List;)V

    .line 369
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setReadPermissions(Ljava/util/List;)V

    .line 297
    return-void
.end method

.method public varargs setReadPermissions([Ljava/lang/String;)V
    .registers 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton;->properties:Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/widget/LoginButton$LoginButtonProperties;->setReadPermissions(Ljava/util/List;)V

    .line 320
    return-void
.end method

.method public setToolTipDisplayTime(J)V
    .registers 3
    .param p1, "displayTime"    # J

    .line 461
    iput-wide p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipDisplayTime:J

    .line 462
    return-void
.end method

.method public setToolTipMode(Lcom/facebook/login/widget/LoginButton$ToolTipMode;)V
    .registers 2
    .param p1, "toolTipMode"    # Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 439
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipMode:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 440
    return-void
.end method

.method public setToolTipStyle(Lcom/facebook/login/widget/ToolTipPopup$Style;)V
    .registers 2
    .param p1, "toolTipStyle"    # Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 428
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton;->toolTipStyle:Lcom/facebook/login/widget/ToolTipPopup$Style;

    .line 429
    return-void
.end method

.method public unregisterCallback(Lcom/facebook/CallbackManager;)V
    .registers 3
    .param p1, "callbackManager"    # Lcom/facebook/CallbackManager;

    .line 501
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton;->getLoginManager()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginManager;->unregisterCallback(Lcom/facebook/CallbackManager;)V

    .line 502
    return-void
.end method
