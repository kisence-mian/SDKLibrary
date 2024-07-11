.class public final Lcom/efs/sdk/base/a/c/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field volatile a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Z
    .registers 2

    .line 118
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    .line 119
    iget-object v1, v0, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    .line 120
    nop

    .line 2113
    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 120
    nop

    .line 122
    invoke-static {v1, v0}, Lcom/efs/sdk/base/a/h/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 126
    invoke-static {v0}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/io/File;)V

    .line 127
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method static b()V
    .registers 2

    .line 133
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    .line 134
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 3113
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 134
    nop

    .line 136
    invoke-static {v0, v1}, Lcom/efs/sdk/base/a/h/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 142
    :cond_1a
    return-void
.end method

.method private d()V
    .registers 5

    .line 153
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/e;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_44

    .line 154
    const-class v0, Lcom/efs/sdk/base/a/e/b;

    monitor-enter v0

    .line 155
    :try_start_7
    iget-object v1, p0, Lcom/efs/sdk/base/a/c/a/e;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_3f

    .line 156
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 4113
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 157
    nop

    .line 4171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "config_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4172
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/efs/sdk/base/a/h/c/b;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 157
    nop

    .line 159
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v2

    iget-object v2, v2, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    .line 160
    invoke-static {v2, v1}, Lcom/efs/sdk/base/newsharedpreferences/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/efs/sdk/base/a/c/a/e;->a:Landroid/content/SharedPreferences;

    .line 162
    iget-object v1, p0, Lcom/efs/sdk/base/a/c/a/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 164
    :cond_3f
    monitor-exit v0

    return-void

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_41

    throw v1

    .line 166
    :cond_44
    return-void
.end method


# virtual methods
.method final a(Lcom/efs/sdk/base/a/c/a/b;)Z
    .registers 6

    .line 75
    invoke-virtual {p0}, Lcom/efs/sdk/base/a/c/a/e;->c()V

    .line 77
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/e;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_9

    .line 78
    const/4 p1, 0x0

    return p1

    .line 80
    :cond_9
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/e;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 85
    nop

    .line 1103
    iget v1, p1, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 85
    const-string v2, "cver"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_refresh_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 91
    nop

    .line 1136
    iget-object p1, p1, Lcom/efs/sdk/base/a/c/a/b;->e:Ljava/util/Map;

    .line 93
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    goto :goto_2e

    .line 98
    :cond_4a
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    const/4 p1, 0x1

    return p1
.end method

.method final c()V
    .registers 4

    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/efs/sdk/base/a/c/a/e;->d()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 149
    return-void

    .line 147
    :catchall_4
    move-exception v0

    .line 148
    const-string v1, "efs.config"

    const-string v2, "init sharedpreferences error"

    invoke-static {v1, v2, v0}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 5056
    invoke-static {}, Lcom/efs/sdk/base/a/e/f$a;->a()Lcom/efs/sdk/base/a/e/f;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Lcom/efs/sdk/base/a/e/f;->a()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 179
    return-void

    .line 184
    :cond_b
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/efs/sdk/base/a/c/a/c;->b()V

    .line 185
    return-void
.end method
