.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a;
.super Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;
.source "AndroidRDMLibJsManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;


# instance fields
.field private k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    .line 19
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a;->c(Z)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/b$a;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a;->k:Lcom/bytedance/sdk/openadsdk/downloadnew/core/b$a;

    .line 25
    return-void
.end method
