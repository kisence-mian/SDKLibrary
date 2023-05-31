.class public Lcom/bytedance/sdk/openadsdk/g/a/b;
.super Ljava/lang/Object;
.source "GifLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/g/a/b$a;,
        Lcom/bytedance/sdk/openadsdk/g/a/b$c;,
        Lcom/bytedance/sdk/openadsdk/g/a/b$d;,
        Lcom/bytedance/sdk/openadsdk/g/a/b$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/adnet/core/m;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/g/a/b$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->b:Landroid/os/Handler;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->c:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->a:Lcom/bytedance/sdk/adnet/core/m;

    .line 40
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/g/a/b$a;
    .registers 1

    .prologue
    .line 225
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/b$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/g/a/b$a;-><init>()V

    return-object v0
.end method

.method private a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;
    .registers 13

    .prologue
    .line 115
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/c;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/g/a/b$4;

    invoke-direct {v2, p0, p5, p1}, Lcom/bytedance/sdk/openadsdk/g/a/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/b;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/g/a/c;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/c$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/a/b;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/a/b;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
    .registers 6

    .prologue
    .line 23
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/g/a/b;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/g/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$d;)V
    .registers 4

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$d;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$d;)V
    .registers 9

    .prologue
    .line 152
    if-nez p3, :cond_3

    .line 170
    :cond_2
    :goto_2
    return-void

    .line 155
    :cond_3
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->a()Z

    move-result v1

    .line 156
    iget-object v0, p3, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p3, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    .line 158
    if-eqz v0, :cond_11

    .line 159
    if-eqz v1, :cond_2c

    .line 160
    new-instance v3, Lcom/bytedance/sdk/openadsdk/g/a/b$c;

    iget-object v4, p3, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->e:[B

    invoke-direct {v3, v4, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b$c;-><init>([BLcom/bytedance/sdk/openadsdk/g/a/b$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/g/a/b$b;->a(Lcom/bytedance/sdk/openadsdk/g/a/b$c;)V

    goto :goto_11

    .line 162
    :cond_2c
    new-instance v3, Lcom/bytedance/sdk/openadsdk/g/a/b$c;

    iget-object v4, p3, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->d:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-direct {v3, v4, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b$c;-><init>(Lcom/bytedance/sdk/adnet/err/VAdError;Lcom/bytedance/sdk/openadsdk/g/a/b$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/g/a/b$b;->b(Lcom/bytedance/sdk/openadsdk/g/a/b$c;)V

    goto :goto_11

    .line 167
    :cond_37
    iget-object v0, p3, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_2
.end method

.method private b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
    .registers 13

    .prologue
    .line 77
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lcom/bytedance/sdk/openadsdk/g/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lcom/bytedance/sdk/openadsdk/g/a/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/g/a/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/a$a;

    move-result-object v4

    .line 81
    if-eqz v4, :cond_2b

    iget-object v0, v4, Lcom/bytedance/sdk/openadsdk/g/a/a$a;->a:[B

    if-eqz v0, :cond_2b

    .line 82
    new-instance v5, Lcom/bytedance/sdk/openadsdk/g/a/b$c;

    iget-object v0, v4, Lcom/bytedance/sdk/openadsdk/g/a/a$a;->a:[B

    invoke-direct {v5, v0, p2, v6, p1}, Lcom/bytedance/sdk/openadsdk/g/a/b$c;-><init>([BLcom/bytedance/sdk/openadsdk/g/a/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->b:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/b$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/g/a/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/b;Lcom/bytedance/sdk/openadsdk/g/a/b$b;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/a$a;Lcom/bytedance/sdk/openadsdk/g/a/b$c;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    :goto_2a
    return-void

    .line 99
    :cond_2b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->c:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/g/a/b$d;

    .line 100
    if-eqz v0, :cond_39

    .line 101
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b$d;->a(Lcom/bytedance/sdk/openadsdk/g/a/b$b;)V

    goto :goto_2a

    :cond_39
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, v6

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/a/b$d;

    invoke-direct {v1, v0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b$d;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/c;Lcom/bytedance/sdk/openadsdk/g/a/b$b;)V

    .line 108
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->a:Lcom/bytedance/sdk/adnet/core/m;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 109
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->c:Ljava/util/Map;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;II)V
    .registers 11

    .prologue
    .line 48
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/g/a/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V

    .line 49
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
    .registers 14

    .prologue
    .line 55
    if-eqz p2, :cond_c

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/g/a/b$1;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/g/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/b;Lcom/bytedance/sdk/openadsdk/g/a/b$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object v7

    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/a/b$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/g/a/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/g/a/b;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/b$b;IILandroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x5

    invoke-virtual {v7, v0, v1}, Lcom/bytedance/sdk/openadsdk/i/a;->c(Ljava/lang/Runnable;I)V

    .line 72
    return-void
.end method
