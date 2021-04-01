.class public final Lcom/anythink/nativead/a/b;
.super Lcom/anythink/core/b/e;


# instance fields
.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V
    .registers 8

    .prologue
    .line 24
    invoke-direct/range {p0 .. p6}, Lcom/anythink/core/b/e;-><init>(JJLcom/anythink/core/c/c$b;Lcom/anythink/core/b/c/b;)V

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/anythink/nativead/a/b;JLcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V
    .registers 6

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/anythink/nativead/a/b;->a(JLcom/anythink/core/b/a/b;Lcom/anythink/core/api/AdError;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/nativead/a/b;Landroid/content/Context;JLcom/anythink/core/b/a/b;Ljava/util/List;)V
    .registers 6

    .prologue
    .line 19
    invoke-virtual/range {p0 .. p5}, Lcom/anythink/nativead/a/b;->a(Landroid/content/Context;JLcom/anythink/core/b/a/b;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lcom/anythink/nativead/a/b;->e:Ljava/util/Map;

    .line 29
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;JLcom/anythink/core/b/a/b;)V
    .registers 13

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 40
    invoke-static {v7}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/nativead/a/b;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v1}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v2

    .line 41
    iget-object v0, p0, Lcom/anythink/nativead/a/b;->b:Lcom/anythink/core/b/c/b;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/anythink/nativead/a/b;->b:Lcom/anythink/core/b/c/b;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/b;->D()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    move-object v1, p4

    .line 42
    check-cast v1, Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;

    iget-object v3, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/core/c/c$b;

    iget-object v4, p0, Lcom/anythink/nativead/a/b;->a:Lcom/anythink/core/c/c$b;

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/anythink/nativead/a/b;->e:Ljava/util/Map;

    new-instance v6, Lcom/anythink/nativead/a/b$1;

    invoke-direct {v6, p0, v7, p2, p3}, Lcom/anythink/nativead/a/b$1;-><init>(Lcom/anythink/nativead/a/b;Landroid/content/Context;J)V

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/anythink/nativead/a/a/c;->a(Landroid/content/Context;Lcom/anythink/nativead/unitgroup/api/CustomNativeAdapter;Lcom/anythink/core/c/c;Lcom/anythink/core/c/c$b;Ljava/util/Map;Ljava/util/Map;Lcom/anythink/nativead/unitgroup/api/CustomNativeListener;)V

    .line 53
    return-void

    .line 41
    :cond_35
    const-string v0, ""

    goto :goto_1c
.end method

.method public final onTick(J)V
    .registers 3

    .prologue
    .line 34
    return-void
.end method
