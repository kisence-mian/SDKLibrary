.class public abstract Lcom/bytedance/tea/crash/e/a/c;
.super Ljava/lang/Object;
.source "BaseAssembly.java"


# instance fields
.field protected a:Lcom/bytedance/tea/crash/c;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/bytedance/tea/crash/d;

.field protected d:Lcom/bytedance/tea/crash/e/a/b;

.field protected e:Lcom/bytedance/tea/crash/e/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/tea/crash/c;Landroid/content/Context;Lcom/bytedance/tea/crash/e/a/b;Lcom/bytedance/tea/crash/e/a/d;)V
    .registers 6

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a/c;->a:Lcom/bytedance/tea/crash/c;

    .line 34
    iput-object p2, p0, Lcom/bytedance/tea/crash/e/a/c;->b:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/bytedance/tea/crash/e/a/c;->d:Lcom/bytedance/tea/crash/e/a/b;

    .line 36
    iput-object p4, p0, Lcom/bytedance/tea/crash/e/a/c;->e:Lcom/bytedance/tea/crash/e/a/d;

    .line 37
    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/a;->c()Lcom/bytedance/tea/crash/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/tea/crash/e/a/c;->c:Lcom/bytedance/tea/crash/d;

    .line 38
    return-void
.end method

.method private e(Lcom/bytedance/tea/crash/c/a;)V
    .registers 8

    .prologue
    .line 135
    invoke-static {}, Lcom/bytedance/tea/crash/h;->b()Lcom/bytedance/tea/crash/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/c;->a:Lcom/bytedance/tea/crash/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/b;->a(Lcom/bytedance/tea/crash/c;)Ljava/util/List;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_4c

    .line 137
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/tea/crash/a;

    .line 140
    iget-object v3, p0, Lcom/bytedance/tea/crash/e/a/c;->a:Lcom/bytedance/tea/crash/c;

    invoke-interface {v0, v3}, Lcom/bytedance/tea/crash/a;->a(Lcom/bytedance/tea/crash/c;)Ljava/util/Map;

    move-result-object v3

    .line 142
    if-eqz v3, :cond_15

    .line 143
    :try_start_29
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_44} :catch_45

    goto :goto_31

    .line 147
    :catch_45
    move-exception v0

    goto :goto_15

    .line 150
    :cond_47
    const-string v0, "custom"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_4c
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/tea/crash/c/a;)Lcom/bytedance/tea/crash/c/a;
    .registers 2

    .prologue
    .line 47
    if-nez p1, :cond_7

    .line 48
    new-instance p1, Lcom/bytedance/tea/crash/c/a;

    invoke-direct {p1}, Lcom/bytedance/tea/crash/c/a;-><init>()V

    .line 50
    :cond_7
    invoke-virtual {p0, p1}, Lcom/bytedance/tea/crash/e/a/c;->b(Lcom/bytedance/tea/crash/c/a;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/e/a/c;->e(Lcom/bytedance/tea/crash/c/a;)V

    .line 52
    return-object p1
.end method

.method protected a()Z
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method b(Lcom/bytedance/tea/crash/c/a;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/tea/crash/e/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/c;->d:Lcom/bytedance/tea/crash/e/a/b;

    if-eqz v0, :cond_10

    .line 63
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/c;->d:Lcom/bytedance/tea/crash/e/a/b;

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Lcom/bytedance/tea/crash/e/a/b;)Lcom/bytedance/tea/crash/c/a;

    .line 66
    :cond_10
    invoke-static {}, Lcom/bytedance/tea/crash/h;->f()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/tea/crash/c/a;->a(J)Lcom/bytedance/tea/crash/c/a;

    .line 68
    const-string v2, "is_background"

    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b7

    move v0, v1

    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    const-string v0, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v0, "battery"

    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/c;->e:Lcom/bytedance/tea/crash/e/a/d;

    invoke-virtual {v2}, Lcom/bytedance/tea/crash/e/a/d;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/c;->c:Lcom/bytedance/tea/crash/d;

    invoke-interface {v0}, Lcom/bytedance/tea/crash/d;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/util/Map;)Lcom/bytedance/tea/crash/c/a;

    .line 76
    invoke-static {}, Lcom/bytedance/tea/crash/h;->i()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/a;->b(Ljava/util/Map;)Lcom/bytedance/tea/crash/c/a;

    .line 78
    invoke-static {}, Lcom/bytedance/tea/crash/h;->j()I

    move-result v0

    invoke-static {}, Lcom/bytedance/tea/crash/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/tea/crash/c/a;->a(ILjava/lang/String;)Lcom/bytedance/tea/crash/c/a;

    .line 80
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/c;->c:Lcom/bytedance/tea/crash/d;

    invoke-interface {v0}, Lcom/bytedance/tea/crash/d;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/util/List;)Lcom/bytedance/tea/crash/c/a;

    .line 82
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/n;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Lorg/json/JSONObject;)Lcom/bytedance/tea/crash/c/a;

    .line 84
    invoke-virtual {p0}, Lcom/bytedance/tea/crash/e/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 85
    invoke-virtual {p0, p1}, Lcom/bytedance/tea/crash/e/a/c;->d(Lcom/bytedance/tea/crash/c/a;)V

    .line 87
    :cond_7b
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/c;->c:Lcom/bytedance/tea/crash/d;

    invoke-interface {v0}, Lcom/bytedance/tea/crash/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;)Lcom/bytedance/tea/crash/c/a;

    .line 89
    invoke-static {}, Lcom/bytedance/tea/crash/h;->g()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_8f

    .line 91
    const-string v2, "business"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    :cond_8f
    invoke-static {}, Lcom/bytedance/tea/crash/h;->h()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 95
    const-string v0, "is_mp"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_9e
    invoke-static {}, Lcom/bytedance/tea/crash/h;->b()Lcom/bytedance/tea/crash/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/a;->c(Ljava/util/Map;)Lcom/bytedance/tea/crash/c/a;

    .line 99
    const-string v0, "crash_uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-void

    .line 68
    :cond_b7
    const/4 v0, 0x0

    goto/16 :goto_22
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method c(Lcom/bytedance/tea/crash/c/a;)V
    .registers 5

    .prologue
    .line 108
    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/a;->a()Ljava/util/Map;

    move-result-object v0

    .line 109
    if-nez v0, :cond_b

    .line 132
    :cond_a
    :goto_a
    return-void

    .line 112
    :cond_b
    const-string v1, "app_version"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 113
    const-string v1, "crash_version"

    const-string v2, "app_version"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    :cond_1e
    const-string v1, "version_name"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 116
    const-string v1, "app_version"

    const-string v2, "version_name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    :cond_31
    const-string v1, "version_code"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 120
    :try_start_39
    const-string v1, "crash_version_code"

    const-string v2, "version_code"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_50} :catch_7d

    .line 125
    :cond_50
    :goto_50
    const-string v1, "update_version_code"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 127
    :try_start_58
    const-string v1, "crash_update_version_code"

    const-string v2, "update_version_code"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6f} :catch_70

    goto :goto_a

    .line 128
    :catch_70
    move-exception v1

    .line 129
    const-string v1, "crash_update_version_code"

    const-string v2, "update_version_code"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    .line 121
    :catch_7d
    move-exception v1

    .line 122
    const-string v1, "crash_version_code"

    const-string v2, "version_code"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_50
.end method

.method protected d(Lcom/bytedance/tea/crash/c/a;)V
    .registers 4

    .prologue
    .line 155
    invoke-static {}, Lcom/bytedance/tea/crash/h;->e()Lcom/bytedance/tea/crash/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/b;->b()I

    move-result v0

    .line 156
    invoke-static {}, Lcom/bytedance/tea/crash/h;->e()Lcom/bytedance/tea/crash/e/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/e/b;->c()I

    move-result v1

    .line 157
    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/e/e;->a(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/a;->b(Ljava/util/List;)Lcom/bytedance/tea/crash/c/a;

    .line 158
    return-void
.end method
