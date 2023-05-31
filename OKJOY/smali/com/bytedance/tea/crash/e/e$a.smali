.class Lcom/bytedance/tea/crash/e/e$a;
.super Ljava/lang/Thread;
.source "LogcatDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/bytedance/tea/crash/e/e$a;->a:Ljava/io/InputStream;

    .line 97
    iput-object p2, p0, Lcom/bytedance/tea/crash/e/e$a;->b:Ljava/util/List;

    .line 98
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 101
    const v0, 0x8000

    .line 102
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/bytedance/tea/crash/e/e$a;->a:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 105
    :cond_f
    :goto_f
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 106
    const-string v3, "---------"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 109
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_24} :catch_31
    .catchall {:try_start_f .. :try_end_24} :catchall_36

    .line 110
    sub-int/2addr v0, v3

    .line 111
    if-gez v0, :cond_2b

    .line 118
    :cond_27
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 120
    :goto_2a
    return-void

    .line 114
    :cond_2b
    :try_start_2b
    iget-object v3, p0, Lcom/bytedance/tea/crash/e/e$a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_31
    .catchall {:try_start_2b .. :try_end_30} :catchall_36

    goto :goto_f

    .line 116
    :catch_31
    move-exception v0

    .line 118
    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    goto :goto_2a

    :catchall_36
    move-exception v0

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw v0
.end method
