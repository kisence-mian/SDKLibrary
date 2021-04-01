.class public Lcom/JoyFramework/d/au;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PaymentUtil"


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/text/SimpleDateFormat;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const v0, 0xea60

    iput v0, p0, Lcom/JoyFramework/d/au;->f:I

    .line 46
    const v0, 0x1d4c0

    iput v0, p0, Lcom/JoyFramework/d/au;->g:I

    .line 47
    const v0, 0x493e0

    iput v0, p0, Lcom/JoyFramework/d/au;->h:I

    .line 48
    const v0, 0x61a80

    iput v0, p0, Lcom/JoyFramework/d/au;->i:I

    .line 51
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/d/au;->b:Ljava/util/concurrent/ExecutorService;

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/JoyFramework/d/au;->c:Ljava/text/SimpleDateFormat;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/d/au;->d:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/d/au;->e:Ljava/util/Map;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/JoyFramework/d/au;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/JoyFramework/d/au;->h:I

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 5

    .prologue
    .line 279
    new-instance v0, Lcom/JoyFramework/d/ay;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/JoyFramework/d/ay;-><init>(Lcom/JoyFramework/d/au;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-object v0
.end method

.method static synthetic a(Lcom/JoyFramework/d/au;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V
    .registers 9

    .prologue
    .line 35
    invoke-direct/range {p0 .. p7}, Lcom/JoyFramework/d/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v1, p0, Lcom/JoyFramework/d/au;->e:Ljava/util/Map;

    if-eqz v1, :cond_11

    .line 267
    iget-object v1, p0, Lcom/JoyFramework/d/au;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_11
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZ)V
    .registers 23

    .prologue
    .line 67
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_11

    .line 188
    :goto_10
    return-void

    .line 70
    :cond_11
    const-string v2, "PaymentUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPaymentResult2: orderId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", is checking !!! callFromInner="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/JoyFramework/remote/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/JoyFramework/a/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/JoyFramework/remote/b/d/f;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 74
    invoke-static {}, Lcom/JoyFramework/remote/b/d/b;->a()Lcom/JoyFramework/remote/b/d/b;

    move-result-object v11

    new-instance v12, Lcom/JoyFramework/remote/b/c/b;

    .line 75
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 76
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    new-instance v2, Lcom/JoyFramework/d/av;

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p5

    move-object/from16 v8, p3

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/JoyFramework/d/av;-><init>(Lcom/JoyFramework/d/au;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V

    invoke-direct {v12, v13, v14, v2}, Lcom/JoyFramework/remote/b/c/b;-><init>(Ljava/lang/Boolean;Landroid/content/Context;Lcom/JoyFramework/remote/b/c/c;)V

    .line 74
    move-object/from16 v0, p2

    invoke-virtual {v11, v10, v0, v12}, Lcom/JoyFramework/remote/b/d/b;->x(Ljava/lang/String;Ljava/lang/String;Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v2

    .line 186
    new-instance v3, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v3}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    invoke-virtual {v3, v2}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    goto :goto_10
.end method

.method static synthetic b(Lcom/JoyFramework/d/au;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/JoyFramework/d/au;->i:I

    return v0
.end method

.method static synthetic c(Lcom/JoyFramework/d/au;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/JoyFramework/d/au;->g:I

    return v0
.end method

.method static synthetic d(Lcom/JoyFramework/d/au;)I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/JoyFramework/d/au;->f:I

    return v0
.end method


# virtual methods
.method public a()V
    .registers 7

    .prologue
    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/JoyFramework/d/au;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_b

    .line 196
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/JoyFramework/d/au;->b:Ljava/util/concurrent/ExecutorService;

    .line 197
    :cond_b
    iget-object v0, p0, Lcom/JoyFramework/d/au;->c:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_18

    .line 198
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/JoyFramework/d/au;->c:Ljava/text/SimpleDateFormat;

    .line 200
    :cond_18
    invoke-static {}, Lcom/JoyFramework/common/JoyApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/JoyFramework/d/a/a;->a(Landroid/content/Context;)Lcom/JoyFramework/d/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/JoyFramework/d/a/a;->a()Ljava/util/List;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_9a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9a

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_30
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/JoyFramework/d/a/b;

    .line 203
    invoke-virtual {v0}, Lcom/JoyFramework/d/a/b;->b()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-static {}, Lcom/JoyFramework/user/UserManager;->getInstance()Lcom/JoyFramework/user/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/UserManager;->getUser()Lcom/JoyFramework/user/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/JoyFramework/user/User;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_96

    move-result v1

    if-eqz v1, :cond_30

    .line 208
    :try_start_52
    invoke-virtual {v0}, Lcom/JoyFramework/d/a/b;->a()Ljava/lang/String;

    move-result-object v4

    .line 210
    iget-object v1, p0, Lcom/JoyFramework/d/au;->e:Ljava/util/Map;

    if-eqz v1, :cond_a3

    .line 211
    iget-object v1, p0, Lcom/JoyFramework/d/au;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c2

    .line 212
    iget-object v1, p0, Lcom/JoyFramework/d/au;->e:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 213
    if-eqz v1, :cond_be

    .line 214
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 215
    const-string v0, "PaymentUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callbackPayResult: orderId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", is have checking !!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_90} :catch_91

    goto :goto_30

    .line 246
    :catch_91
    move-exception v0

    .line 247
    :try_start_92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_30

    .line 252
    :catch_96
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    :cond_9a
    return-void

    .line 219
    :cond_9b
    :try_start_9b
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v5, p0, Lcom/JoyFramework/d/au;->e:Ljava/util/Map;

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_a3
    :goto_a3
    invoke-virtual {v0}, Lcom/JoyFramework/d/a/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 237
    sget-object v1, Lcom/JoyFramework/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    .line 238
    sget-object v0, Lcom/JoyFramework/a/a;->b:Ljava/lang/String;

    .line 240
    :cond_b1
    invoke-direct {p0, v4, v3, v0}, Lcom/JoyFramework/d/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_30

    .line 242
    iget-object v1, p0, Lcom/JoyFramework/d/au;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_30

    .line 224
    :cond_be
    invoke-direct {p0, v3, v4}, Lcom/JoyFramework/d/au;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a3

    .line 228
    :cond_c2
    invoke-direct {p0, v3, v4}, Lcom/JoyFramework/d/au;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_c5} :catch_91

    goto :goto_a3
.end method
