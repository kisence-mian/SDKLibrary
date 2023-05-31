.class public Lcom/sigmob/volley/toolbox/y;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "volley"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/sigmob/volley/u;
    .registers 2

    const/4 v0, 0x0

    check-cast v0, Lcom/sigmob/volley/toolbox/a;

    invoke-static {p0, v0}, Lcom/sigmob/volley/toolbox/y;->a(Landroid/content/Context;Lcom/sigmob/volley/toolbox/a;)Lcom/sigmob/volley/u;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/sigmob/volley/k;)Lcom/sigmob/volley/u;
    .registers 4

    new-instance v0, Lcom/sigmob/volley/u;

    new-instance v1, Lcom/sigmob/volley/toolbox/v;

    invoke-direct {v1}, Lcom/sigmob/volley/toolbox/v;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/sigmob/volley/u;-><init>(Lcom/sigmob/volley/b;Lcom/sigmob/volley/k;)V

    invoke-virtual {v0}, Lcom/sigmob/volley/u;->c()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/sigmob/volley/toolbox/a;)Lcom/sigmob/volley/u;
    .registers 4

    if-nez p1, :cond_11

    new-instance v0, Lcom/sigmob/volley/toolbox/b;

    new-instance v1, Lcom/sigmob/volley/toolbox/m;

    invoke-direct {v1}, Lcom/sigmob/volley/toolbox/m;-><init>()V

    invoke-direct {v0, v1}, Lcom/sigmob/volley/toolbox/b;-><init>(Lcom/sigmob/volley/toolbox/a;)V

    :goto_c
    invoke-static {p0, v0}, Lcom/sigmob/volley/toolbox/y;->a(Landroid/content/Context;Lcom/sigmob/volley/k;)Lcom/sigmob/volley/u;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Lcom/sigmob/volley/toolbox/b;

    invoke-direct {v0, p1}, Lcom/sigmob/volley/toolbox/b;-><init>(Lcom/sigmob/volley/toolbox/a;)V

    goto :goto_c
.end method
