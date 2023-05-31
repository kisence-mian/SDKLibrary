.class public Lcom/JoyFramework/module/login/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/module/login/b/a$a;


# instance fields
.field private a:Lcom/JoyFramework/module/login/b/a$b;

.field private b:Lrx/subscriptions/CompositeSubscription;

.field private c:Lrx/Subscription;


# direct methods
.method public constructor <init>(Lcom/JoyFramework/module/login/b/a$b;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/JoyFramework/module/login/e/a;->a:Lcom/JoyFramework/module/login/b/a$b;

    .line 36
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/a;->a:Lcom/JoyFramework/module/login/b/a$b;

    invoke-interface {v0, p0}, Lcom/JoyFramework/module/login/b/a$b;->a(Ljava/lang/Object;)V

    .line 37
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/login/e/a;->b:Lrx/subscriptions/CompositeSubscription;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/module/login/e/a;)Lcom/JoyFramework/module/login/b/a$b;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/a;->a:Lcom/JoyFramework/module/login/b/a$b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 42
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 51
    invoke-static {p1}, Lcom/JoyFramework/remote/a/a;->c(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 52
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

    .line 53
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v1

    new-instance v2, Lcom/JoyFramework/remote/b/c/b;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/JoyFramework/module/login/e/b;

    invoke-direct {v4, p0}, Lcom/JoyFramework/module/login/e/b;-><init>(Lcom/JoyFramework/module/login/e/a;)V

    invoke-direct {v2, v3, p1, v4}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v1, v0, v2}, Lcom/JoyFramework/remote/b/d/b;->k(Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/module/login/e/a;->c:Lrx/Subscription;

    .line 80
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/a;->b:Lrx/subscriptions/CompositeSubscription;

    iget-object v1, p0, Lcom/JoyFramework/module/login/e/a;->c:Lrx/Subscription;

    invoke-virtual {v0, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 82
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/JoyFramework/module/login/e/a;->b:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->clear()V

    .line 47
    return-void
.end method
