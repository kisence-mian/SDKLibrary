.class public Lcom/tramini/plugin/a/e/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/tramini/plugin/a/e/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/tramini/plugin/a/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/e/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static a()Lcom/tramini/plugin/a/e/a;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/tramini/plugin/a/e/a;->b:Lcom/tramini/plugin/a/e/a;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/tramini/plugin/a/e/a;

    invoke-direct {v0}, Lcom/tramini/plugin/a/e/a;-><init>()V

    sput-object v0, Lcom/tramini/plugin/a/e/a;->b:Lcom/tramini/plugin/a/e/a;

    .line 33
    :cond_b
    sget-object v0, Lcom/tramini/plugin/a/e/a;->b:Lcom/tramini/plugin/a/e/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    :try_start_5
    const-string v0, "type"

    const/16 v2, 0xe

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v0, "setting_id"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_11} :catch_18

    .line 82
    :goto_11
    const-string v0, "2"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/tramini/plugin/a/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 83
    return-void

    .line 76
    :catch_18
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_11
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;I)V
    .registers 9

    .prologue
    .line 87
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v0

    new-instance v1, Lcom/tramini/plugin/a/e/a$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tramini/plugin/a/e/a$1;-><init>(Lcom/tramini/plugin/a/e/a;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    int-to-long v2, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tramini/plugin/a/a/b;->a(Ljava/lang/Runnable;J)V

    .line 108
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 10

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tramini/plugin/b/b;->a(Landroid/content/Context;)Lcom/tramini/plugin/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/b/b;->b()Lcom/tramini/plugin/b/a;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_38

    move-result-object v0

    .line 38
    if-nez v0, :cond_15

    .line 64
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    .line 42
    :cond_15
    :try_start_15
    invoke-virtual {v0}, Lcom/tramini/plugin/b/a;->d()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tramini/plugin/a/b/b;

    .line 45
    if-eqz v0, :cond_13

    .line 48
    iget v1, v0, Lcom/tramini/plugin/a/b/b;->b:I

    .line 49
    iget v0, v0, Lcom/tramini/plugin/a/b/b;->c:I

    .line 52
    if-nez v1, :cond_3b

    if-nez v0, :cond_3b

    .line 53
    const/4 v0, 0x0

    .line 1087
    :goto_2a
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v1

    new-instance v2, Lcom/tramini/plugin/a/e/a$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tramini/plugin/a/e/a$1;-><init>(Lcom/tramini/plugin/a/e/a;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/tramini/plugin/a/a/b;->a(Ljava/lang/Runnable;J)V
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_38

    goto :goto_13

    .line 37
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0

    .line 54
    :cond_3b
    if-ne v1, v0, :cond_3f

    move v0, v1

    .line 55
    goto :goto_2a

    .line 57
    :cond_3f
    :try_start_3f
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_38

    move-result v0

    add-int/2addr v0, v1

    goto :goto_2a
.end method
