.class public Lcom/bytedance/sdk/openadsdk/h/a/b;
.super Ljava/lang/Object;
.source "GifLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/a/b$a;,
        Lcom/bytedance/sdk/openadsdk/h/a/b$c;,
        Lcom/bytedance/sdk/openadsdk/h/a/b$d;,
        Lcom/bytedance/sdk/openadsdk/h/a/b$b;
    }
.end annotation


# static fields
.field public static volatile a:I

.field public static b:Z


# instance fields
.field private final c:Lcom/bytedance/sdk/adnet/core/l;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/h/a/b$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/bytedance/sdk/openadsdk/h/a/b;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/l;)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->d:Landroid/os/Handler;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->e:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->c:Lcom/bytedance/sdk/adnet/core/l;

    .line 45
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/h/a/b$a;
    .registers 1

    .line 242
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/a/b$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/h/a/b$a;-><init>()V

    return-object v0
.end method

.method private a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/a/c;
    .registers 14

    .line 131
    new-instance v7, Lcom/bytedance/sdk/openadsdk/h/a/c;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/a/b$4;

    invoke-direct {v2, p0, p5, p1}, Lcom/bytedance/sdk/openadsdk/h/a/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/b;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, v7

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/h/a/c;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/c$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V

    return-object v7
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/a/b;)Ljava/util/Map;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/a/b;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
    .registers 6

    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/h/a/b;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$b;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$d;)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$d;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$d;)V
    .registers 9

    .line 169
    if-nez p3, :cond_3

    .line 170
    return-void

    .line 172
    :cond_3
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->a()Z

    move-result v0

    .line 173
    iget-object v1, p3, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->c:Ljava/util/List;

    if-eqz v1, :cond_3c

    .line 174
    iget-object v1, p3, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/h/a/b$b;

    .line 175
    if-eqz v2, :cond_36

    .line 176
    if-eqz v0, :cond_2c

    .line 177
    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/a/b$c;

    iget-object v4, p3, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->e:[B

    invoke-direct {v3, v4, v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/a/b$c;-><init>([BLcom/bytedance/sdk/openadsdk/h/a/b$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/a/b$b;->a(Lcom/bytedance/sdk/openadsdk/h/a/b$c;)V

    goto :goto_36

    .line 179
    :cond_2c
    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/a/b$c;

    iget-object v4, p3, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->d:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-direct {v3, v4, v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/a/b$c;-><init>(Lcom/bytedance/sdk/adnet/err/VAdError;Lcom/bytedance/sdk/openadsdk/h/a/b$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/a/b$b;->b(Lcom/bytedance/sdk/openadsdk/h/a/b$c;)V

    .line 182
    :cond_36
    :goto_36
    goto :goto_11

    .line 184
    :cond_37
    iget-object p1, p3, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 187
    :cond_3c
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
    .registers 15

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " GiftLoader doTask requestUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "splashLoadAd"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a()Lcom/bytedance/sdk/openadsdk/h/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " GiftLoader doTask cacheKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/a/b;->b:Z

    if-eqz v2, :cond_44

    .line 89
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a()Lcom/bytedance/sdk/openadsdk/h/a/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/h/a/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/a/a$a;

    move-result-object v2

    move-object v7, v2

    goto :goto_4d

    .line 91
    :cond_44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a()Lcom/bytedance/sdk/openadsdk/h/a/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/h/a/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/a/a$a;

    move-result-object v2

    move-object v7, v2

    .line 94
    :goto_4d
    if-eqz v7, :cond_69

    iget-object v2, v7, Lcom/bytedance/sdk/openadsdk/h/a/a$a;->a:[B

    if-eqz v2, :cond_69

    .line 95
    new-instance v8, Lcom/bytedance/sdk/openadsdk/h/a/b$c;

    iget-object p3, v7, Lcom/bytedance/sdk/openadsdk/h/a/a$a;->a:[B

    invoke-direct {v8, p3, p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/h/a/b$c;-><init>([BLcom/bytedance/sdk/openadsdk/h/a/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->d:Landroid/os/Handler;

    new-instance p4, Lcom/bytedance/sdk/openadsdk/h/a/b$3;

    move-object v3, p4

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/h/a/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/b;Lcom/bytedance/sdk/openadsdk/h/a/b$b;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/a$a;Lcom/bytedance/sdk/openadsdk/h/a/b$c;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void

    .line 114
    :cond_69
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/h/a/b$d;

    .line 115
    if-eqz v2, :cond_77

    .line 116
    invoke-virtual {v2, p2}, Lcom/bytedance/sdk/openadsdk/h/a/b$d;->a(Lcom/bytedance/sdk/openadsdk/h/a/b$b;)V

    .line 117
    return-void

    .line 121
    :cond_77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " GiftLoader doTask \u7f13\u5b58\u4e0d\u5b58\u5728 \u7f51\u7edc\u8bf7\u6c42\u56fe\u7247 requestUrl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/a/c;

    move-result-object p1

    .line 123
    new-instance p3, Lcom/bytedance/sdk/openadsdk/h/a/b$d;

    invoke-direct {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/h/a/b$d;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/c;Lcom/bytedance/sdk/openadsdk/h/a/b$b;)V

    .line 124
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->c:Lcom/bytedance/sdk/adnet/core/l;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/adnet/core/l;->a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 125
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->e:Ljava/util/Map;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
    .registers 15

    .line 61
    if-eqz p2, :cond_c

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/a/b$1;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/h/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/b;Lcom/bytedance/sdk/openadsdk/h/a/b$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_c
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/a/b$2;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/h/a/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/b;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$b;IILandroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V

    .line 78
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$b;IIZ)V
    .registers 12

    .line 53
    sput-boolean p5, Lcom/bytedance/sdk/openadsdk/h/a/b;->b:Z

    .line 54
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/h/a/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/h/a/b$b;IILandroid/widget/ImageView$ScaleType;)V

    .line 55
    return-void
.end method
