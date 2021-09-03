.class public Lcom/taptap/sdk/LoginRequest;
.super Ljava/lang/Object;
.source "LoginRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/taptap/sdk/LoginRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private codeChallenge:Ljava/lang/String;

.field private codeChallengeMethod:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private loginVersion:Ljava/lang/String;

.field private permissions:[Ljava/lang/String;

.field private redirectUri:Ljava/lang/String;

.field private requestCode:I

.field private responseType:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/taptap/sdk/LoginRequest$a;

    invoke-direct {v0}, Lcom/taptap/sdk/LoginRequest$a;-><init>()V

    sput-object v0, Lcom/taptap/sdk/LoginRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/taptap/sdk/LoginRequest;->requestCode:I

    .line 91
    const-string v0, "0"

    iput-object v0, p0, Lcom/taptap/sdk/LoginRequest;->loginVersion:Ljava/lang/String;

    .line 92
    const-string v0, "code"

    iput-object v0, p0, Lcom/taptap/sdk/LoginRequest;->responseType:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/LoginRequest;->state:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/LoginRequest;->permissions:[Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/taptap/sdk/LoginRequest;->requestCode:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/LoginRequest;->versionCode:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/LoginRequest;->info:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/LoginRequest;->loginVersion:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/LoginRequest;->responseType:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/LoginRequest;->redirectUri:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/LoginRequest;->codeChallenge:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/LoginRequest;->codeChallengeMethod:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    iput v0, p0, Lcom/taptap/sdk/LoginRequest;->requestCode:I

    .line 6
    const-string v0, "0"

    iput-object v0, p0, Lcom/taptap/sdk/LoginRequest;->loginVersion:Ljava/lang/String;

    .line 7
    const-string v0, "code"

    iput-object v0, p0, Lcom/taptap/sdk/LoginRequest;->responseType:Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/taptap/sdk/LoginRequest;->permissions:[Ljava/lang/String;

    .line 85
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/LoginRequest;->state:Ljava/lang/String;

    return-void
.end method

.method public static generateInfo(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_10

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    const-string p0, "vertical"

    goto :goto_16

    .line 5
    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    const-string p0, "horizontal"

    :goto_16
    nop

    .line 7
    const-string v0, "GAME"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "2.6.0"

    const-string v2, "&version="

    const-string v3, "&name=TapLoginAndroid&orientation="

    const-string v4, "&uuid="

    if-eqz v0, :cond_5d

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "client_id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/taptap/sdk/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/tds/common/utils/GUIDHelper;->INSTANCE:Lcom/tds/common/utils/GUIDHelper;

    .line 9
    invoke-virtual {v0}, Lcom/tds/common/utils/GUIDHelper;->getUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "biz_source="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&client_id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 15
    invoke-static {}, Lcom/taptap/sdk/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/tds/common/utils/GUIDHelper;->INSTANCE:Lcom/tds/common/utils/GUIDHelper;

    .line 16
    invoke-virtual {v0}, Lcom/tds/common/utils/GUIDHelper;->getUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateSDKInfo(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_10

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    const-string p0, "vertical"

    goto :goto_16

    .line 5
    :catch_10
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_14
    const-string p0, "horizontal"

    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "client_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/taptap/sdk/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tds/common/utils/GUIDHelper;->INSTANCE:Lcom/tds/common/utils/GUIDHelper;

    .line 8
    invoke-virtual {v1}, Lcom/tds/common/utils/GUIDHelper;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&name=TapSDK&orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "&version="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "3.2.1"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "&version_code="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const v0, 0x1ccd4a9

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCodeChallenge()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/LoginRequest;->codeChallenge:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeChallengeMethod()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/LoginRequest;->codeChallengeMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/LoginRequest;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginVersion()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/LoginRequest;->loginVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/LoginRequest;->permissions:[Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/LoginRequest;->redirectUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/taptap/sdk/LoginRequest;->requestCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/taptap/sdk/LoginRequest;->requestCode:I

    .line 4
    :cond_9
    iget v0, p0, Lcom/taptap/sdk/LoginRequest;->requestCode:I

    return v0
.end method

.method public getResponseType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/LoginRequest;->responseType:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/LoginRequest;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/LoginRequest;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public setCodeChallenge(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/LoginRequest;->codeChallenge:Ljava/lang/String;

    return-void
.end method

.method public setCodeChallengeMethod(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/LoginRequest;->codeChallengeMethod:Ljava/lang/String;

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/LoginRequest;->info:Ljava/lang/String;

    return-void
.end method

.method public setLoginVersion(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/LoginRequest;->loginVersion:Ljava/lang/String;

    return-void
.end method

.method public setRedirectUri(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/LoginRequest;->redirectUri:Ljava/lang/String;

    return-void
.end method

.method public setResponseType(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/LoginRequest;->responseType:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/LoginRequest;->versionCode:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/taptap/sdk/LoginRequest;->state:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/taptap/sdk/LoginRequest;->permissions:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/taptap/sdk/LoginRequest;->requestCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/taptap/sdk/LoginRequest;->versionCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/taptap/sdk/LoginRequest;->info:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/taptap/sdk/LoginRequest;->loginVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/taptap/sdk/LoginRequest;->responseType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/taptap/sdk/LoginRequest;->redirectUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/taptap/sdk/LoginRequest;->codeChallenge:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/taptap/sdk/LoginRequest;->codeChallengeMethod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
