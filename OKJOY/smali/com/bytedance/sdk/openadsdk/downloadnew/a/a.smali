.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a;
.super Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;
.source "DMLibJsManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;


# instance fields
.field private b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a;->c(Z)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/b$a;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/b$a;

    .line 24
    return-void
.end method
