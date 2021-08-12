.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "ArrayTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/bytedance/sdk/openadsdk/preload/a/w;


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a;->a:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/v;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    .line 58
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/m;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/v;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    .line 60
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a;->b:Ljava/lang/Class;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    if-nez p2, :cond_6

    .line 88
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 89
    return-void

    .line 92
    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->b()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 93
    const/4 v0, 0x0

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_e
    if-ge v0, v1, :cond_1c

    .line 94
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 95
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-virtual {v3, p1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 97
    :cond_1c
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->c()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 98
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/preload/a/d/b;->i:Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    if-ne v0, v1, :cond_d

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->j()V

    .line 66
    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a()V

    .line 71
    :goto_15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a;->c:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_15

    .line 75
    :cond_25
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->b()V

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    .line 78
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/a;->b:Ljava/lang/Class;

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 79
    const/4 v2, 0x0

    :goto_33
    if-ge v2, p1, :cond_3f

    .line 80
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 82
    :cond_3f
    return-object v1
.end method
