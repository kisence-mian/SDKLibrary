.class public Lcom/JoyFramework/module/login/e/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/login/b/d$a;


# instance fields
.field private a:Lcom/JoyFramework/module/login/b/d$b;

.field private b:Lrx/subscriptions/CompositeSubscription;

.field private c:Lrx/Subscription;


# direct methods
.method public constructor <init>(Lcom/JoyFramework/module/login/b/d$b;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/JoyFramework/module/login/e/h;->a:Lcom/JoyFramework/module/login/b/d$b;

    .line 33
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/h;->a:Lcom/JoyFramework/module/login/b/d$b;

    invoke-interface {v0, p0}, Lcom/JoyFramework/module/login/b/d$b;->a(Ljava/lang/Object;)V

    .line 34
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/login/e/h;->b:Lrx/subscriptions/CompositeSubscription;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/e/h;)Lcom/JoyFramework/module/login/b/d$b;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/h;->a:Lcom/JoyFramework/module/login/b/d$b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 40
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 51
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

    .line 53
    invoke-static {p1, p2, v0, v3}, Lcom/JoyFramework/remote/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object v0

    .line 55
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

    .line 56
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v1

    new-instance v2, Lcom/JoyFramework/remote/b/c/b;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/JoyFramework/module/login/e/i;

    invoke-direct {v4, p0, p3}, Lcom/JoyFramework/module/login/e/i;-><init>(Lcom/JoyFramework/module/login/e/h;Ljava/lang/String;)V

    invoke-direct {v2, v3, p1, v4}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/remote/b/d/b;->d(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/e/h;->c:Lrx/Subscription;

    .line 70
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/h;->b:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lcom/JoyFramework/module/login/e/h;->c:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 71
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/h;->b:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->clear()V

    .line 45
    return-void
.end method
