.class Lcom/bytedance/sdk/openadsdk/core/h/k$1;
.super Ljava/lang/Object;
.source "TTDnsSettings.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/h/k;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/h/k;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/k;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/k$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/k$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/k;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/k;->a(Lcom/bytedance/sdk/openadsdk/core/h/k;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
