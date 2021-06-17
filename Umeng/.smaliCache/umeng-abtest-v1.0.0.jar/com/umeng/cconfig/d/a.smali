.class public final Lcom/umeng/cconfig/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/cconfig/d/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/umeng/cconfig/d/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/cconfig/a/b;->a(Landroid/content/Context;)Lcom/umeng/cconfig/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/cconfig/a/b;->e()Lcom/umeng/cconfig/b/d;

    move-result-object v0

    iget-object v1, v0, Lcom/umeng/cconfig/b/d;->c:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v0, v0, Lcom/umeng/cconfig/b/d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/umeng/cconfig/d/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/cconfig/a/b;->a(Landroid/content/Context;)Lcom/umeng/cconfig/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/cconfig/a/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v2, p0, Lcom/umeng/cconfig/d/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/cconfig/a/b;->a(Landroid/content/Context;)Lcom/umeng/cconfig/a/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/umeng/cconfig/a/b;->b(Ljava/lang/String;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_35

    if-eqz v1, :cond_36

    const/4 v0, 0x1

    return v0

    :catch_35
    move-exception v0

    :cond_36
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/umeng/cconfig/UMRemoteConfig;->getInstance()Lcom/umeng/cconfig/UMRemoteConfig;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/umeng/cconfig/d/a;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/cconfig/UMRemoteConfig;->handlerMessage(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    return-void
.end method
