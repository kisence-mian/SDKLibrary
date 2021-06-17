.class Lcom/facebook/login/LoginClient;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/LoginClient$Result;,
        Lcom/facebook/login/LoginClient$Request;,
        Lcom/facebook/login/LoginClient$BackgroundProcessingListener;,
        Lcom/facebook/login/LoginClient$OnCompletedListener;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/LoginClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

.field checkedInternetPermission:Z

.field currentHandler:I

.field extraData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fragment:Landroidx/fragment/app/Fragment;

.field handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

.field loggingExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loginLogger:Lcom/facebook/login/LoginLogger;

.field onCompletedListener:Lcom/facebook/login/LoginClient$OnCompletedListener;

.field pendingRequest:Lcom/facebook/login/LoginClient$Request;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 712
    new-instance v0, Lcom/facebook/login/LoginClient$1;

    invoke-direct {v0}, Lcom/facebook/login/LoginClient$1;-><init>()V

    sput-object v0, Lcom/facebook/login/LoginClient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 686
    const-class v0, Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 687
    .local v0, "o":[Ljava/lang/Object;
    array-length v1, v0

    new-array v1, v1, [Lcom/facebook/login/LoginMethodHandler;

    iput-object v1, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    .line 688
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    array-length v2, v0

    if-ge v1, v2, :cond_29

    .line 689
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    aget-object v3, v0, v1

    check-cast v3, Lcom/facebook/login/LoginMethodHandler;

    aput-object v3, v2, v1

    .line 690
    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Lcom/facebook/login/LoginMethodHandler;->setLoginClient(Lcom/facebook/login/LoginClient;)V

    .line 688
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 692
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 693
    const-class v1, Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/login/LoginClient$Request;

    iput-object v1, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    .line 694
    invoke-static {p1}, Lcom/facebook/internal/Utility;->readStringMapFromParcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    .line 695
    invoke-static {p1}, Lcom/facebook/internal/Utility;->readStringMapFromParcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    .line 696
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 73
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->fragment:Landroidx/fragment/app/Fragment;

    .line 74
    return-void
.end method

.method private addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "accumulate"    # Z

    .line 234
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    .line 237
    :cond_b
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz p3, :cond_34

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 240
    :cond_34
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void
.end method

.method private completeWithFailure()V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    const-string v1, "Login attempt failed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    .line 231
    return-void
.end method

.method static getE2E()Ljava/lang/String;
    .registers 4

    .line 428
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 430
    .local v0, "e2e":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "init"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e} :catch_f

    .line 432
    goto :goto_10

    .line 431
    :catch_f
    move-exception v1

    .line 433
    :goto_10
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLogger()Lcom/facebook/login/LoginLogger;
    .registers 4

    .line 371
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loginLogger:Lcom/facebook/login/LoginLogger;

    if-eqz v0, :cond_14

    .line 372
    invoke-virtual {v0}, Lcom/facebook/login/LoginLogger;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 374
    :cond_14
    new-instance v0, Lcom/facebook/login/LoginLogger;

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v2}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->loginLogger:Lcom/facebook/login/LoginLogger;

    .line 376
    :cond_25
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loginLogger:Lcom/facebook/login/LoginLogger;

    return-object v0
.end method

.method public static getLoginRequestCode()I
    .registers 1

    .line 97
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Login:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    return v0
.end method

