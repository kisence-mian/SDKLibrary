.class public Lcom/JoyFramework/module/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lrx/subscriptions/CompositeSubscription;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/module/b/a;->b:Lrx/subscriptions/CompositeSubscription;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/JoyFramework/module/b/a;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/JoyFramework/module/b/a;->a:Landroid/content/Context;

    .line 45
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/module/b/a;->b:Lrx/subscriptions/CompositeSubscription;

    .line 47
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/JoyFramework/common/PaymentInfo;)V
    .registers 9

    .prologue
    .line 51
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p2}, Lcom/JoyFramework/common/PaymentInfo;->getUserCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 53
    invoke-virtual {p2}, Lcom/JoyFramework/common/PaymentInfo;->getUserCode()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/JoyFramework/user/User;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/JoyFramework/user/User;->getPwd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/JoyFramework/user/UserManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_39
    invoke-static {p1, p2, v0}, Lcom/JoyFramework/remote/a/a;->a(Landroid/content/Context;Lcom/JoyFramework/common/PaymentInfo;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 58
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

    .line 60
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v2

    new-instance v3, Lcom/JoyFramework/remote/b/c/b;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/JoyFramework/module/b/b;

    invoke-direct {v5, p0, p1, p2}, Lcom/JoyFramework/module/b/b;-><init>(Lcom/JoyFramework/module/b/a;Landroid/content/Context;Lcom/JoyFramework/common/PaymentInfo;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/JoyFramework/remote/b/d/b;->g(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/JoyFramework/module/b/a;->b:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 134
    return-void
.end method
