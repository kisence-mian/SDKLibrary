.class public Lcom/ss/android/downloadlib/addownload/k;
.super Ljava/lang/Object;
.source "GlobalInfo.java"


# static fields
.field public static final a:Lorg/json/JSONObject;

.field public static b:Z

.field private static c:Landroid/content/Context;

.field private static d:Lcom/ss/android/a/a/a/f;

.field private static e:Lcom/ss/android/a/a/a/c;

.field private static f:Lcom/ss/android/a/a/a/k;

.field private static g:Lcom/ss/android/a/a/a/g;

.field private static h:Lcom/ss/android/a/a/a/h;

.field private static i:Lcom/ss/android/a/a/a/i;

.field private static j:Lcom/ss/android/a/a/c/a;

.field private static k:Lcom/ss/android/a/a/a/b;

.field private static l:Lcom/ss/android/socialbase/appdownloader/c/h;

.field private static m:Lcom/ss/android/a/a/a/d;

.field private static n:Lcom/ss/android/a/a/a/e;

.field private static o:Lcom/ss/android/a/a/a/o;

.field private static p:Lcom/ss/android/a/a/a/j;

.field private static q:Lcom/ss/android/a/a/a/r;

.field private static r:Lcom/ss/android/a/a/a/m;

.field private static s:Lcom/ss/android/a/a/a/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/k;->a:Lorg/json/JSONObject;

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ss/android/downloadlib/addownload/k;->b:Z

    .line 86
    return-void
.end method

.method public static a()Landroid/content/Context;
    .registers 2

    .line 102
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->c:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 105
    return-object v0

    .line 103
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .line 89
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/k;->c:Landroid/content/Context;

    .line 93
    return-void

    .line 90
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/ss/android/a/a/a/b;)V
    .registers 1

    .line 150
    sput-object p0, Lcom/ss/android/downloadlib/addownload/k;->k:Lcom/ss/android/a/a/a/b;

    .line 151
    return-void
.end method

.method public static a(Lcom/ss/android/a/a/a/f;)V
    .registers 1

    .line 109
    sput-object p0, Lcom/ss/android/downloadlib/addownload/k;->d:Lcom/ss/android/a/a/a/f;

    .line 110
    return-void
.end method

.method public static a(Lcom/ss/android/a/a/a/g;)V
    .registers 1

    .line 121
    sput-object p0, Lcom/ss/android/downloadlib/addownload/k;->g:Lcom/ss/android/a/a/a/g;

    .line 122
    return-void
.end method

.method public static a(Lcom/ss/android/a/a/a/h;)V
    .registers 1

    .line 125
    sput-object p0, Lcom/ss/android/downloadlib/addownload/k;->h:Lcom/ss/android/a/a/a/h;

    .line 126
    return-void
.end method

