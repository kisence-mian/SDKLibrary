.class public Lcom/ss/android/socialbase/appdownloader/d;
.super Ljava/lang/Object;
.source "AppDownloader.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/ss/android/socialbase/appdownloader/d;

.field private static l:Z

.field private static m:Z


# instance fields
.field private c:Lcom/ss/android/socialbase/appdownloader/c/c;

.field private d:Lcom/ss/android/socialbase/appdownloader/c/d;

.field private e:Lcom/ss/android/socialbase/appdownloader/c/h;

.field private f:Lcom/ss/android/socialbase/appdownloader/c/g;

.field private g:Lcom/ss/android/socialbase/appdownloader/c/l;

.field private h:Lcom/ss/android/socialbase/appdownloader/c/i;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

.field private n:Z

.field private o:Z

.field private p:Lcom/ss/android/socialbase/appdownloader/c/f;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const-class v0, Lcom/ss/android/socialbase/appdownloader/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/d;->b:Lcom/ss/android/socialbase/appdownloader/d;

    .line 66
    sput-boolean v1, Lcom/ss/android/socialbase/appdownloader/d;->l:Z

    .line 67
    sput-boolean v1, Lcom/ss/android/socialbase/appdownloader/d;->m:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->n:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->o:Z

    .line 252
    return-void
.end method

.method private a(Lcom/ss/android/socialbase/appdownloader/g;Ljava/lang/String;)I
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 600
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    const-string v3, "start redirectSavePathIfPossible"

    invoke-static {v0, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/g;->U()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v5

    .line 602
    const-string v0, "anti_hijack_dir"

    invoke-virtual {v5, v0}, Lcom/ss/android/socialbase/downloader/k/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 604
    if-eqz v0, :cond_146

    .line 605
    const-string v3, "ignore_task_save_path"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_fc

    move v0, v1

    .line 607
    :goto_22
    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/g;->d()Ljava/lang/String;

    move-result-object v4

    .line 608
    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/g;->L()Ljava/lang/String;

    move-result-object v3

    .line 609
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 610
    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/g;->n()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v4, v3, v1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 613
    :cond_38
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xff

    if-le v6, v7, :cond_4a

    .line 614
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit16 v6, v6, -0xff

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 617
    :cond_4a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_51

    move-object v4, v3

    .line 620
    :cond_51
    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/g;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/k/a;)Ljava/lang/String;

    move-result-object v4

    .line 621
    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/g;->b()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 622
    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/g;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_ff

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/g;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7f

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/g;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ff

    .line 624
    :cond_7f
    :goto_7f
    sget-object v7, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ignoreTaskSavePath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\tisSavePathDefaultOrRedirected = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nbuilder.getSavePath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 626
    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/g;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\npossibleRedirectSavePath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\ndefaultSavePath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 624
    invoke-static {v7, v6}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    if-nez v0, :cond_d1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d1

    if-eqz v1, :cond_13b

    .line 632
    :cond_d1
    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/g;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 633
    if-eqz v0, :cond_102

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->be()Z

    move-result v1

    if-eqz v1, :cond_102

    .line 634
    sget-object v1, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    const-string v3, "relatedUrlDownload.isSavePathRedirected is true"

    invoke-static {v1, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/g;->c(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    .line 641
    :try_start_ef
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->M()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/ss/android/socialbase/appdownloader/g;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/g;
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_fb} :catch_144

    .line 666
    :cond_fb
    :goto_fb
    return v2

    :cond_fc
    move v0, v2

    .line 605
    goto/16 :goto_22

    :cond_ff
    move v1, v2

    .line 622
    goto/16 :goto_7f

    .line 644
    :cond_102
    if-nez v0, :cond_125

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {p1}, Lcom/ss/android/socialbase/appdownloader/g;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/ss/android/socialbase/appdownloader/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 645
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    const-string v1, "relatedUrlDownload is null && mimetype is apk"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-static {v5}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/downloader/k/a;)I

    move-result v2

    .line 650
    if-nez v2, :cond_fb

    .line 651
    invoke-virtual {p1, v4}, Lcom/ss/android/socialbase/appdownloader/g;->c(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;

    goto :goto_fb

    .line 653
    :cond_125
    if-eqz v0, :cond_131

    .line 654
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    const-string v1, "relatedUrlDownload is not null"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/16 v2, 0x8

    goto :goto_fb

    .line 658
    :cond_131
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    const-string v1, "mimetype is not apk"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/16 v2, 0x9

    goto :goto_fb

    .line 663
    :cond_13b
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    const-string v1, "redirectSavePath error"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v2, 0x7

    goto :goto_fb

    .line 642
    :catch_144
    move-exception v0

    goto :goto_fb

    :cond_146
    move v0, v2

    goto/16 :goto_22
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d;)Lcom/ss/android/socialbase/appdownloader/c/h;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->e:Lcom/ss/android/socialbase/appdownloader/c/h;

    return-object v0
