.class public Lcom/ssjj/fnsdk/core/share/ShareImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/share/FNShareApi;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/share/FNShareApi;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected a(Lcom/ssjj/fnsdk/core/share/FNShareApi;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public checkShare(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    invoke-interface {v1, p1}, Lcom/ssjj/fnsdk/core/share/FNShareApi;->isSurport(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1, p1}, Lcom/ssjj/fnsdk/core/share/FNShareApi;->checkShare(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "share getIcon -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_20

    const/4 p1, 0x0

    return-object p1

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    invoke-interface {v1, p1}, Lcom/ssjj/fnsdk/core/share/FNShareApi;->isSurport(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1, p1}, Lcom/ssjj/fnsdk/core/share/FNShareApi;->getIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "share getName -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_21

    const-string p1, ""

    return-object p1

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    invoke-interface {v1, p1}, Lcom/ssjj/fnsdk/core/share/FNShareApi;->isSurport(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1, p1}, Lcom/ssjj/fnsdk/core/share/FNShareApi;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSurportList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "share getSurportList"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->b:Ljava/util/List;

    return-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    invoke-interface {v1}, Lcom/ssjj/fnsdk/core/share/FNShareApi;->getSurportList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_10
.end method

.method public init(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "share init"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    invoke-interface {v1, p1}, Lcom/ssjj/fnsdk/core/share/FNShareApi;->init(Landroid/app/Activity;)V

    goto :goto_b
.end method

.method public invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z
    .registers 16

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    return v2

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const/4 v4, 0x1

    :try_start_19
    const-string v5, "invoke"

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/app/Activity;

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    const-class v8, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-class v8, Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v10, 0x3

    aput-object v8, v7, v10

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v1

    aput-object p2, v6, v4

    aput-object p3, v6, v9

    aput-object p4, v6, v10

    invoke-static {v3, v5, v7, v6}, Lcom/ssjj/fnsdk/core/RefUtil;->invoke2(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_40} :catch_41

    goto :goto_46

    :catch_41
    move-exception v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_46
    if-nez v2, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x1

    goto :goto_8
.end method

.method public isSurport(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    invoke-interface {v1, p1}, Lcom/ssjj/fnsdk/core/share/FNShareApi;->isSurport(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x1

    return p1
.end method

.method public isSurportFunc(Ljava/lang/String;)Z
    .registers 9

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return v2

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    const/4 v3, 0x1

    :try_start_18
    const-string v4, "isSurportFunc"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-static {v1, v4, v5, v6}, Lcom/ssjj/fnsdk/core/RefUtil;->invoke2(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2a} :catch_2b

    goto :goto_30

    :catch_2b
    move-exception v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_30
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    return v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 13

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    :try_start_13
    const-string v2, "onActivityResult"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/content/Intent;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    aput-object p3, v3, v8

    invoke-static {v1, v2, v4, v3}, Lcom/ssjj/fnsdk/core/RefUtil;->invoke2(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3a} :catch_3b

    goto :goto_6

    :catch_3b
    move-exception v1

    goto :goto_6
.end method

.method public onDestroy()V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    :try_start_13
    const-string v2, "onDestroy"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v3}, Lcom/ssjj/fnsdk/core/RefUtil;->invoke2(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_6

    :catch_1e
    move-exception v1

    goto :goto_6
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 9

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    :try_start_13
    const-string v2, "onNewIntent"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v1, v2, v4, v3}, Lcom/ssjj/fnsdk/core/RefUtil;->invoke2(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_24} :catch_25

    goto :goto_6

    :catch_25
    move-exception v1

    goto :goto_6
.end method

.method public onPause()V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    :try_start_13
    const-string v2, "onPause"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v3}, Lcom/ssjj/fnsdk/core/RefUtil;->invoke2(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_6

    :catch_1e
    move-exception v1

    goto :goto_6
.end method

.method public onRestart()V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    :try_start_13
    const-string v2, "onRestart"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v3}, Lcom/ssjj/fnsdk/core/RefUtil;->invoke2(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_6

    :catch_1e
    move-exception v1

    goto :goto_6
.end method

.method public onResume()V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    :try_start_13
    const-string v2, "onResume"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v3}, Lcom/ssjj/fnsdk/core/RefUtil;->invoke2(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_6

    :catch_1e
    move-exception v1

    goto :goto_6
.end method

.method public onStart()V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    :try_start_13
    const-string v2, "onStart"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v3}, Lcom/ssjj/fnsdk/core/RefUtil;->invoke2(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_6

    :catch_1e
    move-exception v1

    goto :goto_6
.end method

.method public onStop()V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    :try_start_13
    const-string v2, "onStop"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v3}, Lcom/ssjj/fnsdk/core/RefUtil;->invoke2(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_6

    :catch_1e
    move-exception v1

    goto :goto_6
.end method

.method public release(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "share release"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12

    return-void

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    invoke-interface {v1, p1}, Lcom/ssjj/fnsdk/core/share/FNShareApi;->release(Landroid/app/Activity;)V

    goto :goto_b
.end method

.method public share(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "share -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "share err: \u65e0\u5206\u4eabsdk"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :cond_2f
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/ShareImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3d

    const/4 p1, 0x0

    goto :goto_4d

    :cond_3d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/FNShareApi;

    invoke-interface {v1, p2}, Lcom/ssjj/fnsdk/core/share/FNShareApi;->isSurport(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/share/FNShareApi;->share(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V

    const/4 p1, 0x1

    :goto_4d
    if-nez p1, :cond_75

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "not found: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p4, :cond_75

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u4e0d\u652f\u6301\u5206\u4eab\u5230 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p1}, Lcom/ssjj/fnsdk/core/share/FNShareListener;->onFail(Lcom/ssjj/fnsdk/core/share/FNShareItem;Ljava/lang/String;)V

    :cond_75
    return-void
.end method
