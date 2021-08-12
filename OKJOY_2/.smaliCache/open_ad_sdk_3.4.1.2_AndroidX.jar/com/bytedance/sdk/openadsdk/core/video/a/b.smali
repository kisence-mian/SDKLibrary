.class public Lcom/bytedance/sdk/openadsdk/core/video/a/b;
.super Landroid/media/MediaDataSource;
.source "SdkMediaDataSource.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/bytedance/sdk/openadsdk/core/video/a/a/a;

.field private d:J

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 35
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/video/a/a/a;

    .line 31
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->d:J

    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->e:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->a:Ljava/lang/String;

    .line 38
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 39
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/i/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->b:Ljava/lang/String;

    goto :goto_1e

    .line 41
    :cond_1c
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->b:Ljava/lang/String;

    .line 43
    :goto_1e
    return-void
.end method

.method private b()V
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/video/a/a/a;

    if-nez v0, :cond_15

    .line 56
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->e:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/video/a/a/a;

    .line 58
    :cond_15
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->b()V

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/video/a/a/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/a;->c()Z

    move-result v0

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkMediaDataSource"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/video/a/a/a;

    if-eqz v0, :cond_21

    .line 77
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/a;->a()V

    .line 79
    :cond_21
    return-void
.end method

.method public getSize()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->b()V

    .line 63
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->d:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_3f

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->e:Landroid/content/Context;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_3c

    .line 67
    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/video/a/a/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->d:J

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdkMediaDataSource"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 65
    :cond_3c
    :goto_3c
    const-wide/16 v0, -0x1

    return-wide v0

    .line 70
    :cond_3f
    :goto_3f
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->d:J

    return-wide v0
.end method

.method public readAt(J[BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->b()V

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b;->c:Lcom/bytedance/sdk/openadsdk/core/video/a/a/a;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/a;->a(J[BII)I

    move-result p5

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readAt: position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  buffer.length ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  offset = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " size ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  current = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SdkMediaDataSource"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return p5
.end method
