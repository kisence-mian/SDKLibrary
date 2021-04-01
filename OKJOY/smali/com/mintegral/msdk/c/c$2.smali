.class final Lcom/mintegral/msdk/c/c$2;
.super Lcom/mintegral/msdk/c/a/d;
.source "SettingRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mintegral/msdk/c/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/c/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mintegral/msdk/c/c$2;->c:Lcom/mintegral/msdk/c/c;

    iput-object p2, p0, Lcom/mintegral/msdk/c/c$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mintegral/msdk/c/c$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mintegral/msdk/c/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 147
    invoke-static {}, Lcom/mintegral/msdk/c/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GET UNITID SETTING ERROR"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 123
    if-eqz p1, :cond_2d

    .line 124
    :try_start_2
    const-string v0, "unitSetting"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2c

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    const-string v1, "current_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 135
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/c/c$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/c/c$2;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_2c
    :goto_2c
    return-void

    .line 138
    :cond_2d
    invoke-static {}, Lcom/mintegral/msdk/c/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNIT SETTING IS NULL"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_37

    goto :goto_2c

    .line 141
    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method
