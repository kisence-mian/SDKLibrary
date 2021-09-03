.class public Lcom/tds/achievement/AchievementException;
.super Ljava/lang/Exception;
.source "AchievementException.java"


# static fields
.field public static final ACHIEVEMENT_NOT_FOUND:I = 0x232a

.field public static final SDK_NOT_INIT:I = 0x2329

.field public static final UNAUTHORIZED:I = 0x191

.field public static final UNKNOWN:I = 0x2328

.field public static final USER_ID_IS_NULL:I = 0x232b

.field private static final VERSION:Ljava/lang/String; = " Version: 3.2.1"


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(Lcom/tds/achievement/AchievementServerError;)V
    .registers 4
    .param p1, "cause"    # Lcom/tds/achievement/AchievementServerError;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/tds/achievement/AchievementServerError;->error_description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Version: 3.2.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    iget v0, p1, Lcom/tds/achievement/AchievementServerError;->code:I

    iput v0, p0, Lcom/tds/achievement/AchievementException;->errorCode:I

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Version: 3.2.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 26
    const/16 v0, 0x2328

    iput v0, p0, Lcom/tds/achievement/AchievementException;->errorCode:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Version: 3.2.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    iput p2, p0, Lcom/tds/achievement/AchievementException;->errorCode:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Version: 3.2.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    const/16 v0, 0x2328

    iput v0, p0, Lcom/tds/achievement/AchievementException;->errorCode:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 40
    const-string v0, " Version: 3.2.1"

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    const/16 v0, 0x2328

    iput v0, p0, Lcom/tds/achievement/AchievementException;->errorCode:I

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 5
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Version: 3.2.1 errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    iput p2, p0, Lcom/tds/achievement/AchievementException;->errorCode:I

    .line 52
    return-void
.end method


# virtual methods
.method public toJSON()Ljava/lang/String;
    .registers 4

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "code"

    iget v2, p0, Lcom/tds/achievement/AchievementException;->errorCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string v1, "error_description"

    invoke-virtual {p0}, Lcom/tds/achievement/AchievementException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_15} :catch_16

    .line 61
    goto :goto_1a

    .line 59
    :catch_16
    move-exception v1

    .line 60
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 67
    invoke-virtual {p0}, Lcom/tds/achievement/AchievementException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 68
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_b

    .line 69
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 71
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