.end method

.method private a(Lcom/ss/android/socialbase/appdownloader/c/e;)Lcom/ss/android/socialbase/downloader/d/z;
    .registers 3

    .prologue
    .line 723
    if-nez p1, :cond_4

    .line 724
    const/4 v0, 0x0

    .line 725
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d$3;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/socialbase/appdownloader/d$3;-><init>(Lcom/ss/android/socialbase/appdownloader/d;Lcom/ss/android/socialbase/appdownloader/c/e;)V

    goto :goto_3
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 6

    .prologue
    .line 835
    if-eqz p1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p3, :cond_c

    .line 836
    :cond_a
    const/4 v0, 0x0

    .line 838
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    goto :goto_b
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 709
    .line 710
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p2}, Lcom/ss/android/socialbase/appdownloader/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 711
    const-string p2, "application/vnd.android.package-archive"

    .line 713
    :cond_16
    return-object p2
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 687
    const/4 v0, 0x0

    .line 688
    if-eqz p1, :cond_56

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_56

    .line 689
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/e;

    .line 690
    if-eqz v0, :cond_52

    .line 691
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_52

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 692
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/e;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "User-Agent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 693
    const/4 v1, 0x1

    .line 694
    :cond_42
    new-instance v4, Lcom/ss/android/socialbase/downloader/g/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/ss/android/socialbase/downloader/g/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    move v0, v1

    move v1, v0

    .line 698
    goto :goto_13

    :cond_55
    move v0, v1

    .line 701
    :cond_56
    if-nez v0, :cond_64

    .line 702
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/e;

    const-string v1, "User-Agent"

    sget-object v3, Lcom/ss/android/socialbase/appdownloader/b/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/ss/android/socialbase/downloader/g/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_64
    return-object v2
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/d;Lcom/ss/android/socialbase/downloader/g/d;IZ)V
    .registers 4

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/downloader/g/d;IZ)V

    return-void
.end method