.method private logAuthorizationMethodComplete(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V
    .registers 11
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/facebook/login/LoginClient$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/login/LoginClient$Result;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 401
    .local p3, "loggingExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p2, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$Code;

    .line 402
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/facebook/login/LoginClient$Result;->errorMessage:Ljava/lang/String;

    iget-object v5, p2, Lcom/facebook/login/LoginClient$Result;->errorCode:Ljava/lang/String;

    .line 401
    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/login/LoginClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 406
    return-void
.end method

.method private logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 16
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 414
    .local p5, "loggingExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-nez v0, :cond_10

    .line 416
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->getLogger()Lcom/facebook/login/LoginLogger;

    move-result-object v0

    const-string v1, "fb_mobile_login_method_complete"

    const-string v2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/login/LoginLogger;->logUnexpectedError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 422
    :cond_10
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->getLogger()Lcom/facebook/login/LoginLogger;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/facebook/login/LoginLogger;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 425
    :goto_22
    return-void
.end method

.method private notifyOnCompleteListener(Lcom/facebook/login/LoginClient$Result;)V
    .registers 3
    .param p1, "outcome"    # Lcom/facebook/login/LoginClient$Result;

    .line 380
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->onCompletedListener:Lcom/facebook/login/LoginClient$OnCompletedListener;

    if-eqz v0, :cond_7

    .line 381
    invoke-interface {v0, p1}, Lcom/facebook/login/LoginClient$OnCompletedListener;->onCompleted(Lcom/facebook/login/LoginClient$Result;)V

    .line 383
    :cond_7
    return-void
.end method


# virtual methods
.method addExtraData(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "accumulate"    # Z

    .line 244
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    .line 247
    :cond_b
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    if-eqz p3, :cond_34

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 250
    :cond_34
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method authorize(Lcom/facebook/login/LoginClient$Request;)V
    .registers 4
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .line 107
    if-nez p1, :cond_3

    .line 108
    return-void

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-nez v0, :cond_20

    .line 115
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->checkInternetPermission()Z

    move-result v0

    if-nez v0, :cond_14

    .line 117
    return-void

    .line 119
    :cond_14
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    .line 120
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->getHandlersToTry(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    .line 121
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->tryNextHandler()V

    .line 122
    return-void

    .line 112
    :cond_20
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Attempted to authorize while a request is pending."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method cancelCurrentHandler()V
    .registers 2

    .line 129
    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    if-ltz v0, :cond_b

    .line 130
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->cancel()V

    .line 132
    :cond_b
    return-void
.end method

.method checkInternetPermission()Z
    .registers 6

    .line 185
    iget-boolean v0, p0, Lcom/facebook/login/LoginClient;->checkedInternetPermission:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 186
    return v1

    .line 189
    :cond_6
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Lcom/facebook/login/LoginClient;->checkPermission(Ljava/lang/String;)I

    move-result v0

    .line 190
    .local v0, "permissionCheck":I
    if-eqz v0, :cond_29

    .line 191
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 192
    .local v1, "activity":Landroid/app/Activity;
    sget v2, Lcom/facebook/common/R$string;->com_facebook_internet_permission_error_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "errorType":Ljava/lang/String;
    sget v3, Lcom/facebook/common/R$string;->com_facebook_internet_permission_error_message:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "errorDescription":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-static {v4, v2, v3}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    .line 196
    const/4 v4, 0x0

    return v4

    .line 199
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "errorType":Ljava/lang/String;
    .end local v3    # "errorDescription":Ljava/lang/String;
    :cond_29
    iput-boolean v1, p0, Lcom/facebook/login/LoginClient;->checkedInternetPermission:Z

    .line 200
    return v1
.end method

.method checkPermission(Ljava/lang/String;)I
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 338
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method complete(Lcom/facebook/login/LoginClient$Result;)V
    .registers 5
    .param p1, "outcome"    # Lcom/facebook/login/LoginClient$Result;

    .line 294
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    .line 298
    .local v0, "handler":Lcom/facebook/login/LoginMethodHandler;
    if-eqz v0, :cond_f

    .line 299
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/facebook/login/LoginMethodHandler;->methodLoggingExtras:Ljava/util/Map;

    invoke-direct {p0, v1, p1, v2}, Lcom/facebook/login/LoginClient;->logAuthorizationMethodComplete(Ljava/lang/String;Lcom/facebook/login/LoginClient$Result;Ljava/util/Map;)V

    .line 303
    :cond_f
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    if-eqz v1, :cond_15

    .line 305
    iput-object v1, p1, Lcom/facebook/login/LoginClient$Result;->loggingExtras:Ljava/util/Map;

    .line 307
    :cond_15
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    if-eqz v1, :cond_1b

    .line 308
    iput-object v1, p1, Lcom/facebook/login/LoginClient$Result;->extraData:Ljava/util/Map;

    .line 311
    :cond_1b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    .line 312
    const/4 v2, -0x1

    iput v2, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 313
    iput-object v1, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    .line 314
    iput-object v1, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    .line 316
    invoke-direct {p0, p1}, Lcom/facebook/login/LoginClient;->notifyOnCompleteListener(Lcom/facebook/login/LoginClient$Result;)V

    .line 317
    return-void
.end method

.method completeAndValidate(Lcom/facebook/login/LoginClient$Result;)V
    .registers 3
    .param p1, "outcome"    # Lcom/facebook/login/LoginClient$Result;

    .line 285
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 286
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->validateSameFbidAndFinish(Lcom/facebook/login/LoginClient$Result;)V

    goto :goto_11

    .line 289
    :cond_e
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    .line 291
    :goto_11
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 700
    const/4 v0, 0x0

    return v0
.end method

.method getActivity()Landroidx/fragment/app/FragmentActivity;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method getBackgroundProcessingListener()Lcom/facebook/login/LoginClient$BackgroundProcessingListener;
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    return-object v0
.end method

.method getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;
    .registers 3

    .line 135
    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    if-ltz v0, :cond_9

    .line 136
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    aget-object v0, v1, v0

    return-object v0

    .line 138
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->fragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method protected getHandlersToTry(Lcom/facebook/login/LoginClient$Request;)[Lcom/facebook/login/LoginMethodHandler;
    .registers 5
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/login/LoginMethodHandler;>;"
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/facebook/login/LoginBehavior;

    move-result-object v1

    .line 155
    .local v1, "behavior":Lcom/facebook/login/LoginBehavior;
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsGetTokenAuth()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 156
    new-instance v2, Lcom/facebook/login/GetTokenLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/GetTokenLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_17
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsKatanaAuth()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 160
    new-instance v2, Lcom/facebook/login/KatanaProxyLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_25
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsFacebookLiteAuth()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 164
    new-instance v2, Lcom/facebook/login/FacebookLiteLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/FacebookLiteLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_33
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsCustomTabAuth()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 168
    new-instance v2, Lcom/facebook/login/CustomTabLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_41
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsWebViewAuth()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 172
    new-instance v2, Lcom/facebook/login/WebViewLoginMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/WebViewLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_4f
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsDeviceAuth()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 176
    new-instance v2, Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-direct {v2, p0}, Lcom/facebook/login/DeviceAuthMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_5d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/facebook/login/LoginMethodHandler;

    .line 180
    .local v2, "result":[Lcom/facebook/login/LoginMethodHandler;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 181
    return-object v2
.end method

.method getInProgress()Z
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method getOnCompletedListener()Lcom/facebook/login/LoginClient$OnCompletedListener;
    .registers 2

    .line 320
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->onCompletedListener:Lcom/facebook/login/LoginClient$OnCompletedListener;

    return-object v0
.end method

.method public getPendingRequest()Lcom/facebook/login/LoginClient$Request;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method notifyBackgroundProcessingStart()V
    .registers 2

    .line 386
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    if-eqz v0, :cond_7

    .line 387
    invoke-interface {v0}, Lcom/facebook/login/LoginClient$BackgroundProcessingListener;->onBackgroundProcessingStarted()V

    .line 389
    :cond_7
    return-void
.end method

.method notifyBackgroundProcessingStop()V
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    if-eqz v0, :cond_7

    .line 393
    invoke-interface {v0}, Lcom/facebook/login/LoginClient$BackgroundProcessingListener;->onBackgroundProcessingStopped()V

    .line 395
    :cond_7
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_d

    .line 144
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/login/LoginMethodHandler;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    .line 144
    return v0

    .line 147
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method setBackgroundProcessingListener(Lcom/facebook/login/LoginClient$BackgroundProcessingListener;)V
    .registers 2
    .param p1, "backgroundProcessingListener"    # Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    .line 334
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->backgroundProcessingListener:Lcom/facebook/login/LoginClient$BackgroundProcessingListener;

    .line 335
    return-void
.end method

.method setFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 81
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->fragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_7

    .line 84
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->fragment:Landroidx/fragment/app/Fragment;

    .line 85
    return-void

    .line 82
    :cond_7
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t set fragment once it is already set."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setOnCompletedListener(Lcom/facebook/login/LoginClient$OnCompletedListener;)V
    .registers 2
    .param p1, "onCompletedListener"    # Lcom/facebook/login/LoginClient$OnCompletedListener;

    .line 324
    iput-object p1, p0, Lcom/facebook/login/LoginClient;->onCompletedListener:Lcom/facebook/login/LoginClient$OnCompletedListener;

    .line 325
    return-void
.end method

.method startOrContinueAuth(Lcom/facebook/login/LoginClient$Request;)V
    .registers 3
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .line 101
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getInProgress()Z

    move-result v0

    if-nez v0, :cond_9

    .line 102
    invoke-virtual {p0, p1}, Lcom/facebook/login/LoginClient;->authorize(Lcom/facebook/login/LoginClient$Request;)V

    .line 104
    :cond_9
    return-void
.end method

.method tryCurrentHandler()Z
    .registers 6

    .line 254
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    .line 255
    .local v0, "handler":Lcom/facebook/login/LoginMethodHandler;
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->needsInternetPermission()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->checkInternetPermission()Z

    move-result v1

    if-nez v1, :cond_19

    .line 256
    const-string v1, "no_internet_permission"

    const-string v2, "1"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/login/LoginClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 261
    return v3

    .line 264
    :cond_19
    iget-object v1, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginMethodHandler;->tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z

    move-result v1

    .line 265
    .local v1, "tried":Z
    if-eqz v1, :cond_33

    .line 266
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->getLogger()Lcom/facebook/login/LoginLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-virtual {v2, v3, v4}, Lcom/facebook/login/LoginLogger;->logAuthorizationMethodStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 271
    :cond_33
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->getLogger()Lcom/facebook/login/LoginLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {v3}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-virtual {v2, v3, v4}, Lcom/facebook/login/LoginLogger;->logAuthorizationMethodNotTried(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    nop

    .line 275
    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 273
    const-string v4, "not_tried"

    invoke-direct {p0, v4, v2, v3}, Lcom/facebook/login/LoginClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    :goto_4f
    return v1
.end method

.method tryNextHandler()V
    .registers 8

    .line 204
    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    if-ltz v0, :cond_1b

    .line 205
    nop

    .line 206
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginMethodHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v0

    iget-object v6, v0, Lcom/facebook/login/LoginMethodHandler;->methodLoggingExtras:Ljava/util/Map;

    .line 205
    const-string v3, "skipped"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/login/LoginClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    if-eqz v0, :cond_32

    iget v1, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_32

    .line 214
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    .line 216
    invoke-virtual {p0}, Lcom/facebook/login/LoginClient;->tryCurrentHandler()Z

    move-result v0

    .line 218
    .local v0, "started":Z
    if-eqz v0, :cond_31

    .line 219
    return-void

    .line 221
    .end local v0    # "started":Z
    :cond_31
    goto :goto_1b

    .line 223
    :cond_32
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_39

    .line 225
    invoke-direct {p0}, Lcom/facebook/login/LoginClient;->completeWithFailure()V

    .line 227
    :cond_39
    return-void
.end method

.method validateSameFbidAndFinish(Lcom/facebook/login/LoginClient$Result;)V
    .registers 8
    .param p1, "pendingResult"    # Lcom/facebook/login/LoginClient$Result;

    .line 342
    iget-object v0, p1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_43

    .line 346
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 347
    .local v0, "previousToken":Lcom/facebook/AccessToken;
    iget-object v1, p1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    .line 351
    .local v1, "newToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_25

    if-eqz v1, :cond_25

    .line 352
    :try_start_e
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 353
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    iget-object v3, p1, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    invoke-static {v2, v3}, Lcom/facebook/login/LoginClient$Result;->createTokenResult(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v2

    .local v2, "result":Lcom/facebook/login/LoginClient$Result;
    goto :goto_2e

    .line 355
    .end local v2    # "result":Lcom/facebook/login/LoginClient$Result;
    :cond_25
    iget-object v2, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    const-string v3, "User logged in as different Facebook user."

    const/4 v4, 0x0

    .line 356
    invoke-static {v2, v3, v4}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v2

    .line 361
    .restart local v2    # "result":Lcom/facebook/login/LoginClient$Result;
    :goto_2e
    invoke-virtual {p0, v2}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_31} :catch_32

    .line 367
    .end local v2    # "result":Lcom/facebook/login/LoginClient$Result;
    goto :goto_42

    .line 362
    :catch_32
    move-exception v2

    .line 363
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    .line 366
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 363
    const-string v5, "Caught exception"

    invoke-static {v3, v5, v4}, Lcom/facebook/login/LoginClient$Result;->createErrorResult(Lcom/facebook/login/LoginClient$Request;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/LoginClient$Result;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/login/LoginClient;->complete(Lcom/facebook/login/LoginClient$Result;)V

    .line 368
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_42
    return-void

    .line 343
    .end local v0    # "previousToken":Lcom/facebook/AccessToken;
    .end local v1    # "newToken":Lcom/facebook/AccessToken;
    :cond_43
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t validate without a token"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 705
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->handlersToTry:[Lcom/facebook/login/LoginMethodHandler;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 706
    iget v0, p0, Lcom/facebook/login/LoginClient;->currentHandler:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->pendingRequest:Lcom/facebook/login/LoginClient$Request;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 708
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->loggingExtras:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->writeStringMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 709
    iget-object v0, p0, Lcom/facebook/login/LoginClient;->extraData:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->writeStringMapToParcel(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 710
    return-void
.end method
