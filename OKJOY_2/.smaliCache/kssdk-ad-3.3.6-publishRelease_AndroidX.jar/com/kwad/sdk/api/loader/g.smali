.class Lcom/kwad/sdk/api/loader/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/io/File;


# direct methods
.method private static a(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    sget-object v0, Lcom/kwad/sdk/api/loader/g;->a:Ljava/io/File;

    if-nez v0, :cond_17

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v1, "ksad_dynamic"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/g;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/kwad/sdk/api/loader/g;->a:Ljava/io/File;

    :cond_17
    sget-object p0, Lcom/kwad/sdk/api/loader/g;->a:Ljava/io/File;

    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/kwad/sdk/api/loader/g;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dynamic-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Ljava/io/File;)V
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_1f

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v1, v0

    if-lez v1, :cond_6

    array-length v1, v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/kwad/sdk/api/loader/g;->a(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :goto_1f
    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/kwad/sdk/api/loader/g;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apk-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/g;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/io/File;)V
    .registers 1

    :try_start_0
    invoke-static {p0}, Lcom/kwad/sdk/api/loader/g;->a(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    :goto_5
    return-void
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/kwad/sdk/api/loader/g;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apk-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/g;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/io/File;)Ljava/io/File;
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1c

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_25
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_32

    return-object p0

    :cond_32
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not ensureDir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/kwad/sdk/api/loader/g;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "dynamic.apk"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/kwad/sdk/api/loader/g;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "dex"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/g;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/kwad/sdk/api/loader/g;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "libs"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/g;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static g(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/kwad/sdk/api/loader/g$1;

    invoke-direct {v0, p0, p1}, Lcom/kwad/sdk/api/loader/g$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/api/loader/i;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
