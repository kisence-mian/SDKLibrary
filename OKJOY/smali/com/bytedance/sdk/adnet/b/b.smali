.class public Lcom/bytedance/sdk/adnet/b/b;
.super Ljava/lang/Object;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/b/b$b;,
        Lcom/bytedance/sdk/adnet/b/b$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/b/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/bytedance/sdk/adnet/core/m;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 5
    .param p2    # Lcom/bytedance/sdk/adnet/core/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/b;->b:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/b;->d:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/b;->c:Lcom/bytedance/sdk/adnet/core/m;

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/b;->a:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 141
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/b;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileLoader"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/b;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b;->a:Ljava/util/Map;

    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/adnet/b/b$b;)V
    .registers 4

    .prologue
    .line 113
    if-nez p1, :cond_3

    .line 119
    :goto_2
    return-void

    .line 117
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/b$b;->a()V

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;Z)Lcom/bytedance/sdk/adnet/b/b$b;
    .registers 10

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    if-eqz p2, :cond_7

    .line 128
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/adnet/b/b$a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 131
    :cond_7
    if-nez v0, :cond_2e

    .line 132
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 133
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 137
    :goto_24
    new-instance v0, Lcom/bytedance/sdk/adnet/b/b$b;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/adnet/b/b$b;-><init>(Lcom/bytedance/sdk/adnet/b/b;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;Z)V

    return-object v0

    .line 135
    :cond_2e
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_24
.end method

.method static synthetic b(Lcom/bytedance/sdk/adnet/b/b;)Lcom/bytedance/sdk/adnet/core/m;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b;->c:Lcom/bytedance/sdk/adnet/core/m;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;)V
    .registers 4

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/adnet/b/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;Z)V

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;Z)V
    .registers 7

    .prologue
    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    :goto_6
    return-void

    .line 85
    :cond_7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/b/b$b;

    .line 88
    if-eqz v0, :cond_1b

    .line 89
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/adnet/b/b$b;->a(Lcom/bytedance/sdk/adnet/b/b$a;)V

    goto :goto_6

    .line 95
    :cond_1b
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/adnet/b/b$a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_2e

    if-eqz p2, :cond_2e

    .line 97
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/b;->b:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/sdk/adnet/b/b$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/bytedance/sdk/adnet/b/b$1;-><init>(Lcom/bytedance/sdk/adnet/b/b;Lcom/bytedance/sdk/adnet/b/b$a;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 108
    :cond_2e
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/adnet/b/b;->b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;Z)Lcom/bytedance/sdk/adnet/b/b$b;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/adnet/b/b;->a(Lcom/bytedance/sdk/adnet/b/b$b;)V

    goto :goto_6
.end method
