.class final Lcom/bytedance/sdk/openadsdk/j/e$1;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "TTExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/j/e;->a(Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(ILjava/lang/Runnable;)V
    .registers 3

    .line 83
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/e$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/e$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 87
    return-void
.end method
