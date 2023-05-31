.class public Lcom/JoyFramework/module/user/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/user/a/a$a;


# instance fields
.field a:Lcom/JoyFramework/module/user/a/a$b;

.field private b:Lrx/subscriptions/CompositeSubscription;

.field private c:Lrx/Subscription;


# direct methods
.method public constructor <init>(Lcom/JoyFramework/module/user/a/a$b;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/JoyFramework/module/user/b/a;->a:Lcom/JoyFramework/module/user/a/a$b;

    .line 37
    iget-object v0, p0, Lcom/JoyFramework/module/user/b/a;->a:Lcom/JoyFramework/module/user/a/a$b;

    invoke-interface {v0, p0}, Lcom/JoyFramework/module/user/a/a$b;->a(Ljava/lang/Object;)V

    .line 38
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/user/b/a;->b:Lrx/subscriptions/CompositeSubscription;

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

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/JoyFramework/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {p1, p2, v0, v1}, Lcom/JoyFramework/remote/a/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 59
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

    invoke-static {v0, v2}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v2

    new-instance v3, Lcom/JoyFramework/remote/b/c/b;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/JoyFramework/module/user/b/b;

    invoke-direct {v5, p0, p2}, Lcom/JoyFramework/module/user/b/b;-><init>(Lcom/JoyFramework/module/user/b/a;Ljava/lang/String;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/JoyFramework/remote/b/d/b;->c(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/user/b/a;->c:Lrx/Subscription;

    .line 83
    iget-object v0, p0, Lcom/JoyFramework/module/user/b/a;->b:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lcom/JoyFramework/module/user/b/a;->c:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 84
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/JoyFramework/module/user/b/a;->b:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->clear()V

    .line 50
    return-void
.end method
