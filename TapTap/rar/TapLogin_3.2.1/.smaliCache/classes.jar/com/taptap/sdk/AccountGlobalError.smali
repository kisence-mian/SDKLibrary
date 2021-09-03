.class public Lcom/taptap/sdk/AccountGlobalError;
.super Ljava/lang/Throwable;
.source "AccountGlobalError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/sdk/AccountGlobalError$a;
    }
.end annotation


# static fields
.field public static final LOGIN_ERROR_ACCESS_DENIED:Ljava/lang/String; = "access_denied"

.field public static final LOGIN_ERROR_INVALID_GRANT:Ljava/lang/String; = "invalid_grant"

.field public static final LOGIN_ERROR_PERMISSION_RESULT:Ljava/lang/String; = "permission_result"


# instance fields
.field private code:I

.field private error:Ljava/lang/String;

.field private errorDescription:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 2
    const/4 v0, -0x1

    iput v0, p0, Lcom/taptap/sdk/AccountGlobalError;->code:I

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/taptap/sdk/AccountGlobalError;->msg:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/taptap/sdk/AccountGlobalError;->error:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/taptap/sdk/AccountGlobalError;->errorDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 7
    iput p1, p0, Lcom/taptap/sdk/AccountGlobalError;->code:I

    .line 8
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError;->msg:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError;->error:Ljava/lang/String;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError;->errorDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 18
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/taptap/sdk/AccountGlobalError;->transformFromJsonObject(Lorg/json/JSONObject;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_b} :catch_c

    goto :goto_10

    .line 21
    :catch_c
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/taptap/sdk/AccountGlobalError;->code:I

    .line 13
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/AccountGlobalError;->msg:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError;->error:Ljava/lang/String;

    .line 15
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError;->errorDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/taptap/sdk/AccountGlobalError;->transformFromJsonObject(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$002(Lcom/taptap/sdk/AccountGlobalError;I)I
    .registers 2

    .line 1
    iput p1, p0, Lcom/taptap/sdk/AccountGlobalError;->code:I

    return p1
.end method

.method static synthetic access$102(Lcom/taptap/sdk/AccountGlobalError;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError;->msg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/taptap/sdk/AccountGlobalError;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError;->errorDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taptap/sdk/AccountGlobalError;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError;->error:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/taptap/sdk/AccountGlobalError;->code:I

    return v0
.end method

.method public getError()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/AccountGlobalError;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/AccountGlobalError;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/AccountGlobalError;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/taptap/sdk/AccountGlobalError;->code:I

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError;->error:Ljava/lang/String;

    return-void
.end method

.method public setErrorDescription(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError;->errorDescription:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError;->msg:Ljava/lang/String;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    .line 3
    :try_start_7
    iget v2, p0, Lcom/taptap/sdk/AccountGlobalError;->code:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_22

    const-string v1, "msg"

    .line 4
    :try_start_e
    iget-object v2, p0, Lcom/taptap/sdk/AccountGlobalError;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_13} :catch_22

    const-string v1, "error"

    .line 5
    :try_start_15
    iget-object v2, p0, Lcom/taptap/sdk/AccountGlobalError;->error:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_22

    const-string v1, "error_description"

    .line 6
    :try_start_1c
    iget-object v2, p0, Lcom/taptap/sdk/AccountGlobalError;->errorDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_26

    .line 8
    :catch_22
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 11
    :goto_26
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transformFromJsonObject(Lorg/json/JSONObject;)V
    .registers 3

    .line 1
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taptap/sdk/AccountGlobalError;->code:I

    .line 2
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/AccountGlobalError;->msg:Ljava/lang/String;

    .line 3
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taptap/sdk/AccountGlobalError;->error:Ljava/lang/String;

    .line 4
    const-string v0, "error_description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError;->errorDescription:Ljava/lang/String;

    return-void
.end method
