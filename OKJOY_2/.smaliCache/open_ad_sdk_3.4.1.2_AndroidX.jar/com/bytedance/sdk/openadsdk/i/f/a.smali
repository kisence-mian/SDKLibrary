.class public Lcom/bytedance/sdk/openadsdk/i/f/a;
.super Ljava/lang/Object;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/i/f/a$a;,
        Lcom/bytedance/sdk/openadsdk/i/f/a$b;
    }
.end annotation


# static fields
.field public static final a:Z


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/bytedance/sdk/openadsdk/i/f/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/u;->c()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/i/f/a;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f/a;->b:Ljava/util/HashMap;

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/f/a;->b()Z

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/i/f/a$1;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/f/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/i/f/a;
    .registers 1

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/f/a$b;->a()Lcom/bytedance/sdk/openadsdk/i/f/a;

    move-result-object v0

    return-object v0
.end method

.method private static c()Lcom/bytedance/sdk/openadsdk/i/a/c;
    .registers 4

    .line 146
    nop

    .line 147
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/g/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 148
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/g/a;->b()Ljava/io/File;

    move-result-object v2

    const-string v3, "cache"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/i/g/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_24

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 154
    :cond_24
    :try_start_24
    new-instance v2, Lcom/bytedance/sdk/openadsdk/i/a/c;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/i/a/c;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_34

    .line 155
    const-wide/32 v0, 0x6400000

    :try_start_2c
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a/c;->a(J)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_31

    .line 158
    move-object v1, v2

    goto :goto_38

    .line 156
    :catch_31
    move-exception v0

    move-object v1, v2

    goto :goto_35

    :catch_34
    move-exception v0

    .line 157
    :goto_35
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    :cond_38
    :goto_38
    return-object v1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/i/f/b;)Z
    .registers 3

    .line 89
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/i/f/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f/a;->c:Lcom/bytedance/sdk/openadsdk/i/f/a$a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->a(Lcom/bytedance/sdk/openadsdk/i/f/b;)V

    .line 91
    const/4 p1, 0x1

    return p1

    .line 93
    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/i/f/b;)Ljava/lang/String;
    .registers 7

    .line 127
    if-nez p1, :cond_4

    .line 128
    const/4 p1, 0x0

    return-object p1

    .line 130
    :cond_4
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/i/f/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 131
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_11

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/i/f/b;->c:Ljava/lang/String;

    goto :goto_13

    :cond_11
    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/i/f/b;->a:Ljava/lang/String;

    .line 132
    :goto_13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/f;->a()Lcom/bytedance/sdk/openadsdk/i/f;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/i/f/b;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/i/f;->a(ZZLjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .registers 12

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f/a;->c:Lcom/bytedance/sdk/openadsdk/i/f/a$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 64
    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/f/a;->c()Lcom/bytedance/sdk/openadsdk/i/a/c;

    move-result-object v0

    .line 65
    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 66
    :cond_e
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/e;->a(Z)V

    .line 67
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/e;->b(Z)V

    .line 68
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/e;->a(I)V

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/f;->a()Lcom/bytedance/sdk/openadsdk/i/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/i/f;->d()V

    .line 72
    :try_start_1e
    new-instance v3, Lcom/bytedance/sdk/openadsdk/i/f/a$a;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/i/f/a$a;-><init>(Lcom/bytedance/sdk/openadsdk/i/f/a;)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/f/a;->c:Lcom/bytedance/sdk/openadsdk/i/f/a$a;

    .line 73
    const-string v4, "tt_pangle_thread_video_cache_preloader"

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->setName(Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/f/a;->c:Lcom/bytedance/sdk/openadsdk/i/f/a$a;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/i/f/a$a;->start()V

    .line 75
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/i/e;->a(Lcom/bytedance/sdk/openadsdk/i/a/c;Landroid/content/Context;)V

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/d;->c()Lcom/bytedance/sdk/openadsdk/i/d;

    move-result-object v4

    const-wide/16 v5, 0x7530

    const-wide/16 v7, 0x7530

    const-wide/16 v9, 0x7530

    invoke-virtual/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/i/d;->a(JJJ)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_43} :catch_4f

    .line 80
    nop

    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/d;->c()Lcom/bytedance/sdk/openadsdk/i/d;

    move-result-object v0

    const v2, 0x9fffff

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/i/d;->a(I)V

    .line 84
    return v1

    .line 77
    :catch_4f
    move-exception v0

    .line 79
    return v2
.end method
