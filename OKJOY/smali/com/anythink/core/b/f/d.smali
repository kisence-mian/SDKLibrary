.class public final Lcom/anythink/core/b/f/d;
.super Lcom/anythink/core/b/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/anythink/core/b/i",
        "<",
        "Lcom/anythink/core/b/c/d;",
        ">;"
    }
.end annotation


# static fields
.field private static e:Lcom/anythink/core/b/f/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/anythink/core/b/i;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/f/d;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/anythink/core/b/f/d;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/b/f/d;
    .registers 2

    .prologue
    .line 24
    sget-object v0, Lcom/anythink/core/b/f/d;->e:Lcom/anythink/core/b/f/d;

    if-nez v0, :cond_b

    .line 25
    new-instance v0, Lcom/anythink/core/b/f/d;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/f/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/core/b/f/d;->e:Lcom/anythink/core/b/f/d;

    .line 27
    :cond_b
    sget-object v0, Lcom/anythink/core/b/f/d;->e:Lcom/anythink/core/b/f/d;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/b/c/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/b/f/d$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/b/f/d$1;-><init>(Lcom/anythink/core/b/f/d;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method
