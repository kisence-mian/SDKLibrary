.class final Lcom/mintegral/msdk/videocommon/c/a$2;
.super Lcom/mintegral/msdk/base/common/net/a/d;
.source "RewardSettingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/videocommon/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mintegral/msdk/videocommon/c/c;

.field final synthetic d:Lcom/mintegral/msdk/videocommon/c/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/videocommon/c/a;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/c/c;)V
    .registers 5

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mintegral/msdk/videocommon/c/a$2;->d:Lcom/mintegral/msdk/videocommon/c/a;

    iput-object p2, p0, Lcom/mintegral/msdk/videocommon/c/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mintegral/msdk/videocommon/c/a$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mintegral/msdk/videocommon/c/a$2;->c:Lcom/mintegral/msdk/videocommon/c/c;

    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 70
    if-eqz p1, :cond_29

    .line 72
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/e/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 73
    const-string v0, "current_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 74
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videocommon/c/a$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/videocommon/c/a$2;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/mintegral/msdk/videocommon/c/a$2;->c:Lcom/mintegral/msdk/videocommon/c/c;

    invoke-interface {v0}, Lcom/mintegral/msdk/videocommon/c/c;->a()V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_29} :catch_2a

    .line 83
    :cond_29
    :goto_29
    return-void

    .line 80
    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_29
.end method
