.class public Lcom/JoyFramework/module/user/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/user/a/f$a;


# instance fields
.field a:Lcom/JoyFramework/module/user/a/f$b;

.field private b:Lrx/subscriptions/CompositeSubscription;

.field private c:Lrx/Subscription;


# direct methods
.method public constructor <init>(Lcom/JoyFramework/module/user/a/f$b;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/JoyFramework/module/user/b/n;->a:Lcom/JoyFramework/module/user/a/f$b;

    .line 37
    iget-object v0, p0, Lcom/JoyFramework/module/user/b/n;->a:Lcom/JoyFramework/module/user/a/f$b;

    invoke-interface {v0, p0}, Lcom/JoyFramework/module/user/a/f$b;->a(Ljava/lang/Object;)V

    .line 38
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/user/b/n;->b:Lrx/subscriptions/CompositeSubscription;

    .line 39
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 91
    const-string v0, "3"

    invoke-static {p1, p2, v0}, Lcom/JoyFramework/remote/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/JoyFramework/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v1

    new-instance v2, Lcom/JoyFramework/remote/b/c/b;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/JoyFramework/module/user/b/p;

    invoke-direct {v4, p0}, Lcom/JoyFramework/module/user/b/p;-><init>(Lcom/JoyFramework/module/user/b/n;)V

    invoke-direct {v2, v3, p1, v4}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/remote/b/d/b;->f(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/user/b/n;->c:Lrx/Subscription;

    .line 107
    iget-object v0, p0, Lcom/JoyFramework/module/user/b/n;->b:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lcom/JoyFramework/module/user/b/n;->c:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 108
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 54
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {p1, p2, p3, v0}, Lcom/JoyFramework/remote/a/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/JoyFramework/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v2

    new-instance v3, Lcom/JoyFramework/remote/b/c/b;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/JoyFramework/module/user/b/o;

    invoke-direct {v5, p0}, Lcom/JoyFramework/module/user/b/o;-><init>(Lcom/JoyFramework/module/user/b/n;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/JoyFramework/remote/b/d/b;->a(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/user/b/n;->c:Lrx/Subscription;

    .line 85
    iget-object v0, p0, Lcom/JoyFramework/module/user/b/n;->b:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lcom/JoyFramework/module/user/b/n;->c:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 86
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/JoyFramework/module/user/b/n;->b:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->clear()V

    .line 50
    return-void
.end method
