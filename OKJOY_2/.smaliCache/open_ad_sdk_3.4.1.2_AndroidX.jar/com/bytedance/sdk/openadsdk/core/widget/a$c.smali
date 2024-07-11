.class Lcom/bytedance/sdk/openadsdk/core/widget/a$c;
.super Ljava/lang/Object;
.source "AppDetailFullDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 259
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$c;->a:Lcom/bytedance/sdk/openadsdk/core/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$c;->b:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$c;->c:Ljava/lang/String;

    .line 262
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/a$c;->c:Ljava/lang/String;

    return-object v0
.end method
