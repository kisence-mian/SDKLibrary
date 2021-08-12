.class public abstract Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;
.super Ljava/lang/Object;
.source "CachePolicy.java"


# static fields
.field public static final a:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

.field public static final b:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

.field public static final c:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;


# instance fields
.field protected d:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

.field protected e:Ljava/io/File;

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/d;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    .line 12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/f;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/f;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    .line 13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/e;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->c:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;Ljava/io/File;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    .line 21
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->e:Ljava/io/File;

    .line 22
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->f:Ljava/util/List;

    .line 23
    return-void
.end method
