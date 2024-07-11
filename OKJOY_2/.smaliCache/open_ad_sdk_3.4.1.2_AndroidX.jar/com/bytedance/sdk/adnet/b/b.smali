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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/b/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/bytedance/sdk/adnet/core/l;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/adnet/core/l;)V
    .registers 5

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
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/b;->c:Lcom/bytedance/sdk/adnet/core/l;

    .line 51
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/b;->a:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 4

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
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/b/b;->a:Ljava/util/Map;

    return-object p0
.end method

.method private a(Lcom/bytedance/sdk/adnet/b/b$b;)V
    .registers 4

    .line 113
    if-nez p1, :cond_3

    .line 114
    return-void

    .line 117
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/b$b;->a()V

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/b/b$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;Z)Lcom/bytedance/sdk/adnet/b/b$b;
    .registers 11

    .line 126
    nop

    .line 127
    if-eqz p2, :cond_8

    .line 128
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/adnet/b/b$a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_9

    .line 127
    :cond_8
    const/4 v0, 0x0

    .line 130
    :goto_9
    nop

    .line 131
    if-nez v0, :cond_29

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

    move-result-object v0

    .line 134
    move-object v4, v0

    goto :goto_2e

    .line 135
    :cond_29
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 137
    :goto_2e
    new-instance v0, Lcom/bytedance/sdk/adnet/b/b$b;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/adnet/b/b$b;-><init>(Lcom/bytedance/sdk/adnet/b/b;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;Z)V

    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/adnet/b/b;)Lcom/bytedance/sdk/adnet/core/l;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/b/b;->c:Lcom/bytedance/sdk/adnet/core/l;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;)V
    .registers 4

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/adnet/b/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;Z)V

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;Z)V
    .registers 5

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
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

    .line 90
    return-void

    .line 95
    :cond_1b
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/adnet/b/b$a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_2e

    if-eqz p2, :cond_2e

    .line 97
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/b;->b:Landroid/os/Handler;

    new-instance p3, Lcom/bytedance/sdk/adnet/b/b$1;

    invoke-direct {p3, p0, p2, v0}, Lcom/bytedance/sdk/adnet/b/b$1;-><init>(Lcom/bytedance/sdk/adnet/b/b;Lcom/bytedance/sdk/adnet/b/b$a;Ljava/io/File;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 104
    return-void

    .line 108
    :cond_2e
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/adnet/b/b;->b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/b$a;Z)Lcom/bytedance/sdk/adnet/b/b$b;

    move-result-object p1

    .line 109
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/b/b;->a(Lcom/bytedance/sdk/adnet/b/b$b;)V

    .line 110
    return-void
.end method
