.class Lcom/tendcloud/tenddata/game/w;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Lcom/tendcloud/tenddata/game/bj;


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/zz;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/zz;Landroid/content/Context;)V
    .registers 3

    .line 1337
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/w;->this$0:Lcom/tendcloud/tenddata/game/zz;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/w;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterMethodInvoked(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 1341
    return-void
.end method

.method public beforeMethodInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 4

    .line 1346
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1348
    iget-object p2, p0, Lcom/tendcloud/tenddata/game/w;->val$ctx:Landroid/content/Context;

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_2d

    .line 1349
    const-string p2, "activityPaused"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 1350
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/w;->val$ctx:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget-object p2, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/ai;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V

    goto :goto_2d

    .line 1351
    :cond_1c
    const-string p2, "activityIdle"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 1352
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/w;->val$ctx:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget-object p2, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/ai;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V

    .line 1355
    :cond_2d
    :goto_2d
    return-void
.end method
