.class public Lcom/JoyFramework/module/login/e/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/login/b/f$a;


# instance fields
.field private a:Lcom/JoyFramework/module/login/b/f$b;

.field private b:Lrx/subscriptions/CompositeSubscription;

.field private c:Lrx/Subscription;


# direct methods
.method public constructor <init>(Lcom/JoyFramework/module/login/b/f$b;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/JoyFramework/module/login/e/q;->a:Lcom/JoyFramework/module/login/b/f$b;

    .line 33
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/q;->a:Lcom/JoyFramework/module/login/b/f$b;

    invoke-interface {v0, p0}, Lcom/JoyFramework/module/login/b/f$b;->a(Ljava/lang/Object;)V

    .line 34
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/login/e/q;->b:Lrx/subscriptions/CompositeSubscription;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/e/q;)Lcom/JoyFramework/module/login/b/f$b;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/q;->a:Lcom/JoyFramework/module/login/b/f$b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 40
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 49
    const-string v0, "5"

    invoke-static {p1, p2, v0}, Lcom/JoyFramework/remote/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 51
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

    .line 52
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v1

    new-instance v2, Lcom/JoyFramework/remote/b/c/b;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/JoyFramework/module/login/e/r;

    invoke-direct {v4, p0, p1}, Lcom/JoyFramework/module/login/e/r;-><init>(Lcom/JoyFramework/module/login/e/q;Landroid/content/Context;)V

    invoke-direct {v2, v3, p1, v4}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/remote/b/d/b;->f(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/e/q;->c:Lrx/Subscription;

    .line 65
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/q;->b:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lcom/JoyFramework/module/login/e/q;->c:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 67
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/q;->b:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->clear()V

    .line 45
    return-void
.end method
