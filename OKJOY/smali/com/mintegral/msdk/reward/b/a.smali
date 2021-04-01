.class public Lcom/mintegral/msdk/reward/b/a;
.super Ljava/lang/Object;
.source "RewardVideoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/reward/b/a$b;,
        Lcom/mintegral/msdk/reward/b/a$a;,
        Lcom/mintegral/msdk/reward/b/a$c;,
        Lcom/mintegral/msdk/reward/b/a$d;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/reward/b/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/content/Context;

.field private d:I

.field private e:Lcom/mintegral/msdk/reward/a/c;

.field private f:Lcom/mintegral/msdk/videocommon/e/c;

.field private g:Ljava/lang/String;

.field private h:Lcom/mintegral/msdk/videocommon/e/a;

.field private i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

.field private j:Lcom/mintegral/msdk/reward/b/a$c;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Landroid/os/Handler;

.field private p:I

.field private q:Z

.field private r:Z

.field private t:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Lcom/mintegral/msdk/base/b/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/reward/b/a;->s:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/reward/b/a;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v1, p0, Lcom/mintegral/msdk/reward/b/a;->n:I

    .line 75
    const/4 v0, 0x2

    iput v0, p0, Lcom/mintegral/msdk/reward/b/a;->p:I

    .line 80
    iput-boolean v1, p0, Lcom/mintegral/msdk/reward/b/a;->q:Z

    .line 81
    iput-boolean v1, p0, Lcom/mintegral/msdk/reward/b/a;->r:Z

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->v:Lcom/mintegral/msdk/base/b/i;

    .line 182
    new-instance v0, Lcom/mintegral/msdk/reward/b/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/reward/b/a$1;-><init>(Lcom/mintegral/msdk/reward/b/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->o:Landroid/os/Handler;

    .line 237
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 148
    :try_start_0
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/mintegral/msdk/reward/b/a;->s:Ljava/util/Map;

    if-eqz v0, :cond_25

    sget-object v0, Lcom/mintegral/msdk/reward/b/a;->s:Ljava/util/Map;

    .line 149
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 150
    sget-object v0, Lcom/mintegral/msdk/reward/b/a;->s:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 151
    if-eqz v0, :cond_25

    .line 152
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    move-result v0

    .line 158
    :goto_20
    return v0

    .line 156
    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method static synthetic a(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/reward/b/a$c;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/reward/b/a;Lcom/mintegral/msdk/videocommon/e/c;)Lcom/mintegral/msdk/videocommon/e/c;
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    return-object p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/reward/b/a;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/reward/b/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 133
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/reward/b/a;->s:Ljava/util/Map;

    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 134
    sget-object v0, Lcom/mintegral/msdk/reward/b/a;->s:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 140
    :cond_13
    :goto_13
    return-void

    .line 137
    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private a(Ljava/util/Queue;ZLjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 716
    const/16 v0, 0x8

    .line 718
    if-eqz p1, :cond_14

    :try_start_4
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 719
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_89

    move-result v0

    .line 2757
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->e:Lcom/mintegral/msdk/reward/a/c;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->e:Lcom/mintegral/msdk/reward/a/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/reward/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 2758
    :cond_26
    new-instance v1, Lcom/mintegral/msdk/reward/a/c;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mintegral/msdk/reward/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->e:Lcom/mintegral/msdk/reward/a/c;

    .line 2759
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->e:Lcom/mintegral/msdk/reward/a/c;

    iget-boolean v2, p0, Lcom/mintegral/msdk/reward/b/a;->q:Z

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/reward/a/c;->a(Z)V

    .line 2760
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->e:Lcom/mintegral/msdk/reward/a/c;

    iget-boolean v2, p0, Lcom/mintegral/msdk/reward/b/a;->r:Z

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/reward/a/c;->b(Z)V

    .line 2762
    :cond_3f
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->e:Lcom/mintegral/msdk/reward/a/c;

    iget v2, p0, Lcom/mintegral/msdk/reward/b/a;->p:I

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/reward/a/c;->a(I)V

    .line 2763
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->e:Lcom/mintegral/msdk/reward/a/c;

    invoke-virtual {v1}, Lcom/mintegral/msdk/reward/a/c;->b()V

    .line 2764
    new-instance v1, Lcom/mintegral/msdk/reward/b/a$a;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->e:Lcom/mintegral/msdk/reward/a/c;

    invoke-direct {v1, p0, v2, p2}, Lcom/mintegral/msdk/reward/b/a$a;-><init>(Lcom/mintegral/msdk/reward/b/a;Lcom/mintegral/msdk/reward/a/a;Z)V

    .line 2766
    new-instance v2, Lcom/mintegral/msdk/reward/b/a$b;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/b/a;->e:Lcom/mintegral/msdk/reward/a/c;

    invoke-direct {v2, p0, v3, p2}, Lcom/mintegral/msdk/reward/b/a$b;-><init>(Lcom/mintegral/msdk/reward/b/a;Lcom/mintegral/msdk/reward/a/a;Z)V

    .line 2769
    invoke-virtual {v2, v1}, Lcom/mintegral/msdk/reward/b/a$b;->a(Ljava/lang/Runnable;)V

    .line 2770
    iget-object v3, p0, Lcom/mintegral/msdk/reward/b/a;->e:Lcom/mintegral/msdk/reward/a/c;

    invoke-virtual {v3, v2}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/b;)V

    .line 2771
    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->o:Landroid/os/Handler;

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2772
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->e:Lcom/mintegral/msdk/reward/a/c;

    invoke-virtual {v1, v0, p2, p3}, Lcom/mintegral/msdk/reward/a/c;->a(IZLjava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_6e} :catch_6f

    .line 740
    :cond_6e
    :goto_6e
    return-void

    .line 725
    :catch_6f
    move-exception v0

    .line 727
    if-eqz p2, :cond_6e

    .line 728
    :try_start_72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load mv api error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/reward/b/a;->c(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_88} :catch_89

    goto :goto_6e

    .line 733
    :catch_89
    move-exception v0

    .line 734
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 735
    if-eqz p2, :cond_94

    .line 736
    const-string v1, "can\'t show because unknow error"

    invoke-direct {p0, v1}, Lcom/mintegral/msdk/reward/b/a;->c(Ljava/lang/String;)V

    .line 738
    :cond_94
    const-string v1, "RewardVideoController"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e
.end method

.method public static a(ZZ)V
    .registers 4

    .prologue
    .line 1019
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/reward/b/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 1020
    sget-object v0, Lcom/mintegral/msdk/reward/b/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1023
    :cond_9
    if-eqz p0, :cond_22

    .line 1024
    if-eqz p1, :cond_13

    .line 1025
    const/16 v0, 0x11f

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/a;->a(I)V

    .line 1040
    :goto_12
    return-void

    .line 1027
    :cond_13
    const/16 v0, 0x11f

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/a;->b(I)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_12

    .line 1037
    :catch_19
    move-exception v0

    const-string v0, "RewardVideoController"

    const-string v1, "destory failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 1030
    :cond_22
    if-eqz p1, :cond_2a

    .line 1031
    const/16 v0, 0x5e

    :try_start_26
    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/a;->a(I)V

    goto :goto_12

    .line 1033
    :cond_2a
    const/16 v0, 0x5e

    invoke-static {v0}, Lcom/mintegral/msdk/videocommon/a;->b(I)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2f} :catch_19

    goto :goto_12
