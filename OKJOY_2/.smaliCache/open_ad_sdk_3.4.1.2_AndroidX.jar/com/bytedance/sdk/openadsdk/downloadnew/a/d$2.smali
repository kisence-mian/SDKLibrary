.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$2;
.super Ljava/lang/Object;
.source "DMLibManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)V
    .registers 2

    .line 498
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$2;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    .line 501
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$2;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$2;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/ss/android/a/a/b/c;

    move-result-object v2

    invoke-interface {v2}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$2;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/ss/android/a/a/b/b;

    move-result-object v5

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$2;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/ss/android/a/a/b/a;

    move-result-object v6

    const/4 v4, 0x2

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 502
    return-void
.end method
