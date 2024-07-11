.class public Lcom/bytedance/sdk/openadsdk/multipro/TTMultiProvider;
.super Landroid/content/ContentProvider;
.source "TTMultiProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 56
    const/4 p1, 0x0

    return p1

    .line 58
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/TTMultiProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/multipro/f;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 39
    const/4 p1, 0x0

    return-object p1

    .line 41
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/TTMultiProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/f;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .line 47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 48
    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/TTMultiProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/f;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()Z
    .registers 3

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 20
    const/4 v0, 0x0

    return v0

    .line 22
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/TTMultiProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/TTMultiProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/f;->a(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 30
    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/TTMultiProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/f;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/multipro/f;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .line 63
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 64
    const/4 p1, 0x0

    return p1

    .line 66
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/multipro/TTMultiProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/multipro/f;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