.end method

.method static synthetic b(Lcom/mintegral/msdk/reward/b/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static b()V
    .registers 0

    .prologue
    .line 391
    invoke-static {}, Lcom/mintegral/msdk/base/utils/e;->a()V

    .line 393
    return-void
.end method

.method static synthetic c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 744
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    if-eqz v0, :cond_9

    .line 745
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/reward/b/a$c;->b(Lcom/mintegral/msdk/reward/b/a$c;Ljava/lang/String;)V

    .line 747
    :cond_9
    return-void
.end method

.method private c()Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 679
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/c;->J()Ljava/util/List;

    move-result-object v4

    .line 680
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->h:Lcom/mintegral/msdk/videocommon/e/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/a;->l()Ljava/util/Map;

    move-result-object v5

    .line 681
    if-eqz v4, :cond_99

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_99

    move v3, v2

    .line 682
    :goto_16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_99

    .line 683
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/b/b;

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/b/b;->a()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/b/b;->a()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 688
    :goto_54
    iget-object v6, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/mintegral/msdk/reward/b/a;->g:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/b/b;->a()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v0, v7}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_9b

    .line 691
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_83} :catch_8c

    move-result v0

    .line 693
    :goto_84
    if-ge v0, v1, :cond_88

    move v0, v2

    .line 704
    :goto_87
    return v0

    .line 682
    :cond_88
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_16

    .line 700
    :catch_8c
    move-exception v0

    .line 701
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 702
    const-string v1, "RewardVideoController"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_99
    const/4 v0, 0x1

    goto :goto_87

    :cond_9b
    move v0, v2

    goto :goto_84

    :cond_9d
    move v1, v2

    goto :goto_54
