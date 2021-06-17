.class public final Lcom/facebook/share/widget/MessageDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "MessageDialog.java"

# interfaces
.implements Lcom/facebook/share/Sharer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/MessageDialog$NativeHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/ShareContent;",
        "Lcom/facebook/share/Sharer$Result;",
        ">;",
        "Lcom/facebook/share/Sharer;"
    }
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I


# instance fields
.field private shouldFailOnDataError:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Message:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 70
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 138
    sget v0, Lcom/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    .line 72
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 140
    invoke-static {v0}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    .line 141
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;I)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 170
    invoke-static {p2}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 157
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 158
    return-void
.end method

.method constructor <init>(Landroid/app/Fragment;I)V
    .registers 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestCode"    # I

    .line 180
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 148
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 150
    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .registers 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "requestCode"    # I

    .line 175
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0, p2}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 177
    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .registers 4
    .param p1, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;

    .line 161
    sget v0, Lcom/facebook/share/widget/MessageDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 72
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 163
    invoke-static {v0}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    .line 164
    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;I)V
    .registers 4
    .param p1, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;
    .param p2, "requestCode"    # I

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 186
    invoke-static {p2}, Lcom/facebook/share/internal/ShareInternalUtility;->registerStaticShareCallback(I)V

    .line 187
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/widget/MessageDialog;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/widget/MessageDialog;

    .line 65
    invoke-virtual {p0}, Lcom/facebook/share/widget/MessageDialog;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/internal/AppCall;)V
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "x2"    # Lcom/facebook/internal/AppCall;

    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/widget/MessageDialog;->logDialogShare(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/internal/AppCall;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Class;

    .line 65
    invoke-static {p0}, Lcom/facebook/share/widget/MessageDialog;->getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    return-object v0
.end method

.method public static canShow(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)Z"
        }
    .end annotation

    .line 128
    .local p0, "contentType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/share/model/ShareContent;>;"
    invoke-static {p0}, Lcom/facebook/share/widget/MessageDialog;->getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    .line 130
    .local v0, "feature":Lcom/facebook/internal/DialogFeature;
    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/facebook/internal/DialogPresenter;->canPresentNativeDialogWithFeature(Lcom/facebook/internal/DialogFeature;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private static getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/share/model/ShareContent;",
            ">;)",
            "Lcom/facebook/internal/DialogFeature;"
        }
    .end annotation

    .line 262
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/share/model/ShareContent;>;"
    const-class v0, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 263
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/share/internal/MessageDialogFeature;

    return-object v0

    .line 264
    :cond_b
    const-class v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 265
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_GENERIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    return-object v0

    .line 266
    :cond_16
    const-class v0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 267
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    return-object v0

    .line 268
    :cond_21
    const-class v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 269
    sget-object v0, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_MEDIA_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    return-object v0

    .line 271
    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method private static logDialogShare(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lcom/facebook/internal/AppCall;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Lcom/facebook/share/model/ShareContent;
    .param p2, "appCall"    # Lcom/facebook/internal/AppCall;

    .line 276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/widget/MessageDialog;->getFeature(Ljava/lang/Class;)Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    .line 277
    .local v0, "dialogFeature":Lcom/facebook/internal/DialogFeature;
    sget-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->MESSAGE_DIALOG:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v0, v1, :cond_f

    .line 278
    const-string v1, "status"

    .local v1, "contentType":Ljava/lang/String;
    goto :goto_26

    .line 279
    .end local v1    # "contentType":Ljava/lang/String;
    :cond_f
    sget-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_GENERIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v0, v1, :cond_16

    .line 280
    const-string v1, "GenericTemplate"

    .restart local v1    # "contentType":Ljava/lang/String;
    goto :goto_26

    .line 281
    .end local v1    # "contentType":Ljava/lang/String;
    :cond_16
    sget-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_MEDIA_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v0, v1, :cond_1d

    .line 282
    const-string v1, "MediaTemplate"

    .restart local v1    # "contentType":Ljava/lang/String;
    goto :goto_26

    .line 283
    .end local v1    # "contentType":Ljava/lang/String;
    :cond_1d
    sget-object v1, Lcom/facebook/share/internal/MessageDialogFeature;->MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE:Lcom/facebook/share/internal/MessageDialogFeature;

    if-ne v0, v1, :cond_24

    .line 284
    const-string v1, "OpenGraphMusicTemplate"

    .restart local v1    # "contentType":Ljava/lang/String;
    goto :goto_26

    .line 286
    .end local v1    # "contentType":Ljava/lang/String;
    :cond_24
    const-string v1, "unknown"

    .line 289
    .restart local v1    # "contentType":Ljava/lang/String;
    :goto_26
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v2

    .line 290
    .local v2, "logger":Lcom/facebook/appevents/AppEventsLogger;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v4, "fb_share_dialog_content_type"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    nop

    .line 296
    invoke-virtual {p2}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    const-string v5, "fb_share_dialog_content_uuid"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    nop

    .line 299
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getPageId()Ljava/lang/String;

    move-result-object v4

    .line 297
    const-string v5, "fb_share_dialog_content_page_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v4, 0x0

    const-string v5, "fb_messenger_share_dialog_show"

    invoke-virtual {v2, v5, v4, v3}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 302
    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/facebook/share/model/ShareContent;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .line 84
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public static show(Landroid/app/Fragment;Lcom/facebook/share/model/ShareContent;)V
    .registers 3
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .line 110
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/ShareContent;)V

    .line 111
    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Lcom/facebook/share/model/ShareContent;)V
    .registers 3
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .line 97
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/ShareContent;)V

    .line 98
    return-void
.end method

.method private static show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/ShareContent;)V
    .registers 3
    .param p0, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .line 116
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/MessageDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Ljava/lang/Object;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .registers 3

    .line 208
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/widget/MessageDialog;->getRequestCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/AppCall;-><init>(I)V

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/FacebookDialogBase<",
            "Lcom/facebook/share/model/ShareContent;",
            "Lcom/facebook/share/Sharer$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/FacebookDialogBase<Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/Sharer$Result;>.ModeHandler;>;"
    new-instance v1, Lcom/facebook/share/widget/MessageDialog$NativeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/MessageDialog$NativeHandler;-><init>(Lcom/facebook/share/widget/MessageDialog;Lcom/facebook/share/widget/MessageDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    return-object v0
.end method

.method public getShouldFailOnDataError()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    return v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .registers 4
    .param p1, "callbackManager"    # Lcom/facebook/internal/CallbackManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    invoke-virtual {p0}, Lcom/facebook/share/widget/MessageDialog;->getRequestCode()I

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->registerSharerCallback(ILcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 194
    return-void
.end method

.method public setShouldFailOnDataError(Z)V
    .registers 2
    .param p1, "shouldFailOnDataError"    # Z

    .line 203
    iput-boolean p1, p0, Lcom/facebook/share/widget/MessageDialog;->shouldFailOnDataError:Z

    .line 204
    return-void
.end method
