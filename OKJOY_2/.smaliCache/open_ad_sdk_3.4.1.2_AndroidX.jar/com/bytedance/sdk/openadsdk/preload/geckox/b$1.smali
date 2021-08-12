.class Lcom/bytedance/sdk/openadsdk/preload/geckox/b$1;
.super Ljava/lang/Object;
.source "GeckoConfig.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/b;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/b$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b$1;->a:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    const-string p1, "tt_pangle_thread_gecko_update"

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 99
    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 100
    return-object v0
.end method
