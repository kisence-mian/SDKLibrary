.class public Lcom/bytedance/sdk/openadsdk/h/d;
.super Ljava/lang/Object;
.source "TTNetClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/d$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/h/d;

.field private static c:Lcom/bytedance/sdk/adnet/face/IHttpStack;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/adnet/core/l;

.field private e:Lcom/bytedance/sdk/adnet/b/b;

.field private f:Lcom/bytedance/sdk/adnet/core/l;

.field private g:Lcom/bytedance/sdk/adnet/core/l;

.field private h:Lcom/bytedance/sdk/adnet/b/d;

.field private i:Lcom/bytedance/sdk/openadsdk/h/a/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-nez p1, :cond_a

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_e
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/adnet/face/IHttpStack;
    .registers 1

    .line 41
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/d;->c:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/bytedance/sdk/openadsdk/h/d$a;
    .registers 5

    .line 118
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/d$a;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/h/d$a;-><init>(Landroid/widget/ImageView;Ljava/lang/String;II)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;
    .registers 3

    .line 58
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/d;->a:Lcom/bytedance/sdk/openadsdk/h/d;

    if-nez v0, :cond_17

    .line 59
    const-class v0, Lcom/bytedance/sdk/openadsdk/h/d;

    monitor-enter v0

    .line 60
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/d;->a:Lcom/bytedance/sdk/openadsdk/h/d;

    if-nez v1, :cond_12

    .line 61
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/d;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/h/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/h/d;->a:Lcom/bytedance/sdk/openadsdk/h/d;

    .line 63
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 65
    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/h/d;->a:Lcom/bytedance/sdk/openadsdk/h/d;

    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/adnet/face/IHttpStack;)V
    .registers 1

    .line 45
    sput-object p0, Lcom/bytedance/sdk/openadsdk/h/d;->c:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    .line 46
    return-void
.end method

.method public static b()Lcom/bytedance/sdk/adnet/core/e;
    .registers 1

    .line 54
    new-instance v0, Lcom/bytedance/sdk/adnet/core/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/core/e;-><init>()V

    return-object v0
.end method

.method private h()V
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Lcom/bytedance/sdk/openadsdk/h/a/b;

    if-nez v0, :cond_10

    .line 194
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/d;->k()V

    .line 195
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->g:Lcom/bytedance/sdk/adnet/core/l;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/a/b;-><init>(Lcom/bytedance/sdk/adnet/core/l;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Lcom/bytedance/sdk/openadsdk/h/a/b;

    .line 197
    :cond_10
    return-void
.end method

.method private i()V
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->h:Lcom/bytedance/sdk/adnet/b/d;

    if-nez v0, :cond_14

    .line 201
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/d;->k()V

    .line 202
    new-instance v0, Lcom/bytedance/sdk/adnet/b/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->g:Lcom/bytedance/sdk/adnet/core/l;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a;->a()Lcom/bytedance/sdk/openadsdk/h/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/adnet/b/d;-><init>(Lcom/bytedance/sdk/adnet/core/l;Lcom/bytedance/sdk/adnet/b/d$b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->h:Lcom/bytedance/sdk/adnet/b/d;

    .line 204
    :cond_14
    return-void
.end method

.method private j()V
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->d:Lcom/bytedance/sdk/adnet/core/l;

    if-nez v0, :cond_c

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->d:Lcom/bytedance/sdk/adnet/core/l;

    .line 210
    :cond_c
    return-void
.end method

.method private k()V
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->g:Lcom/bytedance/sdk/adnet/core/l;

    if-nez v0, :cond_c

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->g:Lcom/bytedance/sdk/adnet/core/l;

    .line 216
    :cond_c
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    .line 109
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/bytedance/sdk/openadsdk/h/d$a;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/sdk/adnet/b/d$d;)V

    .line 110
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/sdk/adnet/b/d$d;)V
    .registers 4

    .line 113
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/d;->i()V

    .line 114
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/d;->h:Lcom/bytedance/sdk/adnet/b/d;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;)V

    .line 115
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;)V
    .registers 6

    .line 73
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/d;->j()V

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->e:Lcom/bytedance/sdk/adnet/b/b;

    if-nez v0, :cond_12

    .line 75
    new-instance v0, Lcom/bytedance/sdk/adnet/b/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/d;->d:Lcom/bytedance/sdk/adnet/core/l;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/adnet/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/adnet/core/l;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->e:Lcom/bytedance/sdk/adnet/b/b;

    .line 78
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->e:Lcom/bytedance/sdk/adnet/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/adnet/b/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;)V

    .line 79
    return-void
.end method

.method public c()Lcom/bytedance/sdk/adnet/core/l;
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/d;->j()V

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->d:Lcom/bytedance/sdk/adnet/core/l;

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/adnet/core/l;
    .registers 2

    .line 87
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/d;->k()V

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->g:Lcom/bytedance/sdk/adnet/core/l;

    return-object v0
.end method

.method public e()Lcom/bytedance/sdk/adnet/core/l;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->f:Lcom/bytedance/sdk/adnet/core/l;

    if-nez v0, :cond_c

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->f:Lcom/bytedance/sdk/adnet/core/l;

    .line 95
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->f:Lcom/bytedance/sdk/adnet/core/l;

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/openadsdk/h/a/b;
    .registers 2

    .line 99
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/d;->h()V

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Lcom/bytedance/sdk/openadsdk/h/a/b;

    return-object v0
.end method

.method public g()Lcom/bytedance/sdk/adnet/b/d;
    .registers 2

    .line 104
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/h/d;->i()V

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->h:Lcom/bytedance/sdk/adnet/b/d;

    return-object v0
.end method
