.class final Lcom/tramini/plugin/a/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/a$1;->a(Lcom/tramini/plugin/a/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/a/b/a;

.field final synthetic b:Lcom/tramini/plugin/a/a$1;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/a$1;Lcom/tramini/plugin/a/b/a;)V
    .registers 3

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tramini/plugin/a/a$1$1;->b:Lcom/tramini/plugin/a/a$1;

    iput-object p2, p0, Lcom/tramini/plugin/a/a$1$1;->a:Lcom/tramini/plugin/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/tramini/plugin/a/a$1$1;->a:Lcom/tramini/plugin/a/b/a;

    iget-object v0, v0, Lcom/tramini/plugin/a/b/a;->f:Lorg/json/JSONObject;

    if-nez v0, :cond_7

    .line 119
    :goto_6
    return-void

    .line 99
    :cond_7
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/tramini/plugin/a/a$1$1;->b:Lcom/tramini/plugin/a/a$1;

    iget-object v0, v0, Lcom/tramini/plugin/a/a$1;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/tramini/plugin/a/a$1$1;->a:Lcom/tramini/plugin/a/b/a;

    iget-object v2, v0, Lcom/tramini/plugin/a/b/a;->f:Lorg/json/JSONObject;

    .line 101
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 103
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_18

    .line 117
    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 109
    :cond_31
    :try_start_31
    const-string v0, "setting_id"

    iget-object v2, p0, Lcom/tramini/plugin/a/a$1$1;->b:Lcom/tramini/plugin/a/a$1;

    iget-object v2, v2, Lcom/tramini/plugin/a/a$1;->b:Lcom/tramini/plugin/b/a;

    invoke-virtual {v2}, Lcom/tramini/plugin/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    invoke-static {}, Lcom/tramini/plugin/a/e/a;->a()Lcom/tramini/plugin/a/e/a;

    move-result-object v0

    iget-object v2, p0, Lcom/tramini/plugin/a/a$1$1;->b:Lcom/tramini/plugin/a/a$1;

    iget-object v2, v2, Lcom/tramini/plugin/a/a$1;->c:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/tramini/plugin/a/a$1$1;->b:Lcom/tramini/plugin/a/a$1;

    iget-object v4, v4, Lcom/tramini/plugin/a/a$1;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/tramini/plugin/a/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_52} :catch_2c

    goto :goto_6
.end method
