.class public Lcom/mintegral/msdk/click/a;
.super Ljava/lang/Object;
.source "CommonClickControl.java"


# static fields
.field public static a:Z

.field public static b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/String;

.field public static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static g:Landroid/os/Handler;


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:Lcom/mintegral/msdk/base/b/i;

.field private m:Landroid/content/Context;

.field private n:Lcom/mintegral/msdk/click/CommonJumpLoader;

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/click/CommonJumpLoader;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/mintegral/msdk/out/AppWallTrackingListener;

.field private q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

.field private r:Lcom/mintegral/msdk/base/common/e/b;

.field private s:Z

.field private t:Lcom/mintegral/msdk/c/a;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/os/Handler;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mintegral/msdk/click/a;->a:Z

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/click/a;->b:Ljava/util/Set;

    .line 117
    const-class v0, Lcom/mintegral/msdk/click/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/click/a;->c:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/click/a;->d:Ljava/util/Map;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/click/a;->e:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/click/a;->f:Ljava/util/Set;

    .line 1704
    new-instance v0, Lcom/mintegral/msdk/click/a$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/click/a$2;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mintegral/msdk/click/a;->g:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "CommonClickControl"

    iput-object v0, p0, Lcom/mintegral/msdk/click/a;->h:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/mintegral/msdk/click/a;->l:Lcom/mintegral/msdk/base/b/i;

    .line 83
    iput-object v1, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    .line 91
    iput-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/a;->v:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/a;->w:Z

    .line 127
    new-instance v0, Lcom/mintegral/msdk/click/a$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/click/a$1;-><init>(Lcom/mintegral/msdk/click/a;)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/a;->x:Landroid/os/Handler;

    .line 174
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {p2}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/click/a;->t:Lcom/mintegral/msdk/c/a;

    .line 175
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->t:Lcom/mintegral/msdk/c/a;

    if-nez v0, :cond_31

    .line 176
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/click/a;->t:Lcom/mintegral/msdk/c/a;

    .line 179
    :cond_31
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->t:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aA()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/a;->u:Z

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcom/mintegral/msdk/click/a;->i:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->l:Lcom/mintegral/msdk/base/b/i;

    if-nez v0, :cond_4d

    .line 184
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/click/a;->l:Lcom/mintegral/msdk/base/b/i;

    .line 186
    :cond_4d
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/a;->r:Lcom/mintegral/msdk/base/common/e/b;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/click/a;->o:Ljava/util/HashMap;

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    return-object v0
.end method

.method private a(ILjava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V
    .registers 8

    .prologue
    .line 1325
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1326
    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    .line 1327
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4}, Lcom/mintegral/msdk/base/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 1336
    :cond_e
    :goto_e
    return-void

    .line 1330
    :cond_f
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-static {v0, p2, p4}, Lcom/mintegral/msdk/base/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_e

    .line 1333
    :catch_15
    move-exception v0

    .line 1334
    const-string v1, "Mintegral SDK M"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1793
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1794
    if-nez v0, :cond_19

    .line 1795
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1798
    :cond_19
    if-eqz v0, :cond_32

    .line 1799
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_33

    if-eqz p0, :cond_33

    .line 1800
    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1805
    :cond_32
    :goto_32
    return-void

    .line 1802
    :cond_33
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_32
.end method

.method public static a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 14

    .prologue
    .line 797
    if-nez p0, :cond_3

    .line 833
    :goto_2
    return-void

    .line 800
    :cond_3
    new-instance v0, Lcom/mintegral/msdk/click/CommonJumpLoader;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/click/CommonJumpLoader;-><init>(Landroid/content/Context;Z)V

    .line 801
    const-string v1, "2"

    new-instance v4, Lcom/mintegral/msdk/click/a$6;

    invoke-direct {v4}, Lcom/mintegral/msdk/click/a$6;-><init>()V

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/mintegral/msdk/click/CommonJumpLoader;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/d;Ljava/lang/String;ZZ)V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 14

    .prologue
    const/4 v6, 0x0

    .line 837
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    if-nez p3, :cond_e

    .line 878
    :cond_d
    return-void

    .line 840
    :cond_e
    new-instance v0, Lcom/mintegral/msdk/click/CommonJumpLoader;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/click/CommonJumpLoader;-><init>(Landroid/content/Context;Z)V

    move v8, v6

    .line 842
    :goto_19
    array-length v1, p3

    if-ge v8, v1, :cond_d

    .line 843
    const-string v1, "2"

    new-instance v4, Lcom/mintegral/msdk/click/a$7;

    invoke-direct {v4}, Lcom/mintegral/msdk/click/a$7;-><init>()V

    aget-object v5, p3, v8

    move-object v2, p2

    move-object v3, p1

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/mintegral/msdk/click/CommonJumpLoader;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/d;Ljava/lang/String;ZZ)V

    .line 842
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_19
.end method

