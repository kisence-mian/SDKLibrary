.class Lcom/bytedance/sdk/openadsdk/h/h;
.super Ljava/lang/Object;
.source "RandomAccessFileWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/h/h$a;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    :try_start_3
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/h;->a:Ljava/io/RandomAccessFile;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_b

    .line 23
    return-void

    .line 20
    :catch_b
    move-exception v0

    .line 21
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/h$a;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/h$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method a([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/h/h$a;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    .line 44
    :catch_7
    move-exception v0

    .line 45
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/h$a;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/h$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method a()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/h;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/io/RandomAccessFile;)V

    .line 59
    return-void
.end method

.method a(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/h/h$a;
        }
    .end annotation

    .prologue
    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 31
    return-void

    .line 28
    :catch_6
    move-exception v0

    .line 29
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/h$a;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/h$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method a([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/h/h$a;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 39
    return-void

    .line 36
    :catch_6
    move-exception v0

    .line 37
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/h$a;

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/h$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
