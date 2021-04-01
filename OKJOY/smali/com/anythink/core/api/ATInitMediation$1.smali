.class final Lcom/anythink/core/api/ATInitMediation$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/api/ATInitMediation;->logGDPRSetting(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anythink/core/api/ATInitMediation;

.field final synthetic val$networkFirmId:I


# direct methods
.method constructor <init>(Lcom/anythink/core/api/ATInitMediation;I)V
    .registers 3

    .prologue
    .line 23
    iput-object p1, p0, Lcom/anythink/core/api/ATInitMediation$1;->this$0:Lcom/anythink/core/api/ATInitMediation;

    iput p2, p0, Lcom/anythink/core/api/ATInitMediation$1;->val$networkFirmId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 26
    # getter for: Lcom/anythink/core/api/ATInitMediation;->networkGDPRSettingStatus:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/anythink/core/api/ATInitMediation;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lcom/anythink/core/api/ATInitMediation$1;->val$networkFirmId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    # getter for: Lcom/anythink/core/api/ATInitMediation;->networkGDPRSettingStatus:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/anythink/core/api/ATInitMediation;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lcom/anythink/core/api/ATInitMediation$1;->val$networkFirmId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 27
    :cond_28
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/b/a/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v1

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v1

    .line 32
    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->a()I

    move-result v2

    if-ne v2, v5, :cond_69

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->u()I

    move-result v2

    if-ne v2, v4, :cond_69

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->h()I

    move-result v2

    if-nez v2, :cond_69

    .line 33
    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->u()I

    move-result v3

    invoke-static {v4, v2, v3}, Lcom/anythink/core/b/f/c;->a(III)V

    .line 37
    :cond_69
    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->a()I

    move-result v2

    if-ne v2, v4, :cond_86

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->s()I

    move-result v2

    if-nez v2, :cond_86

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->u()I

    move-result v2

    if-nez v2, :cond_86

    .line 38
    invoke-virtual {v0}, Lcom/anythink/core/b/a/f;->a()I

    move-result v0

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->u()I

    move-result v1

    invoke-static {v5, v0, v1}, Lcom/anythink/core/b/f/c;->a(III)V

    .line 40
    :cond_86
    # getter for: Lcom/anythink/core/api/ATInitMediation;->networkGDPRSettingStatus:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Lcom/anythink/core/api/ATInitMediation;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p0, Lcom/anythink/core/api/ATInitMediation$1;->val$networkFirmId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_95
    return-void
.end method