.method private a(Lcom/mintegral/msdk/base/entity/CampaignEx;IZLjava/lang/Boolean;)V
    .registers 15

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 889
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mintegral/msdk/click/a;->j:J

    .line 992
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_f7

    if-nez p3, :cond_f7

    .line 993
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 994
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-interface {v0}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onInterceptDefaultLoadingDialog()Z

    move-result v0

    if-nez v0, :cond_f4

    move v0, v1

    :goto_20
    move v6, v0

    .line 999
    :goto_21
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->o:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1000
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->o:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/click/CommonJumpLoader;

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/CommonJumpLoader;->b()V

    .line 1001
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->o:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    :cond_45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/a;->y:Z

    .line 1014
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getJumpResult()Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    if-eqz v0, :cond_186

    .line 1015
    if-nez p3, :cond_5d

    .line 1016
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getJumpResult()Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v2

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/mintegral/msdk/click/a;->v:Z

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;ZZLjava/lang/Boolean;)V

    .line 1018
    :cond_5d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/a;->y:Z

    .line 1020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/a;->v:Z

    move v3, v7

    .line 1022
    :goto_64
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->l:Lcom/mintegral/msdk/base/b/i;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/d;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1023
    if-eqz v0, :cond_7c

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getJumpResult()Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v0

    if-nez v0, :cond_f3

    .line 1024
    :cond_7c
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->l:Lcom/mintegral/msdk/base/b/i;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/d;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/d;

    move-result-object v0

    .line 1026
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/d;->c()V

    .line 1027
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/b/d;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v2

    .line 1028
    if-eqz v2, :cond_fa

    if-nez p3, :cond_fa

    .line 1029
    invoke-virtual {p1, v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setJumpResult(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;)V

    .line 1030
    if-eqz v3, :cond_a9

    .line 1031
    if-nez p3, :cond_a2

    .line 1032
    iget-boolean v4, p0, Lcom/mintegral/msdk/click/a;->v:Z

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;ZZLjava/lang/Boolean;)V

    .line 1034
    :cond_a2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/a;->y:Z

    .line 1036
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/a;->v:Z

    move v3, v7

    .line 1063
    :cond_a9
    :goto_a9
    const-string v0, "Mintegral SDK M"

    const-string v1, "Start 302 Redirection... "

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mintegral/msdk/click/a$8;

    invoke-direct {v1, p0, v6, p3, p1}, Lcom/mintegral/msdk/click/a$8;-><init>(Lcom/mintegral/msdk/click/a;ZZLcom/mintegral/msdk/base/entity/CampaignEx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1080
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->n:Lcom/mintegral/msdk/click/CommonJumpLoader;

    if-eqz v0, :cond_ca

    .line 1081
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->n:Lcom/mintegral/msdk/click/CommonJumpLoader;

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/CommonJumpLoader;->b()V

    .line 1083
    :cond_ca
    sget-object v0, Lcom/mintegral/msdk/click/a;->f:Ljava/util/Set;

    if-eqz v0, :cond_153

    sget-object v0, Lcom/mintegral/msdk/click/a;->f:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 1084
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_ec

    .line 1085
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onDismissLoading(Lcom/mintegral/msdk/out/Campaign;)V

    .line 1086
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 1087
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    .line 1086
    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 1089
    :cond_ec
    const-string v0, "Mintegral SDK M"

    const-string v1, "\u70b9\u51fb\u6b63\u5728tracking"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :cond_f3
    :goto_f3
    return-void

    :cond_f4
    move v0, v7

    .line 994
    goto/16 :goto_20

    :cond_f7
    move v6, v1

    .line 996
    goto/16 :goto_21

    .line 1040
    :cond_fa
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_148

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_148

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_148

    if-nez p3, :cond_148

    .line 1042
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 1042
    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/j$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)Z

    .line 1048
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_144

    if-eqz v3, :cond_144

    .line 1049
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-interface {v0, p1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onDismissLoading(Lcom/mintegral/msdk/out/Campaign;)V

    .line 1050
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 1053
    :cond_144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/a;->y:Z

    move v3, v7

    .line 1055
    :cond_148
    if-eqz p3, :cond_a9

    .line 1056
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/a;->y:Z

    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/a;->v:Z

    move v3, v7

    goto/16 :goto_a9

    .line 1092
    :cond_153
    sget-object v0, Lcom/mintegral/msdk/click/a;->f:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1093
    new-instance v0, Lcom/mintegral/msdk/click/CommonJumpLoader;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mintegral/msdk/click/CommonJumpLoader;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/mintegral/msdk/click/a;->n:Lcom/mintegral/msdk/click/CommonJumpLoader;

    .line 1095
    iget-object v7, p0, Lcom/mintegral/msdk/click/a;->n:Lcom/mintegral/msdk/click/CommonJumpLoader;

    const-string v8, "1"

    iget-object v9, p0, Lcom/mintegral/msdk/click/a;->i:Ljava/lang/String;

    new-instance v0, Lcom/mintegral/msdk/click/a$9;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/mintegral/msdk/click/a$9;-><init>(Lcom/mintegral/msdk/click/a;Lcom/mintegral/msdk/base/entity/CampaignEx;ZLjava/lang/Boolean;IZ)V

    .line 3069
    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, p1

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/mintegral/msdk/click/CommonJumpLoader;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/d;Lcom/mintegral/msdk/rover/d;)V
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17e} :catch_180

    goto/16 :goto_f3

    .line 1163
    :catch_180
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f3

    :cond_186
    move v3, v1

    goto/16 :goto_64
.end method

