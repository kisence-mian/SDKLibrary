.class Lcom/bytedance/sdk/openadsdk/component/splash/b$10;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/g/a/c;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/d/p;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/component/splash/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/g/a/c;Lcom/bytedance/sdk/openadsdk/core/d/p;Ljava/lang/String;)V
    .registers 6

    .line 892
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->c:Lcom/bytedance/sdk/openadsdk/core/d/p;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZJJ)V
    .registers 15

    .line 895
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZJJ)V

    .line 897
    const-string p4, "splashLoadAd"

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_48

    .line 898
    const-string p1, "check \u6210\u529f\u56de\u8c03......."

    invoke-static {p4, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 901
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v1, 0x3a99

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->c:Lcom/bytedance/sdk/openadsdk/core/d/p;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    goto :goto_8b

    .line 903
    :cond_48
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 904
    const-string p1, "\u5f00\u5c4f\u89c6\u9891\u7f13\u5b58\u5e7f\u544a\u4e0d\u5728\u6295\u653e\u671f\u6216\u672c\u6b21\u8c03\u7528\u5df2\u56de\u8c03\u51fa\u53bb"

    invoke-static {p4, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_8b

    .line 908
    :cond_5f
    const-string p1, "\u5e76\u53d1\u8bf7\u6c42\u5f00\u5c4f\u89c6\u9891check \u5931\u8d25 \u65e0\u9700\u518d\u7f51\u7edc\u8bf7\u6c42"

    invoke-static {p4, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    long-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->b(I)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object p1

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/g/a/c;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    .line 910
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v1, 0x3a99

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$10;->c:Lcom/bytedance/sdk/openadsdk/core/d/p;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 913
    :goto_8b
    return-void
.end method
