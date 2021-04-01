.class public Lcom/ss/android/socialbase/downloader/m/k;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/k;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static declared-synchronized a()Z
    .registers 6

    .prologue
    .line 26
    const-class v1, Lcom/ss/android/socialbase/downloader/m/k;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/k;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 27
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/k;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_85

    move-result v0

    .line 55
    :goto_d
    monitor-exit v1

    return v0

    .line 30
    :cond_f
    :try_start_f
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v3, "mount"

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 32
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 33
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 35
    :cond_32
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 36
    const-string v5, "\\s+"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 37
    array-length v5, v0

    if-eqz v5, :cond_32

    .line 38
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 39
    const-string v5, "fuse"

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_51
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 44
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/k;->a:Ljava/lang/Boolean;

    .line 45
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/k;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_d

    .line 49
    :cond_6e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 50
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 51
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/ss/android/socialbase/downloader/m/k;->a:Ljava/lang/Boolean;

    .line 52
    sget-object v0, Lcom/ss/android/socialbase/downloader/m/k;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_7d} :catch_7f
    .catchall {:try_start_f .. :try_end_7d} :catchall_85

    move-result v0

    goto :goto_d

    .line 53
    :catch_7f
    move-exception v0

    .line 54
    :try_start_80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_85

    .line 55
    const/4 v0, 0x0

    goto :goto_d

    .line 26
    :catchall_85
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 61
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 62
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v3, v2

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 63
    iget-boolean v5, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v5, :cond_28

    iget-boolean v5, v4, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v5, :cond_28

    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-nez v5, :cond_28

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_23} :catch_2b

    move-result v4

    if-eqz v4, :cond_28

    .line 64
    const/4 v0, 0x1

    .line 70
    :cond_27
    :goto_27
    return v0

    .line 62
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 67
    :catch_2b
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_27
.end method
