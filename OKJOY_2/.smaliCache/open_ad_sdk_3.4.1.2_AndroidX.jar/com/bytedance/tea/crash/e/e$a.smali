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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

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

    .line 101
    nop

    .line 102
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/bytedance/tea/crash/e/e$a;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const v1, 0x8000

    .line 105
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 106
    const-string v3, "---------"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 107
    goto :goto_10

    .line 109
    :cond_1f
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    .line 110
    sub-int/2addr v1, v3

    .line 111
    if-gez v1, :cond_2a

    .line 112
    goto :goto_36

    .line 114
    :cond_2a
    iget-object v3, p0, Lcom/bytedance/tea/crash/e/e$a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2f} :catch_35
    .catchall {:try_start_10 .. :try_end_2f} :catchall_30

    .line 115
    goto :goto_10

    .line 118
    :catchall_30
    move-exception v1

    invoke-static {v0}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    throw v1

    .line 116
    :catch_35
    move-exception v1

    .line 118
    :cond_36
    :goto_36
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/f;->a(Ljava/io/Closeable;)V

    .line 119
    nop

    .line 120
    return-void
.end method
