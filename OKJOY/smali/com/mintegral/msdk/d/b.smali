.class public Lcom/mintegral/msdk/d/b;
.super Ljava/lang/Object;
.source "ShortCutsManager.java"


# static fields
.field private static volatile b:Lcom/mintegral/msdk/d/b;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 699
    new-instance v0, Lcom/mintegral/msdk/d/b$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/d/b$3;-><init>(Lcom/mintegral/msdk/d/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/d/b;->c:Landroid/os/Handler;

    .line 150
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/d/b;->a:Ljava/lang/ref/WeakReference;

    .line 151
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 422
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 423
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 424
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "title=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 426
    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/d/b;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/d/b;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/mintegral/msdk/d/b;
    .registers 3

    .prologue
    .line 158
    sget-object v0, Lcom/mintegral/msdk/d/b;->b:Lcom/mintegral/msdk/d/b;

    if-nez v0, :cond_13

    .line 159
    const-class v1, Lcom/mintegral/msdk/d/b;

    monitor-enter v1

    .line 160
    :try_start_7
    sget-object v0, Lcom/mintegral/msdk/d/b;->b:Lcom/mintegral/msdk/d/b;

    if-nez v0, :cond_12

    .line 161
    new-instance v0, Lcom/mintegral/msdk/d/b;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/d/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mintegral/msdk/d/b;->b:Lcom/mintegral/msdk/d/b;

    .line 163
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 165
    :cond_13
    sget-object v0, Lcom/mintegral/msdk/d/b;->b:Lcom/mintegral/msdk/d/b;

    return-object v0

    .line 163
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 53
    invoke-static {p0}, Lcom/mintegral/msdk/d/b;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/app/Activity;)V
    .registers 8

    .prologue
    .line 4280
    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    if-eqz p1, :cond_5c

    .line 4282
    :try_start_c
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4283
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4284
    const-string v0, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4285
    const/16 v0, 0x8c

    const/16 v2, 0x8c

    const/4 v3, 0x1

    invoke-static {p1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4286
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4287
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/mintegral/msdk/activity/MTGCommonActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4288
    const-string v0, "intent_flag"

    const-string v3, "shortcuts"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3e} :catch_65

    .line 4289
    const/4 v0, 0x0

    .line 4291
    :try_start_3f
    invoke-static {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->campaignToJsonObject(Lcom/mintegral/msdk/base/entity/CampaignEx;)Lorg/json/JSONObject;
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_3f .. :try_end_42} :catch_60
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_65

    move-result-object v0

    .line 4295
    :goto_43
    if-eqz v0, :cond_4e

    .line 4296
    :try_start_45
    const-string v3, "intent_jsonobject"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4298
    :cond_4e
    const v0, 0x8000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4299
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4300
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5c} :catch_65

    .line 4305
    :cond_5c
    :goto_5c
    invoke-static {p3}, Lcom/mintegral/msdk/d/b;->b(Landroid/app/Activity;)V

    .line 53
    return-void

    .line 4293
    :catch_60
    move-exception v3

    :try_start_61
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_43

    .line 4302
    :catch_65
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c
.end method

.method private a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;I)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/mintegral/msdk/activity/MTGCommonActivity;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 340
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    invoke-static {p1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v3

    .line 342
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 343
    if-nez v0, :cond_47

    .line 344
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 346
    :cond_47
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->j()Ljava/lang/String;

    move-result-object v4

    .line 347
    const-string v0, "com.android.launcher.permission.READ_SETTINGS"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "com.google.android.launcher.permission.READ_SETTINGS"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 348
    :cond_5b
    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 1585
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/d/b;->c(Ljava/lang/String;)I

    move-result v0

    if-ge v0, p3, :cond_87

    move v0, v1

    .line 348
    :goto_66
    if-eqz v0, :cond_89

    .line 349
    invoke-direct {p0, p2, v5, v1}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;II)V

    .line 350
    invoke-virtual {p2, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsDeleted(I)V

    .line 351
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 352
    const-string v2, "is_deleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 363
    :goto_83
    invoke-virtual {v3, v4}, Lcom/mintegral/msdk/base/b/f;->c(Ljava/lang/String;)V

    .line 364
    return-void

    :cond_87
    move v0, v2

    .line 1585
    goto :goto_66

    .line 355
    :cond_89
    invoke-direct {p0, p2, v5, v2}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;II)V

    goto :goto_83

    .line 358
    :cond_8d
    const/4 v0, -0x1

    invoke-direct {p0, p2, v5, v0}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;II)V

    .line 359
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 360
    const-string v2, "is_deleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_83
