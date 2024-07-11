.class Lcom/bytedance/sdk/openadsdk/c/j$a;
.super Ljava/lang/Object;
.source "LandingPageLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/c/j;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/c/j;)V
    .registers 2

    .line 363
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/c/j;Lcom/bytedance/sdk/openadsdk/c/j$1;)V
    .registers 3

    .line 363
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/j$a;-><init>(Lcom/bytedance/sdk/openadsdk/c/j;)V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->c(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readHtml(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_69

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_69

    .line 393
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->d(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Lcom/bytedance/sdk/openadsdk/c/j;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 397
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->d(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 398
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->d(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/d;

    goto :goto_4a

    .line 400
    :cond_38
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/d;-><init>()V

    .line 401
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/j;->d(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/d;->a(Ljava/lang/String;)V

    move-object p1, v0

    .line 404
    :goto_4a
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/d;->b(Ljava/lang/String;)V

    .line 405
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/j;->e(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_5f

    .line 406
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Lcom/bytedance/sdk/openadsdk/c/j;Ljava/util/List;)Ljava/util/List;

    .line 408
    :cond_5f
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/c/j;->e(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    return-void

    .line 391
    :cond_69
    :goto_69
    return-void
.end method

.method public readPercent(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "measure height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Lcom/bytedance/sdk/openadsdk/c/j;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    move v1, v2

    goto :goto_20

    :cond_16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Lcom/bytedance/sdk/openadsdk/c/j;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v1

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LandingPageLog"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read percent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    nop

    .line 371
    :try_start_48
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_5c

    .line 372
    const/16 v0, 0x64

    if-le p1, v0, :cond_56

    .line 373
    move v2, v0

    goto :goto_5a

    .line 374
    :cond_56
    if-gez p1, :cond_59

    .line 375
    goto :goto_5a

    .line 374
    :cond_59
    move v2, p1

    .line 377
    :goto_5a
    nop

    .line 379
    goto :goto_5d

    .line 378
    :catchall_5c
    move-exception p1

    .line 380
    :goto_5d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/j;->b(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 381
    return-void
.end method
