.class public Lcom/mintegral/msdk/base/a/a/a;
.super Ljava/lang/Object;
.source "SharedPerferenceManager.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Lcom/mintegral/msdk/base/a/a/a;


# instance fields
.field b:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/mintegral/msdk/base/a/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mintegral/msdk/base/a/a/a;
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lcom/mintegral/msdk/base/a/a/a;->c:Lcom/mintegral/msdk/base/a/a/a;

    if-nez v0, :cond_13

    .line 33
    const-class v1, Lcom/mintegral/msdk/base/a/a/a;

    monitor-enter v1

    .line 34
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/base/a/a/a;->c:Lcom/mintegral/msdk/base/a/a/a;

    if-nez v0, :cond_12

    .line 35
    new-instance v0, Lcom/mintegral/msdk/base/a/a/a;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/a/a/a;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/base/a/a/a;->c:Lcom/mintegral/msdk/base/a/a/a;

    .line 37
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 39
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/base/a/a/a;->c:Lcom/mintegral/msdk/base/a/a/a;

    return-object v0

    .line 37
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 99
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    .line 100
    if-nez v1, :cond_13

    .line 101
    sget-object v1, Lcom/mintegral/msdk/base/a/a/a;->a:Ljava/lang/String;

    const-string v2, "context is null in get"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_12
    return v0

    .line 104
    :cond_13
    iget-object v2, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    if-nez v2, :cond_20

    .line 105
    const-string v2, "mintegral"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    .line 108
    :cond_20
    iget-object v1, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_28

    move-result v0

    goto :goto_12

    .line 110
    :catch_28
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 62
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 63
    if-nez v0, :cond_12

    .line 64
    sget-object v0, Lcom/mintegral/msdk/base/a/a/a;->a:Ljava/lang/String;

    const-string v1, "context is null in put"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_11
    return-void

    .line 67
    :cond_12
    iget-object v1, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_21

    if-eqz v0, :cond_21

    .line 68
    const-string v1, "mintegral"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    .line 70
    :cond_21
    iget-object v0, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_11

    .line 74
    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 45
    if-nez v0, :cond_12

    .line 46
    sget-object v0, Lcom/mintegral/msdk/base/a/a/a;->a:Ljava/lang/String;

    const-string v1, "context is null in put"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_11
    return-void

    .line 49
    :cond_12
    iget-object v1, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_21

    if-eqz v0, :cond_21

    .line 50
    const-string v1, "mintegral"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    .line 52
    :cond_21
    iget-object v0, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_11

    .line 56
    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 117
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    .line 118
    if-nez v1, :cond_13

    .line 119
    sget-object v1, Lcom/mintegral/msdk/base/a/a/a;->a:Ljava/lang/String;

    const-string v2, "context is null in get"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :goto_12
    return-object v0

    .line 122
    :cond_13
    iget-object v2, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    if-nez v2, :cond_22

    if-eqz v1, :cond_22

    .line 123
    const-string v2, "mintegral"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    .line 126
    :cond_22
    iget-object v1, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_2b

    move-result-object v0

    goto :goto_12

    .line 128
    :catch_2b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public final b()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 136
    if-nez v0, :cond_18

    .line 137
    sget-object v0, Lcom/mintegral/msdk/base/a/a/a;->a:Ljava/lang/String;

    const-string v1, "context is null in get"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    .line 148
    :goto_17
    return-object v0

    .line 140
    :cond_18
    iget-object v2, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    if-nez v2, :cond_27

    if-eqz v0, :cond_27

    .line 141
    const-string v2, "mintegral"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    .line 144
    :cond_27
    iget-object v0, p0, Lcom/mintegral/msdk/base/a/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_49
    move-object v0, v1

    .line 148
    goto :goto_17
.end method