.end method

.method private a(Landroid/content/Context;Lcom/mintegral/msdk/c/a;)V
    .registers 8

    .prologue
    .line 875
    invoke-virtual {p2}, Lcom/mintegral/msdk/c/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 876
    invoke-static {p1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v0

    .line 877
    invoke-virtual {p2}, Lcom/mintegral/msdk/c/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/f;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_77

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_77

    const-string v1, "com.android.launcher.permission.UNINSTALL_SHORTCUT"

    invoke-direct {p0, v1}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 879
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 880
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/d/b;->c(Ljava/lang/String;)I

    move-result v3

    .line 3316
    iget-object v0, p0, Lcom/mintegral/msdk/d/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 3317
    if-eqz v0, :cond_2e

    .line 3318
    const-string v4, "com.android.launcher.permission.READ_SETTINGS"

    invoke-direct {p0, v4}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d

    const-string v4, "com.google.android.launcher.permission.READ_SETTINGS"

    invoke-direct {p0, v4}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 3319
    :cond_5d
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3320
    invoke-direct {p0, v0, v1, v3}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;I)V

    goto :goto_2e

    .line 3322
    :cond_6b
    const-string v4, "com.android.launcher.permission.UNINSTALL_SHORTCUT"

    invoke-direct {p0, v4}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3323
    invoke-direct {p0, v0, v1, v3}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;I)V

    goto :goto_2e

    .line 884
    :cond_77
    return-void
.end method

.method private a(Lcom/mintegral/msdk/base/entity/CampaignEx;II)V
    .registers 6

    .prologue
    .line 623
    iget-object v0, p0, Lcom/mintegral/msdk/d/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 624
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIsDeleted()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    .line 625
    iget-object v0, p0, Lcom/mintegral/msdk/d/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/mintegral/msdk/base/common/e/c;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;II)V

    .line 628
    :cond_1a
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/d/b;ILjava/lang/String;)V
    .registers 9

    .prologue
    .line 5724
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/d/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 5725
    if-nez v0, :cond_b

    .line 5772
    :cond_a
    :goto_a
    return-void

    .line 5728
    :cond_b
    const/4 v1, 0x0

    .line 5729
    if-eqz p2, :cond_15

    .line 5730
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {p2}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v1

    .line 5732
    :cond_15
    if-nez v1, :cond_1e

    .line 5733
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v1

    .line 5735
    :cond_1e
    invoke-static {v1}, Lcom/mintegral/msdk/d/b;->b(Lcom/mintegral/msdk/c/a;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 5736
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mintegral/msdk/d/b$4;

    invoke-direct {v2, p0, v0}, Lcom/mintegral/msdk/d/b$4;-><init>(Lcom/mintegral/msdk/d/b;Landroid/content/Context;)V

    int-to-long v4, p1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_a

    .line 5768
    :catch_33
    move-exception v0

    .line 5769
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_a

    .line 5770
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method static synthetic a(Lcom/mintegral/msdk/d/b;Landroid/content/Context;Lcom/mintegral/msdk/c/a;)V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;Lcom/mintegral/msdk/c/a;)V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/d/b;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/c/a;Lcom/mintegral/msdk/base/b/f;I)V
    .registers 11

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 53
    .line 5250
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setTimestamp(J)V

    .line 5251
    const-string v0, "com.android.launcher.permission.READ_SETTINGS"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "com.google.android.launcher.permission.READ_SETTINGS"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 5252
    :cond_18
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v0

    .line 5577
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/d/b;->c(Ljava/lang/String;)I

    move-result v0

    if-le v0, p4, :cond_47

    move v0, v1

    .line 5252
    :goto_23
    if-eqz v0, :cond_49

    .line 5253
    invoke-virtual {p1, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsAddSuccesful(I)V

    .line 5254
    invoke-virtual {p2}, Lcom/mintegral/msdk/c/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0, v2}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;I)J

    .line 5255
    invoke-direct {p0, p1, v1, v1}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;II)V

    .line 5256
    invoke-virtual {p1, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsAddSuccesful(I)V

    .line 5257
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "mtg_shortcuts_ctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5261
    :goto_46
    return-void

    :cond_47
    move v0, v2

    .line 5577
    goto :goto_23

    .line 5259
    :cond_49
    invoke-virtual {p1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsAddSuccesful(I)V

    .line 5260
    invoke-virtual {p2}, Lcom/mintegral/msdk/c/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0, v2}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;I)J

    .line 5261
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "mtg_shortcuts_ctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 5264
    :cond_65
    invoke-virtual {p1, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsAddSuccesful(I)V

    .line 5265
    invoke-direct {p0, p1, v1, v3}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;II)V

    .line 5266
    invoke-virtual {p1, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsAddSuccesful(I)V

    .line 5267
    invoke-virtual {p2}, Lcom/mintegral/msdk/c/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0, v2}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;I)J

    .line 5268
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "mtg_shortcuts_ctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 393
    .line 395
    if-eqz p1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    move v0, v1

    .line 411
    :cond_b
    :goto_b
    return v0

    .line 397
    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 398
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/d/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 399
    :cond_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 401
    :try_start_1c
    invoke-static {v0, p2, p1}, Lcom/mintegral/msdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    .line 402
    if-eqz v2, :cond_40

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_3b

    move-result v0

    if-lez v0, :cond_40

    .line 403
    const/4 v1, 0x1

    move v0, v1

    .line 405
    :goto_2a
    if-eqz v2, :cond_b

    :try_start_2c
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b

    .line 406
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_35} :catch_36

    goto :goto_b

    .line 408
    :catch_36
    move-exception v1

    :goto_37
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :catch_3b
    move-exception v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    goto :goto_37

    :cond_40
    move v0, v1

    goto :goto_2a

    :cond_42
    move v0, v1

    goto :goto_b
