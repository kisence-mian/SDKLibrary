.class final Lcom/mintegral/msdk/c/c$1;
.super Lcom/mintegral/msdk/c/a/d;
.source "SettingRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/mintegral/msdk/c/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/c/c;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mintegral/msdk/c/c$1;->d:Lcom/mintegral/msdk/c/c;

    iput-object p2, p0, Lcom/mintegral/msdk/c/c$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mintegral/msdk/c/c$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/mintegral/msdk/c/c$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mintegral/msdk/c/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 90
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v1, p0, Lcom/mintegral/msdk/c/c$1;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/e/b;->a()V

    .line 91
    iget-object v0, p0, Lcom/mintegral/msdk/c/c$1;->d:Lcom/mintegral/msdk/c/c;

    iget-object v1, p0, Lcom/mintegral/msdk/c/c$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/c/c$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/c/c$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/c/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/mintegral/msdk/c/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get app setting error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 51
    if-eqz p1, :cond_8a

    .line 52
    :try_start_2
    const-string v0, "aa"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 53
    sput-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->ALLOW_APK_DOWNLOAD:Z

    .line 1020
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cv"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1022
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1023
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1024
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    const-string v0, "current_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 56
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    iget-object v0, p0, Lcom/mintegral/msdk/c/c$1;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/mintegral/msdk/c/b/a;->a()Lcom/mintegral/msdk/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/b/a;->c()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 59
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/c/c$1$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/c/c$1$1;-><init>(Lcom/mintegral/msdk/c/c$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    :goto_53
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/c/c$1$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/c/c$1$2;-><init>(Lcom/mintegral/msdk/c/c$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    :goto_60
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v1, p0, Lcom/mintegral/msdk/c/c$1;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/e/b;->a()V

    .line 81
    iget-object v0, p0, Lcom/mintegral/msdk/c/c$1;->d:Lcom/mintegral/msdk/c/c;

    iget-object v1, p0, Lcom/mintegral/msdk/c/c$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/c/c$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/c/c$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/c/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/c/c$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/c/c$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    :goto_7c
    return-void

    .line 68
    :cond_7d
    invoke-static {}, Lcom/mintegral/msdk/c/b/a;->a()Lcom/mintegral/msdk/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/b/a;->d()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_84} :catch_85

    goto :goto_53

    .line 84
    :catch_85
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7c

    .line 78
    :cond_8a
    :try_start_8a
    invoke-static {}, Lcom/mintegral/msdk/c/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app setting is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_93} :catch_85

    goto :goto_60
.end method