.end method

.method static synthetic d(Lcom/mintegral/msdk/reward/b/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    if-nez v0, :cond_20

    .line 862
    const-string v0, "RewardVideoController"

    const-string v1, "unitSetting==null get safety setting"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/mintegral/msdk/reward/b/a;->q:Z

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    .line 867
    :cond_20
    new-instance v1, Lcom/mintegral/msdk/reward/a/c;

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/mintegral/msdk/reward/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 868
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a;->q:Z

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/reward/a/c;->a(Z)V

    .line 869
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a;->r:Z

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/reward/a/c;->b(Z)V

    .line 871
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/reward/b/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 872
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mintegral/msdk/reward/b/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/reward/b/a;->d:I

    .line 875
    :cond_7d
    const-string v0, "RewardVideoController"

    const-string v2, "controller 819"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {v1}, Lcom/mintegral/msdk/reward/a/c;->e()Z

    move-result v0

    .line 877
    if-eqz v0, :cond_a6

    .line 878
    const-string v0, "RewardVideoController"

    const-string v2, "invoke adapter show"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    new-instance v0, Lcom/mintegral/msdk/reward/b/a$d;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/mintegral/msdk/reward/b/a$d;-><init>(Lcom/mintegral/msdk/reward/b/a;B)V

    .line 880
    sget-object v2, Lcom/mintegral/msdk/reward/b/a;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->k:Ljava/lang/String;

    iget v3, p0, Lcom/mintegral/msdk/reward/b/a;->p:I

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/d;Ljava/lang/String;Ljava/lang/String;I)V

    .line 903
    :cond_a5
    :goto_a5
    return-void

    .line 886
    :cond_a6
    iget v0, p0, Lcom/mintegral/msdk/reward/b/a;->d:I

    if-eqz v0, :cond_d2

    .line 887
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 888
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/reward/b/a;->d(Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_cc} :catch_cd

    goto :goto_a5

    .line 900
    :catch_cd
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a5

    .line 891
    :cond_d2
    :try_start_d2
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    if-eqz v0, :cond_dd

    .line 892
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    const-string v1, "can\'t show because load is failed"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Ljava/lang/String;)V

    .line 894
    :cond_dd
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a;->q:Z

    if-nez v0, :cond_a5

    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a;->r:Z

    if-nez v0, :cond_a5

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    const/4 v1, 0x4

    .line 895
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/e/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 896
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/b/a;->b(Z)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_f2} :catch_cd

    goto :goto_a5
.end method

.method private d()Z
    .registers 5

    .prologue
    .line 998
    const/4 v0, 0x0

    .line 1000
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->v:Lcom/mintegral/msdk/base/b/i;

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/j;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/j;

    move-result-object v1

    .line 1001
    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    if-nez v2, :cond_1e

    .line 1002
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    .line 1004
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    .line 1003
    invoke-static {v2, v3}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v2

    iput-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    .line 1006
    :cond_1e
    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v2}, Lcom/mintegral/msdk/videocommon/e/c;->c()I

    move-result v2

    .line 1007
    if-eqz v1, :cond_2f

    iget-object v3, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/mintegral/msdk/base/b/j;->a(Ljava/lang/String;I)Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2b} :catch_30

    move-result v1

    if-eqz v1, :cond_2f

    .line 1008
    const/4 v0, 0x1

    .line 1014
    :cond_2f
    :goto_2f
    return v0

    .line 1011
    :catch_30
    move-exception v1

    const-string v1, "RewardVideoController"

    const-string v2, "cap check error"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f
.end method

.method static synthetic e(Lcom/mintegral/msdk/reward/b/a;)Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a;->r:Z

    return v0
.end method

.method static synthetic f(Lcom/mintegral/msdk/reward/b/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/reward/b/a;)Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a;->q:Z

    return v0
.end method

