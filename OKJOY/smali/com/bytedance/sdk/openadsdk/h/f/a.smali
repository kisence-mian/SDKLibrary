.class public Lcom/bytedance/sdk/openadsdk/h/f/a;
.super Ljava/lang/Object;
.source "VideoCachePreloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/f/a$a;,
        Lcom/bytedance/sdk/openadsdk/h/f/a$b;
    }
.end annotation


# static fields
.field public static final a:Z


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/bytedance/sdk/openadsdk/h/f/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/h/f/a;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a;->b:Ljava/util/HashMap;

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a;->b()Z

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/h/f/a$1;)V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/h/f/a;
    .registers 1

    .prologue
    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f/a$b;->a()Lcom/bytedance/sdk/openadsdk/h/f/a;

    move-result-object v0

    return-object v0
.end method

.method private static c()Lcom/bytedance/sdk/openadsdk/h/a/c;
    .registers 5

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 145
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/g/a;->d()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 146
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/g/a;->b()Ljava/io/File;

    move-result-object v0

    const-string v3, "cache"

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/g/a;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    .line 148
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 152
    :cond_23
    :try_start_23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/a/c;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/a/c;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_2f

    .line 153
    const-wide/32 v2, 0x6400000

    :try_start_2b
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a(J)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_37

    .line 158
    :goto_2e
    return-object v0

    .line 154
    :catch_2f
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 155
    :goto_33
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 154
    :catch_37
    move-exception v1

    goto :goto_33

    :cond_39
    move-object v0, v1

    goto :goto_2e
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/h/f/b;)Z
    .registers 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/h/f/a;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f/a;->c:Lcom/bytedance/sdk/openadsdk/h/f/a$a;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->a(Lcom/bytedance/sdk/openadsdk/h/f/b;)V

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/h/f/b;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    if-nez p1, :cond_6

    .line 126
    const/4 v0, 0x0

    .line 130
    :goto_5
    return-object v0

    .line 128
    :cond_6
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/f/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    move v1, v2

    .line 129
    :goto_f
    if-eqz v1, :cond_24

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/f/b;->c:Ljava/lang/String;

    .line 130
    :goto_13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f;->a()Lcom/bytedance/sdk/openadsdk/h/f;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/String;

    iget-object v5, p1, Lcom/bytedance/sdk/openadsdk/h/f/b;->a:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {v4, v3, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/h/f;->a(ZZLjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_22
    move v1, v3

    .line 128
    goto :goto_f

    .line 129
    :cond_24
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/f/b;->a:Ljava/lang/String;

    goto :goto_13
.end method

.method public b()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x1

    .line 62
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/f/a;->c:Lcom/bytedance/sdk/openadsdk/h/f/a$a;

    if-eqz v1, :cond_7

    .line 82
    :goto_6
    return v0

    .line 63
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f/a;->c()Lcom/bytedance/sdk/openadsdk/h/a/c;

    move-result-object v1

    .line 64
    if-nez v1, :cond_f

    move v0, v8

    goto :goto_6

    .line 65
    :cond_f
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/e;->a(Z)V

    .line 66
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/e;->b(Z)V

    .line 67
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/e;->a(I)V

    .line 68
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f;->a()Lcom/bytedance/sdk/openadsdk/h/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/f;->d()V

    .line 71
    :try_start_1f
    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/f/a$a;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;-><init>(Lcom/bytedance/sdk/openadsdk/h/f/a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f/a;->c:Lcom/bytedance/sdk/openadsdk/h/f/a$a;

    .line 72
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f/a;->c:Lcom/bytedance/sdk/openadsdk/h/f/a$a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/h/f/a$a;->start()V

    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/e;->a(Lcom/bytedance/sdk/openadsdk/h/a/c;Landroid/content/Context;)V

    .line 74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x7530

    const-wide/16 v6, 0x7530

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/h/d;->a(JJJ)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3f} :catch_4a

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v1

    const v2, 0x9fffff

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/d;->a(I)V

    goto :goto_6

    .line 75
    :catch_4a
    move-exception v0

    move v0, v8

    .line 77
    goto :goto_6
.end method
