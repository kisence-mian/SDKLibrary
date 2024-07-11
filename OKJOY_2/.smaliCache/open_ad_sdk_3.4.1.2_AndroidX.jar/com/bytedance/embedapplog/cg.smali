.class final Lcom/bytedance/embedapplog/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;)Lcom/bytedance/embedapplog/cf;
    .registers 3

    .line 21
    invoke-static {}, Lcom/bytedance/embedapplog/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 22
    new-instance p0, Lcom/bytedance/embedapplog/ck;

    new-instance v0, Lcom/bytedance/embedapplog/b;

    invoke-direct {v0}, Lcom/bytedance/embedapplog/b;-><init>()V

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/ck;-><init>(Lcom/bytedance/embedapplog/cf;)V

    return-object p0

    .line 25
    :cond_11
    invoke-static {}, Lcom/bytedance/embedapplog/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 26
    new-instance p0, Lcom/bytedance/embedapplog/b;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/b;-><init>()V

    return-object p0

    .line 27
    :cond_1d
    invoke-static {}, Lcom/bytedance/embedapplog/cj;->a()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 28
    new-instance v0, Lcom/bytedance/embedapplog/cj;

    invoke-direct {v0, p0}, Lcom/bytedance/embedapplog/cj;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 31
    :cond_29
    invoke-static {p0}, Lcom/bytedance/embedapplog/ac;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 32
    new-instance p0, Lcom/bytedance/embedapplog/bz;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/bz;-><init>()V

    return-object p0

    .line 35
    :cond_35
    invoke-static {}, Lcom/bytedance/embedapplog/ac;->d()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 36
    new-instance p0, Lcom/bytedance/embedapplog/ck;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/ck;-><init>()V

    return-object p0

    .line 40
    :cond_41
    invoke-static {}, Lcom/bytedance/embedapplog/ac;->c()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 41
    new-instance p0, Lcom/bytedance/embedapplog/cc;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/cc;-><init>()V

    return-object p0

    .line 44
    :cond_4d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_89

    .line 45
    invoke-static {}, Lcom/bytedance/embedapplog/ac;->e()Z

    move-result p0

    if-eqz p0, :cond_5f

    .line 46
    new-instance p0, Lcom/bytedance/embedapplog/cm;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/cm;-><init>()V

    return-object p0

    .line 49
    :cond_5f
    invoke-static {}, Lcom/bytedance/embedapplog/ac;->g()Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 50
    new-instance p0, Lcom/bytedance/embedapplog/cd;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/cd;-><init>()V

    return-object p0

    .line 53
    :cond_6b
    invoke-static {}, Lcom/bytedance/embedapplog/ac;->f()Z

    move-result p0

    if-eqz p0, :cond_77

    .line 54
    new-instance p0, Lcom/bytedance/embedapplog/cb;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/cb;-><init>()V

    return-object p0

    .line 56
    :cond_77
    invoke-static {}, Lcom/bytedance/embedapplog/ac;->h()Z

    move-result p0

    if-eqz p0, :cond_83

    .line 57
    new-instance p0, Lcom/bytedance/embedapplog/bd;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/bd;-><init>()V

    return-object p0

    .line 60
    :cond_83
    new-instance p0, Lcom/bytedance/embedapplog/bv;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/bv;-><init>()V

    return-object p0

    .line 64
    :cond_89
    invoke-static {}, Lcom/bytedance/embedapplog/ac;->a()Z

    move-result v0

    if-nez v0, :cond_9b

    invoke-static {p0}, Lcom/bytedance/embedapplog/bz;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_9b

    .line 65
    new-instance p0, Lcom/bytedance/embedapplog/bz;

    invoke-direct {p0}, Lcom/bytedance/embedapplog/bz;-><init>()V

    return-object p0

    .line 67
    :cond_9b
    const/4 p0, 0x0

    return-object p0
.end method
