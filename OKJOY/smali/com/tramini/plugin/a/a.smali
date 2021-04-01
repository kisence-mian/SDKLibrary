.class public Lcom/tramini/plugin/a/a;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/tramini/plugin/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;Lcom/tramini/plugin/b/a;)V
    .registers 10

    .prologue
    .line 74
    invoke-virtual {p2}, Lcom/tramini/plugin/b/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-virtual {p2}, Lcom/tramini/plugin/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p2}, Lcom/tramini/plugin/b/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77
    invoke-virtual {p2}, Lcom/tramini/plugin/b/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {p2}, Lcom/tramini/plugin/b/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/tramini/plugin/a/a$1;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tramini/plugin/a/a$1;-><init>(Lcom/tramini/plugin/a/a;Ljava/lang/String;Lcom/tramini/plugin/b/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v4, v6, v0}, Lcom/tramini/plugin/a/f/a;->a(Lcom/tramini/plugin/b/a;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/f/a$a;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "one.start.action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 32
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tramini/plugin/a/a/b;->a(Ljava/lang/String;)V

    .line 65
    :cond_17
    :goto_17
    return-void

    .line 38
    :cond_18
    invoke-static {p1}, Lcom/tramini/plugin/b/b;->a(Landroid/content/Context;)Lcom/tramini/plugin/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/b/b;->b()Lcom/tramini/plugin/b/a;

    move-result-object v3

    .line 39
    if-eqz v3, :cond_17

    .line 44
    invoke-static {p1}, Lcom/tramini/plugin/a/f/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v3}, Lcom/tramini/plugin/b/a;->j()I

    move-result v0

    if-eqz v0, :cond_17

    .line 51
    :cond_2e
    invoke-virtual {v3}, Lcom/tramini/plugin/b/a;->c()Ljava/util/List;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_17

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1074
    :try_start_44
    invoke-virtual {v3}, Lcom/tramini/plugin/b/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1075
    invoke-virtual {v3}, Lcom/tramini/plugin/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1076
    invoke-virtual {v3}, Lcom/tramini/plugin/b/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1077
    invoke-virtual {v3}, Lcom/tramini/plugin/b/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1078
    invoke-virtual {v3}, Lcom/tramini/plugin/b/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1080
    new-instance v0, Lcom/tramini/plugin/a/a$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tramini/plugin/a/a$1;-><init>(Lcom/tramini/plugin/a/a;Ljava/lang/String;Lcom/tramini/plugin/b/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4, v6, v0}, Lcom/tramini/plugin/a/f/a;->a(Lcom/tramini/plugin/b/a;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/f/a$a;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_74} :catch_75

    goto :goto_17

    .line 65
    :catch_75
    move-exception v0

    goto :goto_17
.end method
