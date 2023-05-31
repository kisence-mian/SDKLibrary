.class public final Lcom/mintegral/msdk/reward/a/c;
.super Ljava/lang/Object;
.source "RewardMVVideoAdapter.java"

# interfaces
.implements Lcom/mintegral/msdk/reward/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/reward/a/c$i;,
        Lcom/mintegral/msdk/reward/a/c$h;,
        Lcom/mintegral/msdk/reward/a/c$a;,
        Lcom/mintegral/msdk/reward/a/c$b;,
        Lcom/mintegral/msdk/reward/a/c$d;,
        Lcom/mintegral/msdk/reward/a/c$g;,
        Lcom/mintegral/msdk/reward/a/c$e;,
        Lcom/mintegral/msdk/reward/a/c$c;,
        Lcom/mintegral/msdk/reward/a/c$j;,
        Lcom/mintegral/msdk/reward/a/c$f;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/mintegral/msdk/reward/a/d;

.field private k:Lcom/mintegral/msdk/reward/a/b;

.field private l:Lcom/mintegral/msdk/videocommon/e/c;

.field private m:Lcom/mintegral/msdk/reward/a/c$i;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c;->n:Z

    .line 122
    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c;->o:Z

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->a:Ljava/util/List;

    .line 162
    const/4 v0, 0x2

    iput v0, p0, Lcom/mintegral/msdk/reward/a/c;->p:I

    .line 192
    new-instance v0, Lcom/mintegral/msdk/reward/a/c$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/reward/a/c$1;-><init>(Lcom/mintegral/msdk/reward/a/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    .line 484
    :try_start_1d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    .line 485
    iput-object p2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    .line 486
    invoke-virtual {p0}, Lcom/mintegral/msdk/reward/a/c;->b()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_29

    .line 490
    :goto_28
    return-void

    .line 488
    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    .registers 4

    .prologue
    .line 1083
    const/4 v0, 0x0

    .line 1085
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1086
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/mintegral/msdk/videocommon/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v0

    .line 1092
    :cond_f
    :goto_f
    return-object v0

    .line 1089
    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method static synthetic a(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/base/entity/CampaignUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1854
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1856
    :try_start_7
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Ljava/util/List;)V

    .line 1858
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    if-eqz v0, :cond_1c7

    .line 1859
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/c;->w()I

    move-result v0

    .line 1860
    if-gtz v0, :cond_1c4

    move v8, v5

    .line 1864
    :goto_1b
    if-eqz p1, :cond_13d

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_13d

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13d

    .line 1865
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v10

    .line 1866
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onload \u603b\u5171\u8fd4\u56de \u7684compaign\u6709\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v4

    .line 1868
    :goto_4a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_19f

    if-ge v7, v8, :cond_19f

    .line 1869
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1875
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v1

    if-eqz v1, :cond_145

    .line 1876
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_102

    .line 1877
    const/4 v2, 0x0

    .line 1878
    const-string v1, ""

    .line 1879
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v3

    const/16 v6, 0x11f

    if-ne v3, v6, :cond_107

    .line 1880
    const-string v1, "3"
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_79} :catch_139

    move-object v6, v1

    .line 1887
    :goto_7a
    :try_start_7a
    sget-object v1, Lcom/mintegral/msdk/base/common/b/c;->g:Lcom/mintegral/msdk/base/common/b/c;

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/b/e;->b(Lcom/mintegral/msdk/base/common/b/c;)Ljava/lang/String;

    move-result-object v3

    .line 1888
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1889
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_96

    .line 1890
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :cond_96
    const-string v11, ".html"

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1891
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_a6} :catch_121
    .catchall {:try_start_7a .. :try_end_a6} :catchall_13e

    .line 1894
    :try_start_a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1895
    const-string v2, "<script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v12, Lcom/mintegral/msdk/base/utils/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "</script>"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1899
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1900
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 1902
    const-string v1, ""

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v6}, Lcom/mintegral/msdk/base/common/e/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_df} :catch_1bb
    .catchall {:try_start_a6 .. :try_end_df} :catchall_1b8

    .line 1909
    :try_start_df
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1913
    :cond_e2
    :goto_e2
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1914
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_fd

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_fd

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_145

    .line 1915
    :cond_fd
    const-string v0, "mraid resource write fail"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/reward/a/c;->b(Ljava/lang/String;)V

    .line 1868
    :cond_102
    :goto_102
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_4a

    .line 1881
    :cond_107
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v3

    const/16 v6, 0x5e

    if-ne v3, v6, :cond_114

    .line 1882
    const-string v1, "1"

    move-object v6, v1

    goto/16 :goto_7a

    .line 1883
    :cond_114
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAdType()I

    move-result v3

    const/16 v6, 0x2a

    if-ne v3, v6, :cond_1c1

    .line 1884
    const-string v1, "2"
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_11e} :catch_139

    move-object v6, v1

    goto/16 :goto_7a

    .line 1903
    :catch_121
    move-exception v1

    .line 1904
    :goto_122
    :try_start_122
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1905
    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 1906
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v3, v6}, Lcom/mintegral/msdk/base/common/e/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_133
    .catchall {:try_start_122 .. :try_end_133} :catchall_13e

    .line 1908
    if-eqz v2, :cond_e2

    .line 1909
    :try_start_135
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_138} :catch_139

    goto :goto_e2

    .line 1950
    :catch_139
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1952
    :cond_13d
    :goto_13d
    return-object v9

    .line 1908
    :catchall_13e
    move-exception v0

    :goto_13f
    if-eqz v2, :cond_144

    .line 1909
    :try_start_141
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_144
    throw v0

    .line 1923
    :cond_145
    if-eqz v0, :cond_102

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOfferType()I

    move-result v1

    const/16 v2, 0x63

    if-eq v1, v2, :cond_102

    .line 1925
    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->d(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v1

    if-eqz v1, :cond_182

    .line 1926
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1bf

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1bf

    move v1, v4

    .line 1934
    :goto_16a
    if-eqz v1, :cond_102

    .line 1936
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getWtick()I

    move-result v1

    if-eq v1, v5, :cond_17e

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18e

    .line 1937
    :cond_17e
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_102

    .line 1930
    :cond_182
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1bf

    move v1, v4

    .line 1931
    goto :goto_16a

    .line 1939
    :cond_18e
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v1

    if-nez v1, :cond_19a

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v1

    if-eqz v1, :cond_102

    .line 1940
    :cond_19a
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_102

    .line 1947
    :cond_19f
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onload \u8fd4\u56de\u6709\u4ee5\u4e0b\u5e26\u6709\u89c6\u9891\u7d20\u6750\u7684compaign\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_1b7} :catch_139

    goto :goto_13d

    .line 1908
    :catchall_1b8
    move-exception v0

    move-object v2, v3

    goto :goto_13f

    .line 1903
    :catch_1bb
    move-exception v1

    move-object v2, v3

    goto/16 :goto_122

    :cond_1bf
    move v1, v5

    goto :goto_16a

    :cond_1c1
    move-object v6, v1

    goto/16 :goto_7a

    :cond_1c4
    move v8, v0

    goto/16 :goto_1b

    :cond_1c7
    move v8, v5

    goto/16 :goto_1b
