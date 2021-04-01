.class public Lcom/bytedance/sdk/openadsdk/core/video/d/b;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/video/d/b$b;,
        Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;
    }
.end annotation


# direct methods
.method public static a(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/video/d/b$b;)V
    .registers 8

    .prologue
    .line 83
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;

    invoke-direct {v0, p3, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/b$b;J)V

    .line 84
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method