.method public static a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1727
    :try_start_0
    const-string v0, "start"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "downloading"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1728
    :cond_10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_21

    .line 1729
    invoke-static {}, Lcom/mintegral/msdk/click/a;->f()V

    .line 1736
    :cond_1d
    :goto_1d
    invoke-static {p0, p1, p2}, Lcom/mintegral/msdk/click/a;->c(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 1740
    :goto_20
    return-void

    .line 1731
    :cond_21
    sget-object v0, Lcom/mintegral/msdk/click/a;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1732
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1733
    sget-object v1, Lcom/mintegral/msdk/click/a;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_1d

    .line 1737
    :catch_30
    move-exception v0

    .line 1738
    const-string v1, "Mintegral SDK M"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method private a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;ZZLjava/lang/Boolean;)V
    .registers 12

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1441
    :try_start_3
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/a;->w:Z

    if-nez v0, :cond_8

    .line 1576
    :cond_7
    :goto_7
    return-void

    .line 1449
    :cond_8
    invoke-static {}, Lcom/mintegral/msdk/c/a;->aV()Z

    move-result v0

    sput-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->ALLOW_APK_DOWNLOAD:Z

    .line 1451
    if-eqz p1, :cond_12

    if-nez p2, :cond_2b

    .line 1453
    :cond_12
    if-eqz p3, :cond_7

    .line 1454
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    .line 1455
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_7

    if-eqz p3, :cond_7

    .line 1456
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_26

    goto :goto_7

    .line 1574
    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1462
    :cond_2b
    :try_start_2b
    invoke-direct {p0}, Lcom/mintegral/msdk/click/a;->e()I

    move-result v0

    .line 1463
    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getCode()I

    move-result v1

    .line 1465
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4f

    .line 1466
    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1467
    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V

    goto :goto_7

    .line 1471
    :cond_4f
    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8f

    if-eqz p3, :cond_8f

    .line 1477
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v0

    .line 1478
    if-ne v0, v5, :cond_69

    .line 1479
    invoke-direct {p0}, Lcom/mintegral/msdk/click/a;->e()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;ZI)Z

    goto :goto_7

    .line 1481
    :cond_69
    if-ne v0, v4, :cond_6f

    .line 1482
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Z)Z

    goto :goto_7

    .line 1486
    :cond_6f
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 1488
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    .line 1489
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_7

    if-eqz p3, :cond_7

    .line 1490
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1497
    :cond_8f
    if-ne v1, v3, :cond_163

    .line 1499
    const-string v1, "Mintegral SDK M"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Jump to Google Play: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_118

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_118

    .line 1501
    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_118

    if-eqz p3, :cond_118

    .line 1503
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/j$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result v1

    if-nez v1, :cond_e4

    .line 1505
    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mintegral/msdk/click/a;->a(ILjava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 1517
    :cond_e4
    :goto_e4
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_f3

    if-eqz p3, :cond_f3

    .line 1518
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 1558
    :cond_f3
    :goto_f3
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v0

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/click/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1fb

    .line 1561
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    .line 1569
    :goto_105
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_7

    if-nez p3, :cond_7

    if-eqz p4, :cond_7

    .line 1570
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1508
    :cond_118
    if-eqz p3, :cond_e4

    .line 1510
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_141

    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 1510
    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/j$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result v1

    if-nez v1, :cond_14a

    .line 1512
    :cond_141
    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/mintegral/msdk/click/a;->a(ILjava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 1514
    :cond_14a
    const-string v0, "Mintegral SDK M"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code market This pkg is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e4

    .line 1521
    :cond_163
    if-ne v1, v4, :cond_1ab

    .line 1523
    if-eqz p3, :cond_18e

    .line 1524
    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->ALLOW_APK_DOWNLOAD:Z

    if-eqz v0, :cond_19f

    .line 1525
    const-string v0, "Mintegral SDK M"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Jump to download: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V

    .line 1531
    :cond_18e
    :goto_18e
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_f3

    if-eqz p3, :cond_f3

    .line 1532
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    goto/16 :goto_f3

    .line 1528
    :cond_19f
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    goto :goto_18e

    .line 1537
    :cond_1ab
    if-eqz p3, :cond_f3

    .line 1539
    const-string v0, "Mintegral SDK M"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Jump to Web: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v0

    if-ne v4, v0, :cond_1d0

    .line 1542
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Z)Z

    goto/16 :goto_7

    .line 1544
    :cond_1d0
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v0

    if-ne v5, v0, :cond_1df

    .line 1545
    invoke-direct {p0}, Lcom/mintegral/msdk/click/a;->e()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;ZI)Z

    goto/16 :goto_7

    .line 1548
    :cond_1df
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 1551
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_f3

    if-eqz p3, :cond_f3

    .line 1552
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    goto/16 :goto_f3

    .line 1565
    :cond_1fb
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_1ff} :catch_26

    goto/16 :goto_105
.end method

.method private a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 598
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 603
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->i:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 605
    :cond_11
    return-void
.end method