.end method

.method private a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;)V
    .registers 9

    .prologue
    const/16 v1, 0x10

    .line 1485
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1487
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    .line 1489
    const-string v0, "zip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1491
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/j;->a()Lcom/mintegral/msdk/videocommon/download/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/videocommon/download/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move v0, v1

    .line 1503
    :goto_1c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1504
    iput v0, v1, Landroid/os/Message;->what:I

    .line 1505
    const/4 v0, 0x0

    aput-object p1, v2, v0

    .line 1506
    const/4 v0, 0x1

    aput-object p2, v2, v0

    .line 1507
    const/4 v0, 0x2

    aput-object p3, v2, v0

    .line 1508
    const/4 v0, 0x3

    aput-object p4, v2, v0

    .line 1509
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1510
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1515
    :cond_35
    :goto_35
    return-void

    .line 1495
    :cond_36
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/h;->a()Lcom/mintegral/msdk/videocommon/download/h;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mintegral/msdk/videocommon/download/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1496
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_41} :catch_4b

    move-result v3

    if-eqz v3, :cond_46

    move v0, v1

    .line 1498
    goto :goto_1c

    .line 1500
    :cond_46
    const/16 v1, 0x9

    move-object p2, v0

    move v0, v1

    goto :goto_1c

    .line 1515
    :catch_4b
    move-exception v0

    goto :goto_35
.end method

.method static synthetic a(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;ILjava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;)V
    .registers 19

    .prologue
    .line 72
    .line 5356
    :try_start_0
    new-instance v10, Lcom/mintegral/msdk/videocommon/a$a;

    invoke-direct {v10}, Lcom/mintegral/msdk/videocommon/a$a;-><init>()V

    .line 5357
    new-instance v11, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v11, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    .line 5358
    invoke-virtual {v10, v11}, Lcom/mintegral/msdk/videocommon/a$a;->a(Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V

    .line 5359
    new-instance v12, Lcom/mintegral/msdk/video/js/a/h;

    const/4 v2, 0x0

    invoke-direct {v12, v2, p1}, Lcom/mintegral/msdk/video/js/a/h;-><init>(Landroid/app/Activity;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 5360
    iget v2, p0, Lcom/mintegral/msdk/reward/a/c;->p:I

    invoke-virtual {v12, v2}, Lcom/mintegral/msdk/video/js/a/h;->a(I)V

    .line 5361
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/mintegral/msdk/video/js/a/h;->a(Ljava/lang/String;)V

    .line 5362
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Lcom/mintegral/msdk/video/js/a/h;->a(Lcom/mintegral/msdk/videocommon/e/c;)V

    .line 5363
    new-instance v2, Lcom/mintegral/msdk/reward/a/c$f;

    iget v7, p0, Lcom/mintegral/msdk/reward/a/c;->p:I

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p3

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/mintegral/msdk/reward/a/c$f;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;IILcom/mintegral/msdk/reward/a/c;)V

    .line 5364
    new-instance v3, Lcom/mintegral/msdk/reward/a/c$j;

    iget-object v8, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    move-object v4, v10

    move-object v5, p1

    move-object v6, p0

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/mintegral/msdk/reward/a/c$j;-><init>(Lcom/mintegral/msdk/videocommon/a$a;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/reward/a/c$f;Landroid/os/Handler;)V

    .line 5365
    invoke-virtual {v11, v3}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/mintegral/msdk/mtgjscommon/windvane/c;)V

    .line 5366
    invoke-virtual {v11, v12}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 5367
    sparse-switch p3, :sswitch_data_70

    .line 5375
    :goto_4e
    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5378
    :goto_55
    return-void

    .line 5369
    :sswitch_56
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v4

    const-string v6, "text/html"

    const-string v7, "utf-8"

    const/4 v8, 0x0

    move-object v3, v11

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 72
    :catch_69
    move-exception v2

    goto :goto_55

    .line 5372
    :sswitch_6b
    invoke-virtual {v11, p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6e} :catch_69

    goto :goto_4e

    .line 5367
    nop

    :sswitch_data_70
    .sparse-switch
        0x9 -> :sswitch_56
        0x10 -> :sswitch_6b
    .end sparse-switch
.end method

