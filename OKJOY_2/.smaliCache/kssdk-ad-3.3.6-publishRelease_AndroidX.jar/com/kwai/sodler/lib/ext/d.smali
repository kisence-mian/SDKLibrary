.class public Lcom/kwai/sodler/lib/ext/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/sodler/lib/ext/d$d;,
        Lcom/kwai/sodler/lib/ext/d$c;,
        Lcom/kwai/sodler/lib/ext/d$b;,
        Lcom/kwai/sodler/lib/ext/d$a;,
        Lcom/kwai/sodler/lib/ext/d$e;
    }
.end annotation


# direct methods
.method public static declared-synchronized a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    .registers 10

    const-class v0, Lcom/kwai/sodler/lib/ext/d;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_aa

    :try_start_7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_aa

    :cond_f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    const/4 v5, 0x2

    if-ne v3, v4, :cond_1a

    sget v3, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-nez v3, :cond_1e

    :cond_1a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_bb

    if-le v3, v4, :cond_43

    :cond_1e
    :try_start_1e
    invoke-static {p0, p1}, Lcom/kwai/sodler/lib/ext/d$d;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_23

    goto/16 :goto_a8

    :catchall_23
    move-exception v3

    :try_start_24
    const-string v4, "Sodler.ShareLibraryLoader"

    const-string v6, "installNativeLibraryPath, v25 fail, sdk: %d, error: %s, try to fallback to V23"

    new-array v5, v5, [Ljava/lang/Object;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1}, Lcom/kwai/sodler/lib/ext/d$b;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V

    goto :goto_a8

    :cond_43
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_45
    .catchall {:try_start_24 .. :try_end_45} :catchall_bb

    const/16 v4, 0x18

    if-ne v3, v4, :cond_6f

    :try_start_49
    invoke-static {p0, p1}, Lcom/kwai/sodler/lib/ext/d$c;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_a8

    :catchall_4d
    move-exception v3

    :try_start_4e
    const-string v4, "Sodler.ShareLibraryLoader"

    const-string v6, "installNativeLibraryPath, v23 fail, sdk: %d, error: %s, try to fallback to V14"

    new-array v5, v5, [Ljava/lang/Object;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_4e .. :try_end_69} :catchall_bb

    :try_start_69
    invoke-static {p0, p1}, Lcom/kwai/sodler/lib/ext/d$a;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_a8

    :catchall_6d
    move-exception p0

    :try_start_6e
    throw v3

    :cond_6f
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_bb

    const/16 v4, 0x17

    if-lt v3, v4, :cond_9b

    :try_start_75
    invoke-static {p0, p1}, Lcom/kwai/sodler/lib/ext/d$b;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_a8

    :catchall_79
    move-exception v3

    :try_start_7a
    const-string v4, "Sodler.ShareLibraryLoader"

    const-string v6, "installNativeLibraryPath, v23 fail, sdk: %d, error: %s, try to fallback to V14"

    new-array v5, v5, [Ljava/lang/Object;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catchall {:try_start_7a .. :try_end_95} :catchall_bb

    :try_start_95
    invoke-static {p0, p1}, Lcom/kwai/sodler/lib/ext/d$a;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_99

    goto :goto_a8

    :catchall_99
    move-exception p0

    :try_start_9a
    throw v3

    :cond_9b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_a5

    invoke-static {p0, p1}, Lcom/kwai/sodler/lib/ext/d$a;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V

    goto :goto_a8

    :cond_a5
    invoke-static {p0, p1}, Lcom/kwai/sodler/lib/ext/d$e;->a(Ljava/lang/ClassLoader;Ljava/io/File;)V
    :try_end_a8
    .catchall {:try_start_9a .. :try_end_a8} :catchall_bb

    :goto_a8
    monitor-exit v0

    return-void

    :cond_aa
    :goto_aa
    :try_start_aa
    const-string p0, "Sodler.ShareLibraryLoader"

    const-string v3, "installNativeLibraryPath, folder %s is illegal"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_aa .. :try_end_b9} :catchall_bb

    monitor-exit v0

    return-void

    :catchall_bb
    move-exception p0

    monitor-exit v0

    throw p0
.end method
