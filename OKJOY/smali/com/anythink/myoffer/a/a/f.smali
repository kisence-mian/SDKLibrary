.class public final Lcom/anythink/myoffer/a/a/f;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    if-lez p1, :cond_b

    if-gtz p2, :cond_c

    .line 40
    :cond_b
    :goto_b
    return-object v0

    .line 22
    :cond_c
    invoke-static {}, Lcom/anythink/myoffer/a/c;->a()Lcom/anythink/myoffer/a/c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/anythink/myoffer/a/c;->a(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 23
    if-eqz v2, :cond_b

    .line 25
    :try_start_16
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 26
    if-eqz v1, :cond_20

    .line 27
    invoke-static {v1, p1, p2}, Lcom/anythink/myoffer/a/a/c;->a(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1f} :catch_29
    .catchall {:try_start_16 .. :try_end_1f} :catchall_36

    move-result-object v0

    .line 34
    :cond_20
    :try_start_20
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_b

    .line 36
    :catch_24
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 31
    :catch_29
    move-exception v1

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_36

    .line 34
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_b

    .line 36
    :catch_31
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 33
    :catchall_36
    move-exception v0

    .line 34
    :try_start_37
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 37
    :goto_3a
    throw v0

    .line 36
    :catch_3b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a
.end method
