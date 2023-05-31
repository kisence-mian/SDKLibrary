.class public abstract Lcom/qq/gdt/action/d/a/c;
.super Lcom/qq/gdt/action/d/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/gdt/action/d/a/a",
        "<",
        "Lcom/qq/gdt/action/d/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qq/gdt/action/d/a/c;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/qq/gdt/action/d/a/a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public synthetic b(Lcom/qq/gdt/action/d/b/i;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/qq/gdt/action/d/a/c;->c(Lcom/qq/gdt/action/d/b/i;)Lcom/qq/gdt/action/d/f;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/qq/gdt/action/d/b/i;)Lcom/qq/gdt/action/d/f;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, -0x3

    new-instance v0, Lcom/qq/gdt/action/d/f;

    const/4 v1, -0x1

    const-string v2, "Unknown message"

    invoke-direct {v0, v1, v2}, Lcom/qq/gdt/action/d/f;-><init>(ILjava/lang/String;)V

    if-eqz p1, :cond_58

    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/i;->e()Lcom/qq/gdt/action/d/b/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/d/b/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    const/4 v3, -0x3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/qq/gdt/action/d/f;->a(I)Lcom/qq/gdt/action/d/f;

    const-string v2, "message"

    const-string v3, "Deserialize message error"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/qq/gdt/action/d/f;->a(Ljava/lang/String;)Lcom/qq/gdt/action/d/f;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "conf"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "conf"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/qq/gdt/action/f;->a()Lcom/qq/gdt/action/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qq/gdt/action/f;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qq/gdt/action/b;->a(Landroid/content/Context;)Lcom/qq/gdt/action/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qq/gdt/action/b;->a(Lorg/json/JSONObject;)Z
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_58} :catch_6b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_58} :catch_59

    :cond_58
    :goto_58
    return-object v0

    :catch_59
    move-exception v1

    :goto_5a
    const-string v1, "Deserialize service response error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/qq/gdt/action/d/f;->a(I)Lcom/qq/gdt/action/d/f;

    const-string v1, "Deserialize service response error"

    invoke-virtual {v0, v1}, Lcom/qq/gdt/action/d/f;->a(Ljava/lang/String;)Lcom/qq/gdt/action/d/f;

    goto :goto_58

    :catch_6b
    move-exception v1

    goto :goto_5a
.end method
