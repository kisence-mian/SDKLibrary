.class Lcom/ssjj/fnsdk/core/stat/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ssjj/fnsdk/core/stat/k;

.field private c:Lcom/ssjj/fnsdk/core/stat/n;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/stat/d;)I
    .registers 1

    iget p0, p0, Lcom/ssjj/fnsdk/core/stat/d;->e:I

    return p0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/stat/d;Lcom/ssjj/fnsdk/core/stat/j;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/stat/d;->a(Lcom/ssjj/fnsdk/core/stat/j;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/stat/d;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/stat/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/ssjj/fnsdk/core/stat/j;)V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "Not login, cancel send log"

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/stat/d;->b(Ljava/lang/String;)V

    return-void

    :cond_14
    if-nez p1, :cond_17

    return-void

    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/ssjj/fnsdk/core/stat/j;->g:Z

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/stat/j;->h()V

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/stat/j;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    return-void

    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Send log file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/stat/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/core/stat/d;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/stat/d;->c:Lcom/ssjj/fnsdk/core/stat/n;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/stat/d;->a:Landroid/content/Context;

    new-instance v3, Lcom/ssjj/fnsdk/core/stat/i;

    invoke-direct {v3, p0, p1}, Lcom/ssjj/fnsdk/core/stat/i;-><init>(Lcom/ssjj/fnsdk/core/stat/d;Lcom/ssjj/fnsdk/core/stat/j;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/ssjj/fnsdk/core/stat/n;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/stat/q;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v0, "Not login, cancel send log"

    :goto_14
    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/stat/d;->b(Ljava/lang/String;)V

    return-void

    :cond_18
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/stat/d;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/ssjj/fnsdk/core/stat/g;

    invoke-direct {v3, p0}, Lcom/ssjj/fnsdk/core/stat/g;-><init>(Lcom/ssjj/fnsdk/core/stat/d;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_70

    array-length v3, v2

    if-nez v3, :cond_2e

    goto :goto_70

    :cond_2e
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/ssjj/fnsdk/core/stat/h;

    invoke-direct {v3, p0}, Lcom/ssjj/fnsdk/core/stat/h;-><init>(Lcom/ssjj/fnsdk/core/stat/d;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send all log file use tiem: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_5f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/ssjj/fnsdk/core/stat/j;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/stat/d;->d:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/ssjj/fnsdk/core/stat/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/ssjj/fnsdk/core/stat/d;->a(Lcom/ssjj/fnsdk/core/stat/j;)V

    goto :goto_3e

    :cond_70
    :goto_70
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/d;->a:Landroid/content/Context;

    iput p3, p0, Lcom/ssjj/fnsdk/core/stat/d;->e:I

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/stat/d;->d:Ljava/lang/String;

    new-instance p1, Lcom/ssjj/fnsdk/core/stat/k;

    iget p3, p0, Lcom/ssjj/fnsdk/core/stat/d;->e:I

    invoke-direct {p1, p2, p3}, Lcom/ssjj/fnsdk/core/stat/k;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/d;->b:Lcom/ssjj/fnsdk/core/stat/k;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/stat/k;->a()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/stat/n;->a()Lcom/ssjj/fnsdk/core/stat/n;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/stat/d;->c:Lcom/ssjj/fnsdk/core/stat/n;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/stat/d;->b:Lcom/ssjj/fnsdk/core/stat/k;

    new-instance v1, Lcom/ssjj/fnsdk/core/stat/f;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/stat/f;-><init>(Lcom/ssjj/fnsdk/core/stat/d;)V

    invoke-virtual {v0, p1, v1}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;Lcom/ssjj/fnsdk/core/stat/k$a;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_13
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "n"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "v"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "t"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_40
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/stat/d;->b:Lcom/ssjj/fnsdk/core/stat/k;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/ssjj/fnsdk/core/stat/e;

    invoke-direct {p3, p0}, Lcom/ssjj/fnsdk/core/stat/e;-><init>(Lcom/ssjj/fnsdk/core/stat/d;)V

    invoke-virtual {p1, p2, p3}, Lcom/ssjj/fnsdk/core/stat/k;->a(Ljava/lang/String;Lcom/ssjj/fnsdk/core/stat/k$a;)V

    return-void
.end method
