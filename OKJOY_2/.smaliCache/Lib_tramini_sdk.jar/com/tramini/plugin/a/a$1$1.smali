.class final Lcom/tramini/plugin/a/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/a$1;->a(Lcom/tramini/plugin/a/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/a/c/a;

.field final synthetic b:Lcom/tramini/plugin/a/a$1;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/a$1;Lcom/tramini/plugin/a/c/a;)V
    .registers 3

    .line 105
    iput-object p1, p0, Lcom/tramini/plugin/a/a$1$1;->b:Lcom/tramini/plugin/a/a$1;

    iput-object p2, p0, Lcom/tramini/plugin/a/a$1$1;->a:Lcom/tramini/plugin/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/tramini/plugin/a/a$1$1;->a:Lcom/tramini/plugin/a/c/a;

    iget-object v0, v0, Lcom/tramini/plugin/a/c/a;->f:Lorg/json/JSONObject;

    if-nez v0, :cond_7

    .line 110
    return-void

    .line 113
    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/tramini/plugin/a/a$1$1;->b:Lcom/tramini/plugin/a/a$1;

    iget-object v1, v1, Lcom/tramini/plugin/a/a$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/tramini/plugin/a/a$1$1;->a:Lcom/tramini/plugin/a/c/a;

    iget-object v1, v1, Lcom/tramini/plugin/a/c/a;->f:Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 117
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_18

    .line 123
    :cond_2c
    const-string v1, "setting_id"

    iget-object v2, p0, Lcom/tramini/plugin/a/a$1$1;->b:Lcom/tramini/plugin/a/a$1;

    iget-object v2, v2, Lcom/tramini/plugin/a/a$1;->b:Lcom/tramini/plugin/b/a;

    invoke-virtual {v2}, Lcom/tramini/plugin/b/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    invoke-static {}, Lcom/tramini/plugin/a/f/a;->a()Lcom/tramini/plugin/a/f/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tramini/plugin/a/a$1$1;->b:Lcom/tramini/plugin/a/a$1;

    iget-object v2, v2, Lcom/tramini/plugin/a/a$1;->c:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/tramini/plugin/a/a$1$1;->b:Lcom/tramini/plugin/a/a$1;

    iget-object v4, v4, Lcom/tramini/plugin/a/a$1;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/tramini/plugin/a/f/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4d} :catch_4e

    .line 132
    return-void

    .line 131
    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 133
    return-void
.end method
