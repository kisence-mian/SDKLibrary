.class Lcom/bytedance/sdk/openadsdk/g/a;
.super Lcom/bytedance/sdk/adnet/b/a;
.source "DiskImageCache.java"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bytedance/sdk/openadsdk/b/a;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/b/a;-><init>()V

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a;->c:Ljava/util/WeakHashMap;

    .line 36
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a;->d:Lcom/bytedance/sdk/openadsdk/b/a;

    .line 37
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/g/a;
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/g/a;-><init>()V

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 133
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 134
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "diskImage"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/g/a;->b:Ljava/lang/String;

    .line 140
    :cond_20
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/bytedance/sdk/adnet/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    if-nez v0, :cond_2f

    .line 44
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 49
    :try_start_16
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1b} :catch_30
    .catchall {:try_start_16 .. :try_end_1b} :catchall_41

    .line 50
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 51
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_2a

    .line 54
    invoke-super {p0, p1, v0}, Lcom/bytedance/sdk/adnet/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2a} :catch_4f
    .catchall {:try_start_1b .. :try_end_2a} :catchall_4d

    .line 60
    :cond_2a
    if-eqz v2, :cond_2f

    .line 61
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_49

    .line 69
    :cond_2f
    :goto_2f
    return-object v0

    .line 56
    :catch_30
    move-exception v1

    move-object v2, v3

    .line 57
    :goto_32
    :try_start_32
    const-string v3, "DiskImageCache"

    const-string v4, "diskImageCache getBitmap error "

    invoke-static {v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_4d

    .line 60
    if-eqz v2, :cond_2f

    .line 61
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_2f

    .line 63
    :catch_3f
    move-exception v1

    goto :goto_2f

    .line 59
    :catchall_41
    move-exception v0

    move-object v2, v3

    .line 60
    :goto_43
    if-eqz v2, :cond_48

    .line 61
    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4b

    .line 64
    :cond_48
    :goto_48
    throw v0

    .line 63
    :catch_49
    move-exception v1

    goto :goto_2f

    :catch_4b
    move-exception v1

    goto :goto_48

    .line 59
    :catchall_4d
    move-exception v0

    goto :goto_43

    .line 56
    :catch_4f
    move-exception v1

    goto :goto_32
.end method

.method public a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 120
    const/4 v0, 0x0

    .line 129
    :cond_7
    :goto_7
    return-object v0

    .line 123
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 127
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 13

    .prologue
    const-wide/16 v8, 0x0

    .line 74
    if-nez p2, :cond_5

    .line 114
    :cond_4
    :goto_4
    return-void

    .line 78
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/adnet/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 80
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gtz v0, :cond_4

    .line 85
    :cond_25
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 88
    const/4 v2, 0x0

    .line 90
    :try_start_41
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 92
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_49} :catch_71
    .catchall {:try_start_41 .. :try_end_49} :catchall_8a

    .line 93
    :try_start_49
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 94
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 96
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, v6, v8

    if-lez v0, :cond_64

    .line 97
    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 100
    :cond_64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a;->d:Lcom/bytedance/sdk/openadsdk/b/a;

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/b/a;->a(Ljava/io/File;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_69} :catch_96
    .catchall {:try_start_49 .. :try_end_69} :catchall_94

    .line 107
    if-eqz v1, :cond_4

    .line 108
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_4

    .line 110
    :catch_6f
    move-exception v0

    goto :goto_4

    .line 101
    :catch_71
    move-exception v0

    move-object v1, v2

    .line 102
    :goto_73
    :try_start_73
    const-string v2, "DiskImageCache"

    const-string v5, "diskImageCache putBitmap error "

    invoke-static {v2, v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 104
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_80
    .catchall {:try_start_73 .. :try_end_80} :catchall_94

    .line 107
    if-eqz v1, :cond_4

    .line 108
    :try_start_82
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_87

    goto/16 :goto_4

    .line 110
    :catch_87
    move-exception v0

    goto/16 :goto_4

    .line 106
    :catchall_8a
    move-exception v0

    move-object v1, v2

    .line 107
    :goto_8c
    if-eqz v1, :cond_91

    .line 108
    :try_start_8e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    .line 111
    :cond_91
    :goto_91
    throw v0

    .line 110
    :catch_92
    move-exception v1

    goto :goto_91

    .line 106
    :catchall_94
    move-exception v0

    goto :goto_8c

    .line 101
    :catch_96
    move-exception v0

    goto :goto_73
.end method
