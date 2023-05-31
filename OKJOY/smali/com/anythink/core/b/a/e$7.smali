.class final Lcom/anythink/core/b/a/e$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/b/a/e;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/core/b/a/e;


# direct methods
.method constructor <init>(Lcom/anythink/core/b/a/e;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 530
    iput-object p1, p0, Lcom/anythink/core/b/a/e$7;->b:Lcom/anythink/core/b/a/e;

    iput-object p2, p0, Lcom/anythink/core/b/a/e$7;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 535
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 536
    const-string v4, "com.anythink.network"

    .line 537
    new-instance v0, Ldalvik/system/DexFile;

    iget-object v5, p0, Lcom/anythink/core/b/a/e$7;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 539
    :cond_18
    :goto_18
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 540
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 543
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v6, "InitManager"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v6, "$"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 544
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 600
    :catch_3e
    move-exception v0

    :goto_3f
    return-void

    .line 548
    :cond_40
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v4, "********************************** Network Integration Status *************************************"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_54

    .line 550
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v4, "----------------------------------------"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_54
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_58
    :goto_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_64} :catch_3e

    .line 554
    :try_start_64
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 555
    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_70} :catch_e5
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_70} :catch_3e

    move-result-object v4

    .line 558
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_73
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_78} :catch_e8
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_78} :catch_3e

    move-result-object v0

    .line 564
    :goto_79
    if-eqz v0, :cond_58

    :try_start_7b
    instance-of v4, v0, Lcom/anythink/core/api/ATInitMediation;

    if-eqz v4, :cond_58

    .line 566
    check-cast v0, Lcom/anythink/core/api/ATInitMediation;

    .line 567
    invoke-virtual {v0}, Lcom/anythink/core/api/ATInitMediation;->getNetworkName()Ljava/lang/String;

    move-result-object v4

    .line 568
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 571
    sget-object v5, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v6, "NetworkName: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {v0}, Lcom/anythink/core/api/ATInitMediation;->getNetworkSDKClass()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/b/a/e;->e(Ljava/lang/String;)Z

    move-result v4

    .line 573
    invoke-virtual {v0}, Lcom/anythink/core/api/ATInitMediation;->getPluginClassStatus()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lcom/anythink/core/b/a/e;->b(Ljava/util/Map;)Z

    move-result v5

    .line 574
    iget-object v6, p0, Lcom/anythink/core/b/a/e$7;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATInitMediation;->getActivityStatus()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/anythink/core/b/a/e;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v6

    .line 575
    iget-object v7, p0, Lcom/anythink/core/b/a/e$7;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATInitMediation;->getServiceStatus()Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/anythink/core/b/a/e;->b(Landroid/content/Context;Ljava/util/List;)Z

    move-result v7

    .line 576
    iget-object v8, p0, Lcom/anythink/core/b/a/e$7;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/anythink/core/api/ATInitMediation;->getProviderStatus()Ljava/util/List;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/anythink/core/b/a/e;->c(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    .line 578
    if-eqz v4, :cond_111

    if-eqz v5, :cond_111

    if-eqz v6, :cond_111

    if-eqz v7, :cond_111

    if-eqz v0, :cond_111

    const/4 v0, 0x1

    .line 580
    :goto_d3
    if-eqz v0, :cond_113

    .line 581
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v4, "Status: Success"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :goto_dc
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v4, "----------------------------------------"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 593
    :catch_e5
    move-exception v0

    goto/16 :goto_58

    .line 560
    :catch_e8
    move-exception v4

    sget-object v4, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot instantiate "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", please check if a third-party SDK is imported"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v4, "----------------------------------------"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto/16 :goto_79

    :cond_111
    move v0, v1

    .line 578
    goto :goto_d3

    .line 583
    :cond_113
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v4, "Status: Fail"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_11a} :catch_e5
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_11a} :catch_3e

    goto :goto_dc

    .line 594
    :cond_11b
    :try_start_11b
    sget-object v0, Lcom/anythink/core/b/a/d;->l:Ljava/lang/String;

    const-string v1, "********************************** Network Integration Status *************************************"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_122} :catch_3e

    goto/16 :goto_3f
.end method