.method static synthetic a(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;)V
    .registers 5

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;)V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V
    .registers 7

    .prologue
    .line 72
    .line 7125
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/base/entity/CampaignUnit;)Ljava/util/List;

    move-result-object v1

    .line 7129
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c6

    .line 7130
    const-string v0, "RewardMVVideoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onload load\u6210\u529f size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7131
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/a/c;->h()V

    .line 7138
    :goto_25
    if-eqz p1, :cond_47

    .line 7139
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignUnit;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 8156
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 8157
    const-string v2, "RewardMVVideoAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onload sessionId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8158
    sput-object v0, Lcom/mintegral/msdk/reward/b/a;->a:Ljava/lang/String;

    .line 9078
    :cond_47
    :try_start_47
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_56

    .line 9079
    iget v0, p0, Lcom/mintegral/msdk/reward/a/c;->d:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mintegral/msdk/reward/a/c;->d:I

    .line 9081
    :cond_56
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    if-eqz v0, :cond_64

    iget v0, p0, Lcom/mintegral/msdk/reward/a/c;->d:I

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->D()I

    move-result v2

    if-le v0, v2, :cond_6e

    .line 9082
    :cond_64
    const-string v0, "RewardMVVideoAdapter"

    const-string v2, "onload \u91cd\u7f6eoffset\u4e3a0"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9083
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/reward/a/c;->d:I

    .line 9085
    :cond_6e
    const-string v0, "RewardMVVideoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onload \u7b97\u51fa \u4e0b\u6b21\u7684offset\u662f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mintegral/msdk/reward/a/c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9087
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 9088
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    iget v2, p0, Lcom/mintegral/msdk/reward/a/c;->d:I

    invoke-static {v0, v2}, Lcom/mintegral/msdk/reward/b/a;->a(Ljava/lang/String;I)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_93} :catch_d4

    .line 10043
    :cond_93
    :goto_93
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/mintegral/msdk/reward/a/c$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/mintegral/msdk/reward/a/c$3;-><init>(Lcom/mintegral/msdk/reward/a/c;Ljava/util/List;Lcom/mintegral/msdk/base/entity/CampaignUnit;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10066
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7155
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/reward/a/c;->e(Ljava/util/List;)V

    .line 7158
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/reward/a/c;->b(Ljava/util/List;)V

    .line 7161
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/reward/a/c;->c(Ljava/util/List;)V

    .line 7164
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/reward/a/c;->a(Ljava/util/List;)V

    .line 7167
    invoke-direct {p0, v1}, Lcom/mintegral/msdk/reward/a/c;->d(Ljava/util/List;)V

    .line 7171
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "adapter 905"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7172
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->k:Lcom/mintegral/msdk/reward/a/b;

    if-eqz v0, :cond_c5

    .line 7173
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->k:Lcom/mintegral/msdk/reward/a/b;

    invoke-interface {v0}, Lcom/mintegral/msdk/reward/a/b;->a()V

    .line 72
    :cond_c5
    return-void

    .line 7133
    :cond_c6
    const-string v0, "RewardMVVideoAdapter"

    const-string v2, "onload load\u5931\u8d25 \u8fd4\u56de\u7684compaign \u6ca1\u6709\u5e26\u89c6\u9891\u7d20\u6750"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7134
    const-string v0, "No video campaign"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/reward/a/c;->b(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 9091
    :catch_d4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_93
.end method

.method static synthetic a(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/reward/a/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 6179
    :try_start_0
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "====delCampaignFromDownLoadCampaignListByUrld"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6180
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->a:Ljava/util/List;

    if-eqz v0, :cond_f9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f9

    .line 6181
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 6182
    if-eqz v0, :cond_17

    .line 6183
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    .line 6184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_64

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 6185
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6186
    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 6218
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->k:Lcom/mintegral/msdk/reward/a/b;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->a:Ljava/util/List;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_63

    .line 6219
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    if-eqz v0, :cond_57

    .line 6220
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6222
    :cond_57
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "====del campaign and callback failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6223
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->k:Lcom/mintegral/msdk/reward/a/b;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/reward/a/b;->a(Ljava/lang/String;)V

    .line 6250
    :cond_63
    :goto_63
    return-void

    .line 6189
    :cond_64
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v1

    .line 6190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ad

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 6191
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6192
    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7c} :catch_7d

    goto :goto_3d

    .line 6236
    :catch_7d
    move-exception v0

    .line 6237
    const-string v1, "RewardMVVideoAdapter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6239
    :try_start_87
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->k:Lcom/mintegral/msdk/reward/a/b;

    if-eqz v0, :cond_63

    .line 6240
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    if-eqz v0, :cond_95

    .line 6241
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6243
    :cond_95
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "====del campaign and callback failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6244
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->k:Lcom/mintegral/msdk/reward/a/b;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/reward/a/b;->a(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_a1} :catch_a2

    goto :goto_63

    .line 6246
    :catch_a2
    move-exception v0

    .line 6247
    const-string v1, "RewardMVVideoAdapter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_63

    .line 6195
    :cond_ad
    :try_start_ad
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v3

    .line 6196
    if-eqz v3, :cond_17

    .line 6197
    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->e()Ljava/util/List;

    move-result-object v1

    .line 6198
    if-eqz v1, :cond_df

    .line 6199
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_bd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_df

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;

    .line 6200
    if-eqz v1, :cond_bd

    iget-object v5, v1, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;->b:Ljava/util/List;

    if-eqz v5, :cond_bd

    .line 6201
    iget-object v1, v1, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 6202
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6203
    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 6209
    :cond_df
    invoke-virtual {v3}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v1

    .line 6210
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 6211
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6212
    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    goto/16 :goto_3d

    .line 6227
    :cond_f9
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->k:Lcom/mintegral/msdk/reward/a/b;

    if-eqz v0, :cond_63

    .line 6228
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    if-eqz v0, :cond_107

    .line 6229
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6231
    :cond_107
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "====del campaign and callback failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6232
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->k:Lcom/mintegral/msdk/reward/a/b;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/reward/a/b;->a(Ljava/lang/String;)V
    :try_end_113
    .catch Ljava/lang/Throwable; {:try_start_ad .. :try_end_113} :catch_7d

    goto/16 :goto_63
.end method

.method static synthetic a(Lcom/mintegral/msdk/reward/a/c;Ljava/util/List;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 10960
    const-string v1, "RewardMVVideoAdapter"

    const-string v2, "onload \u5f00\u59cb \u66f4\u65b0\u672c\u673a\u5df2\u5b89\u88c5\u5e7f\u544a\u5217\u8868"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10961
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    if-eqz v1, :cond_14

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1c

    .line 10962
    :cond_14
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "onload \u5217\u8868\u4e3a\u7a7a \u4e0d\u505a\u66f4\u65b0\u672c\u673a\u5df2\u5b89\u88c5\u5e7f\u544a\u5217\u8868"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10963
    :cond_1b
    :goto_1b
    return-void

    .line 10966
    :cond_1c
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v3

    move v1, v0

    move v2, v0

    .line 10968
    :goto_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_98

    .line 10969
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 10971
    if-eqz v0, :cond_5d

    .line 10972
    iget-object v4, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mintegral/msdk/base/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 10974
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->c()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_5d

    .line 10975
    new-instance v2, Lcom/mintegral/msdk/base/entity/h;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/mintegral/msdk/base/entity/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10976
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10978
    const/4 v2, 0x1

    .line 10968
    :cond_5d
    :goto_5d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    .line 10983
    :cond_61
    if-eqz v3, :cond_5d

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/base/b/m;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 10984
    new-instance v4, Lcom/mintegral/msdk/base/entity/g;

    invoke-direct {v4}, Lcom/mintegral/msdk/base/entity/g;-><init>()V

    .line 10985
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mintegral/msdk/base/entity/g;->a(Ljava/lang/String;)V

    .line 10986
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFca()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mintegral/msdk/base/entity/g;->a(I)V

    .line 10987
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFcb()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/mintegral/msdk/base/entity/g;->b(I)V

    .line 10988
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/g;->g()V

    .line 10989
    invoke-virtual {v4}, Lcom/mintegral/msdk/base/entity/g;->e()V

    .line 10990
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/mintegral/msdk/base/entity/g;->a(J)V

    .line 10991
    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/entity/g;)V

    goto :goto_5d

    .line 10997
    :cond_98
    if-eqz v2, :cond_1b

    .line 10998
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "\u66f4\u65b0\u5b89\u88c5\u5217\u8868"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10999
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->f()V

    goto/16 :goto_1b
.end method

.method static synthetic a(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 72
    .line 10799
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    move-result-object v0

    .line 10800
    if-nez p1, :cond_1a

    .line 10801
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "campaign is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10816
    :goto_19
    return-void

    .line 10805
    :cond_1a
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 10806
    const-string v2, "2000044"

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->n(Ljava/lang/String;)V

    .line 10807
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->b(I)V

    .line 10808
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 10809
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->d(Ljava/lang/String;)V

    .line 10810
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 10811
    invoke-virtual {v1, p0}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    .line 10812
    invoke-virtual {v1, p2}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 10813
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/entity/q;)J
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    goto :goto_19

    .line 10815
    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method private a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1297
    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 1298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1299
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    goto :goto_c

    .line 1302
    :cond_1c
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videocommon/e/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1452
    if-eqz p1, :cond_5f

    .line 1453
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1454
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1456
    iget-boolean v1, p0, Lcom/mintegral/msdk/reward/a/c;->q:Z

    if-eqz v1, :cond_60

    const/16 v1, 0x11f

    invoke-static {v1, v0}, Lcom/mintegral/msdk/videocommon/a;->a(ILcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/videocommon/a$a;

    move-result-object v1

    .line 1458
    :goto_30
    if-eqz v1, :cond_4b

    .line 1460
    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/a$a;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/a$a;->a()Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1461
    iget-boolean v1, p0, Lcom/mintegral/msdk/reward/a/c;->q:Z

    if-eqz v1, :cond_67

    .line 1462
    const/16 v1, 0x11f

    invoke-static {v1, v0}, Lcom/mintegral/msdk/videocommon/a;->b(ILcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1466
    :cond_4b
    :goto_4b
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_56} :catch_57

    goto :goto_6

    .line 1471
    :catch_57
    move-exception v0

    .line 1472
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_5f

    .line 1473
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1476
    :cond_5f
    return-void

    .line 1456
    :cond_60
    const/16 v1, 0x5e

    .line 1457
    :try_start_62
    invoke-static {v1, v0}, Lcom/mintegral/msdk/videocommon/a;->a(ILcom/mintegral/msdk/base/entity/CampaignEx;)Lcom/mintegral/msdk/videocommon/a$a;

    move-result-object v1

    goto :goto_30

    .line 1464
    :cond_67
    const/16 v1, 0x5e

    invoke-static {v1, v0}, Lcom/mintegral/msdk/videocommon/a;->b(ILcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6c} :catch_57

    goto :goto_4b
.end method

.method private static a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z
    .registers 2

    .prologue
    .line 1073
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1074
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    invoke-static {p0}, Lcom/mintegral/msdk/videocommon/a/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result v0

    .line 1079
    :goto_d
    return v0

    .line 1077
    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1079
    :cond_12
    const/4 v0, 0x1

    goto :goto_d
.end method

.method static synthetic b(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c;->h:Ljava/lang/String;

    return-object p1
.end method

.method private static b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 4

    .prologue
    .line 1255
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v0

    .line 1256
    if-eqz v0, :cond_9

    .line 1257
    invoke-virtual {v0, p0}, Lcom/mintegral/msdk/videocommon/a/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 1262
    :cond_9
    :goto_9
    return-void

    .line 1259
    :catch_a
    move-exception v0

    .line 1260
    const-string v1, "RewardMVVideoAdapter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x4

    .line 820
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    if-eqz v0, :cond_10

    .line 821
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 822
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 830
    :cond_10
    :goto_10
    return-void

    .line 824
    :cond_11
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 825
    iput v1, v0, Landroid/os/Message;->what:I

    .line 826
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 827
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_10
.end method

.method private b(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1339
    if-eqz p1, :cond_7b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7b

    .line 1340
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1341
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v10

    .line 1344
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isMraid()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1345
    const-string v0, ".zip"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "md5filename"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1347
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/j;->a()Lcom/mintegral/msdk/videocommon/download/j;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/mintegral/msdk/videocommon/download/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    move v6, v7

    .line 1350
    :goto_49
    new-instance v0, Lcom/mintegral/msdk/reward/a/c$g;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    const/16 v4, 0x1f1

    iget-object v5, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/mintegral/msdk/reward/a/c$g;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;ILcom/mintegral/msdk/videocommon/e/c;Z)V

    .line 1351
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v1

    invoke-virtual {v1, v10, v0}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$c;)V

    goto :goto_e

    .line 1354
    :cond_5d
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/h;->a()Lcom/mintegral/msdk/videocommon/download/h;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/mintegral/msdk/videocommon/download/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7c

    move v0, v7

    .line 1357
    :goto_6c
    new-instance v2, Lcom/mintegral/msdk/reward/a/c$e;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/mintegral/msdk/reward/a/c$e;-><init>(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V

    .line 1358
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v0

    invoke-virtual {v0, v10, v2}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$a;)V

    goto :goto_e

    .line 1363
    :cond_7b
    return-void

    :cond_7c
    move v0, v8

    goto :goto_6c

    :cond_7e
    move v6, v8

    goto :goto_49
.end method

.method static synthetic c(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/b;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->k:Lcom/mintegral/msdk/reward/a/b;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c;->i:Ljava/lang/String;

    return-object p1
.end method

.method private c(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 1265
    if-nez p1, :cond_4

    .line 1291
    :cond_3
    :goto_3
    return-void

    .line 1268
    :cond_4
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1269
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/g;->b(Ljava/lang/String;)V

    .line 1271
    :cond_19
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1272
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v7

    .line 1273
    invoke-virtual {v7}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 1274
    invoke-virtual {v7}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1275
    new-instance v0, Lcom/mintegral/msdk/reward/a/c$g;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    const/16 v4, 0x139

    iget-object v5, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/mintegral/msdk/reward/a/c$g;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;ILcom/mintegral/msdk/videocommon/e/c;Z)V

    .line 1276
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v1

    invoke-virtual {v7}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$c;)V

    .line 1281
    :cond_51
    :goto_51
    invoke-virtual {v7}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1282
    invoke-virtual {v7}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1283
    new-instance v0, Lcom/mintegral/msdk/reward/a/c$g;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    const/16 v4, 0x35b

    iget-object v5, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/mintegral/msdk/reward/a/c$g;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;ILcom/mintegral/msdk/videocommon/e/c;Z)V

    .line 1284
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v1

    invoke-virtual {v7}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$c;)V

    goto :goto_3

    .line 1278
    :cond_80
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v0

    invoke-virtual {v7}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/g;->b(Ljava/lang/String;)V

    goto :goto_51

    .line 1286
    :cond_8c
    new-instance v0, Lcom/mintegral/msdk/reward/a/c$c;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/mintegral/msdk/reward/a/c$c;-><init>(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;)V

    .line 1287
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v1

    invoke-virtual {v7}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$a;)V

    goto/16 :goto_3
