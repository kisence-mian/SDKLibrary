.class public Lcom/tramini/plugin/a/a;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/tramini/plugin/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;Lcom/tramini/plugin/b/a;)V
    .registers 11

    .line 88
    invoke-virtual {p2}, Lcom/tramini/plugin/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {p2}, Lcom/tramini/plugin/b/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {p2}, Lcom/tramini/plugin/b/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p2}, Lcom/tramini/plugin/b/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 92
    invoke-virtual {p2}, Lcom/tramini/plugin/b/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    new-instance p1, Lcom/tramini/plugin/a/a$1;

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/tramini/plugin/a/a$1;-><init>(Lcom/tramini/plugin/a/a;Ljava/lang/String;Lcom/tramini/plugin/b/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v7, v0, p1}, Lcom/tramini/plugin/a/g/a;->a(Lcom/tramini/plugin/b/a;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/g/a$a;)V

    .line 137
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/tramini/plugin/b/b;->a(Landroid/content/Context;)Lcom/tramini/plugin/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tramini/plugin/b/b;->b()Lcom/tramini/plugin/b/a;

    move-result-object v0

    .line 50
    if-nez v0, :cond_e

    .line 51
    return-void

    .line 55
    :cond_e
    invoke-static {}, Lcom/tramini/plugin/a/g/b;->a()Lcom/tramini/plugin/a/g/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tramini/plugin/a/g/b;->a(Lcom/tramini/plugin/b/a;)V

    .line 58
    invoke-static {p1}, Lcom/tramini/plugin/a/g/h;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-virtual {v0}, Lcom/tramini/plugin/b/a;->l()I

    move-result p1

    if-nez p1, :cond_22

    .line 62
    return-void

    .line 65
    :cond_22
    invoke-virtual {v0}, Lcom/tramini/plugin/b/a;->d()Ljava/util/List;

    move-result-object p1

    .line 66
    if-eqz p1, :cond_71

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2f

    goto :goto_71

    .line 70
    :cond_2f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 71
    return-void

    .line 76
    :cond_3a
    nop

    .line 1088
    :try_start_3b
    invoke-virtual {v0}, Lcom/tramini/plugin/b/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1089
    invoke-virtual {v0}, Lcom/tramini/plugin/b/a;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1090
    invoke-virtual {v0}, Lcom/tramini/plugin/b/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1091
    invoke-virtual {v0}, Lcom/tramini/plugin/b/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1092
    invoke-virtual {v0}, Lcom/tramini/plugin/b/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1094
    new-instance p2, Lcom/tramini/plugin/a/a$1;

    move-object v1, p2

    move-object v2, p0

    move-object v4, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/tramini/plugin/a/a$1;-><init>(Lcom/tramini/plugin/a/a;Ljava/lang/String;Lcom/tramini/plugin/b/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7, p1, p2}, Lcom/tramini/plugin/a/g/a;->a(Lcom/tramini/plugin/b/a;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/g/a$a;)V
    :try_end_6e
    .catchall {:try_start_3b .. :try_end_6e} :catchall_6f

    .line 78
    return-void

    .line 77
    :catchall_6f
    move-exception p1

    .line 79
    return-void

    .line 67
    :cond_71
    :goto_71
    return-void
.end method