.method static synthetic h(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/e/c;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    return-object v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/reward/b/a;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->o:Landroid/os/Handler;

    return-object v0
.end method

.method public static insertExcludeId(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 6

    .prologue
    .line 165
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    if-eqz p1, :cond_3b

    .line 166
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 169
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/l;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/l;

    move-result-object v0

    .line 170
    new-instance v1, Lcom/mintegral/msdk/base/entity/f;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/f;-><init>()V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/entity/f;->a(J)V

    .line 172
    invoke-virtual {v1, p0}, Lcom/mintegral/msdk/base/entity/f;->b(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/f;->a(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/l;->a(Lcom/mintegral/msdk/base/entity/f;)V

    .line 178
    :cond_3b
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a;->r:Z

    .line 89
    return-void
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 107
    iput p1, p0, Lcom/mintegral/msdk/reward/b/a;->p:I

    .line 108
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;)V
    .registers 5

    .prologue
    .line 345
    iput-object p1, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    .line 346
    new-instance v0, Lcom/mintegral/msdk/reward/b/a$c;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->o:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/mintegral/msdk/reward/b/a$c;-><init>(Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;Landroid/os/Handler;B)V

    iput-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    .line 347
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 938
    :try_start_0
    iput-object p1, p0, Lcom/mintegral/msdk/reward/b/a;->m:Ljava/lang/String;

    .line 939
    iput-object p2, p0, Lcom/mintegral/msdk/reward/b/a;->k:Ljava/lang/String;

    .line 941
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a$c;->c(Lcom/mintegral/msdk/reward/b/a$c;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 942
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    if-eqz v0, :cond_1c

    .line 943
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    const-string v1, "campaing is loading"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Ljava/lang/String;)V

    .line 990
    :cond_1c
    :goto_1c
    return-void

    .line 947
    :cond_1d
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    if-nez v0, :cond_32

    .line 948
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    if-eqz v0, :cond_1c

    .line 949
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    const-string v1, "context is null"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_1c

    .line 988
    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 954
    :cond_32
    :try_start_32
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a;->q:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 955
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    if-eqz v0, :cond_1c

    .line 956
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    const-string v1, "network exception"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Ljava/lang/String;)V

    goto :goto_1c

    .line 960
    :cond_4a
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 961
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    if-eqz v0, :cond_5b

    .line 962
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    const-string v1, "Play more than limit"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Ljava/lang/String;)V

    .line 964
    :cond_5b
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a;->r:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/e/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 966
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->t:Ljava/util/Queue;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/mintegral/msdk/reward/b/a;->a(Ljava/util/Queue;ZLjava/lang/String;)V

    goto :goto_1c

    .line 972
    :cond_71
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 973
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->k:Ljava/lang/String;

    .line 975
    :cond_7f
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 976
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 978
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    const-string v2, "reward_date"

    const-string v3, "0"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 979
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d3

    .line 980
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    .line 981
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    const-string v2, "reward_date"

    invoke-static {v0, v2, v1}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 982
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 985
    :cond_d3
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/reward/b/a;->d(Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_d6} :catch_2d

    goto/16 :goto_1c
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 112
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mintegral_ConfirmTitle"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    :cond_20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 115
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mintegral_ConfirmContent"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    :cond_40
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 118
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mintegral_CancelText"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    :cond_60
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 121
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mintegral_ConfirmText"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    :cond_80
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/mintegral/msdk/reward/b/a;->q:Z

    .line 85
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 409
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 410
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a;->q:Z

    if-eqz v0, :cond_35

    .line 411
    invoke-static {}, Lcom/mintegral/msdk/e/b;->getInstance()Lcom/mintegral/msdk/e/b;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/e/b;->addInterstitialList(Ljava/lang/String;)V

    .line 417
    :cond_15
    :goto_15
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a;->r:Z

    if-eqz v0, :cond_44

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 418
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->o:Landroid/os/Handler;

    if-eqz v0, :cond_34

    .line 419
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 420
    const-string v1, "bidToken is empty"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 421
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 422
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2529
    :cond_34
    :goto_34
    return-void

    .line 413
    :cond_35
    invoke-static {}, Lcom/mintegral/msdk/e/b;->getInstance()Lcom/mintegral/msdk/e/b;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/e/b;->addRewardList(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3e} :catch_3f

    goto :goto_15

    .line 487
    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34

    .line 427
    :cond_44
    :try_start_44
    sget-object v0, Lcom/mintegral/msdk/system/a;->a:Ljava/util/Map;

    if-nez v0, :cond_61

    .line 428
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    if-eqz v0, :cond_34

    if-eqz p1, :cond_34

    .line 429
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    const-string v1, "init error"

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mintegral/msdk/reward/b/a;->r:Z

    invoke-static {v0, v1, v2, v3}, Lcom/mintegral/msdk/reward/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 430
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    const-string v1, "init error"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onVideoLoadFail(Ljava/lang/String;)V

    goto :goto_34

    .line 436
    :cond_61
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    .line 438
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    .line 437
    invoke-static {v0, v2}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    .line 440
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    if-nez v0, :cond_ae

    .line 441
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->u:Ljava/lang/String;

    .line 442
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->u:Ljava/lang/String;

    .line 443
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    new-instance v4, Lcom/mintegral/msdk/reward/b/a$2;

    invoke-direct {v4, p0}, Lcom/mintegral/msdk/reward/b/a$2;-><init>(Lcom/mintegral/msdk/reward/b/a;)V

    .line 442
    invoke-static {v0, v2, v3, v4}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/videocommon/c/c;)V

    .line 474
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mintegral/msdk/reward/b/a;->q:Z

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/mintegral/msdk/videocommon/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    .line 478
    :cond_ae
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/c;->R()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->t:Ljava/util/Queue;

    .line 479
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/b/a;->c()Z
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_b9} :catch_3f

    move-result v0

    .line 481
    if-eqz v0, :cond_106

    .line 1658
    :try_start_bc
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/e/c;->J()Ljava/util/List;

    move-result-object v3

    .line 1659
    if-eqz v3, :cond_106

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_106

    move v2, v1

    .line 1660
    :goto_cb
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_106

    .line 1661
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/videocommon/b/b;

    .line 1662
    iget-object v4, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mintegral/msdk/reward/b/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1663
    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/b/b;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1662
    invoke-static {v4, v0, v5}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_fe} :catch_102

    .line 1660
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_cb

    .line 1667
    :catch_102
    move-exception v0

    :try_start_103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2492
    :cond_106
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    if-eqz v0, :cond_138

    .line 2493
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a$c;->a(Lcom/mintegral/msdk/reward/b/a$c;)I

    move-result v0

    if-ne v0, v7, :cond_131

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    if-eqz v0, :cond_131

    .line 2494
    if-eqz p1, :cond_34

    .line 2495
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->i:Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    const-string v1, "current unit is loading"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onVideoLoadFail(Ljava/lang/String;)V

    .line 2496
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    const-string v1, "current unit is loading"

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mintegral/msdk/reward/b/a;->r:Z

    invoke-static {v0, v1, v2, v3}, Lcom/mintegral/msdk/reward/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2498
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a$c;->b(Lcom/mintegral/msdk/reward/b/a$c;)V

    goto/16 :goto_34

    .line 2502
    :cond_131
    if-eqz p1, :cond_138

    .line 2503
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a$c;->b(Lcom/mintegral/msdk/reward/b/a$c;)V

    .line 2507
    :cond_138
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/reward/b/a;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 2509
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    if-eqz v0, :cond_156

    .line 2510
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mintegral/msdk/reward/b/a$c;->c(Lcom/mintegral/msdk/reward/b/a$c;Ljava/lang/String;)V

    .line 2511
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mintegral/msdk/reward/b/a$c;->a(Lcom/mintegral/msdk/reward/b/a$c;Ljava/lang/String;)V

    .line 2512
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a;->r:Z

    if-nez v0, :cond_34

    move p1, v1

    .line 2519
    :cond_156
    if-eqz p1, :cond_180

    .line 2520
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_180

    .line 2521
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    if-eqz v0, :cond_169

    .line 2522
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->j:Lcom/mintegral/msdk/reward/b/a$c;

    const-string v1, "Play more than limit"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/reward/b/a$c;->b(Lcom/mintegral/msdk/reward/b/a$c;Ljava/lang/String;)V

    .line 2525
    :cond_169
    iget-boolean v0, p0, Lcom/mintegral/msdk/reward/b/a;->r:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/e/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2527
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->t:Ljava/util/Queue;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/mintegral/msdk/reward/b/a;->a(Ljava/util/Queue;ZLjava/lang/String;)V

    goto/16 :goto_34

    .line 2532
    :cond_180
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->t:Ljava/util/Queue;

    invoke-direct {p0, v0, p1, p2}, Lcom/mintegral/msdk/reward/b/a;->a(Ljava/util/Queue;ZLjava/lang/String;)V
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_185} :catch_3f

    goto/16 :goto_34
