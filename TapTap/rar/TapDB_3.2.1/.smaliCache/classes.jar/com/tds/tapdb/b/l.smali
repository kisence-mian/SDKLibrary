.class public Lcom/tds/tapdb/b/l;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/a/a;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Lcom/tds/tapdb/a/a;

    const-string v0, "The key is empty."

    invoke-direct {p0, v0}, Lcom/tds/tapdb/a/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/a/a;
        }
    .end annotation

    const-string v0, "\']"

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tds/tapdb/b/l;->a(Ljava/lang/String;)V

    :try_start_18
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v3, v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_24
    instance-of v4, v3, Ljava/lang/CharSequence;

    if-nez v4, :cond_9

    instance-of v4, v3, Ljava/lang/Number;

    if-nez v4, :cond_9

    instance-of v4, v3, Lorg/json/JSONArray;

    if-nez v4, :cond_9

    instance-of v4, v3, Ljava/lang/Boolean;

    if-nez v4, :cond_9

    instance-of v4, v3, Ljava/util/Date;

    if-eqz v4, :cond_39

    goto :goto_9

    :cond_39
    new-instance p0, Lcom/tds/tapdb/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The property value must be an instance of CharSequence/Number/Boolean/JSONArray. [key=\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\', value=\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tds/tapdb/a/a;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_64
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_64} :catch_64

    :catch_64
    move-exception p0

    new-instance p0, Lcom/tds/tapdb/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected property key. [key=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tds/tapdb/a/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_82
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tds/tapdb/a/a;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_f

    return-void

    :cond_f
    new-instance v0, Lcom/tds/tapdb/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is too long, max length is 255."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tds/tapdb/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-instance p0, Lcom/tds/tapdb/a/a;

    const-string v0, "The value is empty."

    invoke-direct {p0, v0}, Lcom/tds/tapdb/a/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method
