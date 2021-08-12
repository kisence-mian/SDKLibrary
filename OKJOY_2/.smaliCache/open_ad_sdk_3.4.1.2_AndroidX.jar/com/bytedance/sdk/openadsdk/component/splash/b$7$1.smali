.class Lcom/bytedance/sdk/openadsdk/component/splash/b$7$1;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/splash/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->a(Lcom/bytedance/sdk/adnet/core/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/b$7;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b$7;)V
    .registers 2

    .line 764
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 767
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b$7;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->h:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$7$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b$7;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/splash/b$7;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a98

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILjava/lang/String;)V

    .line 768
    return-void
.end method
