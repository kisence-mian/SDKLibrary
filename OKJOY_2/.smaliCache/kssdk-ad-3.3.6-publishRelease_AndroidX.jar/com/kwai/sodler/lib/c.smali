.class Lcom/kwai/sodler/lib/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwai/sodler/lib/a/c;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/kwai/sodler/lib/ext/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/kwai/sodler/lib/ext/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/sodler/lib/c;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/kwai/sodler/lib/c;->d:Lcom/kwai/sodler/lib/ext/c;

    invoke-virtual {p2}, Lcom/kwai/sodler/lib/ext/c;->b()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/kwai/sodler/lib/c;->a:Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/kwai/sodler/lib/c;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a(Lcom/kwai/sodler/lib/a/a;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lcom/kwai/sodler/lib/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kwai/sodler/lib/a/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/kwai/sodler/lib/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/kwai/sodler/lib/c;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x989680

    cmp-long v0, v0, v2

    if-ltz v0, :cond_e

    return-void

    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No enough capacity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/kwai/sodler/lib/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "Sodler.installer"

    const-string v1, "Check plugin\'s validation."

    invoke-static {v0, v1}, Lcom/kwai/sodler/lib/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kwai/sodler/lib/c/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Plugin not found, path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kwai/sodler/lib/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check plugin\'s signatures success, path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kwai/sodler/lib/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/kwai/sodler/lib/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kwai/sodler/lib/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    if-eqz p3, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/kwai/sodler/lib/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Z)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/kwai/sodler/lib/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    if-eqz p2, :cond_d

    invoke-virtual {p0, p1}, Lcom/kwai/sodler/lib/c;->b(Ljava/lang/String;)V

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwai/sodler/lib/c;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/kwai/sodler/lib/a/a;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p1}, Lcom/kwai/sodler/lib/a/a;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Install plugin, path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sodler.installer"

    invoke-static {v2, v1}, Lcom/kwai/sodler/lib/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_df

    const-string v3, "Check plugin\'s signatures."

    invoke-static {v2, v3}, Lcom/kwai/sodler/lib/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/kwai/sodler/lib/c;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_d2

    invoke-virtual {p0, p1}, Lcom/kwai/sodler/lib/c;->a(Lcom/kwai/sodler/lib/a/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Install path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/kwai/sodler/lib/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7b

    iget-object v5, p0, Lcom/kwai/sodler/lib/c;->d:Lcom/kwai/sodler/lib/ext/c;

    invoke-virtual {v5}, Lcom/kwai/sodler/lib/ext/c;->g()Z

    move-result v5

    if-nez v5, :cond_76

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lcom/kwai/sodler/lib/c;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_76

    const-string v0, "Plugin has been already installed."

    :goto_72
    invoke-static {v2, v0}, Lcom/kwai/sodler/lib/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_76
    const-string v3, "Ignore installed plugin."

    invoke-static {v2, v3}, Lcom/kwai/sodler/lib/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Install plugin, from = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", to = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kwai/sodler/lib/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a4

    const-string v0, "Rename success."

    goto :goto_72

    :cond_a4
    :try_start_a4
    invoke-virtual {p0}, Lcom/kwai/sodler/lib/c;->a()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_bc

    :try_start_a7
    const-string v0, "Rename fail, try copy file."

    invoke-static {v2, v0}, Lcom/kwai/sodler/lib/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_af
    .catchall {:try_start_a7 .. :try_end_af} :catchall_b0

    return-object p1

    :catchall_b0
    move-exception p1

    invoke-static {v2, p1}, Lcom/kwai/sodler/lib/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/kwai/sodler/lib/ext/PluginError$InstallError;

    const/16 v1, 0xbbc

    invoke-direct {v0, p1, v1}, Lcom/kwai/sodler/lib/ext/PluginError$InstallError;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catchall_bc
    move-exception p1

    invoke-static {v2, p1}, Lcom/kwai/sodler/lib/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/kwai/sodler/lib/ext/PluginError$InstallError;

    const/16 v1, 0xbbd

    invoke-direct {v0, p1, v1}, Lcom/kwai/sodler/lib/ext/PluginError$InstallError;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :cond_c8
    new-instance p1, Lcom/kwai/sodler/lib/ext/PluginError$InstallError;

    const/16 v0, 0xbbe

    const-string v1, "Can not get install path."

    invoke-direct {p1, v1, v0}, Lcom/kwai/sodler/lib/ext/PluginError$InstallError;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_d2
    const-string p1, "Check plugin\'s signatures fail."

    invoke-static {v2, p1}, Lcom/kwai/sodler/lib/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kwai/sodler/lib/ext/PluginError$InstallError;

    const/16 v1, 0xbbb

    invoke-direct {v0, p1, v1}, Lcom/kwai/sodler/lib/ext/PluginError$InstallError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_df
    const-string p1, "Plugin path not exist"

    invoke-static {v2, p1}, Lcom/kwai/sodler/lib/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/kwai/sodler/lib/ext/PluginError$InstallError;

    const/16 v0, 0xbb9

    const-string v1, "Plugin file not exist."

    invoke-direct {p1, v1, v0}, Lcom/kwai/sodler/lib/ext/PluginError$InstallError;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kwai/sodler/lib/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/kwai/sodler/lib/c;->d:Lcom/kwai/sodler/lib/ext/c;

    invoke-virtual {p2}, Lcom/kwai/sodler/lib/ext/c;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/kwai/sodler/lib/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete fail, dir not found, path = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Sodler.installer"

    invoke-static {v0, p1}, Lcom/kwai/sodler/lib/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    invoke-static {v0}, Lcom/kwai/sodler/lib/c/a;->a(Ljava/io/File;)Z

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/kwai/sodler/lib/c;->d:Lcom/kwai/sodler/lib/ext/c;

    invoke-virtual {v0}, Lcom/kwai/sodler/lib/ext/c;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/kwai/sodler/lib/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kwai/sodler/lib/c;->d:Lcom/kwai/sodler/lib/ext/c;

    invoke-virtual {v0}, Lcom/kwai/sodler/lib/ext/c;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/sodler/lib/c;->b:Ljava/io/File;

    invoke-static {p1, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/kwai/sodler/lib/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
