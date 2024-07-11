.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;
.super Lcom/bytedance/sdk/openadsdk/preload/a/v;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$a;,
        Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/bytedance/sdk/openadsdk/preload/a/f;

.field private final b:Lcom/bytedance/sdk/openadsdk/preload/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/s<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/preload/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/bytedance/sdk/openadsdk/preload/a/w;

.field private final f:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field private g:Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/s;Lcom/bytedance/sdk/openadsdk/preload/a/k;Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Lcom/bytedance/sdk/openadsdk/preload/a/w;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/s<",
            "TT;>;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/k<",
            "TT;>;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "TT;>;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/w;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/v;-><init>()V

    .line 48
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$a;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->f:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$a;

    .line 55
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->b:Lcom/bytedance/sdk/openadsdk/preload/a/s;

    .line 56
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->c:Lcom/bytedance/sdk/openadsdk/preload/a/k;

    .line 57
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->a:Lcom/bytedance/sdk/openadsdk/preload/a/f;

    .line 58
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->d:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    .line 59
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->e:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    .line 60
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/a/w;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/preload/a/w;"
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 108
    :goto_d
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$b;-><init>(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;ZLjava/lang/Class;)V

    return-object v1
.end method

.method private b()Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->g:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    .line 88
    if-eqz v0, :cond_5

    goto :goto_11

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->a:Lcom/bytedance/sdk/openadsdk/preload/a/f;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->e:Lcom/bytedance/sdk/openadsdk/preload/a/w;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->d:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/w;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->g:Lcom/bytedance/sdk/openadsdk/preload/a/v;

    .line 88
    :goto_11
    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->b:Lcom/bytedance/sdk/openadsdk/preload/a/s;

    if-nez v0, :cond_c

    .line 75
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->b()Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/c;Ljava/lang/Object;)V

    .line 76
    return-void

    .line 78
    :cond_c
    if-nez p2, :cond_12

    .line 79
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/c;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/c;

    .line 80
    return-void

    .line 82
    :cond_12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->d:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->f:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$a;

    invoke-interface {v0, p2, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/s;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/bytedance/sdk/openadsdk/preload/a/r;)Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object p2

    .line 83
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/l;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;Lcom/bytedance/sdk/openadsdk/preload/a/d/c;)V

    .line 84
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->c:Lcom/bytedance/sdk/openadsdk/preload/a/k;

    if-nez v0, :cond_d

    .line 64
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->b()Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/v;->b(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 66
    :cond_d
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/l;->a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)Lcom/bytedance/sdk/openadsdk/preload/a/l;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 68
    const/4 p1, 0x0

    return-object p1

    .line 70
    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->c:Lcom/bytedance/sdk/openadsdk/preload/a/k;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->d:Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l;->f:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/l$a;

    invoke-interface {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/k;->a(Lcom/bytedance/sdk/openadsdk/preload/a/l;Ljava/lang/reflect/Type;Lcom/bytedance/sdk/openadsdk/preload/a/j;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
