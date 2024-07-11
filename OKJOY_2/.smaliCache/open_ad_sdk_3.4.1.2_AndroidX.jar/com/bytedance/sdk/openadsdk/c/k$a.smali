.class Lcom/bytedance/sdk/openadsdk/c/k$a;
.super Ljava/lang/Object;
.source "OpenAppSuccEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/c/k;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/c/k;I)V
    .registers 3

    .line 142
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->a:Lcom/bytedance/sdk/openadsdk/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->b:I

    .line 144
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 148
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->b:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_17

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->a:Lcom/bytedance/sdk/openadsdk/c/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/c/k;)Lcom/bytedance/sdk/openadsdk/c/k$b;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/k$a;->a:Lcom/bytedance/sdk/openadsdk/c/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/c/k;)Lcom/bytedance/sdk/openadsdk/c/k$b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/c/k;Lcom/bytedance/sdk/openadsdk/c/k$b;)V

    .line 158
    :cond_17
    return-void
.end method
