.class public Lcom/kwai/sodler/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_7

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    :cond_7
    :goto_7
    return-void
.end method

.method public static a(Ljava/io/InputStream;)V
    .registers 1

    invoke-static {p0}, Lcom/kwai/sodler/a/a;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .registers 1

    invoke-static {p0}, Lcom/kwai/sodler/a/a;->a(Ljava/io/Closeable;)V

    return-void
.end method
