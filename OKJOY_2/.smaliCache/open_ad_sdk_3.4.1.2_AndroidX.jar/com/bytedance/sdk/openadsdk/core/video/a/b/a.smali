.class public Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;
.super Ljava/lang/Object;
.source "VideoPreload.java"


# static fields
.field private static final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->e:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->a:Landroid/content/Context;

    .line 42
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->b:J

    .line 43
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d:Ljava/lang/String;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)J
    .registers 3

    .line 29
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Landroid/content/Context;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c()Ljava/util/HashSet;
    .registers 1

    .line 29
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->e:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Z
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 51
    const/4 v0, 0x1

    return v0

    .line 53
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 4

    .line 57
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 58
    const-string v0, "VideoPreload"

    const-string v1, "Cache file is exist"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void

    .line 63
    :cond_e
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->e:Ljava/util/HashSet;

    monitor-enter v0

    .line 64
    :try_start_11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/video/a/b;

    move-result-object v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_31

    .line 68
    :cond_22
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_3a

    .line 71
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/a/b/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/a/b/a;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Lcom/bytedance/sdk/openadsdk/j/g;)V

    .line 154
    return-void

    .line 65
    :cond_31
    :goto_31
    :try_start_31
    const-string v1, "VideoPreload"

    const-string v2, "Cache file is downloading ..."

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    monitor-exit v0

    return-void

    .line 69
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3a

    throw v1
.end method
