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
    .registers 5

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

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/tea/crash/e/a;->c()Lcom/bytedance/tea/crash/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/tea/crash/e/a/c;->c:Lcom/bytedance/tea/crash/d;

    .line 38
    return-void
.end method

.method private e(Lcom/bytedance/tea/crash/c/a;)V
    .registers 8

    .line 135
    invoke-static {}, Lcom/bytedance/tea/crash/h;->b()Lcom/bytedance/tea/crash/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/c;->a:Lcom/bytedance/tea/crash/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/b;->a(Lcom/bytedance/tea/crash/c;)Ljava/util/List;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_4e

    .line 137
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/tea/crash/a;

    .line 140
    iget-object v3, p0, Lcom/bytedance/tea/crash/e/a/c;->a:Lcom/bytedance/tea/crash/c;

    invoke-interface {v2, v3}, Lcom/bytedance/tea/crash/a;->a(Lcom/bytedance/tea/crash/c;)Ljava/util/Map;

    move-result-object v2

    .line 142
    if-eqz v2, :cond_47

    .line 143
    :try_start_29
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 144
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_45

    .line 145
    goto :goto_31

    .line 147
    :catchall_45
    move-exception v2

    goto :goto_48

    .line 148
    :cond_47
    nop

    .line 149
    :goto_48
    goto :goto_15

    .line 150
    :cond_49
    const-string v0, "custom"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_4e
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/tea/crash/c/a;)Lcom/bytedance/tea/crash/c/a;
    .registers 2

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

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method b(Lcom/bytedance/tea/crash/c/a;)V
    .registers 5

    .line 62
    invoke-virtual {p0}, Lcom/bytedance/tea/crash/e/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/c;->d:Lcom/bytedance/tea/crash/e/a/b;

    if-eqz v0, :cond_d

    .line 63
    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Lcom/bytedance/tea/crash/e/a/b;)Lcom/bytedance/tea/crash/c/a;

    .line 66
    :cond_d
    invoke-static {}, Lcom/bytedance/tea/crash/h;->f()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(J)Lcom/bytedance/tea/crash/c/a;

    .line 68
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "is_background"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "pid"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/c;->e:Lcom/bytedance/tea/crash/e/a/d;

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/e/a/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "battery"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

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

    if-eqz v0, :cond_77

    .line 85
    invoke-virtual {p0, p1}, Lcom/bytedance/tea/crash/e/a/c;->d(Lcom/bytedance/tea/crash/c/a;)V

    .line 87
    :cond_77
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/c;->c:Lcom/bytedance/tea/crash/d;

    invoke-interface {v0}, Lcom/bytedance/tea/crash/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;)Lcom/bytedance/tea/crash/c/a;

    .line 89
    invoke-static {}, Lcom/bytedance/tea/crash/h;->g()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_8b

    .line 91
    const-string v2, "business"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    :cond_8b
    invoke-static {}, Lcom/bytedance/tea/crash/h;->h()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_mp"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_9a
    invoke-static {}, Lcom/bytedance/tea/crash/h;->b()Lcom/bytedance/tea/crash/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/a;->c(Ljava/util/Map;)Lcom/bytedance/tea/crash/c/a;

    .line 99
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash_uuid"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method protected b()Z
    .registers 2

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method c(Lcom/bytedance/tea/crash/c/a;)V
    .registers 8

    .line 108
    const-string v0, "crash_update_version_code"

    const-string v1, "crash_version_code"

    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/tea/crash/e/a;->a()Ljava/util/Map;

    move-result-object v2

    .line 109
    if-nez v2, :cond_f

    .line 110
    return-void

    .line 112
    :cond_f
    const-string v3, "app_version"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 113
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "crash_version"

    invoke-virtual {p1, v5, v4}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    :cond_20
    const-string v4, "version_name"

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 116
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    :cond_2f
    const-string v3, "version_code"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 120
    :try_start_37
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4a} :catch_4b

    .line 123
    goto :goto_53

    .line 121
    :catch_4b
    move-exception v4

    .line 122
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    :cond_53
    :goto_53
    const-string v1, "update_version_code"

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 127
    :try_start_5b
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6e} :catch_6f

    .line 130
    goto :goto_77

    .line 128
    :catch_6f
    move-exception v3

    .line 129
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    :cond_77
    :goto_77
    return-void
.end method

.method protected d(Lcom/bytedance/tea/crash/c/a;)V
    .registers 4

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