.method private a(Lcom/ss/android/socialbase/downloader/g/d;IZ)V
    .registers 5

    .prologue
    .line 670
    if-nez p1, :cond_3

    .line 681
    :cond_2
    :goto_2
    return-void

    .line 673
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->n()I

    .line 674
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_f

    .line 676
    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/g/c;->k(I)V

    .line 678
    :cond_f
    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 679
    invoke-virtual {v0, p3}, Lcom/ss/android/socialbase/downloader/g/c;->m(Z)V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;I)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 348
    invoke-static {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 6

    .prologue
    .line 842
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 843
    if-eqz v0, :cond_23

    .line 844
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/c;

    .line 845
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->be()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 850
    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static h()Lcom/ss/android/socialbase/appdownloader/d;
    .registers 2

    .prologue
    .line 255
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->b:Lcom/ss/android/socialbase/appdownloader/d;

    if-nez v0, :cond_13

    .line 256
    const-class v1, Lcom/ss/android/socialbase/appdownloader/d;

    monitor-enter v1

    .line 257
    :try_start_7
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->b:Lcom/ss/android/socialbase/appdownloader/d;

    if-nez v0, :cond_12

    .line 258
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/d;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/d;->b:Lcom/ss/android/socialbase/appdownloader/d;

    .line 259
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 261
    :cond_13
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->b:Lcom/ss/android/socialbase/appdownloader/d;

    return-object v0

    .line 259
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic l()Ljava/lang/String;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .registers 6

    .prologue
    .line 308
    sget-boolean v0, Lcom/ss/android/socialbase/appdownloader/d;->m:Z

    if-eqz v0, :cond_5

    .line 336
    :goto_4
    return-void

    .line 310
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->k:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    if-nez v0, :cond_10

    .line 311
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->k:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    .line 314
    :cond_10
    :try_start_10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 315
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v1, "android.ss.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 320
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 324
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ss/android/socialbase/appdownloader/d;->k:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/ss/android/socialbase/appdownloader/d;->k:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 330
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/d;->k:Lcom/ss/android/socialbase/appdownloader/DownloadReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/socialbase/appdownloader/d;->m:Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_65} :catch_66

    goto :goto_4

    .line 332
    :catch_66
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method public a(Lcom/ss/android/socialbase/appdownloader/g;)I
    .registers 22

    .prologue
    .line 404
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->b()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_a

    .line 405
    :cond_8
    const/4 v5, 0x0

    .line 586
    :cond_9
    :goto_9
    return v5

    .line 406
    :cond_a
    const/4 v15, 0x0

    .line 408
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->f()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/ss/android/socialbase/appdownloader/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    .line 410
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->c()Ljava/lang/String;

    move-result-object v17

    .line 412
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1c} :catch_2f7

    move-result v3

    if-eqz v3, :cond_21

    .line 413
    const/4 v5, 0x0

    goto :goto_9

    .line 418
    :cond_21
    :try_start_21
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/g;Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_2a} :catch_b5

    move-result v11

    .line 423
    :goto_2b
    :try_start_2b
    sget-object v3, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "antihijackErrorCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    if-nez v11, :cond_d1

    const/4 v12, 0x1

    .line 427
    :goto_46
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->L()Ljava/lang/String;

    move-result-object v8

    .line 429
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->d()Ljava/lang/String;

    move-result-object v6

    .line 431
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 432
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->n()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-static {v0, v6, v3, v12}, Lcom/ss/android/socialbase/appdownloader/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 435
    :cond_5e
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xff

    if-le v3, v4, :cond_70

    .line 436
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, -0xff

    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 439
    :cond_70
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_77

    move-object v6, v8

    .line 442
    :cond_77
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->n()Ljava/lang/String;

    move-result-object v3

    .line 443
    const-string v4, ".apk"

    invoke-virtual {v8, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36d

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/socialbase/appdownloader/c;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36d

    .line 444
    const-string v3, "application/vnd.android.package-archive"

    move-object v14, v3

    .line 447
    :goto_90
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->e()Ljava/lang/String;

    move-result-object v7

    .line 448
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 449
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 452
    :cond_a6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 453
    :cond_b2
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 419
    :catch_b5
    move-exception v3

    .line 420
    sget-object v4, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "redirectSavePathIfEmpty: throwable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v11, 0x4

    goto/16 :goto_2b

    .line 425
    :cond_d1
    const/4 v12, 0x0

    goto/16 :goto_46

    .line 455
    :cond_d4
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 457
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->U()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v3

    const-string v4, "resume_task_override_settings"

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_106

    .line 458
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_f5
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_f5} :catch_2f7

    move-result-object v3

    .line 459
    if-eqz v3, :cond_106

    .line 462
    :try_start_f8
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/g/c;->M()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/appdownloader/g;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/g;
    :try_end_106
    .catch Ljava/lang/Throwable; {:try_start_f8 .. :try_end_106} :catch_361

    .line 467
    :cond_106
    :goto_106
    :try_start_106
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->U()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(ILorg/json/JSONObject;)V

    .line 469
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->K()Z

    move-result v3

    .line 470
    if-nez v3, :cond_36a

    invoke-static {v7, v8}, Lcom/ss/android/socialbase/downloader/m/f;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36a

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/f;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v4

    if-nez v4, :cond_36a

    .line 471
    const/4 v3, 0x1

    move v13, v3

    .line 473
    :goto_129
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->l()Lcom/ss/android/socialbase/downloader/d/w;

    move-result-object v3

    .line 474
    if-nez v3, :cond_367

    .line 475
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->g()Z

    move-result v4

    if-nez v4, :cond_13b

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->h()Z

    move-result v4

    if-eqz v4, :cond_367

    .line 476
    :cond_13b
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->p()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v3

    if-eqz v3, :cond_321

    .line 477
    new-instance v3, Lcom/ss/android/socialbase/appdownloader/h;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->p()Lcom/ss/android/socialbase/downloader/notification/a;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ss/android/socialbase/appdownloader/h;-><init>(Lcom/ss/android/socialbase/downloader/notification/a;)V

    move-object v10, v3

    .line 483
    :goto_14b
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->N()Lcom/ss/android/socialbase/downloader/d/l;

    move-result-object v3

    .line 485
    if-nez v3, :cond_364

    .line 486
    new-instance v3, Lcom/ss/android/socialbase/appdownloader/d$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/ss/android/socialbase/appdownloader/d$1;-><init>(Lcom/ss/android/socialbase/appdownloader/d;)V

    move-object v9, v3

    .line 495
    :goto_159
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->m()Ljava/lang/String;
    :try_end_15c
    .catch Ljava/lang/Throwable; {:try_start_106 .. :try_end_15c} :catch_2f7

    move-result-object v3

    .line 498
    :try_start_15d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_331

    .line 499
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 504
    :goto_168
    const-string v18, "auto_install_with_notification"

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->i()Z

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 505
    const-string v18, "auto_install_without_notification"

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->h()Z

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 507
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_185
    .catch Ljava/lang/Throwable; {:try_start_15d .. :try_end_185} :catch_338

    move-result-object v3

    move-object v4, v3

    .line 511
    :goto_187
    :try_start_187
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->g()Z

    move-result v3

    if-nez v3, :cond_193

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->h()Z

    move-result v3

    if-eqz v3, :cond_33c

    :cond_193
    const/4 v3, 0x1

    .line 513
    :goto_194
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->b()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/ss/android/socialbase/downloader/downloader/f;->b(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v18

    .line 514
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/d;->c(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v17

    .line 515
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->S()Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/ss/android/socialbase/downloader/g/d;->b(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v17

    .line 516
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/ss/android/socialbase/downloader/g/d;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v8

    .line 517
    invoke-virtual {v8, v6}, Lcom/ss/android/socialbase/downloader/g/d;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v8

    .line 518
    invoke-virtual {v8, v7}, Lcom/ss/android/socialbase/downloader/g/d;->d(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v7

    .line 519
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->j()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ss/android/socialbase/downloader/g/d;->b(Z)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v7

    .line 520
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/ss/android/socialbase/downloader/g/d;->a(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v7

    .line 521
    invoke-virtual {v7, v9}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/l;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v7

    .line 522
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->w()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ss/android/socialbase/downloader/g/d;->a(I)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v7

    .line 523
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->x()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ss/android/socialbase/downloader/g/d;->b(I)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v7

    .line 524
    invoke-virtual {v7, v3}, Lcom/ss/android/socialbase/downloader/g/d;->d(Z)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v7

    .line 525
    invoke-virtual {v7, v4}, Lcom/ss/android/socialbase/downloader/g/d;->e(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 526
    invoke-virtual {v4, v14}, Lcom/ss/android/socialbase/downloader/g/d;->f(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 527
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->D()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->d(I)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 528
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->E()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->c(I)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 529
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->k()Lcom/ss/android/socialbase/downloader/d/w;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/w;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 530
    invoke-virtual {v4, v10}, Lcom/ss/android/socialbase/downloader/g/d;->b(Lcom/ss/android/socialbase/downloader/d/w;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 531
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->O()Lcom/ss/android/socialbase/appdownloader/c/e;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/appdownloader/c/e;)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/z;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 532
    invoke-virtual {v4, v13}, Lcom/ss/android/socialbase/downloader/g/d;->c(Z)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 533
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->s()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->f(Z)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 534
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->t()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->g(Z)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 535
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->q()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/downloader/i;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->r()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/downloader/h;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 537
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->o()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->e(Z)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 538
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->g(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 539
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->v()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->h(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 540
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->y()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->h(Z)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 541
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->z()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->i(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 542
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->A()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->i(Z)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->B()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->j(Z)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 544
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->F()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->l(Z)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->G()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->m(Z)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 546
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->J()Lcom/ss/android/socialbase/downloader/b/g;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/b/g;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 547
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->M()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/x;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->C()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/downloader/r;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 549
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->H()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->n(Z)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 550
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->P()Lcom/ss/android/socialbase/downloader/d/q;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/q;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 551
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->T()Lcom/ss/android/socialbase/downloader/d/p;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/p;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 552
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->I()Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->k(Z)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 553
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->Q()Lcom/ss/android/socialbase/downloader/d/ac;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lcom/ss/android/socialbase/downloader/d/ac;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v4

    .line 554
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->U()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ss/android/socialbase/downloader/g/d;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/d;

    move-result-object v10

    .line 556
    if-eqz v10, :cond_9

    .line 557
    if-eqz v3, :cond_33f

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->R()Z

    move-result v3

    if-eqz v3, :cond_33f

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->a()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_33f

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->a()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_33f

    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/j;->a()Z

    move-result v3

    if-nez v3, :cond_33f

    .line 561
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->a()Landroid/app/Activity;

    move-result-object v3

    new-instance v7, Lcom/ss/android/socialbase/appdownloader/d$2;

    move-object/from16 v8, p0

    move-object v9, v6

    invoke-direct/range {v7 .. v12}, Lcom/ss/android/socialbase/appdownloader/d$2;-><init>(Lcom/ss/android/socialbase/appdownloader/d;Ljava/lang/String;Lcom/ss/android/socialbase/downloader/g/d;IZ)V

    invoke-static {v3, v7}, Lcom/ss/android/socialbase/appdownloader/j;->a(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/m;)V
    :try_end_2f5
    .catch Ljava/lang/Throwable; {:try_start_187 .. :try_end_2f5} :catch_2f7

    goto/16 :goto_9

    .line 583
    :catch_2f7
    move-exception v3

    .line 584
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->M()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v4

    new-instance v5, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v6, 0x3eb

    const-string v7, "addDownloadTask"

    invoke-static {v3, v7}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v4, v15, v5, v6}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    .line 585
    sget-object v4, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    const-string v5, "add download task error:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/ss/android/socialbase/downloader/f/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 479
    :cond_321
    :try_start_321
    new-instance v3, Lcom/ss/android/socialbase/appdownloader/h;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->b()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/socialbase/appdownloader/g;->m()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/ss/android/socialbase/appdownloader/h;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32e
    .catch Ljava/lang/Throwable; {:try_start_321 .. :try_end_32e} :catch_2f7

    move-object v10, v3

    goto/16 :goto_14b

    .line 501
    :cond_331
    :try_start_331
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_336
    .catch Ljava/lang/Throwable; {:try_start_331 .. :try_end_336} :catch_338

    goto/16 :goto_168

    .line 508
    :catch_338
    move-exception v4

    move-object v4, v3

    goto/16 :goto_187

    .line 511
    :cond_33c
    const/4 v3, 0x0

    goto/16 :goto_194

    .line 575
    :cond_33f
    :try_start_33f
    sget-object v3, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notification permission need not request, start download :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lcom/ss/android/socialbase/appdownloader/d;->a(Lcom/ss/android/socialbase/downloader/g/d;IZ)V

    .line 577
    invoke-virtual {v10}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_35f
    .catch Ljava/lang/Throwable; {:try_start_33f .. :try_end_35f} :catch_2f7

    goto/16 :goto_9

    .line 463
    :catch_361
    move-exception v3

    goto/16 :goto_106

    :cond_364
    move-object v9, v3

    goto/16 :goto_159

    :cond_367
    move-object v10, v3

    goto/16 :goto_14b

    :cond_36a
    move v13, v3

    goto/16 :goto_129

    :cond_36d
    move-object v14, v3

    goto/16 :goto_90
.end method

.method public a()Lcom/ss/android/socialbase/appdownloader/c/c;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->c:Lcom/ss/android/socialbase/appdownloader/c/c;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 803
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move-object v0, v1

    .line 830
    :cond_a
    :goto_a
    return-object v0

    .line 807
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/d;->f()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 808
    if-nez v0, :cond_1d

    .line 810
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 812
    :cond_1d
    if-nez v0, :cond_29

    .line 814
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 822
    :cond_29
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v2

    const-string v3, "get_download_info_by_list"

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;)Z

    move-result v2

    .line 823
    if-nez v0, :cond_a

    if-eqz v2, :cond_a

    .line 825
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/d;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_3a} :catch_3c

    move-result-object v0

    goto :goto_a

    .line 828
    :catch_3c
    move-exception v0

    .line 829
    sget-object v2, Lcom/ss/android/socialbase/appdownloader/d;->a:Ljava/lang/String;

    const-string v3, "getAppDownloadInfo error:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 830
    goto :goto_a
.end method

.method public a(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 854
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    if-gez p1, :cond_3

    .line 192
    const/4 p1, 0x0

    .line 195
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->v()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "failed_resume_max_count"

    .line 196
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_d

    .line 200
    :goto_c
    return-void

    .line 197
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public a(J)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 157
    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    move-wide p1, v0

    .line 161
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->v()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "failed_resume_min_hours"

    long-to-double v2, p1

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    .line 162
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    .line 166
    :goto_17
    return-void

    .line 163
    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method public a(Landroid/content/Context;II)V
    .registers 5

    .prologue
    .line 354
    packed-switch p3, :pswitch_data_26

    .line 380
    :goto_3
    :pswitch_3
    return-void

    .line 357
    :pswitch_4
    :try_start_4
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->e(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_3

    .line 377
    :catch_c
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 360
    :pswitch_11
    :try_start_11
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->c(I)V

    goto :goto_3

    .line 369
    :pswitch_19
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(I)V

    goto :goto_3

    .line 372
    :pswitch_21
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;IZ)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_25} :catch_c

    goto :goto_3

    .line 354
    :pswitch_data_26
    .packed-switch -0x4
        :pswitch_4
        :pswitch_21
        :pswitch_11
        :pswitch_4
        :pswitch_3
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_3
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/ss/android/socialbase/appdownloader/c/c;Lcom/ss/android/socialbase/appdownloader/c/d;Lcom/ss/android/socialbase/appdownloader/c/h;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    if-eqz p3, :cond_4

    .line 267
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/d;->c:Lcom/ss/android/socialbase/appdownloader/c/c;

    .line 269
    :cond_4
    if-eqz p4, :cond_8

    .line 270
    iput-object p4, p0, Lcom/ss/android/socialbase/appdownloader/d;->d:Lcom/ss/android/socialbase/appdownloader/c/d;

    .line 272
    :cond_8
    if-eqz p5, :cond_c

    .line 273
    iput-object p5, p0, Lcom/ss/android/socialbase/appdownloader/d;->e:Lcom/ss/android/socialbase/appdownloader/c/h;

    .line 275
    :cond_c
    if-eqz p1, :cond_23

    sget-boolean v0, Lcom/ss/android/socialbase/appdownloader/d;->l:Z

    if-nez v0, :cond_23

    .line 276
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Landroid/content/Context;)V

    .line 277
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d/b;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/d/b;-><init>()V

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/downloader/m;)V

    .line 278
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/d;->m()V

    .line 279
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/socialbase/appdownloader/d;->l:Z

    .line 281
    :cond_23
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/appdownloader/c/g;)V
    .registers 2

    .prologue
    .line 874
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d;->f:Lcom/ss/android/socialbase/appdownloader/c/g;

    .line 875
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/appdownloader/c/i;)V
    .registers 2

    .prologue
    .line 878
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d;->h:Lcom/ss/android/socialbase/appdownloader/c/i;

    .line 879
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 89
    :goto_6
    return-void

    .line 88
    :cond_7
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d;->j:Ljava/lang/String;

    goto :goto_6
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/d;->o:Z

    .line 115
    return-void
.end method

.method public b()Lcom/ss/android/socialbase/appdownloader/c/d;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->d:Lcom/ss/android/socialbase/appdownloader/c/d;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/f;->a(Landroid/content/Context;)Lcom/ss/android/socialbase/downloader/downloader/f;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/f;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    if-gez p1, :cond_3

    .line 209
    const/4 p1, 0x0

    .line 212
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->v()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "uninstall_resume_max_count"

    .line 213
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_d

    .line 217
    :goto_c
    return-void

    .line 214
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public b(J)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 174
    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    move-wide p1, v0

    .line 178
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->v()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "uninstall_resume_min_hours"

    long-to-double v2, p1

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    .line 179
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    .line 183
    :goto_17
    return-void

    .line 180
    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 290
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/d;->q:Ljava/lang/String;

    .line 292
    :cond_8
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/ss/android/socialbase/appdownloader/c/f;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->p:Lcom/ss/android/socialbase/appdownloader/c/f;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->o:Z

    return v0
.end method

.method public f()Ljava/io/File;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    .line 136
    :cond_a
    :goto_a
    return-object v0

    .line 127
    :cond_b
    :try_start_b
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/d;->q:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_2b

    .line 128
    :try_start_12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_a

    .line 134
    :catch_1c
    move-exception v1

    goto :goto_a

    .line 130
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_a

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2a} :catch_1c

    goto :goto_a

    .line 134
    :catch_2b
    move-exception v0

    move-object v0, v1

    goto :goto_a
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcom/ss/android/socialbase/appdownloader/c/l;
    .registers 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->g:Lcom/ss/android/socialbase/appdownloader/c/l;

    return-object v0
.end method

.method public j()Lcom/ss/android/socialbase/appdownloader/c/g;
    .registers 2

    .prologue
    .line 870
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->f:Lcom/ss/android/socialbase/appdownloader/c/g;

    return-object v0
.end method

.method public k()Lcom/ss/android/socialbase/appdownloader/c/i;
    .registers 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d;->h:Lcom/ss/android/socialbase/appdownloader/c/i;

    return-object v0
.end method
