.class Lcom/ss/android/downloadlib/addownload/compliance/d$2;
.super Ljava/lang/Object;
.source "BitmapCache.java"

# interfaces
.implements Lcom/ss/android/downloadlib/h/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/compliance/d;->a(JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ss/android/downloadlib/h/c$a<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/ss/android/downloadlib/addownload/compliance/d;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/d;Ljava/lang/String;JJ)V
    .registers 7

    .line 72
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->d:Lcom/ss/android/downloadlib/addownload/compliance/d;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->b:J

    iput-wide p5, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    .line 75
    nop

    .line 77
    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->a:Ljava/lang/String;

    invoke-static {v0, p1, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(ZILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_a4
    .catchall {:try_start_4 .. :try_end_a} :catchall_a0

    .line 78
    if-nez v2, :cond_15

    .line 79
    nop

    .line 112
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v1, v0, p1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 79
    return-object v1

    .line 81
    :cond_15
    :try_start_15
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-interface {v2}, Lcom/ss/android/socialbase/downloader/network/i;->a()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_a4
    .catchall {:try_start_15 .. :try_end_1e} :catchall_a0

    .line 82
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->mark(I)V

    .line 84
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 85
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 86
    invoke-static {v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 88
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 89
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 90
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x42700000    # 60.0f

    invoke-static {v6, v7}, Lcom/ss/android/downloadlib/h/k;->a(Landroid/content/Context;F)I

    move-result v6

    .line 91
    invoke-static {v6, v6, v2}, Lcom/ss/android/downloadlib/addownload/compliance/d;->a(IILandroid/graphics/BitmapFactory$Options;)I

    move-result v6

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 92
    iput-boolean p1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 93
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 94
    invoke-static {v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 97
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_51} :catch_9e
    .catchall {:try_start_1e .. :try_end_51} :catchall_b2

    .line 99
    :try_start_51
    const-string v7, "ttdownloader_type"

    const-string v8, "load_bitmap"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v7, "bm_original_w"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v4, "bm_original_h"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v4, "bm_bytes"

    if-nez v2, :cond_70

    const/4 v5, -0x1

    goto :goto_74

    :cond_70
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    :goto_74
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_7b} :catch_7c
    .catchall {:try_start_51 .. :try_end_7b} :catchall_b2

    .line 105
    goto :goto_80

    .line 103
    :catch_7c
    move-exception v4

    .line 104
    :try_start_7d
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    :goto_80
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v4

    const-string v5, "ttd_pref_monitor"

    iget-wide v7, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->b:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 108
    iget-object v4, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->d:Lcom/ss/android/downloadlib/addownload/compliance/d;

    iget-wide v5, p0, Lcom/ss/android/downloadlib/addownload/compliance/d$2;->c:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/ss/android/downloadlib/addownload/compliance/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_96} :catch_9e
    .catchall {:try_start_7d .. :try_end_96} :catchall_b2

    .line 112
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v3, v0, p1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    goto :goto_b0

    .line 109
    :catch_9e
    move-exception v2

    goto :goto_a6

    .line 112
    :catchall_a0
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_b3

    .line 109
    :catch_a4
    move-exception v2

    move-object v3, v1

    .line 110
    :goto_a6
    :try_start_a6
    invoke-static {v2}, Lcom/ss/android/downloadlib/f/a;->a(Ljava/lang/Throwable;)V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_b2

    .line 112
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v3, v0, p1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    .line 113
    :goto_b0
    nop

    .line 114
    return-object v1

    .line 112
    :catchall_b2
    move-exception v1

    :goto_b3
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v3, v0, p1

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/i/e;->a([Ljava/io/Closeable;)V

    throw v1
.end method
