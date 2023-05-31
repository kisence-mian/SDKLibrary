.class public Lcom/ss/android/socialbase/appdownloader/b;
.super Ljava/lang/Object;
.source "AntiHijackUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/appdownloader/b$e;,
        Lcom/ss/android/socialbase/appdownloader/b$a;,
        Lcom/ss/android/socialbase/appdownloader/b$c;,
        Lcom/ss/android/socialbase/appdownloader/b$b;,
        Lcom/ss/android/socialbase/appdownloader/b$d;
    }
.end annotation


# static fields
.field private static a:Lcom/ss/android/socialbase/appdownloader/b$c;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ss/android/socialbase/downloader/m/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/ss/android/socialbase/appdownloader/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/b;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lcom/ss/android/socialbase/downloader/k/a;)I
    .registers 9
    .param p0    # Lcom/ss/android/socialbase/downloader/k/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 305
    const/4 v3, -0x1

    .line 307
    const-string v0, "anti_hijack_dir"

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/k/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_7b

    .line 310
    const-string v4, "dir_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v1

    .line 313
    :goto_18
    if-nez v0, :cond_1e

    .line 314
    const/4 v2, 0x5

    .line 347
    :cond_1b
    :goto_1b
    return v2

    :cond_1c
    move v0, v2

    .line 311
    goto :goto_18

    .line 316
    :cond_1e
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v4, "get_download_info_by_list"

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 317
    if-nez v0, :cond_37

    .line 318
    const-string v0, "force_enable_get_download_info_by_list"

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 319
    if-eqz v0, :cond_76

    .line 321
    const-string v0, "get_download_info_by_list"

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(Ljava/lang/String;Z)V

    .line 327
    :cond_37
    const-string v0, "anti_plans"

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/k/a;->e(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 328
    if-eqz v4, :cond_78

    .line 329
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v1, v2

    move v0, v3

    .line 331
    :goto_45
    if-ge v1, v5, :cond_79

    .line 332
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 333
    if-eqz v3, :cond_73

    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 334
    const-string v6, "type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 336
    const-string v7, "jump_file_manager"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_69

    const-string v7, "jump_file_manager_custom"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 338
    :cond_69
    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/b;->b(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/a;

    move-result-object v3

    .line 339
    iget v0, v3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 340
    iget v3, v3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    if-eqz v3, :cond_1b

    .line 331
    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 323
    :cond_76
    const/4 v2, 0x4

    goto :goto_1b

    :cond_78
    move v0, v3

    :cond_79
    move v2, v0

    .line 347
    goto :goto_1b

    :cond_7b
    move v0, v2

    goto :goto_18
.end method

.method static synthetic a(Lcom/ss/android/socialbase/appdownloader/b$a;)Lcom/ss/android/socialbase/appdownloader/b$a;
    .registers 1

    .prologue
    .line 43
    sput-object p0, Lcom/ss/android/socialbase/appdownloader/b;->c:Lcom/ss/android/socialbase/appdownloader/b$a;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/m/a$a;
    .registers 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 500
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 517
    :cond_7
    :goto_7
    return-object v0

    .line 504
    :cond_8
    :try_start_8
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 505
    if-eqz v3, :cond_7

    .line 506
    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, v4, :cond_7

    aget-object v1, v3, v2

    .line 507
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 508
    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/b;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/m/a$a;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_20} :catch_29

    move-result-object v1

    .line 509
    if-eqz v1, :cond_25

    move-object v0, v1

    .line 510
    goto :goto_7

    .line 506
    :cond_25
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_13

    .line 515
    :catch_29
    move-exception v1

    goto :goto_7
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 791
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x320

    if-le v1, v2, :cond_13

    .line 793
    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 795
    :cond_13
    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/b$b;)V
    .registers 6

    .prologue
    .line 754
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/b;->c:Lcom/ss/android/socialbase/appdownloader/b$a;

    if-eqz v0, :cond_10

    .line 755
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/appdownloader/b;->c:Lcom/ss/android/socialbase/appdownloader/b$a;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/a/a;->b(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 756
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/b;->c:Lcom/ss/android/socialbase/appdownloader/b$a;

    .line 758
    :cond_10
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/b$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ss/android/socialbase/appdownloader/b$a;-><init>(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/b$b;)V

    sput-object v0, Lcom/ss/android/socialbase/appdownloader/b;->c:Lcom/ss/android/socialbase/appdownloader/b$a;

    .line 759
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    sget-object v1, Lcom/ss/android/socialbase/appdownloader/b;->c:Lcom/ss/android/socialbase/appdownloader/b$a;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 760
    return-void
.end method

.method private static a(Lcom/ss/android/socialbase/appdownloader/a;I)V
    .registers 4

    .prologue
    .line 428
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 429
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 433
    :goto_c
    return-void

    .line 431
    :cond_d
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    goto :goto_c
.end method

.method public static a(Lcom/ss/android/socialbase/appdownloader/b$c;)V
    .registers 1

    .prologue
    .line 840
    sput-object p0, Lcom/ss/android/socialbase/appdownloader/b;->a:Lcom/ss/android/socialbase/appdownloader/b$c;

    .line 841
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/16 v2, 0x1a

    const/4 v0, 0x1

    .line 697
    if-nez p0, :cond_6

    .line 710
    :cond_5
    :goto_5
    return v0

    .line 701
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_15

    .line 702
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->d(Landroid/content/Context;)Z

    move-result v0

    goto :goto_5

    .line 703
    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v2, :cond_5

    .line 704
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->e(Landroid/content/Context;)Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_24} :catch_26

    move-result v0

    goto :goto_5

    .line 709
    :catch_26
    move-exception v1

    goto :goto_5
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/ss/android/socialbase/appdownloader/b;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;)Z
    .registers 6
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x1a

    const/4 v0, 0x0

    .line 656
    :try_start_3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->b()Z

    move-result v1

    if-eqz v1, :cond_31

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_31

    .line 657
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 658
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/a/j;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/appdownloader/a/j;-><init>(Landroid/content/Context;)V

    .line 659
    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/a/j;->a()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 660
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/b$1;

    invoke-direct {v2}, Lcom/ss/android/socialbase/appdownloader/b$1;-><init>()V

    invoke-static {p0, p1, p2, v2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/b$b;)V

    .line 666
    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/a/j;->b()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ss/android/socialbase/appdownloader/b;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 688
    :cond_2e
    :goto_2e
    return v0

    .line 668
    :cond_2f
    const/4 v0, 0x1

    goto :goto_2e

    .line 670
    :cond_31
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2e

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v2, :cond_2e

    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 671
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/a/b;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/appdownloader/a/b;-><init>(Landroid/content/Context;)V

    .line 672
    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/a/b;->a()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 673
    new-instance v2, Lcom/ss/android/socialbase/appdownloader/b$2;

    invoke-direct {v2}, Lcom/ss/android/socialbase/appdownloader/b$2;-><init>()V

    invoke-static {p0, p1, p2, v2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/b$b;)V

    .line 679
    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/a/b;->b()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ss/android/socialbase/appdownloader/b;->b(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_5d} :catch_5f

    move-result v0

    goto :goto_2e

    .line 685
    :catch_5f
    move-exception v1

    goto :goto_2e
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/a;)Z
    .registers 9
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/ss/android/socialbase/appdownloader/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 613
    if-eqz p0, :cond_6

    if-nez p2, :cond_7

    .line 646
    :cond_6
    :goto_6
    return v0

    .line 616
    :cond_7
    const-string v2, "max_jump_count"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 617
    if-lez v2, :cond_6

    .line 620
    const-string v3, "sp_anti_hijack_config"

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 621
    const-string v4, "jump_unknown_source_count"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 622
    if-ge v4, v2, :cond_6

    .line 625
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 626
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "jump_unknown_source_count"

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 627
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ss/android/socialbase/appdownloader/view/JumpUnknownSourceActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 628
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 629
    const-string v3, "intent"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 630
    const-string v3, "config"

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    const/4 v3, 0x0

    :try_start_4d
    invoke-static {p0, v2, v3}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;Z)Z

    .line 633
    if-eqz p3, :cond_55

    .line 634
    const/4 v2, 0x0

    iput v2, p3, Lcom/ss/android/socialbase/appdownloader/a;->b:I
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_55} :catch_57

    :cond_55
    move v0, v1

    .line 636
    goto :goto_6

    .line 637
    :catch_57
    move-exception v2

    .line 638
    if-eqz p3, :cond_6

    .line 639
    iput v1, p3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryShowUnknownSourceDialog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/ss/android/socialbase/appdownloader/a;->c:Ljava/lang/String;

    goto :goto_6
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 767
    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v0, v1

    .line 787
    :goto_7
    return v0

    .line 770
    :cond_8
    if-eqz p2, :cond_17

    .line 774
    :try_start_a
    const-string v2, "start_only_for_android"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 775
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_7

    .line 777
    :catch_14
    move-exception v0

    move v0, v1

    .line 787
    goto :goto_7

    .line 783
    :cond_17
    const-string v1, "start_only_for_android"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 784
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_7
.end method

