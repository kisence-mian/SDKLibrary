.class Lcom/bytedance/sdk/openadsdk/dislike/b$1;
.super Ljava/lang/Object;
.source "TTAdDislikeImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/dislike/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/dislike/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/dislike/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dislike/b;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 52
    const-string v0, "TTAdDislikeImpl"

    const-string v1, "onDislikeShow: "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public a(ILcom/bytedance/sdk/openadsdk/FilterWord;)V
    .registers 6

    .line 59
    const-string v0, "TTAdDislikeImpl"

    :try_start_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result v1

    if-nez v1, :cond_27

    .line 60
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->a(Lcom/bytedance/sdk/openadsdk/dislike/b;)Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 61
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->a(Lcom/bytedance/sdk/openadsdk/dislike/b;)Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;->onSelected(ILjava/lang/String;)V

    .line 63
    :cond_1d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->b(Lcom/bytedance/sdk/openadsdk/dislike/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 65
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDislikeSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_2 .. :try_end_4f} :catchall_50

    .line 68
    goto :goto_56

    .line 66
    :catchall_50
    move-exception p1

    .line 67
    const-string p2, "dislike callback selected error: "

    invoke-static {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :goto_56
    return-void
.end method

.method public a(Z)V
    .registers 4

    .line 73
    const-string v0, "TTAdDislikeImpl"

    const-string v1, "onDislikeCancel: "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :try_start_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->a(Lcom/bytedance/sdk/openadsdk/dislike/b;)Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    move-result-object v1

    if-eqz v1, :cond_1a

    if-nez p1, :cond_1a

    .line 76
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dislike/b;->a(Lcom/bytedance/sdk/openadsdk/dislike/b;)Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;->onCancel()V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1b

    .line 80
    :cond_1a
    goto :goto_21

    .line 78
    :catchall_1b
    move-exception p1

    .line 79
    const-string v1, "dislike callback cancel error: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :goto_21
    return-void
.end method

.method public b()V
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/b$1;->a:Lcom/bytedance/sdk/openadsdk/dislike/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dislike/b;->c(Lcom/bytedance/sdk/openadsdk/dislike/b;)V

    .line 86
    return-void
.end method
