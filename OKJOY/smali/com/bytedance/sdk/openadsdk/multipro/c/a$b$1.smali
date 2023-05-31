.class final Lcom/bytedance/sdk/openadsdk/multipro/c/a$b$1;
.super Ljava/lang/Object;
.source "AdEventProviderImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->d()Lcom/bytedance/sdk/openadsdk/c/g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 390
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
