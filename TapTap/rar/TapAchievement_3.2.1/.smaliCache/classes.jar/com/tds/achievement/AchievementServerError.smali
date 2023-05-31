.class Lcom/tds/achievement/AchievementServerError;
.super Ljava/lang/Throwable;
.source "AchievementServerError.java"


# static fields
.field public static CODE_SYNC:I

.field public static ERROR_SYNC:Ljava/lang/String;


# instance fields
.field public code:I

.field public error:Ljava/lang/String;

.field public error_description:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public statusCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const/4 v0, 0x6

    sput v0, Lcom/tds/achievement/AchievementServerError;->CODE_SYNC:I

    .line 12
    const-string v0, "1001"

    sput-object v0, Lcom/tds/achievement/AchievementServerError;->ERROR_SYNC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "responseStr"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 25
    iput p2, p0, Lcom/tds/achievement/AchievementServerError;->statusCode:I

    .line 26
    return-void
.end method

.method public static parserFromJson(Ljava/lang/String;)Lcom/tds/achievement/AchievementServerError;
    .registers 5
    .param p0, "jsonString"    # Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/tds/achievement/AchievementServerError;

    invoke-direct {v0}, Lcom/tds/achievement/AchievementServerError;-><init>()V

    .line 31
    .local v0, "err":Lcom/tds/achievement/AchievementServerError;
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "success"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 33
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 34
    .local v2, "data":Lorg/json/JSONObject;
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/tds/achievement/AchievementServerError;->code:I

    .line 35
    const-string v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tds/achievement/AchievementServerError;->error:Ljava/lang/String;

    .line 36
    const-string v3, "error_description"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tds/achievement/AchievementServerError;->error_description:Ljava/lang/String;

    .line 37
    const-string v3, "msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tds/achievement/AchievementServerError;->message:Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_38} :catch_39

    .line 41
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "data":Lorg/json/JSONObject;
    :cond_38
    goto :goto_3d

    .line 39
    :catch_39
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3d
    return-object v0
.end method
