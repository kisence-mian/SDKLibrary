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

    .prologue
    .line 306
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/c/j;Lcom/bytedance/sdk/openadsdk/c/j$1;)V
    .registers 3

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/c/j$a;-><init>(Lcom/bytedance/sdk/openadsdk/c/j;)V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->c(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readHtml(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 333
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 352
    :cond_c
    :goto_c
    return-void

    .line 336
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->d(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 337
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Lcom/bytedance/sdk/openadsdk/c/j;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 340
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->d(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 341
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->d(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/c;

    .line 347
    :goto_37
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/d/c;->b(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/j;->e(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_4c

    .line 349
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Lcom/bytedance/sdk/openadsdk/c/j;Ljava/util/List;)Ljava/util/List;

    .line 351
    :cond_4c
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/j;->e(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 343
    :cond_56
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/c;-><init>()V

    .line 344
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/c/j;->d(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/c;->a(Ljava/lang/String;)V

    goto :goto_37
.end method

.method public readPercent(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 309
    const-string v3, "LandingPageLog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "measure height: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Lcom/bytedance/sdk/openadsdk/c/j;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_55

    move v0, v1

    :goto_19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "LandingPageLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read percent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :try_start_40
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_47} :catch_64

    move-result v0

    .line 315
    if-le v0, v2, :cond_60

    move v1, v2

    .line 323
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->b(Lcom/bytedance/sdk/openadsdk/c/j;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 324
    return-void

    .line 309
    :cond_55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/c/j$a;->a:Lcom/bytedance/sdk/openadsdk/c/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/j;->a(Lcom/bytedance/sdk/openadsdk/c/j;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    goto :goto_19

    .line 317
    :cond_60
    if-ltz v0, :cond_4b

    move v1, v0

    goto :goto_4b

    .line 321
    :catch_64
    move-exception v0

    goto :goto_4b
.end method