.end method

.method private c(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1689
    if-eqz p1, :cond_61

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_61

    .line 1690
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1691
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1692
    new-instance v2, Lcom/mintegral/msdk/reward/a/c$b;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v3}, Lcom/mintegral/msdk/reward/a/c$b;-><init>(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 1693
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    .line 1695
    :cond_3c
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1696
    new-instance v2, Lcom/mintegral/msdk/reward/a/c$b;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v3}, Lcom/mintegral/msdk/reward/a/c$b;-><init>(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 1697
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    goto :goto_c

    .line 1701
    :cond_61
    return-void
.end method

.method static synthetic d(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1710
    if-eqz p1, :cond_7f

    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7f

    .line 1711
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1712
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1713
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRewardTemplateMode()Lcom/mintegral/msdk/base/entity/CampaignEx$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx$c;->e()Ljava/util/List;

    move-result-object v1

    .line 1715
    if-eqz v1, :cond_c

    .line 1716
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;

    .line 1717
    if-eqz v1, :cond_36

    iget-object v4, v1, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;->b:Ljava/util/List;

    if-eqz v4, :cond_36

    .line 1718
    iget-object v1, v1, Lcom/mintegral/msdk/base/entity/CampaignEx$c$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4e
    :goto_4e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1719
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 1720
    new-instance v5, Lcom/mintegral/msdk/reward/a/c$d;

    iget-object v6, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-direct {v5, p0, v0, v6}, Lcom/mintegral/msdk/reward/a/c$d;-><init>(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 1721
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_76} :catch_77

    goto :goto_4e

    .line 1730
    :catch_77
    move-exception v0

    .line 1731
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_7f

    .line 1732
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1735
    :cond_7f
    return-void
.end method

.method private static d(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z
    .registers 3

    .prologue
    .line 2366
    if-eqz p0, :cond_13

    :try_start_2
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPlayable_ads_without_video()I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_b

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 2367
    const/4 v0, 0x1

    .line 2374
    :goto_a
    return v0

    .line 2369
    :catch_b
    move-exception v0

    .line 2370
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 2371
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2374
    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static synthetic e(Lcom/mintegral/msdk/reward/a/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    return-object v0
.end method

.method private e(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1962
    :try_start_0
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "===\u51c6\u5907\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    if-eqz p1, :cond_61

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_61

    .line 1964
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onload \u5f00\u59cb\u4e0b\u8f7d\u89c6\u9891\u7d20\u6750 size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1966
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1967
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/i;->a()Lcom/mintegral/msdk/videocommon/download/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/videocommon/download/i;->a(Ljava/util/List;)V

    .line 1968
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 1969
    new-instance v5, Lcom/mintegral/msdk/reward/a/c$a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v5, p0, v0}, Lcom/mintegral/msdk/reward/a/c$a;-><init>(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1970
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    const/4 v4, 0x3

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/videocommon/download/c;->createUnitCache(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/mintegral/msdk/videocommon/listener/a;)Lcom/mintegral/msdk/videocommon/download/k;

    .line 1971
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/c;->load(Ljava/lang/String;)V

    .line 1979
    :cond_60
    :goto_60
    return-void

    .line 1974
    :cond_61
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "onload \u4e0d\u7528\u4e0b\u8f7d\u89c6\u9891\u7d20\u6750 size\u4e3a0"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_68} :catch_69

    goto :goto_60

    .line 1976
    :catch_69
    move-exception v0

    .line 1977
    const-string v1, "RewardMVVideoAdapter"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_60
.end method

.method static synthetic f(Lcom/mintegral/msdk/reward/a/c;)Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c;->q:Z

    return v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/reward/a/c;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    return-object v0
.end method

.method private g()Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 571
    .line 573
    :try_start_1
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "\u8fdb\u6765 isReadyDoSuccessful"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    if-eqz v0, :cond_8c

    .line 576
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/a/c;->j()V

    .line 577
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/mintegral/msdk/reward/a/c;->r:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/mintegral/msdk/videocommon/a/a;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v3

    .line 578
    if-eqz v3, :cond_8c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8c

    .line 579
    new-instance v5, Lcom/mintegral/msdk/reward/a/c$a;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v5, p0, v1}, Lcom/mintegral/msdk/reward/a/c$a;-><init>(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 580
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/videocommon/download/c;->createUnitCache(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/mintegral/msdk/videocommon/listener/a;)Lcom/mintegral/msdk/videocommon/download/k;

    .line 581
    iget-boolean v1, p0, Lcom/mintegral/msdk/reward/a/c;->q:Z

    if-eqz v1, :cond_76

    const/16 v1, 0x11f

    :goto_48
    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/mintegral/msdk/reward/a/c;->r:Z

    invoke-virtual {v0, v1, v2, v4}, Lcom/mintegral/msdk/videocommon/download/c;->a(ILjava/lang/String;Z)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4f} :catch_79

    move-result v1

    .line 582
    if-eqz v1, :cond_60

    .line 583
    :try_start_52
    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/mintegral/msdk/reward/d/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_60} :catch_87

    :cond_60
    move v0, v1

    .line 591
    :goto_61
    const-string v1, "RewardMVVideoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7ed3\u679c isReadyDoSuccessful\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return v0

    .line 581
    :cond_76
    const/16 v1, 0x5e

    goto :goto_48

    .line 588
    :catch_79
    move-exception v0

    move-object v1, v0

    move v0, v6

    :goto_7c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 589
    const-string v1, "RewardMVVideoAdapter"

    const-string v2, "isReadyDoSuccessful \u51fa\u9519"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    .line 588
    :catch_87
    move-exception v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    goto :goto_7c

    :cond_8c
    move v0, v6

    goto :goto_61
.end method

.method private h()V
    .registers 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 812
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 814
    :cond_a
    return-void
.end method

.method static synthetic h(Lcom/mintegral/msdk/reward/a/c;)V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/a/c;->m()V

    return-void
.end method

.method private i()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 906
    const-string v1, ""

    .line 910
    :try_start_3
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v2

    .line 911
    if-nez v2, :cond_1b

    .line 912
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v2

    .line 914
    :cond_1b
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 916
    if-eqz v2, :cond_77

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->aK()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_77

    .line 917
    const-string v4, "RewardMVVideoAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "excludes cfc:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->aK()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v2

    .line 920
    invoke-virtual {v2}, Lcom/mintegral/msdk/base/b/m;->c()[J

    move-result-object v4

    .line 922
    if-eqz v4, :cond_77

    .line 923
    array-length v5, v4

    move v2, v0

    :goto_59
    if-ge v2, v5, :cond_77

    aget-wide v6, v4, v2

    .line 924
    const-string v8, "RewardMVVideoAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "excludes campaignIds:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 923
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 929
    :cond_77
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/a/c;->p()Ljava/util/List;

    move-result-object v4

    .line 930
    if-eqz v4, :cond_ae

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_ae

    move v2, v0

    .line 931
    :goto_84
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_ae

    .line 932
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 933
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_93} :catch_a6

    move-result v5

    if-eqz v5, :cond_9d

    .line 935
    :try_start_96
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 936
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9d} :catch_a1

    .line 931
    :cond_9d
    :goto_9d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_84

    .line 938
    :catch_a1
    move-exception v0

    :try_start_a2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_a6

    goto :goto_9d

    .line 948
    :catch_a6
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_aa
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 950
    :goto_ad
    return-object v0

    .line 943
    :cond_ae
    :try_start_ae
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_cf

    .line 944
    invoke-static {v3}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_b7} :catch_a6

    move-result-object v0

    .line 946
    :goto_b8
    :try_start_b8
    const-string v1, "RewardMVVideoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get excludes:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_cc} :catch_cd

    goto :goto_ad

    .line 948
    :catch_cd
    move-exception v1

    goto :goto_aa

    :cond_cf
    move-object v0, v1

    goto :goto_b8
