.class final Lcom/tds/tapdb/sdk/TapDB$r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/sdk/TapDB;->a(Ljava/lang/String;Lcom/tds/tapdb/sdk/LoginType;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/tds/tapdb/sdk/LoginType;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/tds/tapdb/sdk/LoginType;)V
    .registers 3

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$r;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/tds/tapdb/sdk/TapDB$r;->b:Lcom/tds/tapdb/sdk/LoginType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "event"

    :try_start_2
    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v1

    sget-object v2, Lcom/tds/tapdb/b/e;->c:Lcom/tds/tapdb/b/e;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_b9

    const-string v3, "identify"

    const-string v4, "user_login"

    :try_start_c
    iget-object v5, p0, Lcom/tds/tapdb/sdk/TapDB$r;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/b/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "has_user"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_b9

    const-string v2, "current_login_type"

    :try_start_1e
    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v3

    invoke-static {v3}, Lcom/tds/tapdb/sdk/TapDB;->b(Lcom/tds/tapdb/sdk/TapDB;)Lcom/tds/tapdb/sdk/LoginType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tds/tapdb/sdk/LoginType;->getDecoratedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2d} :catch_b9

    const-string v2, "current_open_id"

    :try_start_2f
    invoke-static {}, Lcom/tds/tapdb/b/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v2

    sget-object v3, Lcom/tds/tapdb/b/e;->e:Lcom/tds/tapdb/b/e;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/b/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/tapdb/sdk/TapDB;->c(Lcom/tds/tapdb/sdk/TapDB;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/tapdb/sdk/TapDB;->d(Lcom/tds/tapdb/sdk/TapDB;)Lcom/tds/tapdb/sdk/LoginType;

    move-result-object v1

    if-nez v1, :cond_bd

    :cond_54
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v2

    invoke-static {v2}, Lcom/tds/tapdb/sdk/TapDB;->c(Lcom/tds/tapdb/sdk/TapDB;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7b

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v2

    invoke-static {}, Lcom/tds/tapdb/b/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/sdk/TapDB;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_6e} :catch_b9

    const-string v2, "first_open_id"

    :try_start_70
    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v3

    invoke-static {v3}, Lcom/tds/tapdb/sdk/TapDB;->c(Lcom/tds/tapdb/sdk/TapDB;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7b
    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v2

    invoke-static {v2}, Lcom/tds/tapdb/sdk/TapDB;->d(Lcom/tds/tapdb/sdk/TapDB;)Lcom/tds/tapdb/sdk/LoginType;

    move-result-object v2

    if-nez v2, :cond_a9

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v2

    iget-object v3, p0, Lcom/tds/tapdb/sdk/TapDB$r;->b:Lcom/tds/tapdb/sdk/LoginType;

    invoke-static {v2, v3}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/sdk/TapDB;Lcom/tds/tapdb/sdk/LoginType;)Lcom/tds/tapdb/sdk/LoginType;

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v2

    invoke-static {v2}, Lcom/tds/tapdb/sdk/TapDB;->d(Lcom/tds/tapdb/sdk/TapDB;)Lcom/tds/tapdb/sdk/LoginType;

    move-result-object v2
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_96} :catch_b9

    if-eqz v2, :cond_a9

    const-string v2, "first_login_type"

    :try_start_9a
    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v3

    invoke-static {v3}, Lcom/tds/tapdb/sdk/TapDB;->d(Lcom/tds/tapdb/sdk/TapDB;)Lcom/tds/tapdb/sdk/LoginType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tds/tapdb/sdk/LoginType;->getDecoratedName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/tds/tapdb/b/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_a9
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_bd

    invoke-static {}, Lcom/tds/tapdb/sdk/TapDB;->d()Lcom/tds/tapdb/sdk/TapDB;

    move-result-object v2

    sget-object v3, Lcom/tds/tapdb/b/e;->d:Lcom/tds/tapdb/b/e;

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/tds/tapdb/sdk/TapDB;->a(Lcom/tds/tapdb/b/e;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_b8} :catch_b9

    goto :goto_bd

    :catch_b9
    move-exception v0

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/Exception;)V

    :cond_bd
    :goto_bd
    return-void
.end method
