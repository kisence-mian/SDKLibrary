.class Landroid/support/v4/graphics/TypefaceCompatApi21Impl;
.super Landroid/support/v4/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi21Impl.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi21Impl"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;
    .registers 7
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v3, 0x0

    .line 51
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/self/fd/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    iget v2, v2, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 54
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_2d} :catch_30

    .line 59
    .end local v1    # "path":Ljava/lang/String;
    :goto_2d
    return-object v2

    .restart local v1    # "path":Ljava/lang/String;
    :cond_2e
    move-object v2, v3

    .line 56
    goto :goto_2d

    .line 58
    .end local v1    # "path":Ljava/lang/String;
    :catch_30
    move-exception v0

    .local v0, "e":Landroid/system/ErrnoException;
    move-object v2, v3

    .line 59
    goto :goto_2d
.end method


# virtual methods
.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "style"    # I

    .prologue
    .line 66
    array-length v6, p3

    const/4 v7, 0x1

    if-ge v6, v7, :cond_6

    .line 67
    const/4 v6, 0x0

    .line 83
    :cond_5
    :goto_5
    return-object v6

    .line 69
    :cond_6
    invoke-virtual {p0, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    .line 70
    .local v0, "bestFont":Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 72
    .local v5, "resolver":Landroid/content/ContentResolver;
    :try_start_e
    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v5, v6, v7, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_47

    move-result-object v4

    .line 71
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v8, 0x0

    .line 73
    :try_start_19
    invoke-direct {p0, v4}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;->getFile(Landroid/os/ParcelFileDescriptor;)Ljava/io/File;

    move-result-object v2

    .line 74
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_7c

    .line 77
    :cond_25
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_2e} :catch_4f
    .catchall {:try_start_19 .. :try_end_2e} :catchall_61

    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 78
    :try_start_2f
    invoke-super {p0, p1, v3}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_68
    .catchall {:try_start_2f .. :try_end_32} :catchall_6a

    move-result-object v6

    .line 79
    if-eqz v3, :cond_3a

    if-eqz v7, :cond_5d

    :try_start_37
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_4a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_61

    .line 82
    :cond_3a
    :goto_3a
    if-eqz v4, :cond_5

    if-eqz v8, :cond_64

    :try_start_3e
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_47

    goto :goto_5

    :catch_42
    move-exception v7

    :try_start_43
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_5

    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_47
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_5

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_4a
    move-exception v9

    :try_start_4b
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_4f
    .catchall {:try_start_4b .. :try_end_4e} :catchall_61

    goto :goto_3a

    .line 71
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_4f
    move-exception v6

    :try_start_50
    throw v6
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    .line 82
    :catchall_51
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_55
    if-eqz v4, :cond_5c

    if-eqz v7, :cond_99

    :try_start_59
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5c} :catch_94
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_47

    :cond_5c
    :goto_5c
    :try_start_5c
    throw v6
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5d} :catch_47

    .line 79
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_5d
    :try_start_5d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_60} :catch_4f
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_3a

    .line 82
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_61
    move-exception v6

    move-object v7, v8

    goto :goto_55

    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_64
    :try_start_64
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_47

    goto :goto_5

    .line 77
    :catch_68
    move-exception v7

    :try_start_69
    throw v7
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 79
    :catchall_6a
    move-exception v6

    if-eqz v3, :cond_72

    if-eqz v7, :cond_78

    :try_start_6f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_72} :catch_73
    .catchall {:try_start_6f .. :try_end_72} :catchall_61

    :cond_72
    :goto_72
    :try_start_72
    throw v6

    :catch_73
    move-exception v9

    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_72

    :cond_78
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_72

    .line 81
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :cond_7c
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_7f} :catch_4f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_61

    move-result-object v6

    .line 82
    if-eqz v4, :cond_5

    if-eqz v8, :cond_8f

    :try_start_84
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_87} :catch_89
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_47

    goto/16 :goto_5

    :catch_89
    move-exception v7

    :try_start_8a
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_8f
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V

    goto/16 :goto_5

    .end local v2    # "file":Ljava/io/File;
    :catch_94
    move-exception v8

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5c

    :cond_99
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_9c} :catch_47

    goto :goto_5c
.end method
