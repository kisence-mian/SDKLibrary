.class Lcom/bytedance/sdk/openadsdk/h/a;
.super Lcom/bytedance/sdk/adnet/b/a;
.source "DiskImageCache.java"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
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

    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/b/a;-><init>()V

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->c:Ljava/util/WeakHashMap;

    .line 36
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/b/d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a;->d:Lcom/bytedance/sdk/openadsdk/b/a;

    .line 37
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/h/a;
    .registers 1

    .line 32
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/h/a;-><init>()V

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .registers 3

    .line 134
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 135
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "diskImage"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/a;->b:Ljava/lang/String;

    .line 141
    :cond_20
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    .line 42
    invoke-super {p0, p1}, Lcom/bytedance/sdk/adnet/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    if-nez v0, :cond_4c

    .line 44
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 47
    nop

    .line 49
    const/4 v2, 0x0

    :try_start_17
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_33

    .line 50
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 51
    invoke-static {v1, v2, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_29

    .line 54
    invoke-super {p0, p1, v0}, Lcom/bytedance/sdk/adnet/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_30

    .line 60
    :cond_29
    nop

    .line 61
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 64
    :cond_2d
    :goto_2d
    goto :goto_4c

    .line 63
    :catch_2e
    move-exception p1

    .line 65
    goto :goto_4c

    .line 56
    :catchall_30
    move-exception p1

    move-object v2, v3

    goto :goto_34

    :catchall_33
    move-exception p1

    .line 57
    :goto_34
    :try_start_34
    const-string v1, "DiskImageCache"

    const-string v3, "diskImageCache getBitmap error "

    invoke-static {v1, v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_41

    .line 60
    if-eqz v2, :cond_2d

    .line 61
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_2e

    goto :goto_2d

    .line 59
    :catchall_41
    move-exception p1

    .line 60
    if-eqz v2, :cond_4a

    .line 61
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_4a

    .line 63
    :catch_48
    move-exception v0

    goto :goto_4b

    .line 64
    :cond_4a
    :goto_4a
    nop

    .line 65
    :goto_4b
    throw p1

    .line 69
    :cond_4c
    :goto_4c
    return-object v0
.end method

.method public a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .registers 5

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 121
    const/4 p1, 0x0

    return-object p1

    .line 124
    :cond_8
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 125
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_17

    .line 126
    return-object p2

    .line 128
    :cond_17
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 129
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/h/a;->c:Ljava/util/WeakHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-object p2
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 10

    .line 74
    if-nez p2, :cond_3

    .line 75
    return-void

    .line 78
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/adnet/b/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-lez p1, :cond_26

    .line 82
    return-void

    .line 85
    :cond_26
    new-instance p1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 88
    const/4 v3, 0x0

    .line 90
    :try_start_42
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 92
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_72

    .line 94
    :try_start_4a
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p2, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 95
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_65

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long p2, v5, v1

    if-lez p2, :cond_65

    .line 98
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 101
    :cond_65
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a;->d:Lcom/bytedance/sdk/openadsdk/b/a;

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/openadsdk/b/a;->a(Ljava/io/File;)V
    :try_end_6a
    .catchall {:try_start_4a .. :try_end_6a} :catchall_6f

    .line 108
    nop

    .line 109
    :try_start_6b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_86

    goto :goto_88

    .line 102
    :catchall_6f
    move-exception p2

    move-object v3, v4

    goto :goto_73

    :catchall_72
    move-exception p2

    .line 103
    :goto_73
    :try_start_73
    const-string v1, "DiskImageCache"

    const-string v2, "diskImageCache putBitmap error "

    invoke-static {v1, v2, p2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_80
    .catchall {:try_start_73 .. :try_end_80} :catchall_8a

    .line 108
    if-eqz v3, :cond_88

    .line 109
    :try_start_82
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_88

    .line 111
    :catch_86
    move-exception p1

    .line 113
    goto :goto_89

    .line 112
    :cond_88
    :goto_88
    nop

    .line 115
    :goto_89
    return-void

    .line 107
    :catchall_8a
    move-exception p1

    .line 108
    if-eqz v3, :cond_93

    .line 109
    :try_start_8d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_93

    .line 111
    :catch_91
    move-exception p2

    goto :goto_94

    .line 112
    :cond_93
    :goto_93
    nop

    .line 113
    :goto_94
    throw p1
.end method
