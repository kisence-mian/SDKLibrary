.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;
.super Ljava/lang/Object;
.source "GeckoLogger.java"


# static fields
.field private static a:Z

.field private static b:Lcom/bytedance/sdk/openadsdk/preload/geckox/h/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a:Z

    .line 8
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/a;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/h/c;

    return-void
.end method

.method public static a()V
    .registers 1

    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a:Z

    .line 12
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 36
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/h/c;

    if-nez v0, :cond_9

    goto :goto_d

    .line 39
    :cond_9
    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    return-void

    .line 37
    :cond_d
    :goto_d
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 28
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/h/c;

    if-nez v0, :cond_9

    goto :goto_d

    .line 31
    :cond_9
    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return-void

    .line 29
    :cond_d
    :goto_d
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 50
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/h/c;

    if-nez v0, :cond_9

    goto :goto_d

    .line 53
    :cond_9
    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void

    .line 51
    :cond_d
    :goto_d
    return-void
.end method
