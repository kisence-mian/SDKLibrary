.class final Lcom/mintegral/msdk/videocommon/c/a$1;
.super Lcom/mintegral/msdk/base/common/net/a/d;
.source "RewardSettingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/videocommon/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mintegral/msdk/videocommon/c/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videocommon/c/a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/c/a$1;->b:Lcom/mintegral/msdk/videocommon/c/a;

    iput-object p2, p0, Lcom/mintegral/msdk/videocommon/c/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 50
    invoke-static {}, Lcom/mintegral/msdk/videocommon/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 38
    if-eqz p1, :cond_17

    .line 40
    :try_start_2
    const-string v0, "current_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 41
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/c/a$1;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/e/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_17} :catch_18

    .line 46
    :cond_17
    :goto_17
    return-void

    .line 43
    :catch_18
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_17
.end method
