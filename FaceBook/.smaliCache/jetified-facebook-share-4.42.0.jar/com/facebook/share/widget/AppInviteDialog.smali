.class public Lcom/facebook/share/widget/AppInviteDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "AppInviteDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/widget/AppInviteDialog$WebFallbackHandler;,
        Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;,
        Lcom/facebook/share/widget/AppInviteDialog$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase<",
        "Lcom/facebook/share/model/AppInviteContent;",
        "Lcom/facebook/share/widget/AppInviteDialog$Result;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I

.field private static final TAG:Ljava/lang/String; = "AppInviteDialog"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->AppInvite:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 85
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    sput v0, Lcom/facebook/share/widget/AppInviteDialog;->DEFAULT_REQUEST_CODE:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    sget v0, Lcom/facebook/share/widget/AppInviteDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/AppInviteDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/widget/AppInviteDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 161
    return-void
.end method

.method private constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .registers 3
    .param p1, "fragment"    # Lcom/facebook/internal/FragmentWrapper;

    .line 173
    sget v0, Lcom/facebook/share/widget/AppInviteDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 174
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/AppInviteContent;

    .line 52
    invoke-static {p0}, Lcom/facebook/share/widget/AppInviteDialog;->createParameters(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/facebook/internal/DialogFeature;
    .registers 1

    .line 52
    invoke-static {}, Lcom/facebook/share/widget/AppInviteDialog;->getFeature()Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    return-object v0
.end method

.method public static canShow()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method private static canShowNativeDialog()Z
    .registers 1

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method private static canShowWebFallback()Z
    .registers 1

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method private static createParameters(Lcom/facebook/share/model/AppInviteContent;)Landroid/os/Bundle;
    .registers 9
    .param p0, "content"    # Lcom/facebook/share/model/AppInviteContent;

    .line 290
    const-string v0, "promo_text"

    const-string v1, "promo_code"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v2, "params":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->getApplinkUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_link_url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "preview_image_url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    nop

    .line 295
    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->getDestination()Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    const-string v4, "destination"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->getPromotionCode()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "promoCode":Ljava/lang/String;
    if-eqz v3, :cond_31

    move-object v4, v3

    goto :goto_33

    :cond_31
    const-string v4, ""

    :goto_33
    move-object v3, v4

    .line 300
    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent;->getPromotionText()Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "promoText":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_61

    .line 305
    :try_start_3e
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 306
    .local v5, "deeplinkContent":Lorg/json/JSONObject;
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v6, "deeplink_context"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_58} :catch_59

    .line 315
    .end local v5    # "deeplinkContent":Lorg/json/JSONObject;
    goto :goto_61

    .line 312
    :catch_59
    move-exception v0

    .line 313
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "AppInviteDialog"

    const-string v5, "Json Exception in creating deeplink context"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_61
    :goto_61
    return-object v2
.end method

.method private static getFeature()Lcom/facebook/internal/DialogFeature;
    .registers 1

    .line 286
    sget-object v0, Lcom/facebook/share/internal/AppInviteDialogFeature;->APP_INVITES_DIALOG:Lcom/facebook/share/internal/AppInviteDialogFeature;

    return-object v0
.end method

.method public static show(Landroid/app/Activity;Lcom/facebook/share/model/AppInviteContent;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appInviteContent"    # Lcom/facebook/share/model/AppInviteContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    new-instance v0, Lcom/facebook/share/widget/AppInviteDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/AppInviteDialog;-><init>(Landroid/app/Activity;)V

    .line 105
    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/AppInviteDialog;->show(Lcom/facebook/share/model/AppInviteContent;)V

    .line 106
    return-void
.end method

.method public static show(Landroid/app/Fragment;Lcom/facebook/share/model/AppInviteContent;)V
    .registers 3
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "appInviteContent"    # Lcom/facebook/share/model/AppInviteContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/AppInviteDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/AppInviteContent;)V

    .line 128
    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Lcom/facebook/share/model/AppInviteContent;)V
    .registers 3
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "appInviteContent"    # Lcom/facebook/share/model/AppInviteContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p0}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0, p1}, Lcom/facebook/share/widget/AppInviteDialog;->show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/AppInviteContent;)V

    .line 117
    return-void
.end method

.method private static show(Lcom/facebook/internal/FragmentWrapper;Lcom/facebook/share/model/AppInviteContent;)V
    .registers 3
    .param p0, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;
    .param p1, "appInviteContent"    # Lcom/facebook/share/model/AppInviteContent;

    .line 133
    new-instance v0, Lcom/facebook/share/widget/AppInviteDialog;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/AppInviteDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 134
    invoke-virtual {v0, p1}, Lcom/facebook/share/widget/AppInviteDialog;->show(Lcom/facebook/share/model/AppInviteContent;)V

    .line 135
    return-void
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .registers 3

    .line 221
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/widget/AppInviteDialog;->getRequestCode()I

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
            "Lcom/facebook/share/model/AppInviteContent;",
            "Lcom/facebook/share/widget/AppInviteDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/FacebookDialogBase<Lcom/facebook/share/model/AppInviteContent;Lcom/facebook/share/widget/AppInviteDialog$Result;>.ModeHandler;>;"
    new-instance v1, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/AppInviteDialog$NativeHandler;-><init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/share/widget/AppInviteDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v1, Lcom/facebook/share/widget/AppInviteDialog$WebFallbackHandler;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/widget/AppInviteDialog$WebFallbackHandler;-><init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/share/widget/AppInviteDialog$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    return-object v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .registers 6
    .param p1, "callbackManager"    # Lcom/facebook/internal/CallbackManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/widget/AppInviteDialog$Result;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/widget/AppInviteDialog$Result;>;"
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Lcom/facebook/share/widget/AppInviteDialog$1;

    invoke-direct {v0, p0, p2, p2}, Lcom/facebook/share/widget/AppInviteDialog$1;-><init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V

    .line 203
    .local v0, "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :goto_9
    new-instance v1, Lcom/facebook/share/widget/AppInviteDialog$2;

    invoke-direct {v1, p0, v0}, Lcom/facebook/share/widget/AppInviteDialog$2;-><init>(Lcom/facebook/share/widget/AppInviteDialog;Lcom/facebook/share/internal/ResultProcessor;)V

    .line 214
    .local v1, "callbackManagerCallback":Lcom/facebook/internal/CallbackManagerImpl$Callback;
    nop

    .line 215
    invoke-virtual {p0}, Lcom/facebook/share/widget/AppInviteDialog;->getRequestCode()I

    move-result v2

    .line 214
    invoke-virtual {p1, v2, v1}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 217
    return-void
.end method

.method public show(Lcom/facebook/share/model/AppInviteContent;)V
    .registers 2
    .param p1, "content"    # Lcom/facebook/share/model/AppInviteContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    return-void
.end method

.method public bridge synthetic show(Ljava/lang/Object;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    check-cast p1, Lcom/facebook/share/model/AppInviteContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/AppInviteDialog;->show(Lcom/facebook/share/model/AppInviteContent;)V

    return-void
.end method
