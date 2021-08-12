.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;
.super Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;
.source "DMLibJsManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;


# instance fields
.field private k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 4

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    .line 18
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->c(Z)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/b$a;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/c;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/b$a;

    .line 24
    return-void
.end method