.end method

.method static synthetic a(Lcom/mintegral/msdk/d/b;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/d/b;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/d/b;->c(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 550
    .line 2501
    const-string v0, "com.android.launcher.permission.READ_SETTINGS"

    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/d/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 553
    :cond_14
    invoke-virtual {p0}, Lcom/mintegral/msdk/d/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.READ_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/d/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    :cond_2f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 558
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 559
    const/16 v1, 0x8

    if-ge v0, v1, :cond_53

    .line 560
    const-string v0, "com.android.launcher.settings"

    .line 567
    :cond_3d
    :goto_3d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/favorites?notify=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    return-object v0

    .line 561
    :cond_53
    const/16 v1, 0x13

    if-ge v0, v1, :cond_5a

    .line 562
    const-string v0, "com.android.launcher2.settings"

    goto :goto_3d

    .line 564
    :cond_5a
    const-string v0, "com.android.launcher3.settings"

    goto :goto_3d
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    .line 512
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 513
    const-string v0, ""

    .line 541
    :goto_8
    return-object v0

    .line 516
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x8

    .line 517
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 518
    if-nez v0, :cond_18

    .line 519
    const-string v0, ""

    goto :goto_8

    .line 521
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, p2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 522
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 523
    if-eqz v3, :cond_68

    .line 524
    array-length v4, v3

    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    move v1, v8

    :goto_32
    if-ge v1, v4, :cond_69

    aget-object v5, v3, v1

    .line 525
    const-string v6, "com.android.launcher.permission.READ_SETTINGS"

    invoke-direct {p0, v6}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 526
    const-string v0, "com.google.android.launcher.permission.READ_SETTINGS"

    .line 528
    :cond_40
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 529
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 530
    :cond_50
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_65

    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v7, ".launcher.settings"

    .line 532
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 533
    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_64} :catch_6b

    goto :goto_8

    .line 524
    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_68
    move-object v0, v1

    :cond_69
    move-object v1, v0

    .line 537
    goto :goto_1d

    .line 539
    :catch_6b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 541
    :cond_6f
    const-string v0, ""

    goto :goto_8
.end method

.method private static b(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 855
    if-eqz p0, :cond_5

    .line 856
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 858
    :cond_5
    return-void
.end method

.method static synthetic b(Lcom/mintegral/msdk/d/b;Landroid/content/Context;Lcom/mintegral/msdk/c/a;)V
    .registers 3

    .prologue
    .line 53
    .line 5866
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/d/b;->a(Landroid/content/Context;Lcom/mintegral/msdk/c/a;)V

    .line 53
    return-void
.end method

.method private static b(Lcom/mintegral/msdk/c/a;)Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 781
    if-nez p0, :cond_5

    move v0, v2

    .line 794
    :goto_4
    return v0

    .line 784
    :cond_5
    invoke-virtual {p0}, Lcom/mintegral/msdk/c/a;->f()I

    move-result v3

    .line 785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 786
    const-wide/16 v0, 0x0

    .line 787
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v6

    const-string v7, "mtg_shortcuts_ctime"

    invoke-virtual {v6, v7}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 788
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "mtg_shortcuts_ctime"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 790
    :cond_2f
    sub-long v0, v4, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 791
    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-lez v0, :cond_3b

    .line 792
    const/4 v0, 0x1

    goto :goto_4

    :cond_3b
    move v0, v2

    .line 794
    goto :goto_4
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/mintegral/msdk/d/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 174
    if-eqz v0, :cond_1d

    .line 175
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 176
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 177
    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 179
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    .line 177
    goto :goto_1a

    :cond_1d
    move v0, v1

    .line 179
    goto :goto_1a
.end method

.method private c(Ljava/lang/String;)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 435
    iget-object v0, p0, Lcom/mintegral/msdk/d/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 436
    if-eqz v0, :cond_1b

    const-string v2, "com.android.launcher.permission.READ_SETTINGS"

    invoke-direct {p0, v2}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "com.google.android.launcher.permission.READ_SETTINGS"

    invoke-direct {p0, v2}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1b
    move v0, v1

    .line 450
    :goto_1c
    return v0

    .line 437
    :cond_1d
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/d/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 440
    :try_start_27
    invoke-static {v2, p1, v0}, Lcom/mintegral/msdk/d/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_38

    .line 442
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_1c

    .line 444
    :cond_38
    if-eqz v0, :cond_43

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_43

    .line 445
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_43} :catch_45

    :cond_43
    :goto_43
    move v0, v1

    .line 450
    goto :goto_1c

    .line 447
    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43
.end method


# virtual methods
.method public final a()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcom/mintegral/msdk/d/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 372
    if-nez v0, :cond_d

    move v0, v1

    .line 384
    :goto_c
    return v0

    .line 375
    :cond_d
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v2

    .line 376
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 377
    if-nez v0, :cond_2d

    .line 378
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 380
    :cond_2d
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mintegral/msdk/base/b/f;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_42

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_42

    .line 382
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_c

    :cond_42
    move v0, v1

    .line 384
    goto :goto_c
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/app/Activity;)V
    .registers 8

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mintegral/msdk/d/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 188
    if-nez v0, :cond_b

    .line 218
    :goto_a
    return-void

    .line 1227
    :cond_b
    if-eqz v0, :cond_70

    .line 1228
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v2

    .line 1229
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v1

    .line 1230
    if-nez v1, :cond_2d

    .line 1231
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v1

    .line 1233
    :cond_2d
    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mintegral/msdk/base/b/f;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1234
    if-eqz v1, :cond_70

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_70

    .line 1235
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1236
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1237
    const/4 v1, 0x1

    .line 189
    :goto_6a
    if-eqz v1, :cond_72

    .line 190
    invoke-static {p2}, Lcom/mintegral/msdk/d/b;->b(Landroid/app/Activity;)V

    goto :goto_a

    .line 1241
    :cond_70
    const/4 v1, 0x0

    goto :goto_6a

    .line 193
    :cond_72
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 194
    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mintegral/msdk/d/b$1;

    invoke-direct {v3, p0, p2, v0, p1}, Lcom/mintegral/msdk/d/b$1;-><init>(Lcom/mintegral/msdk/d/b;Landroid/app/Activity;Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V

    goto/16 :goto_a

    .line 216
    :cond_8e
    invoke-static {p2}, Lcom/mintegral/msdk/d/b;->b(Landroid/app/Activity;)V

    goto/16 :goto_a
.end method

.method public final a(Lcom/mintegral/msdk/c/a;)V
    .registers 10

    .prologue
    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/d/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 638
    if-nez v0, :cond_b

    .line 661
    :cond_a
    :goto_a
    return-void

    .line 639
    :cond_b
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v1

    .line 640
    invoke-virtual {p1}, Lcom/mintegral/msdk/c/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/base/b/f;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 641
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 642
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 643
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIsAddSuccesful()I

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIsDeleted()I

    move-result v3

    if-nez v3, :cond_27

    .line 644
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mintegral/msdk/d/b;->c(Ljava/lang/String;)I

    move-result v3

    .line 645
    if-eqz v3, :cond_82

    .line 646
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;II)V

    .line 647
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v3

    const-string v4, "mtg_shortcuts_ctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mintegral/msdk/base/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :goto_5f
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setIsAddSuccesful(I)V

    .line 652
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 653
    const-string v4, "is_add_sucesful"

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIsAddSuccesful()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7c} :catch_7d

    goto :goto_27

    .line 659
    :catch_7d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 649
    :cond_82
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_84
    invoke-direct {p0, v0, v3, v4}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;II)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_7d

    goto :goto_5f
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 669
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/d/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 670
    if-nez v0, :cond_b

    .line 695
    :cond_a
    :goto_a
    return-void

    .line 673
    :cond_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/d/b$2;

    invoke-direct {v1, p0, p1}, Lcom/mintegral/msdk/d/b$2;-><init>(Lcom/mintegral/msdk/d/b;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 689
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_a

    .line 690
    :catch_19
    move-exception v0

    .line 691
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_a

    .line 692
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public final b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 457
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    iget-object v0, p0, Lcom/mintegral/msdk/d/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 460
    if-nez v0, :cond_19

    const-string v0, ""

    .line 468
    :goto_18
    return-object v0

    .line 461
    :cond_19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_28

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2b

    .line 463
    :cond_28
    const-string v0, ""

    goto :goto_18

    .line 465
    :cond_2b
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 466
    const-string v0, ""

    goto :goto_18

    .line 468
    :cond_3a
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_18
.end method

.method public final b(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/app/Activity;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 802
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_4a

    .line 803
    iget-object v0, p0, Lcom/mintegral/msdk/d/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 804
    if-nez v0, :cond_12

    .line 848
    :goto_11
    return-void

    .line 805
    :cond_12
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v1

    .line 806
    if-nez v1, :cond_2a

    .line 807
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v1

    .line 809
    :cond_2a
    invoke-static {v1}, Lcom/mintegral/msdk/d/b;->b(Lcom/mintegral/msdk/c/a;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 810
    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->h()I

    move-result v2

    if-ne v2, v3, :cond_43

    .line 812
    invoke-static {}, Lcom/mintegral/msdk/d/a;->a()Lcom/mintegral/msdk/d/a;

    move-result-object v2

    new-instance v3, Lcom/mintegral/msdk/d/b$5;

    invoke-direct {v3, p0, p2, v0, v1}, Lcom/mintegral/msdk/d/b$5;-><init>(Lcom/mintegral/msdk/d/b;Landroid/app/Activity;Landroid/content/Context;Lcom/mintegral/msdk/c/a;)V

    invoke-virtual {v2, v0, p1, v3}, Lcom/mintegral/msdk/d/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/d/a/a;)V

    goto :goto_11

    .line 838
    :cond_43
    invoke-static {}, Lcom/mintegral/msdk/d/a;->a()Lcom/mintegral/msdk/d/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1, v3}, Lcom/mintegral/msdk/d/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;I)V

    .line 846
    :cond_4a
    invoke-static {p2}, Lcom/mintegral/msdk/d/b;->b(Landroid/app/Activity;)V

    goto :goto_11

    .line 842
    :cond_4e
    invoke-static {}, Lcom/mintegral/msdk/d/a;->a()Lcom/mintegral/msdk/d/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1, v3}, Lcom/mintegral/msdk/d/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;I)V

    .line 843
    invoke-static {p2}, Lcom/mintegral/msdk/d/b;->b(Landroid/app/Activity;)V

    goto :goto_11
.end method

.method public final c()Ljava/lang/String;
    .registers 6

    .prologue
    .line 596
    const-string v0, "com.android.launcher.permission.INSTALL_SHORTCUT"

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 598
    const-string v0, "1"

    .line 602
    :goto_a
    const-string v1, "com.android.launcher.permission.UNINSTALL_SHORTCUT"

    invoke-direct {p0, v1}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 604
    const-string v1, "1"

    .line 608
    :goto_14
    const-string v2, "com.android.launcher.permission.READ_SETTINGS"

    invoke-direct {p0, v2}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "com.google.android.launcher.permission.READ_SETTINGS"

    invoke-direct {p0, v2}, Lcom/mintegral/msdk/d/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 609
    :cond_24
    const-string v2, "1"

    .line 613
    :goto_26
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 600
    :cond_50
    const-string v0, "0"

    goto :goto_a

    .line 606
    :cond_53
    const-string v1, "0"

    goto :goto_14

    .line 611
    :cond_56
    const-string v2, "0"

    goto :goto_26
.end method
