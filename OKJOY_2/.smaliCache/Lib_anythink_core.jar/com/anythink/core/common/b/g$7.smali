.class final Lcom/anythink/core/common/b/g$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/core/common/b/g;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/anythink/core/common/b/g;


# direct methods
.method constructor <init>(Lcom/anythink/core/common/b/g;Landroid/content/Context;)V
    .registers 3

    .line 708
    iput-object p1, p0, Lcom/anythink/core/common/b/g$7;->b:Lcom/anythink/core/common/b/g;

    iput-object p2, p0, Lcom/anythink/core/common/b/g$7;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 12

    .line 713
    const-string v0, "********************************** Network Integration Status *************************************"

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 714
    const-string v2, "com.anythink.network"

    .line 715
    new-instance v3, Ldalvik/system/DexFile;

    iget-object v4, p0, Lcom/anythink/core/common/b/g$7;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v3}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 717
    :goto_18
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 718
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 721
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const-string v5, "InitManager"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 722
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_3d
    goto :goto_18

    .line 726
    :cond_3e
    sget-object v2, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_47} :catch_14f

    const-string v3, "----------------------------------------"

    if-eqz v2, :cond_50

    .line 728
    :try_start_4b
    sget-object v2, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_50
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_149

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_60} :catch_14f

    .line 732
    :try_start_60
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 733
    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_6d
    .catchall {:try_start_60 .. :try_end_6d} :catchall_146

    .line 734
    nop

    .line 736
    const/4 v6, 0x0

    :try_start_6f
    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_76

    .line 740
    goto :goto_9a

    .line 737
    :catchall_76
    move-exception v4

    .line 738
    :try_start_77
    sget-object v4, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Cannot instantiate "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", please check if a third-party SDK is imported"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    sget-object v2, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :goto_9a
    if-eqz v6, :cond_144

    instance-of v2, v6, Lcom/anythink/core/api/ATInitMediation;

    if-eqz v2, :cond_144

    .line 744
    check-cast v6, Lcom/anythink/core/api/ATInitMediation;

    .line 745
    invoke-virtual {v6}, Lcom/anythink/core/api/ATInitMediation;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    .line 746
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 747
    goto :goto_54

    .line 750
    :cond_ad
    invoke-virtual {v6}, Lcom/anythink/core/api/ATInitMediation;->getNetworkVersion()Ljava/lang/String;

    move-result-object v4

    .line 751
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_b5
    .catchall {:try_start_77 .. :try_end_b5} :catchall_146

    const-string v8, "NetworkName: "

    if-nez v7, :cond_dc

    .line 752
    :try_start_b9
    sget-object v7, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "  (v"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e9

    .line 754
    :cond_dc
    sget-object v4, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :goto_e9
    invoke-virtual {v6}, Lcom/anythink/core/api/ATInitMediation;->getNetworkSDKClass()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/b/g;->f(Ljava/lang/String;)Z

    move-result v2

    .line 757
    invoke-virtual {v6}, Lcom/anythink/core/api/ATInitMediation;->getPluginClassStatus()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/core/common/b/g;->b(Ljava/util/Map;)Z

    move-result v4

    .line 758
    iget-object v7, p0, Lcom/anythink/core/common/b/g$7;->a:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/anythink/core/api/ATInitMediation;->getActivityStatus()Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/anythink/core/common/b/g;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v7

    .line 759
    iget-object v8, p0, Lcom/anythink/core/common/b/g$7;->a:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/anythink/core/api/ATInitMediation;->getServiceStatus()Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/anythink/core/common/b/g;->b(Landroid/content/Context;Ljava/util/List;)Z

    move-result v8

    .line 760
    iget-object v9, p0, Lcom/anythink/core/common/b/g$7;->a:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/anythink/core/api/ATInitMediation;->getProviderStatus()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/anythink/core/common/b/g;->c(Landroid/content/Context;Ljava/util/List;)Z

    move-result v9

    .line 761
    iget-object v10, p0, Lcom/anythink/core/common/b/g$7;->a:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/anythink/core/api/ATInitMediation;->getMetaValutStatus()Ljava/util/List;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/anythink/core/common/b/g;->d(Landroid/content/Context;Ljava/util/List;)Z

    move-result v6

    .line 763
    if-eqz v2, :cond_12e

    if-eqz v4, :cond_12e

    if-eqz v7, :cond_12e

    if-eqz v8, :cond_12e

    if-eqz v9, :cond_12e

    if-eqz v6, :cond_12e

    const/4 v5, 0x1

    .line 765
    :cond_12e
    if-eqz v5, :cond_138

    .line 766
    sget-object v2, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string v4, "Status: Success"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f

    .line 768
    :cond_138
    sget-object v2, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    const-string v4, "Status: Fail"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :goto_13f
    sget-object v2, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_b9 .. :try_end_144} :catchall_146

    .line 776
    :cond_144
    goto/16 :goto_54

    .line 775
    :catchall_146
    move-exception v2

    .line 778
    goto/16 :goto_54

    .line 779
    :cond_149
    :try_start_149
    sget-object v1, Lcom/anythink/core/common/b/e;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_14e} :catch_14f

    .line 783
    return-void

    .line 781
    :catch_14f
    move-exception v0

    .line 785
    return-void
.end method