.end method

.method public final b(I)V
    .registers 5

    .prologue
    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->v:Lcom/mintegral/msdk/base/b/i;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/j;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/j;

    move-result-object v0

    .line 844
    if-eqz v0, :cond_d

    .line 845
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/j;->a(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_11

    .line 850
    :cond_d
    :goto_d
    packed-switch p1, :pswitch_data_42

    .line 856
    :goto_10
    return-void

    .line 848
    :catch_11
    move-exception v0

    const-string v0, "RewardVideoController"

    const-string v1, "can\'t find DailyPlayCapDao"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 852
    :pswitch_1a
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mintegral/msdk/reward/b/a;->d:I

    add-int/lit8 v2, v2, 0x1

    .line 853
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 852
    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10

    .line 850
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_1a
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 352
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    .line 353
    iput-object p1, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    .line 355
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->b()Lcom/mintegral/msdk/videocommon/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->h:Lcom/mintegral/msdk/videocommon/e/a;

    .line 357
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/reward/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/mintegral/msdk/base/utils/e;->b()V

    .line 362
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/j;->a()Lcom/mintegral/msdk/videocommon/download/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/j;->b()V

    .line 365
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/h;->a()Lcom/mintegral/msdk/videocommon/download/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/h;->b()V

    .line 366
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/e/b;->a(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 369
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/videocommon/a/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 371
    if-eqz v3, :cond_5e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5e

    .line 372
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/videocommon/download/c;->createUnitCache(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/mintegral/msdk/videocommon/listener/a;)Lcom/mintegral/msdk/videocommon/download/k;

    .line 378
    :cond_5e
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->v:Lcom/mintegral/msdk/base/b/i;

    if-nez v0, :cond_70

    .line 379
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/reward/b/a;->v:Lcom/mintegral/msdk/base/b/i;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_70} :catch_71

    .line 384
    :cond_70
    :goto_70
    return-void

    .line 381
    :catch_71
    move-exception v0

    .line 382
    const-string v1, "RewardVideoController"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_70
.end method

.method public final b(Z)V
    .registers 3

    .prologue
    .line 396
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/mintegral/msdk/reward/b/a;->a(ZLjava/lang/String;)V

    .line 397
    return-void
.end method

.method public final c(Z)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 907
    .line 909
    :try_start_1
    invoke-direct {p0}, Lcom/mintegral/msdk/reward/b/a;->d()Z

    move-result v1

    if-nez v1, :cond_42

    .line 910
    new-instance v1, Lcom/mintegral/msdk/reward/a/c;

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/mintegral/msdk/reward/b/a;->l:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mintegral/msdk/reward/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 911
    iget-boolean v2, p0, Lcom/mintegral/msdk/reward/b/a;->q:Z

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/reward/a/c;->a(Z)V

    .line 912
    iget-boolean v2, p0, Lcom/mintegral/msdk/reward/b/a;->r:Z

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/reward/a/c;->b(Z)V

    .line 913
    const-string v2, "RewardVideoController"

    const-string v3, "controller isReady"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-virtual {v1}, Lcom/mintegral/msdk/reward/a/c;->d()Z

    move-result v0

    .line 917
    if-eqz v0, :cond_42

    invoke-virtual {v1}, Lcom/mintegral/msdk/reward/a/c;->c()Z

    move-result v1

    if-eqz v1, :cond_42

    if-nez p1, :cond_42

    iget-boolean v1, p0, Lcom/mintegral/msdk/reward/b/a;->r:Z

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a;->f:Lcom/mintegral/msdk/videocommon/e/c;

    const/4 v2, 0x1

    .line 918
    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/videocommon/e/c;->e(I)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 3396
    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/mintegral/msdk/reward/b/a;->a(ZLjava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_42} :catch_43

    .line 933
    :cond_42
    :goto_42
    return v0

    .line 927
    :catch_43
    move-exception v1

    .line 928
    sget-boolean v2, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v2, :cond_42

    .line 929
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_42
.end method
