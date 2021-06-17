.class Lcom/facebook/login/FacebookLiteLoginMethodHandler;
.super Lcom/facebook/login/NativeAppLoginMethodHandler;
.source "FacebookLiteLoginMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/FacebookLiteLoginMethodHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Lcom/facebook/login/FacebookLiteLoginMethodHandler$1;

    invoke-direct {v0}, Lcom/facebook/login/FacebookLiteLoginMethodHandler$1;-><init>()V

    sput-object v0, Lcom/facebook/login/FacebookLiteLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 63
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/LoginClient;)V
    .registers 2
    .param p1, "loginClient"    # Lcom/facebook/login/LoginClient;

    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method getNameForLogging()Ljava/lang/String;
    .registers 2

    .line 39
    const-string v0, "fb_lite_login"

    return-object v0
.end method

.method tryAuthorize(Lcom/facebook/login/LoginClient$Request;)Z
    .registers 12
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .line 44
    invoke-static {}, Lcom/facebook/login/LoginClient;->getE2E()Ljava/lang/String;

    move-result-object v9

    .line 45
    .local v9, "e2e":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/login/FacebookLiteLoginMethodHandler;->loginClient:Lcom/facebook/login/LoginClient;

    .line 46
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v2

    .line 50
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result v4

    .line 51
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->hasPublishPermission()Z

    move-result v5

    .line 52
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDefaultAudience()Lcom/facebook/login/DefaultAudience;

    move-result-object v6

    .line 53
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/login/FacebookLiteLoginMethodHandler;->getClientState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 54
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getAuthType()Ljava/lang/String;

    move-result-object v8

    .line 45
    move-object v3, v9

    invoke-static/range {v0 .. v8}, Lcom/facebook/internal/NativeProtocol;->createFacebookLiteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "e2e"

    invoke-virtual {p0, v1, v9}, Lcom/facebook/login/FacebookLiteLoginMethodHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    invoke-static {}, Lcom/facebook/login/LoginClient;->getLoginRequestCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/login/FacebookLiteLoginMethodHandler;->tryIntent(Landroid/content/Intent;I)Z

    move-result v1

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    invoke-super {p0, p1, p2}, Lcom/facebook/login/NativeAppLoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    return-void
.end method
