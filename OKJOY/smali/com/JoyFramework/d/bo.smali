.class public Lcom/JoyFramework/d/bo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/JoyFramework/common/IShareCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/d/bo;->b:Lcom/JoyFramework/common/IShareCallback;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/d/bo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/JoyFramework/d/bo;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 166
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v0

    new-instance v1, Lcom/JoyFramework/d/br;

    invoke-direct {v1, p0, p1, p2}, Lcom/JoyFramework/d/br;-><init>(Lcom/JoyFramework/d/bo;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/JoyFramework/remote/b/d/b;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/JoyFramework/remote/b/d/b$a;)V

    .line 184
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/d/bo;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/JoyFramework/d/bo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 8

    .prologue
    .line 213
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {}, Lcom/JoyFramework/remote/a/a;->b()Ljava/util/HashMap;

    move-result-object v1

    .line 216
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

    .line 218
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v2

    new-instance v3, Lcom/JoyFramework/remote/b/c/b;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/JoyFramework/d/bs;

    invoke-direct {v5, p0, p1}, Lcom/JoyFramework/d/bs;-><init>(Lcom/JoyFramework/d/bo;Landroid/app/Activity;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/JoyFramework/remote/b/d/b;->z(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 251
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 253
    return-void
.end method

.method public a(Landroid/app/Activity;I)V
    .registers 9

    .prologue
    .line 257
    iget-object v0, p0, Lcom/JoyFramework/d/bo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 258
    const-string v0, ""

    .line 259
    packed-switch p2, :pswitch_data_a6

    .line 303
    :cond_d
    :goto_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 304
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lcom/JoyFramework/d/bo;->a:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Lcom/JoyFramework/remote/a/a;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 307
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

    .line 309
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v2

    new-instance v3, Lcom/JoyFramework/remote/b/c/b;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/JoyFramework/d/bv;

    invoke-direct {v5, p0}, Lcom/JoyFramework/d/bv;-><init>(Lcom/JoyFramework/d/bo;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/JoyFramework/remote/b/d/b;->A(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 320
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 323
    :cond_5d
    return-void

    .line 262
    :pswitch_5e
    const-string v0, "QQ"

    .line 264
    iget-object v1, p0, Lcom/JoyFramework/d/bo;->b:Lcom/JoyFramework/common/IShareCallback;

    if-eqz v1, :cond_d

    .line 265
    iget-object v1, p0, Lcom/JoyFramework/d/bo;->b:Lcom/JoyFramework/common/IShareCallback;

    sget-object v2, Lcom/JoyFramework/common/IShareCallback$Type;->QQ:Lcom/JoyFramework/common/IShareCallback$Type;

    invoke-interface {v1, v2}, Lcom/JoyFramework/common/IShareCallback;->shared(Lcom/JoyFramework/common/IShareCallback$Type;)V

    goto :goto_d

    .line 270
    :pswitch_6c
    const-string v0, "QQ\u7a7a\u95f4"

    .line 272
    iget-object v1, p0, Lcom/JoyFramework/d/bo;->b:Lcom/JoyFramework/common/IShareCallback;

    if-eqz v1, :cond_d

    .line 273
    iget-object v1, p0, Lcom/JoyFramework/d/bo;->b:Lcom/JoyFramework/common/IShareCallback;

    sget-object v2, Lcom/JoyFramework/common/IShareCallback$Type;->QQZone:Lcom/JoyFramework/common/IShareCallback$Type;

    invoke-interface {v1, v2}, Lcom/JoyFramework/common/IShareCallback;->shared(Lcom/JoyFramework/common/IShareCallback$Type;)V

    goto :goto_d

    .line 278
    :pswitch_7a
    const-string v0, "\u5fae\u4fe1\u597d\u53cb"

    .line 280
    iget-object v1, p0, Lcom/JoyFramework/d/bo;->b:Lcom/JoyFramework/common/IShareCallback;

    if-eqz v1, :cond_d

    .line 281
    iget-object v1, p0, Lcom/JoyFramework/d/bo;->b:Lcom/JoyFramework/common/IShareCallback;

    sget-object v2, Lcom/JoyFramework/common/IShareCallback$Type;->WeChat:Lcom/JoyFramework/common/IShareCallback$Type;

    invoke-interface {v1, v2}, Lcom/JoyFramework/common/IShareCallback;->shared(Lcom/JoyFramework/common/IShareCallback$Type;)V

    goto :goto_d

    .line 286
    :pswitch_88
    const-string v0, "\u5fae\u4fe1\u670b\u53cb\u5708"

    .line 288
    iget-object v1, p0, Lcom/JoyFramework/d/bo;->b:Lcom/JoyFramework/common/IShareCallback;

    if-eqz v1, :cond_d

    .line 289
    iget-object v1, p0, Lcom/JoyFramework/d/bo;->b:Lcom/JoyFramework/common/IShareCallback;

    sget-object v2, Lcom/JoyFramework/common/IShareCallback$Type;->Moments:Lcom/JoyFramework/common/IShareCallback$Type;

    invoke-interface {v1, v2}, Lcom/JoyFramework/common/IShareCallback;->shared(Lcom/JoyFramework/common/IShareCallback$Type;)V

    goto/16 :goto_d

    .line 294
    :pswitch_97
    const-string v0, "\u65b0\u6d6a\u5fae\u535a"

    .line 296
    iget-object v1, p0, Lcom/JoyFramework/d/bo;->b:Lcom/JoyFramework/common/IShareCallback;

    if-eqz v1, :cond_d

    .line 297
    iget-object v1, p0, Lcom/JoyFramework/d/bo;->b:Lcom/JoyFramework/common/IShareCallback;

    sget-object v2, Lcom/JoyFramework/common/IShareCallback$Type;->WeiBo:Lcom/JoyFramework/common/IShareCallback$Type;

    invoke-interface {v1, v2}, Lcom/JoyFramework/common/IShareCallback;->shared(Lcom/JoyFramework/common/IShareCallback$Type;)V

    goto/16 :goto_d

    .line 259
    :pswitch_data_a6
    .packed-switch 0x10
        :pswitch_5e
        :pswitch_6c
        :pswitch_7a
        :pswitch_88
        :pswitch_97
    .end packed-switch
.end method

.method public a(Landroid/app/Activity;Lcom/JoyFramework/common/IShareCallback;)V
    .registers 9

    .prologue
    .line 48
    iget-object v0, p0, Lcom/JoyFramework/d/bo;->b:Lcom/JoyFramework/common/IShareCallback;

    if-nez v0, :cond_8

    .line 49
    if-eqz p2, :cond_8

    .line 50
    iput-object p2, p0, Lcom/JoyFramework/d/bo;->b:Lcom/JoyFramework/common/IShareCallback;

    .line 54
    :cond_8
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/JoyFramework/remote/a/a;->a()Ljava/util/HashMap;

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

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v5, Lcom/JoyFramework/d/bp;

    invoke-direct {v5, p0, p1}, Lcom/JoyFramework/d/bp;-><init>(Lcom/JoyFramework/d/bo;Landroid/app/Activity;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    invoke-virtual {v2, v1, v0, v3}, Lcom/JoyFramework/remote/b/d/b;->y(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 161
    new-instance v1, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v1}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    invoke-virtual {v1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 163
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 192
    if-eqz p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 205
    :cond_9
    :goto_9
    return v2

    .line 195
    :cond_a
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 197
    if-eqz v3, :cond_9

    move v1, v2

    .line 198
    :goto_15
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 199
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 200
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 201
    const/4 v2, 0x1

    goto :goto_9

    .line 198
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15
.end method
