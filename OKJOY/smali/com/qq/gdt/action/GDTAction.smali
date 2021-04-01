.class public Lcom/qq/gdt/action/GDTAction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/gdt/action/GDTAction$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/qq/gdt/action/a/a;)Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "actionType"

    invoke-virtual {p0}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "uniqActionId"

    invoke-virtual {p0}, Lcom/qq/gdt/action/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v0

    :goto_19
    return-object v0

    :catch_1a
    move-exception v0

    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userActionSetId"    # Ljava/lang/String;
    .param p2, "appSecretKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/qq/gdt/action/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userActionSetId"    # Ljava/lang/String;
    .param p2, "appSecretKey"    # Ljava/lang/String;
    .param p3, "initListener"    # Lcom/qq/gdt/action/GDTAction$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/qq/gdt/action/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qq/gdt/action/GDTAction$a;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userActionSetId"    # Ljava/lang/String;
    .param p2, "appSecretKey"    # Ljava/lang/String;
    .param p3, "channelId"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/qq/gdt/action/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isAutoCollectionAction(Lcom/qq/gdt/action/a/a;)Z
    .registers 3
    .param p0, "action"    # Lcom/qq/gdt/action/a/a;

    .prologue
    invoke-virtual {p0}, Lcom/qq/gdt/action/a/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PAUSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "RESUME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "TICKET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "ENTER_BACKGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "ENTER_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public static logAction(Ljava/lang/String;)V
    .registers 2
    .param p0, "actionType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/qq/gdt/action/GDTAction;->logAction(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static logAction(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 8
    .param p0, "actionType"    # Ljava/lang/String;
    .param p1, "actionParam"    # Lorg/json/JSONObject;

    .prologue
    :try_start_0
    invoke-static {p0, p1}, Lcom/qq/gdt/action/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/qq/gdt/action/a/a;

    move-result-object v0

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/f;->b()Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "GDTAction\u672a\u8fdb\u884c\u521d\u59cb\u5316\uff0c\u8bf7\u5148\u8c03\u7528GDTAction\u7684init\u65b9\u6cd5\u6210\u529f\u521d\u59cb\u5316SDK\u540e\uff0c\u518d\u8c03\u7528\u5176\u4ed6\u6570\u636e\u4e0a\u62a5\u65b9\u6cd5\uff01"

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/qq/gdt/action/f/a;->a()Lcom/qq/gdt/action/f/a;

    move-result-object v1

    const/16 v2, 0x3e9

    invoke-static {v0}, Lcom/qq/gdt/action/GDTAction;->a(Lcom/qq/gdt/action/a/a;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/qq/gdt/action/f/a;->a(ILorg/json/JSONObject;)V

    :goto_20
    return-void

    :cond_21
    invoke-static {}, Lcom/qq/gdt/action/f/a;->a()Lcom/qq/gdt/action/f/a;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0}, Lcom/qq/gdt/action/GDTAction;->a(Lcom/qq/gdt/action/a/a;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/qq/gdt/action/f/a;->a(ILorg/json/JSONObject;)V

    invoke-static {p0}, Lcom/qq/gdt/action/h/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6f

    invoke-static {}, Lcom/qq/gdt/action/f/a;->a()Lcom/qq/gdt/action/f/a;

    move-result-object v1

    const/16 v2, 0x3ed

    invoke-static {v0}, Lcom/qq/gdt/action/GDTAction;->a(Lcom/qq/gdt/action/a/a;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/qq/gdt/action/f/a;->a(ILorg/json/JSONObject;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_20

    :catch_42
    move-exception v0

    const-string v1, "Log action exception"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_48
    invoke-static {}, Lcom/qq/gdt/action/f/a;->a()Lcom/qq/gdt/action/f/a;

    move-result-object v1

    const/16 v2, 0x3f2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "errorCode"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "errorMsg"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/qq/gdt/action/f/a;->a(ILorg/json/JSONObject;)V
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_67} :catch_68

    goto :goto_20

    :catch_68
    move-exception v0

    const-string v1, "unexpected json exception"

    invoke-static {v1, v0}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :cond_6f
    :try_start_6f
    invoke-static {}, Lcom/qq/gdt/action/f/a;->a()Lcom/qq/gdt/action/f/a;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-static {v0}, Lcom/qq/gdt/action/GDTAction;->a(Lcom/qq/gdt/action/a/a;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/qq/gdt/action/f/a;->a(ILorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/qq/gdt/action/h/b;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_90

    invoke-static {}, Lcom/qq/gdt/action/f/a;->a()Lcom/qq/gdt/action/f/a;

    move-result-object v1

    const/16 v2, 0x3ef

    invoke-static {v0}, Lcom/qq/gdt/action/GDTAction;->a(Lcom/qq/gdt/action/a/a;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/qq/gdt/action/f/a;->a(ILorg/json/JSONObject;)V

    goto :goto_20

    :cond_90
    invoke-static {}, Lcom/qq/gdt/action/f/a;->a()Lcom/qq/gdt/action/f/a;

    move-result-object v1

    const/16 v2, 0x3ee

    invoke-static {v0}, Lcom/qq/gdt/action/GDTAction;->a(Lcom/qq/gdt/action/a/a;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/qq/gdt/action/f/a;->a(ILorg/json/JSONObject;)V

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/n;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b0

    const-string v1, "\u4e0a\u62a5\u6570\u636e\u524d\u5efa\u8bae\u5728App\u4e2d\u5148\u7533\u8bf7\u83b7\u53d6\u52a8\u6001\u6743\u9650\uff01"

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->b(Ljava/lang/String;)V

    :cond_b0
    invoke-static {p0}, Lcom/qq/gdt/action/h/b;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/qq/gdt/action/h/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/f;->a(Lcom/qq/gdt/action/a/a;)V

    goto/16 :goto_20

    :cond_c2
    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qq/gdt/action/f;->b(Lcom/qq/gdt/action/a/a;)V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_c9} :catch_42

    goto/16 :goto_20
.end method

.method public static setUserUniqueId(Ljava/lang/String;)V
    .registers 2
    .param p0, "userUniqueId"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qq/gdt/action/f;->a(Ljava/lang/String;)V

    return-void
.end method