.method private static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Landroid/content/Intent;Lorg/json/JSONObject;Z)Z
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 93
    if-eqz p3, :cond_7

    if-nez p1, :cond_8

    .line 166
    :cond_7
    :goto_7
    return v0

    .line 97
    :cond_8
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/a;

    invoke-direct {v1}, Lcom/ss/android/socialbase/appdownloader/a;-><init>()V

    .line 98
    const-string v3, "type"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    const-string v5, "AntiHijackUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runAntiHijack type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 104
    iput-object v3, v1, Lcom/ss/android/socialbase/appdownloader/a;->a:Ljava/lang/String;

    .line 105
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_fa

    :cond_3a
    move v3, v4

    :goto_3b
    packed-switch v3, :pswitch_data_108

    .line 155
    :cond_3e
    :goto_3e
    if-eqz v0, :cond_4d

    .line 157
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->bg()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "anti_hijack_attempt"

    invoke-virtual {v1}, Lcom/ss/android/socialbase/appdownloader/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_4d
    sget-object v2, Lcom/ss/android/socialbase/appdownloader/b;->a:Lcom/ss/android/socialbase/appdownloader/b$c;

    if-eqz v2, :cond_7

    .line 160
    sget-object v2, Lcom/ss/android/socialbase/appdownloader/b;->a:Lcom/ss/android/socialbase/appdownloader/b$c;

    invoke-interface {v2, p1, v1}, Lcom/ss/android/socialbase/appdownloader/b$c;->a(Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/appdownloader/a;)V

    goto :goto_7

    .line 105
    :sswitch_57
    const-string v5, "jump_unknown_source"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    move v3, v0

    goto :goto_3b

    :sswitch_61
    const-string v5, "jump_file_manager"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    move v3, v2

    goto :goto_3b

    :sswitch_6b
    const-string v5, "jump_file_manager_custom"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v3, 0x2

    goto :goto_3b

    .line 108
    :pswitch_75
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_81

    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->b()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 109
    :cond_81
    const-string v3, "enable_for_all"

    invoke-virtual {p3, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_92

    .line 110
    :goto_89
    if-nez v2, :cond_8d

    if-eqz p4, :cond_3e

    .line 111
    :cond_8d
    invoke-static {p0, p2, p3, v1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/a;)Z

    move-result v0

    goto :goto_3e

    :cond_92
    move v2, v0

    .line 109
    goto :goto_89

    .line 117
    :pswitch_94
    invoke-static {p3}, Lcom/ss/android/socialbase/appdownloader/b;->b(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/a;

    move-result-object v2

    .line 118
    iget v3, v2, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    if-eqz v3, :cond_b8

    .line 120
    const-string v1, "AntiHijackUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runAntiHijack jump_file_manager break, error_code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 121
    goto :goto_3e

    .line 123
    :cond_b8
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->be()Z

    move-result v2

    if-nez v2, :cond_cd

    .line 129
    const-string v2, "AntiHijackUtils"

    const-string v3, "runAntiHijack jump_file_manager savePathRedirected error"

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1, v4}, Lcom/ss/android/socialbase/downloader/g/c;->j(I)I

    move-result v2

    iput v2, v1, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    goto/16 :goto_3e

    .line 133
    :cond_cd
    const-string v0, "AntiHijackUtils"

    const-string v2, "runAntiHijack jump_file_manager start jumpFileManagerPage"

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {p0, p1, p3, v1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/a;)Z

    move-result v0

    goto/16 :goto_3e

    .line 138
    :pswitch_da
    invoke-static {p3}, Lcom/ss/android/socialbase/appdownloader/b;->b(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/a;

    move-result-object v2

    .line 139
    iget v3, v2, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    if-eqz v3, :cond_e5

    move-object v1, v2

    .line 141
    goto/16 :goto_3e

    .line 143
    :cond_e5
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->be()Z

    move-result v2

    if-nez v2, :cond_f3

    .line 149
    invoke-virtual {p1, v4}, Lcom/ss/android/socialbase/downloader/g/c;->j(I)I

    move-result v2

    iput v2, v1, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    goto/16 :goto_3e

    .line 152
    :cond_f3
    invoke-static {p0, p1, p3, v1}, Lcom/ss/android/socialbase/appdownloader/b;->b(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/a;)Z

    move-result v0

    goto/16 :goto_3e

    .line 105
    nop

    :sswitch_data_fa
    .sparse-switch
        -0x7d025fa5 -> :sswitch_61
        -0x6f80242b -> :sswitch_6b
        0x2e6209e1 -> :sswitch_57
    .end sparse-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_75
        :pswitch_94
        :pswitch_da
    .end packed-switch
.end method

.method protected static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Landroid/content/Intent;Z)Z
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v1

    const-string v2, "anti_plans"

    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->e(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_2b

    .line 72
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v0

    .line 73
    :goto_16
    if-ge v1, v3, :cond_2b

    .line 74
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 75
    if-eqz v4, :cond_2c

    invoke-static {v4}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 77
    invoke-static {p0, p1, p2, v4, p3}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Landroid/content/Intent;Lorg/json/JSONObject;Z)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 79
    const/4 v0, 0x1

    .line 85
    :cond_2b
    return v0

    .line 73
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method

.method private static a(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/a;)Z
    .registers 16

    .prologue
    .line 200
    if-eqz p0, :cond_4

    if-nez p2, :cond_6

    .line 201
    :cond_4
    const/4 v0, 0x0

    .line 260
    :goto_5
    return v0

    .line 203
    :cond_6
    const-string v0, "device_plans"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    iput-object v0, p3, Lcom/ss/android/socialbase/appdownloader/a;->e:Ljava/lang/String;

    .line 205
    const-string v1, "AntiHijackUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jumpFileManagerPage devicePlans = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_eb

    .line 208
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 209
    const/4 v3, 0x0

    .line 212
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 214
    const/4 v0, 0x0

    goto :goto_5

    .line 216
    :cond_3f
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    const/4 v2, 0x0

    .line 220
    array-length v8, v5

    const/4 v0, 0x0

    move v4, v0

    :goto_4d
    if-ge v4, v8, :cond_ee

    aget-object v1, v5, v4

    .line 221
    invoke-static {p0, v1, p2, p1}, Lcom/ss/android/socialbase/appdownloader/a/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/appdownloader/a/a;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_bf

    .line 223
    invoke-virtual {v0}, Lcom/ss/android/socialbase/appdownloader/a/a;->b()Landroid/content/Intent;

    move-result-object v0

    .line 224
    const-string v9, "AntiHijackUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "try startActivity : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    if-eqz v0, :cond_d6

    .line 228
    invoke-static {v6, p1, p2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/io/File;Lcom/ss/android/socialbase/downloader/g/c;Lorg/json/JSONObject;)Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 231
    :try_start_7b
    const-string v9, "AntiHijackUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "using jumpFileManagerPage plan : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v9, 0x0

    invoke-static {p0, v0, v9}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;Z)Z
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_97} :catch_a2

    .line 233
    const/4 v0, 0x1

    .line 252
    :goto_98
    if-nez v0, :cond_e4

    .line 253
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/ss/android/socialbase/appdownloader/a;->c:Ljava/lang/String;

    goto/16 :goto_5

    .line 236
    :catch_a2
    move-exception v0

    .line 237
    const-string v9, "AntiHijackUtils"

    const-string v10, "try startActivity failed : "

    invoke-static {v9, v10, v0}, Lcom/ss/android/socialbase/downloader/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " startActivity failed : "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 250
    :cond_bf
    :goto_bf
    const-string v0, "  "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4d

    .line 242
    :cond_c8
    const/4 v0, 0x6

    invoke-static {p3, v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 243
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " createDescFile failed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bf

    .line 246
    :cond_d6
    const/4 v0, 0x3

    invoke-static {p3, v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 247
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resolveActivity failed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bf

    .line 255
    :cond_e4
    iput-object v1, p3, Lcom/ss/android/socialbase/appdownloader/a;->d:Ljava/lang/String;

    .line 256
    const/4 v1, 0x0

    iput v1, p3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    goto/16 :goto_5

    .line 260
    :cond_eb
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_ee
    move-object v1, v2

    move v0, v3

    goto :goto_98
.end method

.method private static a(Ljava/io/File;Lcom/ss/android/socialbase/downloader/g/c;Lorg/json/JSONObject;)Z
    .registers 8
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 575
    if-nez p0, :cond_6

    move v0, v2

    .line 603
    :goto_5
    return v0

    .line 578
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 579
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/k/a;->a(I)Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v4, "anti_hijack_dir"

    invoke-virtual {v0, v4}, Lcom/ss/android/socialbase/downloader/k/a;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 582
    if-eqz v0, :cond_58

    .line 583
    const-string v4, "install_desc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    :goto_20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 586
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 587
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    :cond_48
    if-eqz v1, :cond_53

    .line 593
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 594
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_53} :catch_55

    .line 603
    :cond_53
    const/4 v0, 0x1

    goto :goto_5

    .line 597
    :catch_55
    move-exception v0

    move v0, v2

    .line 601
    goto :goto_5

    :cond_58
    move-object v0, v1

    goto :goto_20
.end method

.method public static a(Lorg/json/JSONArray;)Z
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 441
    if-nez p0, :cond_5

    .line 477
    :cond_4
    :goto_4
    return v0

    .line 445
    :cond_5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 450
    if-eqz v4, :cond_4

    move v3, v1

    move v0, v1

    .line 454
    :goto_d
    if-ge v3, v4, :cond_4

    .line 455
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 456
    if-eqz v2, :cond_52

    .line 457
    const-string v5, "package_names"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 458
    const-string v6, "version_white"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 459
    const-string v7, "version_black"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 460
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    if-nez v6, :cond_33

    if-nez v7, :cond_33

    :cond_31
    move v0, v1

    .line 461
    goto :goto_4

    .line 463
    :cond_33
    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 464
    if-eqz v5, :cond_52

    .line 465
    array-length v8, v5

    move v2, v1

    :goto_3d
    if-ge v2, v8, :cond_52

    aget-object v9, v5, v2

    .line 466
    invoke-static {v9}, Lcom/ss/android/socialbase/appdownloader/b;->b(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/m/a$a;

    move-result-object v9

    .line 467
    if-eqz v9, :cond_4f

    .line 468
    invoke-static {v6, v7, v9}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;Lcom/ss/android/socialbase/downloader/m/a$a;)Z

    move-result v0

    .line 469
    if-nez v0, :cond_4f

    move v0, v1

    .line 470
    goto :goto_4

    .line 465
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 454
    :cond_52
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_d
.end method

.method private static a(Lorg/json/JSONArray;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 556
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 566
    :cond_5
    :goto_5
    return v0

    .line 559
    :cond_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v1, v0

    .line 560
    :goto_b
    if-ge v1, v2, :cond_5

    .line 561
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 562
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 563
    const/4 v0, 0x1

    goto :goto_5

    .line 560
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method private static a(Lorg/json/JSONArray;Lorg/json/JSONArray;Lcom/ss/android/socialbase/downloader/m/a$a;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 528
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/m/a$a;->g()Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-virtual {p2}, Lcom/ss/android/socialbase/downloader/m/a$a;->f()I

    move-result v2

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 535
    const/4 v1, 0x0

    .line 536
    if-eqz p0, :cond_30

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_30

    .line 538
    invoke-static {p0, v2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 547
    :cond_2f
    :goto_2f
    return v0

    .line 541
    :cond_30
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3e

    .line 543
    invoke-static {p1, v2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_3e
    move v0, v1

    goto :goto_2f
.end method

.method private static a(Lorg/json/JSONObject;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 174
    if-nez p0, :cond_5

    .line 192
    :cond_4
    :goto_4
    return v0

    .line 177
    :cond_5
    const-string v2, "device_rom"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 182
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->f()Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v0, v1

    .line 185
    goto :goto_4

    .line 187
    :cond_1d
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 192
    goto :goto_4
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/a;
    .registers 9
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    .line 357
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/a;

    invoke-direct {v0}, Lcom/ss/android/socialbase/appdownloader/a;-><init>()V

    .line 358
    if-nez p0, :cond_a

    .line 418
    :cond_9
    :goto_9
    return-object v0

    .line 361
    :cond_a
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    iput-object v1, v0, Lcom/ss/android/socialbase/appdownloader/a;->a:Ljava/lang/String;

    .line 364
    const-string v3, "device_requirements"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 367
    :try_start_18
    invoke-static {v3}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lorg/json/JSONArray;)Z
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_23

    move-result v3

    .line 383
    if-nez v3, :cond_42

    .line 385
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    goto :goto_9

    .line 371
    :catch_23
    move-exception v1

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkJumpFileManagerConfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/socialbase/appdownloader/a;->c:Ljava/lang/String;

    .line 374
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    goto :goto_9

    .line 388
    :cond_42
    const-string v3, "jump_file_manager_custom"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 390
    const-string v1, "custom"

    iput-object v1, v0, Lcom/ss/android/socialbase/appdownloader/a;->e:Ljava/lang/String;

    .line 392
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v1

    const-string v3, "custom"

    invoke-static {v1, v3, p0}, Lcom/ss/android/socialbase/appdownloader/a/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v1

    .line 393
    if-eqz v1, :cond_5d

    .line 394
    iput v2, v0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    goto :goto_9

    .line 397
    :cond_5d
    invoke-static {v0, v7}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    goto :goto_9

    .line 402
    :cond_61
    const-string v1, "device_plans"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    iput-object v1, v0, Lcom/ss/android/socialbase/appdownloader/a;->e:Ljava/lang/String;

    .line 404
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 405
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 406
    array-length v4, v3

    move v1, v2

    :goto_77
    if-ge v1, v4, :cond_9

    aget-object v5, v3, v1

    .line 407
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->B()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, p0}, Lcom/ss/android/socialbase/appdownloader/a/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 409
    iput v2, v0, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    goto :goto_9

    .line 412
    :cond_88
    invoke-static {v0, v7}, Lcom/ss/android/socialbase/appdownloader/b;->a(Lcom/ss/android/socialbase/appdownloader/a;I)V

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_77
.end method

.method private static b(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/m/a$a;
    .registers 4

    .prologue
    .line 481
    const/4 v1, 0x0

    .line 482
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 484
    sget-object v0, Lcom/ss/android/socialbase/appdownloader/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/m/a$a;

    .line 485
    if-eqz v0, :cond_1f

    .line 495
    :cond_13
    :goto_13
    return-object v0

    .line 489
    :cond_14
    invoke-static {p0}, Lcom/ss/android/socialbase/downloader/m/a;->a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/m/a$a;

    move-result-object v0

    .line 490
    sget-object v2, Lcom/ss/android/socialbase/appdownloader/b;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    if-nez v0, :cond_13

    :cond_1f
    move-object v0, v1

    goto :goto_13
.end method

.method static synthetic b(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 43
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    .prologue
    .line 763
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ss/android/socialbase/appdownloader/b;->a(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/c;Lorg/json/JSONObject;Lcom/ss/android/socialbase/appdownloader/a;)Z
    .registers 9
    .param p1    # Lcom/ss/android/socialbase/downloader/g/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ss/android/socialbase/appdownloader/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 269
    if-eqz p0, :cond_6

    if-nez p2, :cond_7

    .line 297
    :cond_6
    :goto_6
    return v0

    .line 272
    :cond_7
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 276
    const-string v3, "custom"

    iput-object v3, p3, Lcom/ss/android/socialbase/appdownloader/a;->d:Ljava/lang/String;

    .line 277
    const-string v3, "custom"

    invoke-static {p0, v3, p2, p1}, Lcom/ss/android/socialbase/appdownloader/a/d;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/socialbase/downloader/g/c;)Lcom/ss/android/socialbase/appdownloader/a/a;

    move-result-object v3

    .line 278
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/a/a;->a()Z

    move-result v4

    if-nez v4, :cond_27

    .line 279
    :cond_23
    const/4 v1, 0x3

    iput v1, p3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    goto :goto_6

    .line 282
    :cond_27
    invoke-virtual {v3}, Lcom/ss/android/socialbase/appdownloader/a/a;->b()Landroid/content/Intent;

    move-result-object v3

    .line 283
    if-eqz v3, :cond_6

    .line 286
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-static {v4, p1, p2}, Lcom/ss/android/socialbase/appdownloader/b;->a(Ljava/io/File;Lcom/ss/android/socialbase/downloader/g/c;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 288
    invoke-static {p0, v3}, Lcom/ss/android/socialbase/appdownloader/b;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 289
    iput v0, p3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    move v0, v1

    .line 290
    goto :goto_6

    .line 292
    :cond_42
    iput v1, p3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    goto :goto_6

    .line 295
    :cond_45
    const/4 v1, 0x6

    iput v1, p3, Lcom/ss/android/socialbase/appdownloader/a;->b:I

    goto :goto_6
.end method

.method static synthetic c(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 43
    invoke-static {p0}, Lcom/ss/android/socialbase/appdownloader/b;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 720
    if-nez p0, :cond_4

    .line 726
    :cond_3
    :goto_3
    return v0

    .line 724
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_e} :catch_13

    move-result v1

    if-gtz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    .line 725
    :catch_13
    move-exception v1

    goto :goto_3
.end method

.method private static e(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 736
    if-nez p0, :cond_4

    .line 742
    :goto_3
    return v0

    .line 740
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_d

    move-result v0

    goto :goto_3

    .line 741
    :catch_d
    move-exception v1

    goto :goto_3
.end method
