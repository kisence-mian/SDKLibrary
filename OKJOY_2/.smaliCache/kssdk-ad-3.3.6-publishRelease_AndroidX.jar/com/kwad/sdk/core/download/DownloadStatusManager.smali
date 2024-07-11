.class public Lcom/kwad/sdk/core/download/DownloadStatusManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;
    }
.end annotation


# static fields
.field private static f:Lcom/ksad/download/f;

.field private static final g:Landroid/content/BroadcastReceiver;

.field private static final h:Landroid/content/BroadcastReceiver;


# instance fields
.field private final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/kwad/sdk/core/download/d;",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/kwad/sdk/core/download/d;",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Z

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/core/response/model/AdTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/kwad/sdk/core/download/c/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/download/c/a;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->f:Lcom/ksad/download/f;

    new-instance v0, Lcom/kwad/sdk/core/download/DownloadStatusManager$1;

    invoke-direct {v0}, Lcom/kwad/sdk/core/download/DownloadStatusManager$1;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->g:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/kwad/sdk/core/download/DownloadStatusManager$2;

    invoke-direct {v0}, Lcom/kwad/sdk/core/download/DownloadStatusManager$2;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->d:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->e:Ljava/util/Map;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->b()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/download/DownloadStatusManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/DownloadStatusManager;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/core/download/DownloadStatusManager;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->INSTANCE:Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->getInstance()Lcom/kwad/sdk/core/download/DownloadStatusManager;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->INSTANCE:Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    # getter for: Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->mInstance:Lcom/kwad/sdk/core/download/DownloadStatusManager;
    invoke-static {v0}, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->access$300(Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;)Lcom/kwad/sdk/core/download/DownloadStatusManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->c:Z

    if-eqz v0, :cond_4a

    :try_start_a
    sget-object v0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->INSTANCE:Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    # getter for: Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->access$400(Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_49

    :try_start_11
    sget-object v1, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->INSTANCE:Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    # getter for: Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->mInstance:Lcom/kwad/sdk/core/download/DownloadStatusManager;
    invoke-static {v1}, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->access$300(Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;)Lcom/kwad/sdk/core/download/DownloadStatusManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/kwad/sdk/core/download/DownloadStatusManager;->c:Z

    if-eqz v1, :cond_44

    sget-object v1, Lcom/kwad/sdk/core/download/DownloadStatusManager;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v1, Lcom/kwad/sdk/core/download/DownloadStatusManager;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object p0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->INSTANCE:Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    # getter for: Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->mInstance:Lcom/kwad/sdk/core/download/DownloadStatusManager;
    invoke-static {p0}, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->access$300(Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;)Lcom/kwad/sdk/core/download/DownloadStatusManager;

    move-result-object p0

    iget-object p0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    sget-object p0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->INSTANCE:Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    # getter for: Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->mInstance:Lcom/kwad/sdk/core/download/DownloadStatusManager;
    invoke-static {p0}, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->access$300(Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;)Lcom/kwad/sdk/core/download/DownloadStatusManager;

    move-result-object p0

    iget-object p0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->e:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    sget-object p0, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->INSTANCE:Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;

    # getter for: Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->mInstance:Lcom/kwad/sdk/core/download/DownloadStatusManager;
    invoke-static {p0}, Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;->access$300(Lcom/kwad/sdk/core/download/DownloadStatusManager$Holder;)Lcom/kwad/sdk/core/download/DownloadStatusManager;

    move-result-object p0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->c:Z

    :cond_44
    monitor-exit v0

    goto :goto_4a

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_11 .. :try_end_48} :catchall_46

    :try_start_48
    throw p0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_49} :catch_49

    :catch_49
    move-exception p0

    :cond_4a
    :goto_4a
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ""

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_d

    return-void

    :cond_d
    const-string v4, "RESULT_DOWNLOAD_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/kwad/sdk/core/download/a;->b:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/16 v16, 0x0

    if-eqz v6, :cond_2e

    move-object v3, v2

    move v11, v8

    move v0, v10

    move v2, v0

    move v5, v2

    move v6, v5

    :goto_2a
    move-object/from16 v10, v16

    goto/16 :goto_13f

    :cond_2e
    sget-object v6, Lcom/kwad/sdk/core/download/a;->c:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4e

    const-string v0, "KEY_RESULT_PROGRESS"

    invoke-virtual {v3, v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v5, "KEY_RESULT_PROGRESS_SOFARBYTES"

    invoke-virtual {v3, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "KEY_RESULT_PROGRESS_TOTALBYTES"

    invoke-virtual {v3, v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v6, v5

    move v11, v7

    move v5, v3

    move-object v3, v2

    move v2, v10

    goto :goto_2a

    :cond_4e
    sget-object v6, Lcom/kwad/sdk/core/download/a;->d:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_66

    const-string v0, "KEY_REUSLT_FILEPATH"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object v3, v2

    move v0, v10

    move v2, v0

    move v5, v2

    move v6, v5

    move-object/from16 v10, v16

    const/4 v11, 0x3

    goto/16 :goto_13f

    :cond_66
    sget-object v6, Lcom/kwad/sdk/core/download/a;->e:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_83

    const-string v0, "KEY_RESULT_ERROR_CODE"

    invoke-virtual {v3, v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "KEY_RESULT_ERROR_MSG"

    const-string v5, ""

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move v5, v10

    move v6, v5

    const/4 v11, 0x4

    move v2, v0

    move v0, v6

    goto :goto_2a

    :cond_83
    sget-object v3, Lcom/kwad/sdk/core/download/a;->f:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_95

    move-object v3, v2

    move v0, v10

    move v2, v0

    move v5, v2

    move v6, v5

    move-object/from16 v10, v16

    const/4 v11, 0x5

    goto/16 :goto_13f

    :cond_95
    sget-object v3, Lcom/kwad/sdk/core/download/a;->g:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a7

    move-object v3, v2

    move v0, v10

    move v2, v0

    move v5, v2

    move v6, v5

    move-object/from16 v10, v16

    const/4 v11, 0x6

    goto/16 :goto_13f

    :cond_a7
    sget-object v3, Lcom/kwad/sdk/core/download/a;->h:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b9

    move-object v3, v2

    move v0, v10

    move v2, v0

    move v5, v2

    move v6, v5

    move-object/from16 v10, v16

    const/4 v11, 0x7

    goto/16 :goto_13f

    :cond_b9
    sget-object v3, Lcom/kwad/sdk/core/download/a;->i:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_cc

    move-object v3, v2

    move v0, v10

    move v2, v0

    move v5, v2

    move v6, v5

    move-object/from16 v10, v16

    const/16 v11, 0x8

    goto/16 :goto_13f

    :cond_cc
    sget-object v3, Lcom/kwad/sdk/core/download/a;->j:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_df

    move-object v3, v2

    move v0, v10

    move v2, v0

    move v5, v2

    move v6, v5

    move-object/from16 v10, v16

    const/16 v11, 0x9

    goto/16 :goto_13f

    :cond_df
    sget-object v3, Lcom/kwad/sdk/core/download/a;->k:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f1

    move-object v3, v2

    move v0, v10

    move v2, v0

    move v5, v2

    move v6, v5

    move-object/from16 v10, v16

    const/16 v11, 0xa

    goto :goto_13f

    :cond_f1
    sget-object v3, Lcom/kwad/sdk/core/download/a;->l:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_103

    move-object v3, v2

    move v0, v10

    move v2, v0

    move v5, v2

    move v6, v5

    move-object/from16 v10, v16

    const/16 v11, 0xb

    goto :goto_13f

    :cond_103
    sget-object v3, Lcom/kwad/sdk/core/download/a;->n:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_126

    invoke-static {}, Lcom/ksad/download/d;->a()Lcom/ksad/download/d;

    move-result-object v2

    const-string v3, "download.intent.action.EXTRA_TASK_ID"

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ksad/download/d;->c(I)V

    invoke-static {}, Lcom/ksad/download/e;->a()Lcom/ksad/download/e;

    move-result-object v2

    const-string v3, "download.intent.action.EXTRA_TASK_ID"

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ksad/download/e;->a(I)V

    return-void

    :cond_126
    sget-object v0, Lcom/kwad/sdk/core/download/a;->m:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    move-object v3, v2

    if-eqz v0, :cond_138

    move v0, v10

    move v2, v0

    move v5, v2

    move v6, v5

    move-object/from16 v10, v16

    const/16 v11, 0xc

    goto :goto_13f

    :cond_138
    move v0, v10

    move v2, v0

    move v5, v2

    move v6, v5

    move v11, v6

    goto/16 :goto_2a

    :goto_13f
    new-instance v12, Lcom/kwad/sdk/core/download/f;

    invoke-direct {v12}, Lcom/kwad/sdk/core/download/f;-><init>()V

    iget-object v13, v1, Lcom/kwad/sdk/core/download/DownloadStatusManager;->b:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    iget-object v14, v1, Lcom/kwad/sdk/core/download/DownloadStatusManager;->b:Ljava/util/Map;

    monitor-enter v14

    :try_start_14d
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_151
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1cb

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Lcom/kwad/sdk/core/download/d;

    if-nez v15, :cond_162

    goto :goto_151

    :cond_162
    invoke-interface {v15}, Lcom/kwad/sdk/core/download/d;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1c6

    if-ne v11, v8, :cond_172

    invoke-interface {v15, v4, v12}, Lcom/kwad/sdk/core/download/d;->a(Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V

    goto :goto_1c6

    :cond_172
    if-ne v11, v7, :cond_178

    invoke-interface {v15, v4, v0, v6, v5}, Lcom/kwad/sdk/core/download/d;->a(Ljava/lang/String;III)V

    goto :goto_1c6

    :cond_178
    const/4 v9, 0x3

    if-ne v11, v9, :cond_17f

    invoke-interface {v15, v4, v10, v12}, Lcom/kwad/sdk/core/download/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V

    goto :goto_1c6

    :cond_17f
    const/4 v9, 0x4

    if-ne v11, v9, :cond_188

    invoke-interface {v15, v4, v2, v3, v12}, Lcom/kwad/sdk/core/download/d;->a(Ljava/lang/String;ILjava/lang/String;Lcom/kwad/sdk/core/download/f;)V

    :goto_185
    const/16 v7, 0xc

    goto :goto_1c9

    :cond_188
    const/4 v7, 0x5

    if-ne v11, v7, :cond_18f

    invoke-interface {v15, v4, v12}, Lcom/kwad/sdk/core/download/d;->b(Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V

    goto :goto_185

    :cond_18f
    const/4 v7, 0x6

    if-ne v11, v7, :cond_196

    invoke-interface {v15, v4, v12}, Lcom/kwad/sdk/core/download/d;->c(Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V

    goto :goto_185

    :cond_196
    const/4 v7, 0x7

    if-ne v11, v7, :cond_19d

    invoke-interface {v15, v4, v12}, Lcom/kwad/sdk/core/download/d;->d(Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V

    goto :goto_185

    :cond_19d
    const/16 v7, 0x8

    if-ne v11, v7, :cond_1a5

    invoke-interface {v15, v4, v12}, Lcom/kwad/sdk/core/download/d;->e(Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V

    goto :goto_185

    :cond_1a5
    const/16 v7, 0x9

    if-ne v11, v7, :cond_1ad

    invoke-interface {v15, v4}, Lcom/kwad/sdk/core/download/d;->a(Ljava/lang/String;)V

    goto :goto_185

    :cond_1ad
    const/16 v7, 0xa

    if-ne v11, v7, :cond_1b6

    const/4 v7, 0x0

    invoke-interface {v15, v4, v7, v12}, Lcom/kwad/sdk/core/download/d;->a(Ljava/lang/String;ILcom/kwad/sdk/core/download/f;)V

    goto :goto_185

    :cond_1b6
    const/16 v7, 0xb

    if-ne v11, v7, :cond_1be

    invoke-interface {v15, v4}, Lcom/kwad/sdk/core/download/d;->b(Ljava/lang/String;)V

    goto :goto_185

    :cond_1be
    const/16 v7, 0xc

    if-ne v11, v7, :cond_1c9

    invoke-interface {v15, v4, v12}, Lcom/kwad/sdk/core/download/d;->f(Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V

    goto :goto_1c9

    :cond_1c6
    :goto_1c6
    const/16 v7, 0xc

    const/4 v9, 0x4

    :cond_1c9
    :goto_1c9
    const/4 v7, 0x2

    goto :goto_151

    :cond_1cb
    monitor-exit v14
    :try_end_1cc
    .catchall {:try_start_14d .. :try_end_1cc} :catchall_1d3

    const/4 v0, 0x3

    if-ne v11, v0, :cond_1d2

    invoke-direct {v1, v4, v12}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->a(Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V

    :cond_1d2
    return-void

    :catchall_1d3
    move-exception v0

    :try_start_1d4
    monitor-exit v14
    :try_end_1d5
    .catchall {:try_start_1d4 .. :try_end_1d5} :catchall_1d3

    throw v0
.end method

.method static synthetic a(Lcom/kwad/sdk/core/download/DownloadStatusManager;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V
    .registers 7

    iget-object v0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v1, :cond_19

    goto :goto_a

    :cond_19
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/response/model/AdTemplate;

    if-nez v1, :cond_22

    goto :goto_a

    :cond_22
    invoke-static {v1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v2

    invoke-static {}, Lcom/kwad/sdk/core/a;->a()Lcom/kwad/sdk/core/a;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/kwad/sdk/core/a;->a(Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDownloadFinishReported:Z

    if-nez v2, :cond_a

    invoke-virtual {p2}, Lcom/kwad/sdk/core/download/f;->b()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-static {v1}, Lcom/kwad/sdk/core/report/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-virtual {p2}, Lcom/kwad/sdk/core/download/f;->a()V

    :cond_4b
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDownloadFinishReported:Z

    goto :goto_a

    :cond_4f
    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/download/DownloadStatusManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->c:Z

    return p0
.end method

.method private b()V
    .registers 4

    iget-boolean v0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->c:Z

    if-nez v0, :cond_81

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_81

    :cond_f
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/kwad/sdk/core/download/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/kwad/sdk/core/download/DownloadStatusManager;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/kwad/sdk/core/download/DownloadStatusManager;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->c:Z

    :cond_81
    :goto_81
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    :cond_1c
    move-object p1, v1

    :goto_1d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    :cond_24
    new-instance v0, Lcom/kwad/sdk/core/download/f;

    invoke-direct {v0}, Lcom/kwad/sdk/core/download/f;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->b:Ljava/util/Map;

    monitor-enter v3

    :try_start_32
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_36
    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kwad/sdk/core/download/d;

    if-nez v4, :cond_45

    goto :goto_36

    :cond_45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    invoke-interface {v4}, Lcom/kwad/sdk/core/download/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_36

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5, v0}, Lcom/kwad/sdk/core/download/d;->a(Ljava/lang/String;ILcom/kwad/sdk/core/download/f;)V

    goto :goto_36

    :cond_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_32 .. :try_end_5b} :catchall_97

    sget-object v0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->f:Lcom/ksad/download/f;

    invoke-interface {v0, p1}, Lcom/ksad/download/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_69
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6d
    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v2, :cond_7c

    goto :goto_6d

    :cond_7c
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6d

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6d

    :cond_92
    monitor-exit v1

    return-void

    :catchall_94
    move-exception p1

    monitor-exit v1
    :try_end_96
    .catchall {:try_start_69 .. :try_end_96} :catchall_94

    throw p1

    :catchall_97
    move-exception p1

    :try_start_98
    monitor-exit v3
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw p1
.end method

.method static synthetic b(Lcom/kwad/sdk/core/download/DownloadStatusManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->b()V

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/core/download/DownloadStatusManager;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->b(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/core/download/d;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/download/d;Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->o(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/kwad/sdk/core/download/DownloadStatusManager;->e:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/Throwable;)V

    :cond_18
    :goto_18
    return-void
.end method