.end method

.method static synthetic i(Lcom/mintegral/msdk/reward/a/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/a/c;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .registers 5

    .prologue
    .line 1021
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1022
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1023
    if-nez v0, :cond_1e

    .line 1024
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1026
    :cond_1e
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->ak()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1027
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lcom/mintegral/msdk/videocommon/a/a;->b(JLjava/lang/String;)V

    .line 1029
    :cond_2e
    return-void
.end method

.method static synthetic j(Lcom/mintegral/msdk/reward/a/c;)Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c;->o:Z

    return v0
.end method

.method private k()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1053
    const/4 v0, 0x0

    .line 1055
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1056
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    iget v3, p0, Lcom/mintegral/msdk/reward/a/c;->e:I

    iget-boolean v4, p0, Lcom/mintegral/msdk/reward/a/c;->r:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/mintegral/msdk/videocommon/a/a;->a(Ljava/lang/String;IZ)Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_16

    move-result-object v0

    .line 1062
    :cond_15
    :goto_15
    return-object v0

    .line 1059
    :catch_16
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method static synthetic k(Lcom/mintegral/msdk/reward/a/c;)Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c;->n:Z

    return v0
.end method

.method private l()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2100
    .line 2103
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2105
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->a(Ljava/lang/String;)I

    move-result v0

    .line 2107
    :goto_f
    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->D()I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1d

    move-result v2

    if-le v0, v2, :cond_1c

    :cond_1b
    move v0, v1

    .line 2115
    :cond_1c
    :goto_1c
    return v0

    .line 2113
    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1c

    :cond_23
    move v0, v1

    goto :goto_f
.end method

.method static synthetic l(Lcom/mintegral/msdk/reward/a/c;)Lcom/mintegral/msdk/reward/a/c$i;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->m:Lcom/mintegral/msdk/reward/a/c$i;

    return-object v0
.end method

.method private m()V
    .registers 3

    .prologue
    .line 2123
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2124
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->a(Ljava/lang/String;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 2129
    :cond_e
    :goto_e
    return-void

    .line 2127
    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method static synthetic m(Lcom/mintegral/msdk/reward/a/c;)Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c;->n:Z

    return v0
.end method

.method private static n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2138
    const-string v0, ""

    .line 2140
    :try_start_2
    sget-object v1, Lcom/mintegral/msdk/reward/b/a;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2141
    sget-object v0, Lcom/mintegral/msdk/reward/b/a;->a:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    .line 2147
    :cond_c
    :goto_c
    return-object v0

    .line 2144
    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method static synthetic n(Lcom/mintegral/msdk/reward/a/c;)Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c;->o:Z

    return v0
.end method

.method private static o()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2170
    const-string v1, ""

    .line 2173
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 2174
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->g()Ljava/util/List;

    move-result-object v0

    .line 2175
    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_34

    .line 2176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2177
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    goto :goto_1a

    .line 2184
    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    move-object v0, v1

    .line 2186
    :goto_33
    return-object v0

    .line 2180
    :cond_34
    :try_start_34
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_32

    .line 2181
    invoke-static {v2}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_2e

    move-result-object v0

    goto :goto_33
.end method

.method private p()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2225
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/l;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/l;

    move-result-object v0

    .line 2226
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/l;->a(Ljava/lang/String;)Ljava/util/List;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    .line 2231
    :goto_10
    return-object v0

    .line 2229
    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2231
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 185
    iput p1, p0, Lcom/mintegral/msdk/reward/a/c;->p:I

    .line 186
    return-void
.end method

.method public final a(IZLjava/lang/String;)V
    .registers 8

    .prologue
    .line 668
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/reward/a/c;->e:I

    .line 669
    iput p1, p0, Lcom/mintegral/msdk/reward/a/c;->f:I

    .line 670
    iput-boolean p2, p0, Lcom/mintegral/msdk/reward/a/c;->g:Z

    .line 672
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    if-nez v0, :cond_11

    .line 673
    const-string v0, "Context is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/reward/a/c;->b(Ljava/lang/String;)V

    .line 3647
    :cond_10
    :goto_10
    return-void

    .line 676
    :cond_11
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 677
    const-string v0, "UnitId is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/reward/a/c;->b(Ljava/lang/String;)V

    goto :goto_10

    .line 680
    :cond_1f
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    if-nez v0, :cond_29

    .line 681
    const-string v0, "RewardUnitSetting is null"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/reward/a/c;->b(Ljava/lang/String;)V

    goto :goto_10

    .line 3196
    :cond_29
    :try_start_29
    sget-object v0, Lcom/mintegral/msdk/base/common/a/c;->a:Ljava/util/Map;

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/mintegral/msdk/base/common/a/c;->a:Ljava/util/Map;

    .line 3197
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3a

    .line 3198
    sget-object v0, Lcom/mintegral/msdk/base/common/a/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3a} :catch_9e

    .line 3212
    :cond_3a
    :goto_3a
    :try_start_3a
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/l;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/l;

    move-result-object v0

    .line 3213
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/l;->b(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_49} :catch_a3

    .line 691
    :goto_49
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "load \u5f00\u59cb\u6e05\u9664\u8fc7\u671f\u6570\u636e"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/a/c;->j()V

    .line 696
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/a/c;->r:Z

    if-nez v0, :cond_de

    .line 698
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/a/c;->k()Ljava/util/List;

    move-result-object v0

    .line 699
    if-eqz v0, :cond_ba

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_ba

    .line 700
    const-string v1, "RewardMVVideoAdapter"

    const-string v2, "==\u672c\u5730campaign\u6761\u6570 \u5927\u4e8e0"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/reward/a/c;->e(Ljava/util/List;)V

    .line 702
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/reward/a/c;->d(Ljava/util/List;)V

    .line 704
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->y()I

    move-result v2

    if-lt v1, v2, :cond_a8

    .line 706
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/reward/a/c;->a(Ljava/util/List;)V

    .line 707
    const-string v0, "RewardMVVideoAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load \u672c\u5730\u5df2\u6709\u7f13\u5b58 \u8fd4\u56deload\u6210\u529f vcn\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->y()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/a/c;->h()V

    goto/16 :goto_10

    .line 3202
    :catch_9e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a

    .line 3215
    :catch_a3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49

    .line 711
    :cond_a8
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-direct {p0, v0, v1, v2}, Lcom/mintegral/msdk/reward/a/c;->a(Ljava/util/List;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;)V

    .line 712
    if-eqz p2, :cond_ba

    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/e/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3642
    :cond_ba
    new-instance v0, Lcom/mintegral/msdk/reward/a/c$h;

    invoke-direct {v0, p0, p3}, Lcom/mintegral/msdk/reward/a/c$h;-><init>(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;)V

    .line 3643
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3645
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    if-eqz v0, :cond_fb

    .line 3646
    new-instance v0, Lcom/mintegral/msdk/reward/a/c$i;

    invoke-direct {v0, p0, p3}, Lcom/mintegral/msdk/reward/a/c$i;-><init>(Lcom/mintegral/msdk/reward/a/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->m:Lcom/mintegral/msdk/reward/a/c$i;

    .line 3647
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->m:Lcom/mintegral/msdk/reward/a/c$i;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_10

    .line 718
    :cond_de
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/mintegral/msdk/reward/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/base/entity/CampaignEx;

    move-result-object v0

    .line 719
    if-eqz v0, :cond_ba

    .line 721
    invoke-static {v0}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v1

    if-nez v1, :cond_ba

    .line 722
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/reward/a/c;->c(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 723
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "bid load \u672c\u5730\u5df2\u6709\u7f13\u5b58 \u8fd4\u56deload\u6210\u529f "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/a/c;->h()V

    goto/16 :goto_10

    .line 3650
    :cond_fb
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "handler \u4e3a\u7a7a \u76f4\u63a5load"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3651
    invoke-virtual {p0, p3}, Lcom/mintegral/msdk/reward/a/c;->a(Ljava/lang/String;)V

    goto/16 :goto_10
.end method

.method public final a(Lcom/mintegral/msdk/reward/a/b;)V
    .registers 4

    .prologue
    .line 1100
    if-eqz p1, :cond_c

    .line 1101
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "======set listener is not null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :goto_9
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c;->k:Lcom/mintegral/msdk/reward/a/b;

    .line 1106
    return-void

    .line 1103
    :cond_c
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "======set listener is  null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public final a(Lcom/mintegral/msdk/reward/a/d;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9

    .prologue
    .line 605
    :try_start_0
    iput-object p1, p0, Lcom/mintegral/msdk/reward/a/c;->j:Lcom/mintegral/msdk/reward/a/d;

    .line 606
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "show \u8fdb\u6765"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 608
    :cond_15
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->j:Lcom/mintegral/msdk/reward/a/d;

    if-eqz v0, :cond_20

    .line 609
    iget-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->j:Lcom/mintegral/msdk/reward/a/d;

    const-string v1, "context or unitid is null"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/reward/a/d;->a(Ljava/lang/String;)V

    .line 611
    :cond_20
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "show context munitid null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_27
    :goto_27
    return-void

    .line 614
    :cond_28
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "show isReady true \u6253\u5f00\u64ad\u653e\u5668\u9875\u9762"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    const-class v2, Lcom/mintegral/msdk/reward/player/MTGRewardVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 616
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 617
    const-string v1, "unitId"

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const-string v1, "reward"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const-string v1, "mute"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 620
    const-string v1, "isIV"

    iget-boolean v2, p0, Lcom/mintegral/msdk/reward/a/c;->q:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 621
    const-string v1, "isBid"

    iget-boolean v2, p0, Lcom/mintegral/msdk/reward/a/c;->r:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 622
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_67

    .line 623
    const-string v1, "userId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    :cond_67
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_27

    .line 627
    :catch_6d
    move-exception v0

    .line 628
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 629
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->j:Lcom/mintegral/msdk/reward/a/d;

    if-eqz v1, :cond_27

    .line 630
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->j:Lcom/mintegral/msdk/reward/a/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "show failed, exception is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/reward/a/d;->a(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public final a(Ljava/lang/String;)V
    .registers 19

    .prologue
    .line 739
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    if-nez v1, :cond_e

    .line 740
    const-string v1, "Context is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/reward/a/c;->b(Ljava/lang/String;)V

    .line 805
    :goto_d
    return-void

    .line 743
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 744
    const-string v1, "UnitId is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/reward/a/c;->b(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_d

    .line 801
    :catch_20
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 802
    const-string v1, "Load exception"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/reward/a/c;->b(Ljava/lang/String;)V

    .line 803
    invoke-direct/range {p0 .. p0}, Lcom/mintegral/msdk/reward/a/c;->m()V

    goto :goto_d

    .line 747
    :cond_2f
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    if-nez v1, :cond_3d

    .line 748
    const-string v1, "RewardUnitSetting is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/reward/a/c;->b(Ljava/lang/String;)V

    goto :goto_d

    .line 751
    :cond_3d
    const-string v1, "RewardMVVideoAdapter"

    const-string v2, "load \u5f00\u59cb\u51c6\u5907\u8bf7\u6c42\u53c2\u6570"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3839
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v5

    .line 3840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3842
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mintegral/msdk/reward/a/c;->g:Z

    if-eqz v1, :cond_1ad

    .line 3843
    const/4 v1, 0x2

    move v4, v1

    .line 3848
    :goto_79
    const/4 v2, 0x0

    .line 3849
    const/4 v1, 0x0

    .line 3850
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    if-eqz v3, :cond_1bc

    .line 3851
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->u()I

    move-result v2

    .line 3852
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/c;->w()I

    move-result v1

    move v3, v2

    .line 3856
    :goto_92
    const-string v7, "1"

    .line 3857
    const-string v8, "1"

    .line 3859
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mintegral/msdk/reward/a/c;->i:Ljava/lang/String;

    .line 3860
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mintegral/msdk/reward/a/c;->h:Ljava/lang/String;

    .line 4189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    .line 3862
    const-string v11, "reward"

    invoke-static {v2, v11}, Lcom/mintegral/msdk/base/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3863
    invoke-static {}, Lcom/mintegral/msdk/reward/a/c;->o()Ljava/lang/String;

    move-result-object v12

    .line 3865
    invoke-direct/range {p0 .. p0}, Lcom/mintegral/msdk/reward/a/c;->l()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mintegral/msdk/reward/a/c;->d:I

    .line 3867
    invoke-static {}, Lcom/mintegral/msdk/reward/a/c;->n()Ljava/lang/String;

    move-result-object v13

    .line 3869
    move-object/from16 v0, p0

    iget v14, v0, Lcom/mintegral/msdk/reward/a/c;->e:I

    .line 3870
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mintegral/msdk/reward/a/c;->q:Z

    if-eqz v2, :cond_1b1

    const/16 v2, 0x11f

    .line 3871
    :goto_c4
    new-instance v15, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v15}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 3873
    const-string v16, "app_id"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    const-string v5, "unit_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v5, v0}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3878
    const-string v5, "sign"

    invoke-static {v15, v5, v6}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3882
    const-string v5, "req_type"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v5, v4}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3883
    const-string v4, "ad_num"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v4, v3}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3884
    const-string v3, "tnum"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/mintegral/msdk/reward/a/c;->q:Z

    if-eqz v5, :cond_102

    const/4 v1, 0x1

    :cond_102
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v3, v1}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3885
    const-string v1, "only_impression"

    invoke-static {v15, v1, v7}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3886
    const-string v1, "ping_mode"

    invoke-static {v15, v1, v8}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3887
    const-string v1, "ttc_ids"

    invoke-static {v15, v1, v10}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3888
    const-string v1, "display_info"

    invoke-static {v15, v1, v11}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3889
    const-string v1, "exclude_ids"

    invoke-static {v15, v1, v9}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3890
    const-string v1, "install_ids"

    invoke-static {v15, v1, v12}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3891
    const-string v1, "ad_source_id"

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v1, v3}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3892
    const-string v1, "session_id"

    invoke-static {v15, v1, v13}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3893
    const-string v1, "ad_type"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v1, v2}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 3894
    const-string v1, "offset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mintegral/msdk/reward/a/c;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v1, v2}, Lcom/mintegral/msdk/base/utils/n;->a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->k:Ljava/lang/String;

    .line 761
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18d

    .line 762
    const-string v1, "token"

    move-object/from16 v0, p1

    invoke-virtual {v15, v1, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_167} :catch_20

    .line 764
    :try_start_167
    const-string v1, "_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 765
    if-eqz v1, :cond_1b5

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1b5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-hb.rayjump.com/load"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_18c} :catch_1b8

    move-result-object v1

    .line 771
    :cond_18d
    :goto_18d
    :try_start_18d
    new-instance v2, Lcom/mintegral/msdk/reward/e/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mintegral/msdk/reward/e/b;-><init>(Landroid/content/Context;)V

    .line 772
    new-instance v3, Lcom/mintegral/msdk/reward/a/c$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/mintegral/msdk/reward/a/c$2;-><init>(Lcom/mintegral/msdk/reward/a/c;)V

    .line 796
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/mintegral/msdk/reward/e/c;->b(Ljava/lang/String;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    .line 5044
    iput-object v4, v3, Lcom/mintegral/msdk/base/common/net/a/a;->d:Ljava/lang/String;

    .line 798
    invoke-virtual {v2, v1, v15, v3}, Lcom/mintegral/msdk/reward/e/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_1ab} :catch_20

    goto/16 :goto_d

    .line 3845
    :cond_1ad
    const/4 v1, 0x3

    move v4, v1

    goto/16 :goto_79

    .line 3870
    :cond_1b1
    const/16 v2, 0x5e

    goto/16 :goto_c4

    .line 765
    :cond_1b5
    :try_start_1b5
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->i:Ljava/lang/String;
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1b7} :catch_1b8

    goto :goto_18d

    .line 768
    :catch_1b8
    move-exception v1

    :try_start_1b9
    sget-object v1, Lcom/mintegral/msdk/base/common/a;->i:Ljava/lang/String;
    :try_end_1bb
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_1bb} :catch_20

    goto :goto_18d

    :cond_1bc
    move v3, v2

    goto/16 :goto_92
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/mintegral/msdk/reward/a/c;->q:Z

    .line 168
    return-void
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 494
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v1

    iput-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    .line 496
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    if-nez v1, :cond_24

    .line 497
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/mintegral/msdk/reward/a/c;->q:Z

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    .line 502
    :cond_24
    :goto_24
    return-void

    .line 499
    :catch_25
    move-exception v0

    .line 500
    const-string v1, "RewardMVVideoAdapter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24
