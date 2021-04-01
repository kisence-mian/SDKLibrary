.class public Lcom/bytedance/sdk/openadsdk/g/e;
.super Ljava/lang/Object;
.source "TTNetClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/g/e$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/g/e;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static c:Lcom/bytedance/sdk/adnet/face/IHttpStack;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Lcom/bytedance/sdk/adnet/core/m;

.field private e:Lcom/bytedance/sdk/adnet/b/b;

.field private f:Lcom/bytedance/sdk/adnet/core/m;

.field private g:Lcom/bytedance/sdk/adnet/core/m;

.field private h:Lcom/bytedance/sdk/adnet/b/d;

.field private i:Lcom/bytedance/sdk/openadsdk/g/a/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p1, :cond_c

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->b:Landroid/content/Context;

    .line 72
    return-void

    .line 71
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_9
.end method

.method public static a()Lcom/bytedance/sdk/adnet/face/IHttpStack;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/e;->c:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/bytedance/sdk/openadsdk/g/e$a;
    .registers 5

    .prologue
    .line 120
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/e$a;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/g/e$a;-><init>(Landroid/widget/ImageView;Ljava/lang/String;II)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;
    .registers 3

    .prologue
    .line 60
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/e;->a:Lcom/bytedance/sdk/openadsdk/g/e;

    if-nez v0, :cond_13

    .line 61
    const-class v1, Lcom/bytedance/sdk/openadsdk/g/e;

    monitor-enter v1

    .line 62
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/e;->a:Lcom/bytedance/sdk/openadsdk/g/e;

    if-nez v0, :cond_12

    .line 63
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/e;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/g/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/g/e;->a:Lcom/bytedance/sdk/openadsdk/g/e;

    .line 65
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 67
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/g/e;->a:Lcom/bytedance/sdk/openadsdk/g/e;

    return-object v0

    .line 65
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static a(Lcom/bytedance/sdk/adnet/face/IHttpStack;)V
    .registers 1

    .prologue
    .line 47
    sput-object p0, Lcom/bytedance/sdk/openadsdk/g/e;->c:Lcom/bytedance/sdk/adnet/face/IHttpStack;

    .line 48
    return-void
.end method

.method public static b()Lcom/bytedance/sdk/adnet/core/e;
    .registers 1

    .prologue
    .line 56
    new-instance v0, Lcom/bytedance/sdk/adnet/core/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/core/e;-><init>()V

    return-object v0
.end method

.method private h()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->i:Lcom/bytedance/sdk/openadsdk/g/a/b;

    if-nez v0, :cond_10

    .line 196
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->k()V

    .line 197
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/e;->g:Lcom/bytedance/sdk/adnet/core/m;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/a/b;-><init>(Lcom/bytedance/sdk/adnet/core/m;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->i:Lcom/bytedance/sdk/openadsdk/g/a/b;

    .line 199
    :cond_10
    return-void
.end method

.method private i()V
    .registers 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->h:Lcom/bytedance/sdk/adnet/b/d;

    if-nez v0, :cond_14

    .line 203
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->k()V

    .line 204
    new-instance v0, Lcom/bytedance/sdk/adnet/b/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/e;->g:Lcom/bytedance/sdk/adnet/core/m;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a;->a()Lcom/bytedance/sdk/openadsdk/g/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/adnet/b/d;-><init>(Lcom/bytedance/sdk/adnet/core/m;Lcom/bytedance/sdk/adnet/b/d$b;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->h:Lcom/bytedance/sdk/adnet/b/d;

    .line 206
    :cond_14
    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->d:Lcom/bytedance/sdk/adnet/core/m;

    if-nez v0, :cond_10

    .line 210
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->l()Lcom/bytedance/sdk/adnet/face/IHttpStack;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->d:Lcom/bytedance/sdk/adnet/core/m;

    .line 212
    :cond_10
    return-void
.end method

.method private k()V
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->g:Lcom/bytedance/sdk/adnet/core/m;

    if-nez v0, :cond_10

    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->l()Lcom/bytedance/sdk/adnet/face/IHttpStack;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->g:Lcom/bytedance/sdk/adnet/core/m;

    .line 218
    :cond_10
    return-void
.end method

.method private l()Lcom/bytedance/sdk/adnet/face/IHttpStack;
    .registers 5

    .prologue
    .line 221
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->a()Lcom/bytedance/sdk/adnet/face/IHttpStack;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 222
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->a()Lcom/bytedance/sdk/adnet/face/IHttpStack;

    move-result-object v0

    .line 224
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/bytedance/sdk/adnet/core/k;

    new-instance v1, Lcom/bytedance/sdk/adnet/d/h;

    invoke-direct {v1}, Lcom/bytedance/sdk/adnet/d/h;-><init>()V

    sget-object v2, Lcom/bytedance/sdk/adnet/d/h;->a:Ljavax/net/ssl/X509TrustManager;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/g/d;->a:Lcom/bytedance/sdk/openadsdk/g/d;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/adnet/core/k;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_a
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/o;)V
    .registers 2

    .prologue
    .line 229
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/a;->a(Lcom/bytedance/sdk/adnet/core/o;)V

    .line 230
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-static {p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/bytedance/sdk/openadsdk/g/e$a;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/sdk/adnet/b/d$d;)V

    .line 112
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/sdk/adnet/b/d$d;)V
    .registers 5

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->i()V

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->h:Lcom/bytedance/sdk/adnet/b/d;

    invoke-virtual {v0, p1, p3}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;)V

    .line 117
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;)V
    .registers 6

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->j()V

    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->e:Lcom/bytedance/sdk/adnet/b/b;

    if-nez v0, :cond_12

    .line 77
    new-instance v0, Lcom/bytedance/sdk/adnet/b/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/e;->d:Lcom/bytedance/sdk/adnet/core/m;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/adnet/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/adnet/core/m;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->e:Lcom/bytedance/sdk/adnet/b/b;

    .line 80
    :cond_12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->e:Lcom/bytedance/sdk/adnet/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/adnet/b/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;)V

    .line 81
    return-void
.end method

.method public c()Lcom/bytedance/sdk/adnet/core/m;
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->j()V

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->d:Lcom/bytedance/sdk/adnet/core/m;

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/adnet/core/m;
    .registers 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->k()V

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->g:Lcom/bytedance/sdk/adnet/core/m;

    return-object v0
.end method

.method public e()Lcom/bytedance/sdk/adnet/core/m;
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->f:Lcom/bytedance/sdk/adnet/core/m;

    if-nez v0, :cond_10

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->l()Lcom/bytedance/sdk/adnet/face/IHttpStack;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/adnet/face/IHttpStack;)Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->f:Lcom/bytedance/sdk/adnet/core/m;

    .line 97
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->f:Lcom/bytedance/sdk/adnet/core/m;

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/openadsdk/g/a/b;
    .registers 2

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->h()V

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->i:Lcom/bytedance/sdk/openadsdk/g/a/b;

    return-object v0
.end method

.method public g()Lcom/bytedance/sdk/adnet/b/d;
    .registers 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->i()V

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/e;->h:Lcom/bytedance/sdk/adnet/b/d;

    return-object v0
.end method
