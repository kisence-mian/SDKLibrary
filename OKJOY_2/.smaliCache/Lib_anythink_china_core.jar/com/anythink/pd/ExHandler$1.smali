.class Lcom/anythink/pd/ExHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/pd/ExHandler;->handleOfferClick(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/pd/ExHandler;

.field final synthetic val$baseAdContent:Lcom/anythink/core/common/d/h;

.field final synthetic val$baseAdRequestInfo:Lcom/anythink/core/common/d/i;

.field final synthetic val$clickId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/anythink/pd/ExHandler;Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 8

    .line 69
    iput-object p1, p0, Lcom/anythink/pd/ExHandler$1;->this$0:Lcom/anythink/pd/ExHandler;

    iput-object p2, p0, Lcom/anythink/pd/ExHandler$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/anythink/pd/ExHandler$1;->val$baseAdRequestInfo:Lcom/anythink/core/common/d/i;

    iput-object p4, p0, Lcom/anythink/pd/ExHandler$1;->val$baseAdContent:Lcom/anythink/core/common/d/h;

    iput-object p5, p0, Lcom/anythink/pd/ExHandler$1;->val$url:Ljava/lang/String;

    iput-object p6, p0, Lcom/anythink/pd/ExHandler$1;->val$clickId:Ljava/lang/String;

    iput-object p7, p0, Lcom/anythink/pd/ExHandler$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 72
    iget-object v0, p0, Lcom/anythink/pd/ExHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/pd/ExHandler$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/anythink/pd/ExHandler$1;->val$baseAdRequestInfo:Lcom/anythink/core/common/d/i;

    iget-object v4, p0, Lcom/anythink/pd/ExHandler$1;->val$baseAdContent:Lcom/anythink/core/common/d/h;

    iget-object v5, p0, Lcom/anythink/pd/ExHandler$1;->val$url:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/pd/ExHandler$1;->val$clickId:Ljava/lang/String;

    iget-object v7, p0, Lcom/anythink/pd/ExHandler$1;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual/range {v1 .. v7}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method
