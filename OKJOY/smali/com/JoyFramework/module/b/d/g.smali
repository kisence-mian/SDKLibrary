.class public Lcom/JoyFramework/module/b/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/b/b/c$a;


# instance fields
.field a:Lcom/JoyFramework/module/b/b/c$b;

.field private b:Lrx/subscriptions/CompositeSubscription;

.field private c:Lrx/Subscription;


# direct methods
.method public constructor <init>(Lcom/JoyFramework/module/b/b/c$b;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/JoyFramework/module/b/d/g;->a:Lcom/JoyFramework/module/b/b/c$b;

    .line 38
    iget-object v0, p0, Lcom/JoyFramework/module/b/d/g;->a:Lcom/JoyFramework/module/b/b/c$b;

    invoke-interface {v0, p0}, Lcom/JoyFramework/module/b/b/c$b;->a(Ljava/lang/Object;)V

    .line 39
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/b/d/g;->b:Lrx/subscriptions/CompositeSubscription;

    .line 41
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 46
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/JoyFramework/remote/bean/aq;)V
    .registers 9

    .prologue
    .line 56
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {p1, v0, p2}, Lcom/JoyFramework/remote/a/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/JoyFramework/remote/bean/aq;)Ljava/util/HashMap;

    move-result-object v1

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

    invoke-static {v1, v2}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v2

    new-instance v3, Lcom/JoyFramework/remote/b/c/b;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/JoyFramework/module/b/d/h;

    invoke-direct {v5, p0}, Lcom/JoyFramework/module/b/d/h;-><init>(Lcom/JoyFramework/module/b/d/g;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/JoyFramework/remote/b/d/b;->m(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/b/d/g;->c:Lrx/Subscription;

    .line 75
    iget-object v0, p0, Lcom/JoyFramework/module/b/d/g;->b:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lcom/JoyFramework/module/b/d/g;->c:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 76
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/JoyFramework/module/b/d/g;->b:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->clear()V

    .line 52
    return-void
.end method
