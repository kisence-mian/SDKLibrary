.class public Lcom/ss/android/downloadlib/a/j;
.super Ljava/lang/Object;
.source "GlobalInfo.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/ss/android/a/a/a/e;

.field private static c:Lcom/ss/android/a/a/a/b;

.field private static d:Lcom/ss/android/a/a/a/j;

.field private static e:Lcom/ss/android/a/a/a/f;

.field private static f:Lcom/ss/android/a/a/a/g;

.field private static g:Lcom/ss/android/a/a/a/h;

.field private static h:Lcom/ss/android/a/a/c/a;

.field private static i:Lcom/ss/android/a/a/a/a;

.field private static j:Lcom/ss/android/socialbase/appdownloader/c/h;

.field private static k:Lcom/ss/android/a/a/a/c;

.field private static l:Lcom/ss/android/a/a/a/d;

.field private static m:Lcom/ss/android/a/a/a/l;

.field private static n:Lcom/ss/android/a/a/a/i;

.field private static o:Lcom/ss/android/a/a/a/k;


# direct methods
.method public static a()Landroid/content/Context;
    .registers 2

    .prologue
    .line 85
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_c
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 72
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_10

    .line 73
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/a/j;->a:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public static a(Lcom/ss/android/a/a/a/a;)V
    .registers 1
    .param p0    # Lcom/ss/android/a/a/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    sput-object p0, Lcom/ss/android/downloadlib/a/j;->i:Lcom/ss/android/a/a/a/a;

    .line 134
    return-void
.end method

.method public static a(Lcom/ss/android/a/a/a/e;)V
    .registers 1
    .param p0    # Lcom/ss/android/a/a/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    sput-object p0, Lcom/ss/android/downloadlib/a/j;->b:Lcom/ss/android/a/a/a/e;

    .line 93
    return-void
.end method

.method public static a(Lcom/ss/android/a/a/a/f;)V
    .registers 1
    .param p0    # Lcom/ss/android/a/a/a/f;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    sput-object p0, Lcom/ss/android/downloadlib/a/j;->e:Lcom/ss/android/a/a/a/f;

    .line 105
    return-void
.end method

.method public static a(Lcom/ss/android/a/a/a/g;)V
    .registers 1
    .param p0    # Lcom/ss/android/a/a/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    sput-object p0, Lcom/ss/android/downloadlib/a/j;->f:Lcom/ss/android/a/a/a/g;

    .line 109
    return-void
.end method