.method public static a(Lcom/ss/android/a/a/a/i;)V
    .registers 2

    .line 137
    sput-object p0, Lcom/ss/android/downloadlib/addownload/k;->i:Lcom/ss/android/a/a/a/i;

    .line 139
    :try_start_2
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object p0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/appdownloader/d;->b(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    .line 142
    goto :goto_12

    .line 140
    :catch_e
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    :goto_12
    return-void
.end method

.method public static a(Lcom/ss/android/a/a/a/k;)V
    .registers 1

    .line 117
    sput-object p0, Lcom/ss/android/downloadlib/addownload/k;->f:Lcom/ss/android/a/a/a/k;

    .line 118
    return-void
.end method

.method public static a(Lcom/ss/android/a/a/c/a;)V
    .registers 1

    .line 146
    sput-object p0, Lcom/ss/android/downloadlib/addownload/k;->j:Lcom/ss/android/a/a/c/a;

    .line 147
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 282
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/d;->j()Lcom/ss/android/socialbase/appdownloader/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public static b()Lcom/ss/android/a/a/a/f;
    .registers 1

    .line 170
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->d:Lcom/ss/android/a/a/a/f;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    .line 96
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->c:Landroid/content/Context;

    if-nez v0, :cond_12

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/ss/android/downloadlib/addownload/k;->c:Landroid/content/Context;

    .line 99
    :cond_12
    return-void
.end method

.method public static c()Lcom/ss/android/a/a/a/c;
    .registers 1

    .line 175
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->e:Lcom/ss/android/a/a/a/c;

    if-nez v0, :cond_b

    .line 176
    new-instance v0, Lcom/ss/android/downloadlib/addownload/k$1;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/k$1;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/k;->e:Lcom/ss/android/a/a/a/c;

    .line 193
    :cond_b
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->e:Lcom/ss/android/a/a/a/c;

    return-object v0
.end method

.method public static d()Lcom/ss/android/a/a/a/k;
    .registers 1

    .line 198
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->f:Lcom/ss/android/a/a/a/k;

    if-nez v0, :cond_b

    .line 199
    new-instance v0, Lcom/ss/android/downloadlib/c/a;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/c/a;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/k;->f:Lcom/ss/android/a/a/a/k;

    .line 201
    :cond_b
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->f:Lcom/ss/android/a/a/a/k;

    return-object v0
.end method

.method public static e()Lcom/ss/android/a/a/a/g;
    .registers 1

    .line 205
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->g:Lcom/ss/android/a/a/a/g;

    return-object v0
.end method

.method public static f()Lcom/ss/android/a/a/a/h;
    .registers 1

    .line 210
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->h:Lcom/ss/android/a/a/a/h;

    if-nez v0, :cond_b

    .line 211
    new-instance v0, Lcom/ss/android/downloadlib/c/b;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/c/b;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/k;->h:Lcom/ss/android/a/a/a/h;

    .line 213
    :cond_b
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->h:Lcom/ss/android/a/a/a/h;

    return-object v0
.end method

.method public static g()Lcom/ss/android/socialbase/appdownloader/c/h;
    .registers 1

    .line 217
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->l:Lcom/ss/android/socialbase/appdownloader/c/h;

    if-nez v0, :cond_b

    .line 218
    new-instance v0, Lcom/ss/android/downloadlib/addownload/k$2;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/k$2;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/k;->l:Lcom/ss/android/socialbase/appdownloader/c/h;

    .line 224
    :cond_b
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->l:Lcom/ss/android/socialbase/appdownloader/c/h;

    return-object v0
.end method

.method public static h()Lcom/ss/android/a/a/a/o;
    .registers 1

    .line 232
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->o:Lcom/ss/android/a/a/a/o;

    return-object v0
.end method

.method public static i()Lorg/json/JSONObject;
    .registers 3

    .line 245
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->i:Lcom/ss/android/a/a/a/i;

    if-nez v0, :cond_b

    .line 246
    new-instance v0, Lcom/ss/android/downloadlib/addownload/k$3;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/addownload/k$3;-><init>()V

    sput-object v0, Lcom/ss/android/downloadlib/addownload/k;->i:Lcom/ss/android/a/a/a/i;

    .line 253
    :cond_b
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    sget-object v2, Lcom/ss/android/downloadlib/addownload/k;->i:Lcom/ss/android/a/a/a/i;

    invoke-interface {v2}, Lcom/ss/android/a/a/a/i;->a()Lorg/json/JSONObject;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/ss/android/downloadlib/addownload/k;->a:Lorg/json/JSONObject;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/ss/android/downloadlib/h/k;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static j()Lcom/ss/android/a/a/a/l;
    .registers 1

    .line 265
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->s:Lcom/ss/android/a/a/a/l;

    return-object v0
.end method

.method public static k()Lcom/ss/android/a/a/a/b;
    .registers 1

    .line 273
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->k:Lcom/ss/android/a/a/a/b;

    return-object v0
.end method

.method public static l()Lcom/ss/android/a/a/a/m;
    .registers 1

    .line 278
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->r:Lcom/ss/android/a/a/a/m;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .registers 1

    .line 290
    const-string v0, "1.9.5.1"

    return-object v0
.end method

.method public static n()Lcom/ss/android/a/a/a/d;
    .registers 1

    .line 301
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->m:Lcom/ss/android/a/a/a/d;

    return-object v0
.end method

.method public static o()Lcom/ss/android/a/a/a/e;
    .registers 1

    .line 309
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->n:Lcom/ss/android/a/a/a/e;

    return-object v0
.end method

.method public static p()Lcom/ss/android/a/a/a/j;
    .registers 1

    .line 317
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->p:Lcom/ss/android/a/a/a/j;

    return-object v0
.end method

.method public static q()Lcom/ss/android/a/a/a/r;
    .registers 1

    .line 322
    sget-object v0, Lcom/ss/android/downloadlib/addownload/k;->q:Lcom/ss/android/a/a/a/r;

    return-object v0
.end method

.method public static r()Z
    .registers 2

    .line 335
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "is_enable_start_install_again"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 336
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->s()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    nop

    .line 335
    :goto_17
    return v1
.end method

.method public static s()Z
    .registers 1

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public static t()J
    .registers 4

    .line 351
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "start_install_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 352
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    const-wide/32 v0, 0x493e0

    :cond_13
    return-wide v0
.end method

.method public static u()J
    .registers 4

    .line 359
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "next_install_min_interval"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 360
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    const-wide/16 v0, 0x2710

    :cond_12
    return-wide v0
.end method

.method public static v()Ljava/lang/String;
    .registers 4

    .line 369
    :try_start_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 370
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_29

    if-ne v0, v2, :cond_18

    .line 371
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_18
    if-le v0, v2, :cond_29

    .line 374
    :cond_1a
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 376
    :cond_29
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

    .line 377
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "default_save_dir_name"

    const-string v3, "ByteDownload"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_54
    .catchall {:try_start_0 .. :try_end_54} :catchall_55

    .line 376
    return-object v0

    .line 378
    :catchall_55
    move-exception v0

    .line 379
    const/4 v0, 0x0

    return-object v0
.end method
