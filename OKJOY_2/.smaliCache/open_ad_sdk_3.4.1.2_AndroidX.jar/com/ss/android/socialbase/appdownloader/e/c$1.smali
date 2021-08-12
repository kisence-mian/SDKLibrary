.class Lcom/ss/android/socialbase/appdownloader/e/c$1;
.super Ljava/lang/Object;
.source "NotificationIconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/e/c;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/ss/android/socialbase/appdownloader/e/c;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/e/c;Ljava/lang/String;I)V
    .registers 4

    .line 71
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/c$1;->c:Lcom/ss/android/socialbase/appdownloader/e/c;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/e/c$1;->a:Ljava/lang/String;

    iput p3, p0, Lcom/ss/android/socialbase/appdownloader/e/c$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 74
    nop

    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/e/c$1;->a:Ljava/lang/String;

    invoke-static {v2, v1, v3, v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(ZILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;

    move-result-object v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_68
    .catchall {:try_start_4 .. :try_end_a} :catchall_64

    .line 77
    if-nez v3, :cond_14

    .line 99
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 78
    return-void

    .line 80
    :cond_14
    :try_start_14
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-interface {v3}, Lcom/ss/android/socialbase/downloader/network/i;->a()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_68
    .catchall {:try_start_14 .. :try_end_1d} :catchall_64

    .line 81
    :try_start_1d
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->mark(I)V

    .line 83
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 84
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 85
    invoke-static {v4, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 87
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 88
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 89
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->L()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;F)I

    move-result v5

    .line 90
    invoke-static {v5, v5, v3}, Lcom/ss/android/socialbase/appdownloader/e/c;->a(IILandroid/graphics/BitmapFactory$Options;)I

    move-result v5

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 91
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 92
    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    .line 93
    invoke-static {v4, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/e/c$1;->c:Lcom/ss/android/socialbase/appdownloader/e/c;

    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/e/c;->a(Lcom/ss/android/socialbase/appdownloader/e/c;)Lcom/ss/android/socialbase/appdownloader/e/c$a;

    move-result-object v3

    iget v5, p0, Lcom/ss/android/socialbase/appdownloader/e/c$1;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lcom/ss/android/socialbase/appdownloader/e/c$a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_5a} :catch_62
    .catchall {:try_start_1d .. :try_end_5a} :catchall_77

    .line 99
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    goto :goto_75

    .line 96
    :catch_62
    move-exception v0

    goto :goto_6b

    .line 99
    :catchall_64
    move-exception v3

    move-object v4, v0

    move-object v0, v3

    goto :goto_78

    .line 96
    :catch_68
    move-exception v3

    move-object v4, v0

    move-object v0, v3

    .line 97
    :goto_6b
    :try_start_6b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_77

    .line 99
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object v4, v0, v1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 100
    :goto_75
    nop

    .line 101
    return-void

    .line 99
    :catchall_77
    move-exception v0

    :goto_78
    new-array v2, v2, [Ljava/io/Closeable;

    aput-object v4, v2, v1

    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    throw v0
.end method
