.class final Lcom/tramini/plugin/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tramini/plugin/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/b/b;->a(Lcom/tramini/plugin/a/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/a/c/c;

.field final synthetic b:Lcom/tramini/plugin/b/b;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/b/b;Lcom/tramini/plugin/a/c/c;)V
    .registers 3

    .prologue
    .line 115
    iput-object p1, p0, Lcom/tramini/plugin/b/b$1;->b:Lcom/tramini/plugin/b/b;

    iput-object p2, p0, Lcom/tramini/plugin/b/b$1;->a:Lcom/tramini/plugin/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tramini/plugin/b/b$1;->b:Lcom/tramini/plugin/b/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tramini/plugin/b/b;->a(Lcom/tramini/plugin/b/b;Z)Z

    .line 119
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/tramini/plugin/b/b$1;->b:Lcom/tramini/plugin/b/b;

    invoke-static {v0, v1}, Lcom/tramini/plugin/b/b;->a(Lcom/tramini/plugin/b/b;Z)Z

    .line 124
    if-eqz p1, :cond_66

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/tramini/plugin/b/b$1;->b:Lcom/tramini/plugin/b/b;

    invoke-static {v1}, Lcom/tramini/plugin/b/b;->a(Lcom/tramini/plugin/b/b;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "tramini"

    const-string v3, "P_SY"

    invoke-static {v1, v2, v3, v0}, Lcom/tramini/plugin/a/f/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/tramini/plugin/b/b$1;->b:Lcom/tramini/plugin/b/b;

    invoke-static {v1}, Lcom/tramini/plugin/b/b;->a(Lcom/tramini/plugin/b/b;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "tramini"

    const-string v3, "P_UD_TE"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1022
    if-eqz v1, :cond_38

    .line 1024
    const/4 v6, 0x0

    :try_start_2a
    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1025
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1026
    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1027
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_38} :catch_6e
    .catch Ljava/lang/Error; {:try_start_2a .. :try_end_38} :catch_6c

    .line 130
    :cond_38
    :goto_38
    invoke-static {v0}, Lcom/tramini/plugin/a/f/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/tramini/plugin/b/a;->a(Ljava/lang/String;)Lcom/tramini/plugin/b/a;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_66

    .line 135
    invoke-static {}, Lcom/tramini/plugin/a/e/a;->a()Lcom/tramini/plugin/a/e/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tramini/plugin/b/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 1071
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1073
    :try_start_4f
    const-string v4, "type"

    const/16 v5, 0xe

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1074
    const-string v4, "setting_id"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_5b} :catch_67

    .line 1082
    :goto_5b
    const-string v0, "2"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Lcom/tramini/plugin/a/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 136
    iget-object v0, p0, Lcom/tramini/plugin/b/b$1;->a:Lcom/tramini/plugin/a/c/c;

    invoke-interface {v0, v1}, Lcom/tramini/plugin/a/c/c;->a(Lcom/tramini/plugin/b/a;)V

    .line 139
    :cond_66
    return-void

    .line 1076
    :catch_67
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5b

    :catch_6c
    move-exception v1

    goto :goto_38

    .line 1030
    :catch_6e
    move-exception v1

    goto :goto_38
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tramini/plugin/b/b$1;->b:Lcom/tramini/plugin/b/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tramini/plugin/b/b;->a(Lcom/tramini/plugin/b/b;Z)Z

    .line 144
    return-void
.end method
