.class public Lcom/bytedance/sdk/openadsdk/h/e;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field static volatile a:Lcom/bytedance/sdk/openadsdk/h/a/b;

.field static volatile b:Lcom/bytedance/sdk/openadsdk/h/a/c;

.field public static final c:Z

.field public static volatile d:Z

.field static volatile e:Z

.field static volatile f:Z

.field static volatile g:I

.field public static volatile h:I

.field public static volatile i:Ljava/lang/Integer;

.field private static volatile j:Lcom/bytedance/sdk/openadsdk/h/b/c;

.field private static volatile k:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/t;->c()Z

    move-result v0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->e:Z

    .line 72
    const/4 v0, 0x0

    sput v0, Lcom/bytedance/sdk/openadsdk/h/e;->g:I

    .line 160
    const/4 v0, 0x3

    sput v0, Lcom/bytedance/sdk/openadsdk/h/e;->h:I

    return-void
.end method

.method public static a()Landroid/content/Context;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->k:Landroid/content/Context;

    return-object v0
.end method

.method public static a(I)V
    .registers 1

    .prologue
    .line 74
    sput p0, Lcom/bytedance/sdk/openadsdk/h/e;->g:I

    .line 75
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/h/a/c;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 79
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 80
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DiskLruCache and Context can\'t be null !!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->k:Landroid/content/Context;

    .line 83
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->b:Lcom/bytedance/sdk/openadsdk/h/a/c;

    if-eqz v0, :cond_17

    .line 118
    :goto_16
    return-void

    .line 87
    :cond_17
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->a:Lcom/bytedance/sdk/openadsdk/h/a/b;

    .line 88
    if-eqz v0, :cond_35

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/a/b;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DiskLruCache \u548c DiskCache \u4e0d\u80fd\u4f7f\u7528\u76f8\u540c\u7684\u76ee\u5f55"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_35
    sput-object p0, Lcom/bytedance/sdk/openadsdk/h/e;->b:Lcom/bytedance/sdk/openadsdk/h/a/c;

    .line 93
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/b/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/b/c;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->j:Lcom/bytedance/sdk/openadsdk/h/b/c;

    .line 94
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->b:Lcom/bytedance/sdk/openadsdk/h/a/c;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/e$1;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/h/e$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a(Lcom/bytedance/sdk/openadsdk/h/a/c$a;)V

    .line 111
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f;->a()Lcom/bytedance/sdk/openadsdk/h/f;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Lcom/bytedance/sdk/openadsdk/h/a/c;)V

    .line 113
    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/e;->j:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)V

    .line 115
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/d;->c()Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/h/a/c;)V

    .line 117
    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/e;->j:Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)V

    goto :goto_16
.end method

.method public static a(Z)V
    .registers 1

    .prologue
    .line 56
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/h/e;->e:Z

    .line 57
    return-void
.end method

.method public static b()Lcom/bytedance/sdk/openadsdk/h/a/c;
    .registers 1

    .prologue
    .line 141
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->b:Lcom/bytedance/sdk/openadsdk/h/a/c;

    return-object v0
.end method

.method public static b(Z)V
    .registers 1

    .prologue
    .line 61
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/h/e;->f:Z

    .line 62
    return-void
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/h/a/b;
    .registers 1

    .prologue
    .line 145
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->a:Lcom/bytedance/sdk/openadsdk/h/a/b;

    return-object v0
.end method

.method static synthetic d()Lcom/bytedance/sdk/openadsdk/h/b/c;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/e;->j:Lcom/bytedance/sdk/openadsdk/h/b/c;

    return-object v0
.end method
