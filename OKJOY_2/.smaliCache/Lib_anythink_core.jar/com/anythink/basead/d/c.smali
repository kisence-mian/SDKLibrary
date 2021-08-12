.class public final Lcom/anythink/basead/d/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/d/c$a;
    }
.end annotation


# static fields
.field private static final a:I = 0xfa


# instance fields
.field private final b:Lcom/anythink/basead/d/f;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/anythink/basead/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/anythink/basead/d/d<",
            "Lcom/anythink/basead/d/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;

.field private final f:Lcom/anythink/basead/d/c$a;

.field private final g:Lcom/anythink/basead/d/f$b;

.field private h:Lcom/anythink/basead/d/f$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 50
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v3, Lcom/anythink/basead/d/f$b;

    invoke-direct {v3}, Lcom/anythink/basead/d/f$b;-><init>()V

    new-instance v4, Lcom/anythink/basead/d/f;

    invoke-direct {v4, p1}, Lcom/anythink/basead/d/f;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/os/Handler;

    .line 54
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/anythink/basead/d/c;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/anythink/basead/d/f$b;Lcom/anythink/basead/d/f;Landroid/os/Handler;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 9

    .line 58
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v3, Lcom/anythink/basead/d/f$b;

    invoke-direct {v3}, Lcom/anythink/basead/d/f$b;-><init>()V

    new-instance v4, Lcom/anythink/basead/d/f;

    invoke-direct {v4, p1, p2}, Lcom/anythink/basead/d/f;-><init>(Landroid/content/Context;I)V

    new-instance v5, Landroid/os/Handler;

    .line 62
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/anythink/basead/d/c;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/anythink/basead/d/f$b;Lcom/anythink/basead/d/f;Landroid/os/Handler;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/anythink/basead/d/f$b;Lcom/anythink/basead/d/f;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/anythink/basead/d/b;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/anythink/basead/d/d<",
            "Lcom/anythink/basead/d/b;",
            ">;>;",
            "Lcom/anythink/basead/d/f$b;",
            "Lcom/anythink/basead/d/f;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/anythink/basead/d/c;->c:Ljava/util/Map;

    .line 71
    iput-object p2, p0, Lcom/anythink/basead/d/c;->d:Ljava/util/Map;

    .line 72
    iput-object p3, p0, Lcom/anythink/basead/d/c;->g:Lcom/anythink/basead/d/f$b;

    .line 73
    iput-object p4, p0, Lcom/anythink/basead/d/c;->b:Lcom/anythink/basead/d/f;

    .line 75
    new-instance p1, Lcom/anythink/basead/d/c$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/d/c$1;-><init>(Lcom/anythink/basead/d/c;)V

    iput-object p1, p0, Lcom/anythink/basead/d/c;->h:Lcom/anythink/basead/d/f$d;

    .line 104
    invoke-virtual {p4, p1}, Lcom/anythink/basead/d/f;->a(Lcom/anythink/basead/d/f$d;)V

    .line 106
    iput-object p5, p0, Lcom/anythink/basead/d/c;->e:Landroid/os/Handler;

    .line 107
    new-instance p1, Lcom/anythink/basead/d/c$a;

    invoke-direct {p1, p0}, Lcom/anythink/basead/d/c$a;-><init>(Lcom/anythink/basead/d/c;)V

    iput-object p1, p0, Lcom/anythink/basead/d/c;->f:Lcom/anythink/basead/d/c$a;

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/d/c;)Ljava/util/Map;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/basead/d/c;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lcom/anythink/basead/d/c;)Ljava/util/Map;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/basead/d/c;->d:Ljava/util/Map;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/anythink/basead/d/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method private static synthetic c(Lcom/anythink/basead/d/c;)Lcom/anythink/basead/d/f$b;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/anythink/basead/d/c;->g:Lcom/anythink/basead/d/f$b;

    return-object p0
.end method

.method private d()Lcom/anythink/basead/d/f$d;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/anythink/basead/d/c;->h:Lcom/anythink/basead/d/f$d;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/anythink/basead/d/c;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    iget-object v0, p0, Lcom/anythink/basead/d/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 143
    iget-object v0, p0, Lcom/anythink/basead/d/c;->b:Lcom/anythink/basead/d/f;

    invoke-virtual {v0}, Lcom/anythink/basead/d/f;->a()V

    .line 144
    iget-object v0, p0, Lcom/anythink/basead/d/c;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/anythink/basead/d/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-direct {p0, p1}, Lcom/anythink/basead/d/c;->b(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/anythink/basead/d/c;->b:Lcom/anythink/basead/d/f;

    invoke-virtual {v0, p1}, Lcom/anythink/basead/d/f;->a(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/anythink/basead/d/b;)V
    .registers 10

    .line 115
    iget-object v0, p0, Lcom/anythink/basead/d/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_9

    .line 116
    return-void

    .line 120
    :cond_9
    invoke-virtual {p0, p1}, Lcom/anythink/basead/d/c;->a(Landroid/view/View;)V

    .line 122
    invoke-interface {p2}, Lcom/anythink/basead/d/b;->e()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 123
    return-void

    .line 126
    :cond_13
    iget-object v0, p0, Lcom/anythink/basead/d/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/anythink/basead/d/c;->b:Lcom/anythink/basead/d/f;

    invoke-interface {p2}, Lcom/anythink/basead/d/b;->b()I

    move-result v5

    .line 128
    invoke-interface {p2}, Lcom/anythink/basead/d/b;->d()Ljava/lang/Integer;

    move-result-object v6

    .line 127
    nop

    .line 1166
    nop

    .line 1171
    move-object v2, p1

    move-object v3, p1

    move v4, v5

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/basead/d/f;->a(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V

    .line 129
    return-void
.end method

.method public final b()V
    .registers 2

    .line 148
    invoke-virtual {p0}, Lcom/anythink/basead/d/c;->a()V

    .line 149
    iget-object v0, p0, Lcom/anythink/basead/d/c;->b:Lcom/anythink/basead/d/f;

    invoke-virtual {v0}, Lcom/anythink/basead/d/f;->b()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/d/c;->h:Lcom/anythink/basead/d/f$d;

    .line 151
    return-void
.end method

.method final c()V
    .registers 5

    .line 155
    iget-object v0, p0, Lcom/anythink/basead/d/c;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 156
    return-void

    .line 159
    :cond_a
    iget-object v0, p0, Lcom/anythink/basead/d/c;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/basead/d/c;->f:Lcom/anythink/basead/d/c$a;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    return-void
.end method
