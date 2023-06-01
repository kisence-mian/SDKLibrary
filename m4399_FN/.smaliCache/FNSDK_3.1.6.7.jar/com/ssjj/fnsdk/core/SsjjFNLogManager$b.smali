.class Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/SsjjFNLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/json/JSONArray;

.field c:J

.field final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;


# direct methods
.method private constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->d:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->c:J

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->b:Lorg/json/JSONArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->c:J

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->b:Lorg/json/JSONArray;

    const-string v0, "tlog"

    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_7b

    :try_start_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " start "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->b:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_35
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->b:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_51

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_51
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->d:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Z

    move-result p1

    if-eqz p1, :cond_5d

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    goto :goto_60

    :cond_5d
    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :goto_60
    :try_start_60
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->b:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->d:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_74
    .catchall {:try_start_60 .. :try_end_74} :catchall_75

    goto :goto_a8

    :catchall_75
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    goto :goto_a8

    :cond_7b
    const-string p1, "arr is empty"

    :try_start_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_94} :catch_95

    goto :goto_99

    :catch_95
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_99
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->d:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    goto :goto_a8

    :cond_a5
    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :goto_a8
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 7

    const-string v0, "msg"

    const-string v1, "ret"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, -0x63

    if-eqz p1, :cond_30

    :try_start_15
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_24
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception p1

    :cond_30
    :goto_30
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "tlog "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_3c

    const-string v0, "succ"

    goto :goto_55

    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fail: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->c:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "ms)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->d:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    goto :goto_90

    :cond_8d
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :goto_90
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;->a(Ljava/lang/String;)V

    return-void
.end method
