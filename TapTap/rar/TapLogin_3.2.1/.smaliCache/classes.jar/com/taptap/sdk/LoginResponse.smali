.class public Lcom/taptap/sdk/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# instance fields
.field public cancel:Z

.field public code:Ljava/lang/String;

.field public errorMessage:Ljava/lang/String;

.field public loginVersion:Ljava/lang/String;

.field public permissions:[Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public token:Lcom/taptap/sdk/AccessToken;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taptap/sdk/AccessToken;Z)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/taptap/sdk/LoginResponse;->permissions:[Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/taptap/sdk/LoginResponse;->state:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/taptap/sdk/LoginResponse;->errorMessage:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/taptap/sdk/LoginResponse;->token:Lcom/taptap/sdk/AccessToken;

    .line 6
    iput-boolean p5, p0, Lcom/taptap/sdk/LoginResponse;->cancel:Z

    return-void
.end method

.method public static getResultFromIntent(Landroid/content/Intent;)Lcom/taptap/sdk/LoginResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/taptap/sdk/LoginResponse;

    invoke-direct {v0}, Lcom/taptap/sdk/LoginResponse;-><init>()V

    .line 3
    const-string v1, "com.taptap.sdk.response"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 4
    const-string v1, "com.taptap.sdk.response.cancel"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/taptap/sdk/LoginResponse;->cancel:Z

    .line 6
    const-string v1, "com.taptap.sdk.response.token"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 8
    new-instance v2, Lcom/taptap/sdk/AccessToken;

    invoke-direct {v2, v1}, Lcom/taptap/sdk/AccessToken;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/taptap/sdk/LoginResponse;->token:Lcom/taptap/sdk/AccessToken;

    goto :goto_33

    :cond_28
    nop

    .line 10
    const-string v1, "com.taptap.sdk.response.token.parcel"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/taptap/sdk/AccessToken;

    iput-object v1, v0, Lcom/taptap/sdk/LoginResponse;->token:Lcom/taptap/sdk/AccessToken;

    :goto_33
    nop

    .line 13
    const-string v1, "com.taptap.sdk.response.error"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/LoginResponse;->errorMessage:Ljava/lang/String;

    .line 14
    const-string v1, "com.taptap.sdk.response.state"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/LoginResponse;->state:Ljava/lang/String;

    .line 15
    const-string v1, "com.taptap.sdk.response.permissions"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/LoginResponse;->permissions:[Ljava/lang/String;

    .line 16
    const-string v1, "com.taptap.sdk.response.code"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/taptap/sdk/LoginResponse;->code:Ljava/lang/String;

    .line 17
    const-string v1, "com.taptap.sdk.response.login_version"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/taptap/sdk/LoginResponse;->loginVersion:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toIntent()Landroid/content/Intent;
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string v2, "com.taptap.sdk.response"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6
    iget-boolean v2, p0, Lcom/taptap/sdk/LoginResponse;->cancel:Z

    const-string v3, "com.taptap.sdk.response.cancel"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    iget-object v2, p0, Lcom/taptap/sdk/LoginResponse;->token:Lcom/taptap/sdk/AccessToken;

    if-nez v2, :cond_1c

    const/4 v2, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v2}, Lcom/taptap/sdk/AccessToken;->getJson()Ljava/lang/String;

    move-result-object v2

    :goto_20
    const-string v3, "com.taptap.sdk.response.token"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/taptap/sdk/LoginResponse;->token:Lcom/taptap/sdk/AccessToken;

    const-string v3, "com.taptap.sdk.response.token.parcel"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9
    iget-object v2, p0, Lcom/taptap/sdk/LoginResponse;->errorMessage:Ljava/lang/String;

    const-string v3, "com.taptap.sdk.response.error"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/taptap/sdk/LoginResponse;->state:Ljava/lang/String;

    const-string v3, "com.taptap.sdk.response.state"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/taptap/sdk/LoginResponse;->code:Ljava/lang/String;

    const-string v3, "com.taptap.sdk.response.code"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/taptap/sdk/LoginResponse;->loginVersion:Ljava/lang/String;

    if-eqz v2, :cond_4a

    .line 13
    const-string v3, "com.taptap.sdk.response.login_version"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_4a
    iget-object v2, p0, Lcom/taptap/sdk/LoginResponse;->permissions:[Ljava/lang/String;

    const-string v3, "com.taptap.sdk.response.permissions"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/taptap/sdk/LoginResponse;->permissions:[Ljava/lang/String;

    const-string v2, " "

    if-eqz v1, :cond_1e

    .line 3
    const-string v1, "\"permissions\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/taptap/sdk/LoginResponse;->permissions:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    nop

    .line 5
    const-string v1, "\"state\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/taptap/sdk/LoginResponse;->state:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "\"errorMessage\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/taptap/sdk/LoginResponse;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "\"token\"="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/taptap/sdk/LoginResponse;->token:Lcom/taptap/sdk/AccessToken;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "\"cancel\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/taptap/sdk/LoginResponse;->cancel:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, "\"code\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/taptap/sdk/LoginResponse;->cancel:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
