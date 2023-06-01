.class public Lcom/ssjj/fnsdk/core/share/FNShare;
.super Lcom/ssjj/fnsdk/core/share/ShareImpl;


# static fields
.field private static a:Lcom/ssjj/fnsdk/core/share/FNShare;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/core/share/FNShare;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/FNShare;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/share/FNShare;->a:Lcom/ssjj/fnsdk/core/share/FNShare;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/share/ShareImpl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/FNShare;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/FNShare;Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/share/ShareImpl;->init(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/FNShare;Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/share/ShareImpl;->share(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/FNShare;->b:Z

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ": \u8bf7\u5148\u8c03\u7528\u5206\u4eab\u521d\u59cb\u5316\u63a5\u53e3 FNShare.getInstance().init(activity);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/share/FNShare;Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/ssjj/fnsdk/core/share/ShareImpl;->release(Landroid/app/Activity;)V

    return-void
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/share/FNShare;->a:Lcom/ssjj/fnsdk/core/share/FNShare;

    return-object v0
.end method


# virtual methods
.method public getSurportList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getSurportList()"

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/share/FNShare;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/share/ShareImpl;->getSurportList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Activity;)V
    .registers 3

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/FNShare;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/FNShare;->b:Z

    new-instance v0, Lcom/ssjj/fnsdk/core/share/a;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/share/a;-><init>(Lcom/ssjj/fnsdk/core/share/FNShare;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release(Landroid/app/Activity;)V
    .registers 3

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/FNShare;->b:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/FNShare;->b:Z

    new-instance v0, Lcom/ssjj/fnsdk/core/share/b;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/share/b;-><init>(Lcom/ssjj/fnsdk/core/share/FNShare;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public share(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V
    .registers 12

    const-string v0, "share()"

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/share/FNShare;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/share/c;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/ssjj/fnsdk/core/share/c;-><init>(Lcom/ssjj/fnsdk/core/share/FNShare;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public share(Landroid/app/Activity;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ssjj/fnsdk/core/share/FNShareItem;",
            "Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;",
            "Lcom/ssjj/fnsdk/core/share/FNShareListener;",
            ")V"
        }
    .end annotation

    const-string v0, "share()"

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/share/FNShare;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/share/e;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p5

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/ssjj/fnsdk/core/share/e;-><init>(Lcom/ssjj/fnsdk/core/share/FNShare;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public share(Landroid/app/Activity;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ssjj/fnsdk/core/share/FNShareItem;",
            "Lcom/ssjj/fnsdk/core/share/FNShareListener;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ssjj/fnsdk/core/share/FNShare;->share(Landroid/app/Activity;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V

    return-void
.end method
