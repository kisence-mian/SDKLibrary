.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$3;
.super Ljava/lang/Object;
.source "DMLibManager.java"

# interfaces
.implements Lcom/ss/android/a/a/a/n;


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

    .line 510
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$3;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 11

    .line 513
    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$3;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 514
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$3;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$3$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$3;)V

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$b;)V

    goto :goto_3f

    .line 521
    :cond_19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->d()Lcom/ss/android/downloadlib/g;

    move-result-object v2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$3;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b:Lcom/bytedance/sdk/openadsdk/core/d/b;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/b;->b()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$3;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/ss/android/a/a/b/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v4

    const/4 v6, 0x2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$3;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->c(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/ss/android/a/a/b/b;

    move-result-object v7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d$3;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->d(Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;)Lcom/ss/android/a/a/b/a;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JILcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V

    .line 523
    :goto_3f
    return-void
.end method