.method public static a(Lcom/ss/android/a/a/a/h;)V
    .registers 4
    .param p0    # Lcom/ss/android/a/a/a/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 117
    sput-object p0, Lcom/ss/android/downloadlib/a/j;->g:Lcom/ss/android/a/a/a/h;

    .line 119
    :try_start_2
    invoke-interface {p0}, Lcom/ss/android/a/a/a/h;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "hook"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 120
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()V

    .line 122
    :cond_13
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/appdownloader/d;->b(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    .line 126
    :goto_1e
    return-void

    .line 123
    :catch_1f
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public static a(Lcom/ss/android/a/a/a/j;)V
    .registers 1
    .param p0    # Lcom/ss/android/a/a/a/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    sput-object p0, Lcom/ss/android/downloadlib/a/j;->d:Lcom/ss/android/a/a/a/j;

    .line 101
    return-void
.end method

.method public static a(Lcom/ss/android/a/a/c/a;)V
    .registers 1
    .param p0    # Lcom/ss/android/a/a/c/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    sput-object p0, Lcom/ss/android/downloadlib/a/j;->h:Lcom/ss/android/a/a/c/a;

    .line 130
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 238
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->h()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public static b()Lcom/ss/android/a/a/a/e;
    .registers 1

    .prologue
    .line 141
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->b:Lcom/ss/android/a/a/a/e;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 79
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->a:Landroid/content/Context;

    if-nez v0, :cond_12

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/a/j;->a:Landroid/content/Context;

    .line 82
    :cond_12
    return-void
.end method

.method public static c()Lcom/ss/android/a/a/a/b;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->c:Lcom/ss/android/a/a/a/b;

    if-nez v0, :cond_b

    .line 147
    new-instance v0, Lcom/ss/android/downloadlib/a/j$1;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/j$1;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a/j;->c:Lcom/ss/android/a/a/a/b;

    .line 161
    :cond_b
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->c:Lcom/ss/android/a/a/a/b;

    return-object v0
.end method

.method public static d()Lcom/ss/android/a/a/a/j;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 166
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->d:Lcom/ss/android/a/a/a/j;

    if-nez v0, :cond_b

    .line 167
    new-instance v0, Lcom/ss/android/downloadlib/b/a;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/b/a;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a/j;->d:Lcom/ss/android/a/a/a/j;

    .line 169
    :cond_b
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->d:Lcom/ss/android/a/a/a/j;

    return-object v0
.end method

.method public static e()Lcom/ss/android/a/a/a/f;
    .registers 1

    .prologue
    .line 173
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->e:Lcom/ss/android/a/a/a/f;

    return-object v0
.end method

.method public static f()Lcom/ss/android/a/a/a/g;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 178
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->f:Lcom/ss/android/a/a/a/g;

    if-nez v0, :cond_b

    .line 179
    new-instance v0, Lcom/ss/android/downloadlib/b/b;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/b/b;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a/j;->f:Lcom/ss/android/a/a/a/g;

    .line 181
    :cond_b
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->f:Lcom/ss/android/a/a/a/g;

    return-object v0
.end method

.method public static g()Lcom/ss/android/socialbase/appdownloader/c/h;
    .registers 1

    .prologue
    .line 185
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->j:Lcom/ss/android/socialbase/appdownloader/c/h;

    if-nez v0, :cond_b

    .line 186
    new-instance v0, Lcom/ss/android/downloadlib/a/j$2;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/j$2;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a/j;->j:Lcom/ss/android/socialbase/appdownloader/c/h;

    .line 192
    :cond_b
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->j:Lcom/ss/android/socialbase/appdownloader/c/h;

    return-object v0
.end method

.method public static h()Lcom/ss/android/a/a/a/l;
    .registers 1

    .prologue
    .line 200
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->m:Lcom/ss/android/a/a/a/l;

    return-object v0
.end method

.method public static i()Lorg/json/JSONObject;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 205
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->g:Lcom/ss/android/a/a/a/h;

    if-nez v0, :cond_b

    .line 206
    new-instance v0, Lcom/ss/android/downloadlib/a/j$3;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a/j$3;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/a/j;->g:Lcom/ss/android/a/a/a/h;

    .line 213
    :cond_b
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    sget-object v2, Lcom/ss/android/downloadlib/a/j;->g:Lcom/ss/android/a/a/a/h;

    invoke-interface {v2}, Lcom/ss/android/a/a/a/h;->a()Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/g;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static j()Lcom/ss/android/a/a/c/a;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->h:Lcom/ss/android/a/a/c/a;

    if-nez v0, :cond_f

    .line 219
    new-instance v0, Lcom/ss/android/a/a/c/a$a;

    invoke-direct {v0}, Lcom/ss/android/a/a/c/a$a;-><init>()V

    invoke-virtual {v0}, Lcom/ss/android/a/a/c/a$a;->a()Lcom/ss/android/a/a/c/a;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/a/j;->h:Lcom/ss/android/a/a/c/a;

    .line 221
    :cond_f
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->h:Lcom/ss/android/a/a/c/a;

    return-object v0
.end method

.method public static k()Lcom/ss/android/a/a/a/a;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 229
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->i:Lcom/ss/android/a/a/a/a;

    return-object v0
.end method

.method public static l()Lcom/ss/android/a/a/a/k;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 234
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->o:Lcom/ss/android/a/a/a/k;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .registers 1

    .prologue
    .line 246
    const-string v0, "1.9.5.1"

    return-object v0
.end method

.method public static n()Lcom/ss/android/a/a/a/c;
    .registers 1

    .prologue
    .line 257
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->k:Lcom/ss/android/a/a/a/c;

    return-object v0
.end method

.method public static o()Lcom/ss/android/a/a/a/d;
    .registers 1

    .prologue
    .line 265
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->l:Lcom/ss/android/a/a/a/d;

    return-object v0
.end method

.method public static p()Lcom/ss/android/a/a/a/i;
    .registers 1

    .prologue
    .line 273
    sget-object v0, Lcom/ss/android/downloadlib/a/j;->n:Lcom/ss/android/a/a/a/i;

    return-object v0
.end method

.method public static q()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 291
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "is_enable_start_install_again"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_13

    .line 292
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->r()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 291
    :cond_13
    :goto_13
    return v0

    .line 292
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static r()Z
    .registers 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public static s()D
    .registers 4

    .prologue
    .line 309
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "min_install_size"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static t()J
    .registers 4

    .prologue
    .line 326
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "start_install_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 327
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    const-wide/32 v0, 0x493e0

    :cond_13
    return-wide v0
.end method

.method public static u()J
    .registers 4

    .prologue
    .line 334
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "next_install_min_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 335
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const-wide/16 v0, 0x2710

    :cond_12
    return-wide v0
.end method

.method public static v()Ljava/lang/String;
    .registers 3

    .prologue
    .line 344
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ByteDownload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "default_save_dir_name"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2c

    move-result-object v0

    .line 348
    :goto_2b
    return-object v0

    .line 347
    :catch_2c
    move-exception v0

    .line 348
    const/4 v0, 0x0

    goto :goto_2b
.end method