.end method

.method public final b(Z)V
    .registers 2

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/mintegral/msdk/reward/a/c;->r:Z

    .line 172
    return-void
.end method

.method public final c()Z
    .registers 5

    .prologue
    .line 505
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->b()Lcom/mintegral/msdk/videocommon/e/a;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/a;->e()J

    move-result-wide v0

    .line 507
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/mintegral/msdk/videocommon/a/a;->a(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 515
    :try_start_1
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "\u8fdb\u6765 isReady"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    .line 517
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_99

    if-eqz v0, :cond_99

    .line 518
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/a/c;->j()V

    .line 519
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/mintegral/msdk/reward/a/c;->r:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/mintegral/msdk/videocommon/a/a;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v3

    .line 520
    const-string v2, "RewardMVVideoAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "camapignList.size() = "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_77

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_35
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " isBidCampaign = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/mintegral/msdk/reward/a/c;->r:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    if-eqz v3, :cond_99

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_99

    .line 522
    new-instance v5, Lcom/mintegral/msdk/reward/a/c$a;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v5, p0, v1}, Lcom/mintegral/msdk/reward/a/c$a;-><init>(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 523
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/videocommon/download/c;->createUnitCache(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/mintegral/msdk/videocommon/listener/a;)Lcom/mintegral/msdk/videocommon/download/k;

    .line 524
    iget-boolean v1, p0, Lcom/mintegral/msdk/reward/a/c;->q:Z

    if-eqz v1, :cond_79

    const/16 v1, 0x11f

    :goto_6e
    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mintegral/msdk/reward/a/c;->r:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/mintegral/msdk/videocommon/download/c;->a(ILjava/lang/String;Z)Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_75} :catch_7c

    move-result v0

    .line 530
    :goto_76
    return v0

    :cond_77
    move v1, v6

    .line 520
    goto :goto_35

    .line 524
    :cond_79
    const/16 v1, 0x5e

    goto :goto_6e

    .line 527
    :catch_7c
    move-exception v0

    .line 528
    const-string v1, "RewardMVVideoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "isReady \u51fa\u9519"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    move v0, v6

    .line 530
    goto :goto_76