.method private a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V
    .registers 16

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    const/4 v11, -0x1

    const/4 v6, 0x1

    .line 1648
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1650
    :try_start_9
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1651
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 1652
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_105

    .line 1654
    if-eqz p3, :cond_37

    .line 1655
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2, p2, v1}, Lcom/mintegral/msdk/click/b;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 4921
    :cond_37
    :goto_37
    return-void

    .line 1660
    :cond_38
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "process"

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

    .line 1661
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1662
    if-eqz v0, :cond_105

    if-ne v0, v2, :cond_105

    .line 1663
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isDowning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 1666
    cmp-long v0, v2, v8

    if-eqz v0, :cond_105

    const-wide/32 v2, 0x927c0

    cmp-long v0, v4, v2

    if-gez v0, :cond_105

    .line 1668
    if-eqz p3, :cond_37

    .line 1669
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "downloadType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1670
    if-ne v0, v6, :cond_eb

    .line 1671
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    const-string v1, "downloading"

    invoke-static {p1, v0, v1}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_da
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_da} :catch_dc

    goto/16 :goto_37

    .line 1697
    :catch_dc
    move-exception v0

    sput v11, Lcom/mintegral/msdk/base/utils/t;->a:I

    .line 1698
    const-string v0, "downloadapk"

    const-string v1, "can\'t find download jar, use simple method"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V

    goto/16 :goto_37

    .line 1672
    :cond_eb
    if-ne v0, v7, :cond_f6

    .line 1673
    :try_start_ed
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    const-string v1, "downloading"

    invoke-static {p1, v0, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_37

    .line 1675
    :cond_f6
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v0, p2, v1}, Lcom/mintegral/msdk/base/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    goto/16 :goto_37

    .line 1682
    :cond_105
    sget v0, Lcom/mintegral/msdk/base/utils/t;->a:I
    :try_end_107
    .catch Ljava/lang/Throwable; {:try_start_ed .. :try_end_107} :catch_dc

    if-ne v0, v11, :cond_116

    .line 1684
    :try_start_109
    const-string v0, "com.mintegral.msdk.mtgdownload.b"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1685
    const-string v0, "com.mintegral.msdk.mtgdownload.g"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1686
    const/4 v0, 0x1

    sput v0, Lcom/mintegral/msdk/base/utils/t;->a:I
    :try_end_116
    .catch Ljava/lang/ClassNotFoundException; {:try_start_109 .. :try_end_116} :catch_19f
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_116} :catch_dc

    .line 1691
    :cond_116
    :goto_116
    :try_start_116
    sget v0, Lcom/mintegral/msdk/base/utils/t;->a:I

    if-ne v0, v6, :cond_279

    if-eqz p3, :cond_279

    .line 4829
    if-eqz p1, :cond_1a5

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a5

    .line 4830
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;
    :try_end_12b
    .catch Ljava/lang/Throwable; {:try_start_116 .. :try_end_12b} :catch_dc

    move-result-object v4

    .line 4835
    :goto_12c
    const/4 v0, 0x1

    :try_start_12d
    invoke-static {p2, v0, p1}, Lcom/mintegral/msdk/base/utils/j;->a(Ljava/lang/String;ILcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 4836
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 4837
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/t;->a(Landroid/content/Context;)Z

    move-result v1

    .line 4838
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/t;->c(Landroid/content/Context;)Z

    move-result v2

    .line 4839
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/t;->b(Landroid/content/Context;)Z

    move-result v3

    .line 4840
    if-nez v3, :cond_1a7

    .line 4841
    invoke-static {v0, p2, v4}, Lcom/mintegral/msdk/click/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_149
    .catch Ljava/lang/Throwable; {:try_start_12d .. :try_end_149} :catch_14b

    goto/16 :goto_37

    .line 4914
    :catch_14b
    move-exception v0

    .line 4915
    :try_start_14c
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isDowning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4916
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "process"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4917
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_19a

    .line 4918
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4920
    :cond_19a
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V

    goto/16 :goto_37

    .line 1688
    :catch_19f
    move-exception v0

    const/4 v0, 0x0

    sput v0, Lcom/mintegral/msdk/base/utils/t;->a:I
    :try_end_1a3
    .catch Ljava/lang/Throwable; {:try_start_14c .. :try_end_1a3} :catch_dc

    goto/16 :goto_116

    :cond_1a5
    move-object v4, p2

    .line 4832
    goto :goto_12c

    .line 4844
    :cond_1a7
    if-nez v2, :cond_1ae

    .line 4845
    :try_start_1a9
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V

    goto/16 :goto_37

    .line 4848
    :cond_1ae
    if-nez v1, :cond_1b5

    .line 4849
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V

    goto/16 :goto_37

    .line 4852
    :cond_1b5
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isDowning"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4853
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "process"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4854
    const-string v0, "com.mintegral.msdk.mtgdownload.g"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 4855
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 4856
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 4858
    const-string v0, "setTitle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4859
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4862
    const-string v0, "setDownloadListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mintegral/msdk/out/IDownloadListener;

    aput-object v3, v1, v2

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 4863
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v0, Lcom/mintegral/msdk/click/a$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/click/a$3;-><init>(Lcom/mintegral/msdk/click/a;Lcom/mintegral/msdk/base/entity/CampaignEx;ZLjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v9, v10

    invoke-virtual {v8, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4912
    const-string v0, "start"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4913
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_277
    .catch Ljava/lang/Throwable; {:try_start_1a9 .. :try_end_277} :catch_14b

    goto/16 :goto_37

    .line 1694
    :cond_279
    :try_start_279
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V
    :try_end_27c
    .catch Ljava/lang/Throwable; {:try_start_279 .. :try_end_27c} :catch_dc

    goto/16 :goto_37
.end method

.method private a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V
    .registers 10

    .prologue
    .line 1314
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/a;->s:Z

    if-eqz v0, :cond_8

    .line 4187
    if-eqz p2, :cond_8

    if-nez p1, :cond_9

    .line 4248
    :cond_8
    :goto_8
    return-void

    .line 4190
    :cond_9
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mintegral/msdk/click/a;->j:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mintegral/msdk/click/a;->k:J

    .line 4192
    new-instance v0, Lcom/mintegral/msdk/base/entity/c;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/c;-><init>()V

    .line 4194
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v1

    .line 4195
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->a(I)V

    .line 4196
    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/mintegral/msdk/base/utils/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->a(Ljava/lang/String;)V

    .line 4197
    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->j(Ljava/lang/String;)V

    .line 4198
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->d(I)V

    .line 4199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/mintegral/msdk/click/a;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->i(Ljava/lang/String;)V

    .line 4200
    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->h(Ljava/lang/String;)V

    .line 4201
    invoke-virtual {p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->f(I)V

    .line 4202
    invoke-virtual {p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 4203
    invoke-virtual {p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->g(Ljava/lang/String;)V

    .line 4206
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/mintegral/msdk/click/a;->j:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->c(Ljava/lang/String;)V

    .line 4207
    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLandingType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->b(I)V

    .line 4208
    invoke-virtual {p2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->c(I)V

    .line 4209
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->b(Ljava/lang/String;)V

    .line 4210
    if-eqz p1, :cond_8

    .line 4211
    invoke-virtual {p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->f(I)V

    .line 4212
    invoke-virtual {p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b5

    .line 4213
    invoke-virtual {p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->g(Ljava/lang/String;)V

    .line 4215
    :cond_b5
    iget-boolean v1, p0, Lcom/mintegral/msdk/click/a;->u:Z

    if-eqz v1, :cond_105

    .line 4216
    invoke-virtual {p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->e(I)V

    .line 4217
    invoke-virtual {p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d7

    .line 4218
    invoke-virtual {p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getHeader()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->e(Ljava/lang/String;)V

    .line 4220
    :cond_d7
    invoke-virtual {p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ee

    .line 4221
    invoke-virtual {p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->f(Ljava/lang/String;)V

    .line 4223
    :cond_ee
    invoke-virtual {p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getExceptionMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_105

    .line 4224
    invoke-virtual {p1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getExceptionMsg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/entity/c;->d(Ljava/lang/String;)V

    .line 4228
    :cond_105
    if-eqz p3, :cond_116

    .line 4229
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->r:Lcom/mintegral/msdk/base/common/e/b;

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/mintegral/msdk/base/common/e/b;->a(Lcom/mintegral/msdk/base/entity/c;Ljava/lang/String;)V
    :try_end_10e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_10e} :catch_110

    goto/16 :goto_8

    .line 4247
    :catch_110
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    .line 4234
    :cond_116
    :try_start_116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4235
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4236
    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 4238
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4239
    new-instance v1, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;I)V

    const-string v2, "click_jump_success"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/mintegral/msdk/base/common/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/out/Frame;)V
    :try_end_137
    .catch Ljava/lang/Throwable; {:try_start_116 .. :try_end_137} :catch_110

    goto/16 :goto_8
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/a;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 5

    .prologue
    .line 5019
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    const-class v2, Lcom/mintegral/msdk/out/LoadingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5020
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5021
    const-string v1, "icon_url"

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5022
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 5025
    :goto_1c
    return-void

    .line 5023
    :catch_1d
    move-exception v0

    .line 5024
    const-string v1, "Mintegral SDK M"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/a;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;ZZLjava/lang/Boolean;)V
    .registers 6

    .prologue
    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;ZZLjava/lang/Boolean;)V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/a;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V
    .registers 12

    .prologue
    .line 6960
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 6961
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 6966
    :goto_10
    const/4 v0, 0x1

    :try_start_11
    new-array v0, v0, [Z

    .line 6967
    const-string v1, "/apk"

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/e;->a(Ljava/lang/String;Landroid/content/Context;[Z)Ljava/io/File;

    move-result-object v6

    .line 6970
    invoke-static {p2}, Lcom/mintegral/msdk/click/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6971
    new-instance v0, Lcom/mintegral/msdk/click/a$5;

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/click/a$5;-><init>(Lcom/mintegral/msdk/click/a;ZLcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7, p2, v0}, Lcom/mintegral/msdk/optimize/a;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/mintegral/msdk/optimize/b;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_2b} :catch_2e

    .line 7014
    :goto_2b
    return-void

    :cond_2c
    move-object v4, p2

    .line 6963
    goto :goto_10

    .line 7009
    :catch_2e
    move-exception v0

    .line 7010
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_36

    .line 7011
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7013
    :cond_36
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-static {v0, p2, v4}, Lcom/mintegral/msdk/click/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/a;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 4

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/click/a;ZLcom/mintegral/msdk/out/Campaign;)V
    .registers 5

    .prologue
    .line 5168
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mintegral/msdk/click/a$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/click/a$10;-><init>(Lcom/mintegral/msdk/click/a;ZLcom/mintegral/msdk/out/Campaign;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method private static a(ILjava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1605
    const/4 v0, 0x0

    .line 1607
    const/4 v2, 0x2

    if-ne p0, v2, :cond_d

    .line 1608
    :try_start_5
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/j$a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    .line 1621
    :cond_c
    :goto_c
    return v0

    .line 1612
    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_15

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 1613
    goto :goto_c

    .line 1617
    :catch_15
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method private a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Z)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 1407
    const/4 v1, 0x0

    .line 1409
    if-eqz p3, :cond_49

    .line 1410
    :try_start_4
    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v2, v3, v4}, Lcom/mintegral/msdk/base/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_f} :catch_44

    .line 1413
    :goto_f
    if-eqz v0, :cond_25

    .line 1414
    const/4 v1, 0x1

    :try_start_12
    invoke-direct {p0, p2, p1, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    .line 1415
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v1, :cond_24

    if-eqz p3, :cond_24

    .line 1416
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 1428
    :cond_24
    :goto_24
    return v0

    .line 1419
    :cond_25
    const/4 v1, 0x1

    invoke-direct {p0, p2, p1, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    .line 1420
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v1, :cond_24

    if-eqz p3, :cond_24

    .line 1421
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_38} :catch_39

    goto :goto_24

    .line 1425
    :catch_39
    move-exception v1

    .line 1426
    :goto_3a
    const-string v2, "Mintegral SDK M"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24

    .line 1425
    :catch_44
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_3a

    :cond_49
    move v0, v1

    goto :goto_f
.end method

.method private a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;ZI)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1348
    .line 1351
    if-eqz p3, :cond_9f

    .line 1352
    :try_start_4
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLandingType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1353
    if-ne v2, v0, :cond_33

    .line 1354
    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v2, v3, v4}, Lcom/mintegral/msdk/base/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1d} :catch_42

    .line 1378
    :cond_1d
    :goto_1d
    if-eqz v0, :cond_89

    .line 1379
    const/4 v1, 0x1

    :try_start_20
    invoke-direct {p0, p2, p1, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    .line 1380
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v1, :cond_32

    if-eqz p3, :cond_32

    .line 1381
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_32} :catch_9d

    .line 1394
    :cond_32
    :goto_32
    return v0

    .line 1356
    :cond_33
    const/4 v3, 0x2

    if-ne v2, v3, :cond_50

    .line 1357
    :try_start_36
    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v2, v3, p1, v4}, Lcom/mintegral/msdk/base/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_41} :catch_42

    goto :goto_1d

    .line 1390
    :catch_42
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 1391
    :goto_46
    const-string v2, "Mintegral SDK M"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    .line 1361
    :cond_50
    :try_start_50
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7e

    .line 1363
    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 1363
    invoke-static {v2, v3, v4}, Lcom/mintegral/msdk/base/utils/j$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1368
    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {p0, p4, v0, p1, v2}, Lcom/mintegral/msdk/click/a;->a(ILjava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    move v0, v1

    .line 1369
    goto :goto_1d

    .line 1372
    :cond_7e
    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {p0, p4, v0, p1, v2}, Lcom/mintegral/msdk/click/a;->a(ILjava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_87} :catch_42

    move v0, v1

    .line 1373
    goto :goto_1d

    .line 1384
    :cond_89
    const/4 v1, 0x1

    :try_start_8a
    invoke-direct {p0, p2, p1, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    .line 1385
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v1, :cond_32

    if-eqz p3, :cond_32

    .line 1386
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {p2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_9c} :catch_9d

    goto :goto_32

    .line 1390
    :catch_9d
    move-exception v1

    goto :goto_46

    :cond_9f
    move v0, v1

    goto/16 :goto_1d
.end method

.method static synthetic b(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/base/b/i;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->l:Lcom/mintegral/msdk/base/b/i;

    return-object v0
.end method

.method public static b(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1775
    :try_start_0
    const-string v0, "start"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "downloading"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1776
    :cond_10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_21

    .line 1777
    invoke-static {p1}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;)V

    .line 1784
    :cond_1d
    :goto_1d
    invoke-static {p0, p1, p2}, Lcom/mintegral/msdk/click/a;->c(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 1788
    :goto_20
    return-void

    .line 1779
    :cond_21
    sget-object v0, Lcom/mintegral/msdk/click/a;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1780
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1781
    sget-object v1, Lcom/mintegral/msdk/click/a;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_1d

    .line 1785
    :catch_30
    move-exception v0

    .line 1786
    const-string v1, "Mintegral SDK M"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method private b(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V
    .registers 10

    .prologue
    .line 1926
    .line 1927
    if-eqz p1, :cond_89

    :try_start_2
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 1928
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1930
    :goto_10
    const/4 v1, 0x2

    invoke-static {p2, v1, p1}, Lcom/mintegral/msdk/base/utils/j;->a(Ljava/lang/String;ILcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 1931
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    .line 1932
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/t;->b(Landroid/content/Context;)Z

    move-result v2

    .line 1933
    if-nez v2, :cond_26

    .line 1934
    invoke-static {v1, p2, v0}, Lcom/mintegral/msdk/click/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    :cond_25
    :goto_25
    return-void

    .line 1937
    :cond_26
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isDowning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1938
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "process"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1939
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mintegral/msdk/click/a$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mintegral/msdk/click/a$4;-><init>(Lcom/mintegral/msdk/click/a;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1943
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7f} :catch_80

    goto :goto_25

    .line 1944
    :catch_80
    move-exception v0

    .line 1945
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_25

    .line 1946
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_25

    :cond_89
    move-object v0, p2

    goto :goto_10
.end method

.method static synthetic c(Lcom/mintegral/msdk/click/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 1744
    if-eqz p0, :cond_9

    :try_start_3
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    if-nez v1, :cond_a

    .line 1770
    :cond_9
    :goto_9
    return-void

    .line 1747
    :cond_a
    const-string v1, "start"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "shortcuts_start"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1748
    :cond_1a
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->c()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    move v6, v0

    .line 1749
    :goto_25
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->c()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v6, v0, :cond_9

    .line 1750
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->c()[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1749
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_25

    .line 1753
    :cond_49
    const-string v1, "end"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1754
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->d()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    move v6, v0

    .line 1755
    :goto_5c
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->d()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v6, v0, :cond_9

    .line 1756
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->d()[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1755
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_5c

    .line 1759
    :cond_80
    const-string v1, "install"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1760
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/j;->e()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b7

    move v6, v0

    .line 1761
    :goto_93
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->e()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v6, v0, :cond_b7

    .line 1762
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->e()[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1761
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_93

    .line 1765
    :cond_b7
    invoke-static {p1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/g;->b(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/g;->m(Ljava/lang/String;)V
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c6} :catch_c8

    goto/16 :goto_9

    .line 1767
    :catch_c8
    move-exception v0

    .line 1768
    const-string v1, "Mintegral SDK M"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9
.end method

.method private static c(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z
    .registers 9

    .prologue
    .line 522
    if-eqz p0, :cond_9

    const/4 v0, 0x2

    :try_start_3
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v1

    if-eq v0, v1, :cond_10

    :cond_9
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v1

    if-ne v0, v1, :cond_93

    .line 523
    :cond_10
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    .line 524
    sget-object v1, Lcom/mintegral/msdk/click/a;->e:Ljava/util/Map;

    if-eqz v1, :cond_93

    .line 525
    sget-object v1, Lcom/mintegral/msdk/click/a;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 526
    sget-object v1, Lcom/mintegral/msdk/click/a;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 527
    if-eqz v0, :cond_62

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 530
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_42

    sget-object v1, Lcom/mintegral/msdk/click/a;->f:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 531
    :cond_42
    const-string v1, "Mintegral SDK M"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u70b9\u51fb\u65f6\u95f4\u672a\u8d85\u8fc7coit "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const/4 v0, 0x0

    .line 560
    :goto_61
    return v0

    .line 549
    :cond_62
    const-string v0, "Mintegral SDK M"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u672a\u53d1\u73b0\u6709\u70b9\u51fb\u6216\u70b9\u51fb\u8d85\u65f6\u4fdd\u5b58\u70b9\u51fb\u65f6\u95f4 interval = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickTimeOutInterval()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickTimeOutInterval()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 552
    sget-object v1, Lcom/mintegral/msdk/click/a;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_93} :catch_95

    .line 560
    :cond_93
    :goto_93
    const/4 v0, 0x1

    goto :goto_61

    .line 555
    :catch_95
    move-exception v0

    .line 556
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_93

    .line 557
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_93
.end method

.method static synthetic d()V
    .registers 0

    .prologue
    .line 72
    invoke-static {}, Lcom/mintegral/msdk/click/a;->f()V

    return-void
.end method

.method static synthetic d(Lcom/mintegral/msdk/click/a;)Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/a;->y:Z

    return v0
.end method

.method private e()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1584
    .line 1586
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->t:Lcom/mintegral/msdk/c/a;

    if-eqz v1, :cond_b

    .line 1587
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->t:Lcom/mintegral/msdk/c/a;

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/a;->ad()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 1593
    :cond_b
    :goto_b
    return v0

    .line 1590
    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method static synthetic e(Lcom/mintegral/msdk/click/a;)Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/a;->s:Z

    return v0
.end method

.method private static f()V
    .registers 3

    .prologue
    .line 1809
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1810
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1811
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u4e2d,\u8bf7\u7a0d\u5019..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1818
    :goto_28
    return-void

    .line 1813
    :cond_29
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Downloading...."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_28

    .line 1818
    :catch_3c
    move-exception v0

    goto :goto_28
.end method

.method static synthetic f(Lcom/mintegral/msdk/click/a;)Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/a;->v:Z

    return v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/click/a;)V
    .registers 4

    .prologue
    .line 6030
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6031
    const-string v1, "ExitApp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6032
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 6035
    :goto_f
    return-void

    .line 6033
    :catch_10
    move-exception v0

    .line 6034
    const-string v1, "Mintegral SDK M"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method static synthetic h(Lcom/mintegral/msdk/click/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/click/a;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->x:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/click/a;->w:Z

    .line 205
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 5

    .prologue
    .line 565
    :try_start_0
    invoke-static {p1}, Lcom/mintegral/msdk/click/a;->c(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 595
    :goto_6
    return-void

    .line 568
    :cond_7
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->l:Lcom/mintegral/msdk/base/b/i;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/d;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/d;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/d;->c()V

    .line 571
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->i:Ljava/lang/String;

    .line 570
    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/b/d;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v1

    .line 572
    if-eqz v1, :cond_31

    .line 577
    invoke-virtual {v1}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getNoticeurl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 578
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setNoticeurl(Ljava/lang/String;)V

    .line 580
    :cond_26
    invoke-virtual {p1, v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setJumpResult(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;)V

    .line 581
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTtc_type()I

    invoke-virtual {v0, p1, v1}, Lcom/mintegral/msdk/base/b/d;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)J

    .line 584
    :cond_31
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    .line 585
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-static {v0, v1}, Lcom/mintegral/msdk/click/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 586
    if-eqz v0, :cond_65

    .line 587
    const-string v0, "Mintegral SDK M"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is intalled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_59} :catch_5a

    goto :goto_6

    .line 592
    :catch_5a
    move-exception v0

    .line 593
    const-string v1, "Mintegral SDK M"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 590
    :cond_65
    :try_start_65
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTtc_type()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;IZLjava/lang/Boolean;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_72} :catch_5a

    goto :goto_6
.end method

.method public final a(Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V
    .registers 5

    .prologue
    .line 499
    if-eqz p2, :cond_7

    .line 500
    if-eqz p1, :cond_7

    .line 501
    invoke-interface {p2, p1}, Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;->onAdClick(Lcom/mintegral/msdk/out/Campaign;)V

    .line 504
    :cond_7
    const-string v0, "Mintegral SDK M"

    const-string v1, "clickStart"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0, p1}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 507
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/out/AppWallTrackingListener;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/mintegral/msdk/click/a;->p:Lcom/mintegral/msdk/out/AppWallTrackingListener;

    .line 213
    return-void
.end method

.method public final a(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1253
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_9

    .line 3637
    :cond_8
    :goto_8
    return-void

    .line 1256
    :cond_9
    const/4 v0, 0x0

    .line 1257
    if-eqz p1, :cond_f4

    instance-of v1, p1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_f4

    .line 1258
    check-cast p1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1263
    :goto_12
    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "https://play.google.com/"

    .line 1264
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1266
    :cond_22
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v0, p2, v1}, Lcom/mintegral/msdk/base/utils/j$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 1268
    if-eqz p1, :cond_52

    .line 1269
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 1270
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1271
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 1270
    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/j$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)Z

    .line 1283
    :cond_52
    :goto_52
    const-string v0, "Mintegral SDK M"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Jump to Google Play: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_67

    goto :goto_8

    .line 1308
    :catch_67
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 1273
    :cond_6c
    :try_start_6c
    invoke-direct {p0}, Lcom/mintegral/msdk/click/a;->e()I

    move-result v0

    .line 1274
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7f

    .line 1275
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v0, v1, p1, v2}, Lcom/mintegral/msdk/base/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    goto :goto_52

    .line 1277
    :cond_7f
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    goto :goto_52

    .line 1286
    :cond_8b
    invoke-static {}, Lcom/mintegral/msdk/c/a;->aV()Z

    move-result v0

    sput-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->ALLOW_APK_DOWNLOAD:Z

    .line 1287
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->ALLOW_APK_DOWNLOAD:Z

    if-nez v0, :cond_8

    .line 1289
    if-eqz p1, :cond_ea

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 1290
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 1290
    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/j$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)Z
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_c7} :catch_67

    move-result v0

    if-nez v0, :cond_e0

    .line 3627
    :try_start_ca
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->x:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/click/a$11;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/click/a$11;-><init>(Lcom/mintegral/msdk/click/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d4} :catch_d6

    goto/16 :goto_8

    .line 3636
    :catch_d6
    move-exception v0

    :try_start_d7
    const-string v0, "Mintegral SDK M"

    const-string v1, "Opps!Access Unavailable."

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1294
    :cond_e0
    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->ALLOW_APK_DOWNLOAD:Z

    if-eqz v0, :cond_8

    .line 1296
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V

    goto/16 :goto_8

    .line 1300
    :cond_ea
    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->ALLOW_APK_DOWNLOAD:Z

    if-eqz v0, :cond_8

    .line 1302
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;Z)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_f2} :catch_67

    goto/16 :goto_8

    :cond_f4
    move-object p1, v0

    goto/16 :goto_12
.end method

.method public final a(Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 197
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mintegral/msdk/click/a;->i:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->o:Ljava/util/HashMap;

    if-eqz v0, :cond_32

    .line 231
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_32

    .line 233
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 234
    if-eqz v0, :cond_16

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/click/CommonJumpLoader;

    .line 236
    if-eqz v0, :cond_16

    .line 237
    invoke-virtual {v0}, Lcom/mintegral/msdk/click/CommonJumpLoader;->b()V

    goto :goto_16

    .line 248
    :catch_30
    move-exception v0

    :goto_31
    return-void

    .line 244
    :cond_32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_30

    goto :goto_31
.end method

.method public final b(Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 12

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 615
    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lcom/mintegral/msdk/click/a;->s:Z

    .line 617
    invoke-static {p1}, Lcom/mintegral/msdk/click/a;->c(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 776
    :cond_d
    :goto_d
    return-void

    .line 620
    :cond_e
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v2

    .line 621
    iget-object v3, p0, Lcom/mintegral/msdk/click/a;->l:Lcom/mintegral/msdk/base/b/i;

    invoke-static {v3}, Lcom/mintegral/msdk/base/b/d;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/d;

    move-result-object v3

    .line 622
    invoke-virtual {v3}, Lcom/mintegral/msdk/base/b/d;->c()V

    .line 624
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mintegral/msdk/click/a;->i:Ljava/lang/String;

    .line 623
    invoke-virtual {v3, v4, v5}, Lcom/mintegral/msdk/base/b/d;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;

    move-result-object v4

    .line 625
    if-eqz v4, :cond_3c

    .line 630
    invoke-virtual {v4}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->getNoticeurl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_31

    .line 631
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;->setNoticeurl(Ljava/lang/String;)V

    .line 633
    :cond_31
    invoke-virtual {p1, v4}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setJumpResult(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;)V

    .line 634
    iget-object v5, p0, Lcom/mintegral/msdk/click/a;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTtc_type()I

    invoke-virtual {v3, p1, v5}, Lcom/mintegral/msdk/base/b/d;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)J

    .line 639
    :cond_3c
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/k;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 641
    iget-object v3, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getDeepLinkURL()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mintegral/msdk/click/b;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&opdptype=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_64} :catch_65

    goto :goto_d

    .line 773
    :catch_65
    move-exception v0

    .line 774
    const-string v1, "Mintegral SDK M"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 648
    :cond_70
    :try_start_70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&opdptype=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 650
    :cond_83
    invoke-direct {p0, p1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGhId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e2

    .line 652
    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGhId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getGhPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBindId()Ljava/lang/String;

    move-result-object v7

    .line 2779
    if-eqz v2, :cond_d

    .line 2782
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2783
    const-string v1, ""

    .line 2784
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33a

    move-object v5, v0

    .line 2787
    :goto_b5
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DFK/J75/JaEXWFfXYZPTHkPUHkPTWr2wWgf3LBPUYF2wWgSBYbHuH75BWFetJkPULcJDnkQ/L+SBYFJBDkT="

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v4, v8

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    const-string v6, "0"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2788
    if-eqz v0, :cond_d

    .line 2789
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d

    .line 655
    :cond_e2
    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    .line 656
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 655
    invoke-static {v2, v3}, Lcom/mintegral/msdk/click/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 657
    if-eqz v2, :cond_141

    .line 658
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/click/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 659
    const-string v0, "Mintegral SDK M"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is intalled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_120

    .line 661
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 664
    :cond_120
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTtc_type()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;IZLjava/lang/Boolean;)V

    .line 665
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_d

    .line 666
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/j;->a(Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    goto/16 :goto_d

    .line 673
    :cond_141
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLinkType()I

    move-result v2

    .line 674
    invoke-direct {p0}, Lcom/mintegral/msdk/click/a;->e()I

    move-result v3

    .line 679
    const-string v5, "Mintegral SDK M"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "======302\u8df3\u8f6c\u524dlinkType:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " openType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "======landingType\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getLandingType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const/16 v5, 0x8

    if-eq v2, v5, :cond_17f

    const/16 v5, 0x9

    if-eq v2, v5, :cond_17f

    if-ne v2, v9, :cond_180

    :cond_17f
    move v0, v1

    .line 681
    :cond_180
    if-eqz v0, :cond_230

    .line 682
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    .line 685
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v1, :cond_18f

    .line 686
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-interface {v1, p1, v0}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 688
    :cond_18f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1be

    .line 689
    const-string v1, "Mintegral SDK M"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "linketype="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clickurl \u4e3a\u7a7a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v1, :cond_1b8

    .line 691
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-interface {v1, p1, v0}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 694
    :cond_1b8
    const/4 v0, 0x1

    invoke-direct {p0, v4, p1, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    goto/16 :goto_d

    .line 697
    :cond_1be
    const/16 v1, 0x8

    if-ne v2, v1, :cond_1df

    .line 698
    const-string v1, "Mintegral SDK M"

    const-string v2, "linketype=8 \u7528webview \u6253\u5f00"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v1, v0, p1, v2}, Lcom/mintegral/msdk/base/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 700
    const/4 v1, 0x0

    invoke-direct {p0, v4, p1, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    .line 701
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v1, :cond_d

    .line 702
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-interface {v1, p1, v0}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 705
    :cond_1df
    const/16 v1, 0x9

    if-ne v2, v1, :cond_200

    .line 706
    const-string v1, "Mintegral SDK M"

    const-string v2, "linketype=9 \u7528\u6d4f\u89c8\u5668 \u6253\u5f00"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/base/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 708
    const/4 v1, 0x0

    invoke-direct {p0, v4, p1, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    .line 709
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v1, :cond_d

    .line 710
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-interface {v1, p1, v0}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 713
    :cond_200
    if-ne v2, v9, :cond_212

    .line 717
    if-ne v3, v8, :cond_221

    .line 718
    const-string v1, "Mintegral SDK M"

    const-string v2, "linketype=4 opent=2 \u7528webview \u6253\u5f00"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v1, v0, p1, v2}, Lcom/mintegral/msdk/base/utils/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 725
    :cond_212
    :goto_212
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v1, :cond_21b

    .line 726
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-interface {v1, p1, v0}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 729
    :cond_21b
    const/4 v0, 0x0

    invoke-direct {p0, v4, p1, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    goto/16 :goto_d

    .line 721
    :cond_221
    const-string v1, "Mintegral SDK M"

    const-string v2, "linketype=4 opent=\u4e0d\u4e3a2 \u7528Browser \u6253\u5f00"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/base/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    goto :goto_212

    .line 731
    :cond_230
    if-ne v2, v8, :cond_2c0

    .line 732
    const-string v0, "Mintegral SDK M"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "linktype\u4e3a2 \u5f00\u59cb\u505a302\u8df3\u8f6c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "market://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_262

    .line 734
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://play.google.com/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b1

    .line 735
    :cond_262
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_26f

    .line 736
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 739
    :cond_26f
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/j$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result v0

    if-nez v0, :cond_286

    .line 740
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/mintegral/msdk/click/a;->a(ILjava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 743
    :cond_286
    const/4 v0, 0x0

    invoke-direct {p0, v4, p1, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    .line 744
    const-string v0, "Mintegral SDK M"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0d\u7528\u505a302\u8df3\u8f6c \u6700\u7ec8\u5730\u5740\u5df2\u7ecf\u662fgp\u4e86\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_d

    .line 746
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 750
    :cond_2b1
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTtc_type()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;IZLjava/lang/Boolean;)V

    goto/16 :goto_d

    .line 751
    :cond_2c0
    const/4 v0, 0x3

    if-ne v2, v0, :cond_2ea

    .line 752
    const-string v0, "Mintegral SDK M"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "linktype\u4e3a3 \u5f00\u59cb\u505a302\u8df3\u8f6c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTtc_type()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;IZLjava/lang/Boolean;)V

    goto/16 :goto_d

    .line 755
    :cond_2ea
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31d

    .line 757
    const-string v1, "Mintegral SDK M"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "linketype="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clickurl \u4e3a\u7a7a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v1, :cond_317

    .line 759
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-interface {v1, p1, v0}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 762
    :cond_317
    const/4 v0, 0x1

    invoke-direct {p0, v4, p1, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    goto/16 :goto_d

    .line 765
    :cond_31d
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v1, :cond_326

    .line 766
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-interface {v1, p1, v0}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 768
    :cond_326
    const-string v1, "Mintegral SDK M"

    const-string v2, "linketyp\u4e0d\u662f23489\u7684\u503c \u7528\u6d4f\u89c8\u5668 \u6253\u5f00"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/mintegral/msdk/click/a;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/click/a;->q:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-static {v1, v0, v2}, Lcom/mintegral/msdk/base/utils/j;->b(Landroid/content/Context;Ljava/lang/String;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 771
    const/4 v0, 0x0

    invoke-direct {p0, v4, p1, v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/CommonJumpLoader$JumpLoaderResult;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V
    :try_end_338
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_338} :catch_65

    goto/16 :goto_d

    :cond_33a
    move-object v5, v1

    goto/16 :goto_b5
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->n:Lcom/mintegral/msdk/click/CommonJumpLoader;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->n:Lcom/mintegral/msdk/click/CommonJumpLoader;

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/CommonJumpLoader;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 511
    iget-object v0, p0, Lcom/mintegral/msdk/click/a;->n:Lcom/mintegral/msdk/click/CommonJumpLoader;

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/CommonJumpLoader;->b()V

    .line 513
    :cond_11
    return-void
.end method