.end method

.method public final e()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 538
    .line 540
    :try_start_1
    const-string v0, "RewardMVVideoAdapter"

    const-string v1, "\u8fdb\u6765 isSpareOfferReady"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_86

    if-eqz v0, :cond_86

    .line 543
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/a/c;->j()V

    .line 544
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mintegral/msdk/reward/a/c;->r:Z

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/videocommon/a/a;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 545
    if-eqz v3, :cond_86

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_86

    .line 546
    new-instance v5, Lcom/mintegral/msdk/reward/a/c$a;

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-direct {v5, p0, v1}, Lcom/mintegral/msdk/reward/a/c$a;-><init>(Lcom/mintegral/msdk/reward/a/c;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 547
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/videocommon/download/c;->createUnitCache(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/mintegral/msdk/videocommon/listener/a;)Lcom/mintegral/msdk/videocommon/download/k;

    .line 548
    iget-boolean v1, p0, Lcom/mintegral/msdk/reward/a/c;->q:Z

    if-eqz v1, :cond_59

    .line 549
    const/16 v1, 0x11f

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/mintegral/msdk/reward/a/c;->r:Z

    invoke-virtual {v0, v1, v2, v4}, Lcom/mintegral/msdk/videocommon/download/c;->a(ILjava/lang/String;Z)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4e} :catch_64

    move-result v0

    .line 553
    :goto_4f
    if-eqz v0, :cond_58

    .line 554
    :try_start_51
    iget-object v1, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->l:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-direct {p0, v3, v1, v2}, Lcom/mintegral/msdk/reward/a/c;->a(Ljava/util/List;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/e/c;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_58} :catch_84

    .line 562
    :cond_58
    :goto_58
    return v0

    .line 551
    :cond_59
    const/16 v1, 0x5e

    :try_start_5b
    iget-object v2, p0, Lcom/mintegral/msdk/reward/a/c;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/mintegral/msdk/reward/a/c;->r:Z

    invoke-virtual {v0, v1, v2, v4}, Lcom/mintegral/msdk/videocommon/download/c;->a(ILjava/lang/String;Z)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_62} :catch_64

    move-result v0

    goto :goto_4f

    .line 559
    :catch_64
    move-exception v0

    move-object v1, v0

    move v0, v6

    .line 560
    :goto_67
    const-string v2, "RewardMVVideoAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "isSpareOfferReady \u51fa\u9519"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 559
    :catch_84
    move-exception v1

    goto :goto_67

    :cond_86
    move v0, v6

    goto :goto_58
.end method

.method public final f()V
    .registers 4

    .prologue
    .line 656
    const/16 v0, 0x1f40

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/mintegral/msdk/reward/a/c;->a(IZLjava/lang/String;)V

    .line 657
    return-void
.end method
