.class public Lcom/mintegral/msdk/mtgnative/c/b;
.super Ljava/lang/Object;
.source "NativeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/mtgnative/c/b$b;,
        Lcom/mintegral/msdk/mtgnative/c/b$g;,
        Lcom/mintegral/msdk/mtgnative/c/b$d;,
        Lcom/mintegral/msdk/mtgnative/c/b$a;,
        Lcom/mintegral/msdk/mtgnative/c/b$c;,
        Lcom/mintegral/msdk/mtgnative/c/b$f;,
        Lcom/mintegral/msdk/mtgnative/c/b$e;
    }
.end annotation


# static fields
.field private static E:Z

.field private static aa:Z

.field public static c:Ljava/util/Map;
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

.field private static final e:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:Z

.field private K:Lcom/mintegral/msdk/base/common/f/b;

.field private L:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/mtgnative/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/mtgnative/c/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/mintegral/msdk/base/common/f/a;",
            ">;"
        }
    .end annotation
.end field

.field private P:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/mintegral/adsession/AdSession;",
            ">;"
        }
    .end annotation
.end field

.field private Q:I

.field private R:Ljava/lang/String;

.field private S:Lcom/mintegral/msdk/base/b/i;

.field private T:I

.field private U:Z

.field private V:Lcom/mintegral/msdk/mtgnative/c/b$a;

.field private W:Z

.field private X:Z

.field private Y:Ljava/util/Timer;

.field private Z:Ljava/lang/String;

.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Lcom/mintegral/msdk/c/d;

.field private ac:J

.field private ad:I

.field private ae:I

.field private af:Z

.field private ag:I

.field private ah:I

.field private ai:Z

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/mintegral/msdk/c/c;

.field private g:Lcom/mintegral/msdk/mtgnative/d/a;

.field private h:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lcom/mintegral/msdk/mtgnative/c/b$e;

.field private r:Lcom/mintegral/msdk/base/common/e/b;

.field private s:Ljava/lang/String;

.field private t:Lcom/mintegral/msdk/click/a;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    const-class v0, Lcom/mintegral/msdk/mtgnative/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->c:Ljava/util/Map;

    .line 720
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mintegral/msdk/mtgnative/c/b;->aa:Z

    return-void
.end method

.method public constructor <init>(Lcom/mintegral/msdk/mtgnative/d/a;Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;Ljava/util/Map;Landroid/content/Context;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/mtgnative/d/a;",
            "Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->u:I

    .line 132
    iput v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->w:I

    .line 134
    iput v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->x:I

    .line 135
    const-string v0, "both"

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->y:Ljava/lang/String;

    .line 139
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->B:Z

    .line 140
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->C:Z

    .line 141
    iput-boolean v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->D:Z

    .line 145
    iput v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->F:I

    .line 146
    iput v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->G:I

    .line 148
    iput v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->H:I

    .line 149
    iput v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->I:I

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->L:Ljava/util/Map;

    .line 157
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->O:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 158
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->P:Ljava/util/Hashtable;

    .line 161
    iput v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Q:I

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->R:Ljava/lang/String;

    .line 165
    iput v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->T:I

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    .line 220
    iput-object p4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    .line 221
    iput-object p3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    .line 222
    new-instance v0, Lcom/mintegral/msdk/c/c;

    invoke-direct {v0}, Lcom/mintegral/msdk/c/c;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->f:Lcom/mintegral/msdk/c/c;

    .line 223
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->g:Lcom/mintegral/msdk/mtgnative/d/a;

    .line 224
    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->h:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->M:Ljava/util/List;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->N:Ljava/util/List;

    .line 227
    const-string v0, "unit_id"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 229
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "load error,make sure you have correct unitid"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_79
    :goto_79
    return-void

    .line 232
    :cond_7a
    const-string v0, "isPreloadImg"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 233
    const-string v0, "isPreloadImg"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/mintegral/msdk/mtgnative/c/b;->E:Z

    .line 235
    :cond_90
    const-string v0, "cancel_admob_audo_download_image"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 236
    const-string v0, "cancel_admob_audo_download_image"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_b0

    .line 237
    const-string v0, "cancel_admob_audo_download_image"

    .line 238
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->U:Z

    .line 242
    :cond_b0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->k:Ljava/util/Queue;

    .line 243
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->l:Ljava/util/Queue;

    .line 244
    new-instance v0, Lcom/mintegral/msdk/base/common/f/b;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->K:Lcom/mintegral/msdk/base/common/f/b;

    .line 245
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_d0

    .line 246
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 248
    :cond_d0
    new-instance v0, Lcom/mintegral/msdk/mtgnative/c/b$e;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgnative/c/b$e;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->q:Lcom/mintegral/msdk/mtgnative/c/b$e;

    .line 250
    const-string v0, "facebook_placementid"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_281

    .line 251
    const-string v0, "facebook_placementid"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->m:Ljava/lang/String;

    .line 255
    :goto_e9
    const-string v0, "admob_unitid"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 256
    const-string v0, "admob_unitid"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->n:Ljava/lang/String;

    .line 258
    :cond_fb
    const-string v0, "admob_type"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 259
    const-string v0, "admob_type"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->y:Ljava/lang/String;

    .line 266
    :cond_10d
    const-string v0, "mytarget_unitid"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 267
    const-string v0, "mytarget_unitid"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->o:Ljava/lang/String;

    .line 269
    :cond_11f
    const-string v0, "catetory"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 270
    const-string v0, "catetory"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->z:Ljava/lang/String;

    .line 272
    :cond_131
    const-string v0, "MediaCacheFlag"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 273
    const-string v0, "MediaCacheFlag"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->J:Z

    .line 277
    :cond_147
    :try_start_147
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_371

    .line 278
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 280
    :goto_163
    if-nez v0, :cond_28d

    .line 281
    const-string v0, "ad_num"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_186

    .line 282
    const-string v0, "ad_num"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 283
    if-gtz v0, :cond_17c

    move v0, v3

    .line 286
    :cond_17c
    const/16 v3, 0xa

    if-le v0, v3, :cond_182

    .line 287
    const/16 v0, 0xa

    .line 289
    :cond_182
    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    .line 290
    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->u:I

    .line 293
    :cond_186
    const-string v0, "ad_frame_num"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 294
    const-string v0, "ad_frame_num"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->H:I
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_19c} :catch_2dd

    .line 312
    :cond_19c
    :goto_19c
    new-instance v0, Lcom/mintegral/msdk/base/common/e/b;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->r:Lcom/mintegral/msdk/base/common/e/b;

    .line 313
    new-instance v0, Lcom/mintegral/msdk/click/a;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/mintegral/msdk/click/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->t:Lcom/mintegral/msdk/click/a;

    .line 317
    :try_start_1b0
    const-string v0, "com.mintegral.msdk.nativex.view.MTGMediaView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 318
    const-string v0, "com.mintegral.msdk.videocommon.download.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->X:Z

    .line 321
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    if-eqz v0, :cond_1e0

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v3, "native_video_width"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dd

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v3, "native_video_height"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dd

    const-string v0, "videoSupport"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e0

    .line 322
    :cond_1dd
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->W:Z

    .line 325
    :cond_1e0
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/mintegral/msdk/mtgnative/c/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/mintegral/msdk/base/utils/e;->b()V

    .line 328
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 330
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/f;->c()V

    .line 333
    const-string v0, "native_info"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36e

    .line 334
    const-string v0, "native_info"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 336
    :goto_20f
    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->b(Ljava/lang/String;)I

    move-result v0

    .line 339
    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    if-gtz v0, :cond_219

    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->u:I

    .line 4372
    :cond_219
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    const-string v4, ""

    invoke-static {v4, v3}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v4

    iput-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    .line 4373
    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    if-nez v4, :cond_22e

    .line 4374
    invoke-static {v3}, Lcom/mintegral/msdk/c/d;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v4

    iput-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    .line 4376
    :cond_22e
    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v4}, Lcom/mintegral/msdk/c/d;->w()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    .line 4377
    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    if-eqz v4, :cond_25d

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_25d

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25d

    .line 4378
    const/4 v4, 0x1

    .line 4379
    invoke-static {v4}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v4

    .line 4380
    if-eqz v4, :cond_25d

    .line 4381
    invoke-virtual {v4, v3, v0}, Lcom/mintegral/msdk/mtgnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 341
    :cond_25d
    if-eqz v2, :cond_79

    .line 342
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 344
    :goto_264
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e9

    .line 345
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 346
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27d

    .line 347
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27d
    .catch Ljava/lang/Throwable; {:try_start_1b0 .. :try_end_27d} :catch_364

    .line 344
    :cond_27d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_264

    .line 253
    :cond_281
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->m:Ljava/lang/String;

    goto/16 :goto_e9

    .line 298
    :cond_28d
    :try_start_28d
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->d()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 299
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->d()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    .line 300
    const-string v0, "ad_num"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c3

    .line 301
    const-string v0, "ad_num"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->F:I

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->u:I

    .line 303
    :cond_2c3
    const-string v0, "ad_frame_num"

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 304
    const-string v0, "ad_frame_num"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->G:I

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->H:I
    :try_end_2db
    .catch Ljava/lang/Exception; {:try_start_28d .. :try_end_2db} :catch_2dd

    goto/16 :goto_19c

    .line 308
    :catch_2dd
    move-exception v0

    .line 309
    sget-object v3, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19c

    .line 350
    :cond_2e9
    :try_start_2e9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_79

    .line 351
    const-string v0, "com.mintegral.msdk.videocommon.download.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 352
    const-string v1, "com.mintegral.msdk.videocommon.listener.a"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 353
    const-string v2, "getInstance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 354
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 355
    const-string v4, "createUnitCache"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/util/List;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object v1, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 356
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const/4 v3, 0x3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const/4 v5, 0x0

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v1, "load"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 359
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_362
    .catch Ljava/lang/Throwable; {:try_start_2e9 .. :try_end_362} :catch_364

    goto/16 :goto_79

    .line 364
    :catch_364
    move-exception v0

    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "please import the nativex aar"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_79

    :cond_36e
    move-object v0, v2

    goto/16 :goto_20f

    :cond_371
    move v0, v1

    goto/16 :goto_163
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/b;I)I
    .registers 2

    .prologue
    .line 109
    iput p1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ad:I

    return p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/base/b/i;)Lcom/mintegral/msdk/base/b/i;
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->S:Lcom/mintegral/msdk/base/b/i;

    return-object p1
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/base/common/e/b;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->r:Lcom/mintegral/msdk/base/common/e/b;

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->s:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2738
    if-ne p1, v1, :cond_35

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v2, "native_info"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    if-eqz p2, :cond_35

    .line 2739
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_35

    .line 2740
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 2742
    if-eqz v0, :cond_4a

    .line 2743
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTemplate()I

    move-result v0

    .line 2745
    :goto_22
    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 2746
    if-eqz p2, :cond_35

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ag:I

    if-lt v0, v1, :cond_35

    .line 2747
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ag:I

    invoke-interface {p2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 2755
    :cond_35
    :goto_35
    return-object p2

    .line 2749
    :cond_36
    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    .line 2750
    if-eqz p2, :cond_35

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ah:I

    if-lt v0, v1, :cond_35

    .line 2751
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ah:I

    invoke-interface {p2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    goto :goto_35

    :cond_4a
    move v0, v1

    goto :goto_22
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/b;ILjava/util/List;)Ljava/util/List;
    .registers 4

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/mtgnative/c/b;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;Z)Ljava/util/List;
    .registers 8

    .prologue
    .line 9332
    if-eqz p1, :cond_b2

    .line 9333
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 9335
    :goto_9
    if-ltz v2, :cond_b2

    .line 9336
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/Campaign;

    .line 9337
    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v1

    .line 9338
    instance-of v3, v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v3, :cond_3c

    .line 9339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, v0

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, v0

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9341
    :cond_3c
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v3

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/mintegral/msdk/videocommon/download/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/videocommon/download/a;

    move-result-object v3

    .line 9342
    if-eqz p2, :cond_71

    .line 9343
    if-eqz v3, :cond_58

    invoke-direct {p0}, Lcom/mintegral/msdk/mtgnative/c/b;->e()Lcom/mintegral/msdk/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/d;->f()I

    move-result v1

    invoke-static {v3, v1}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/videocommon/download/a;I)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 9345
    :cond_58
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/out/Campaign;

    .line 9346
    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Campaign;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 9347
    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4}, Lcom/mintegral/msdk/mtgnative/a/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 9335
    :cond_6d
    :goto_6d
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_9

    .line 9350
    :cond_71
    instance-of v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_6d

    move-object v1, v0

    .line 9351
    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 9353
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 9354
    if-eqz v3, :cond_9c

    invoke-direct {p0}, Lcom/mintegral/msdk/mtgnative/c/b;->e()Lcom/mintegral/msdk/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/d;->f()I

    move-result v1

    invoke-static {v3, v1}, Lcom/mintegral/msdk/videocommon/download/k;->a(Lcom/mintegral/msdk/videocommon/download/a;I)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 9356
    :cond_9c
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/out/Campaign;

    .line 9357
    invoke-virtual {v0}, Lcom/mintegral/msdk/out/Campaign;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 9358
    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v4}, Lcom/mintegral/msdk/mtgnative/a/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    goto :goto_6d

    .line 109
    :cond_b2
    return-object p1
.end method

.method private a(JIZLjava/lang/String;Ljava/lang/String;)V
    .registers 28

    .prologue
    .line 2792
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->n()Ljava/util/UUID;

    move-result-object v8

    .line 2793
    if-nez v8, :cond_b9

    .line 2794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/b;->L:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_ttc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/b;->L:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_post"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2801
    :goto_60
    new-instance v9, Lcom/mintegral/msdk/mtgnative/c/b$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p4

    invoke-direct {v9, v0, v1, v8, v2}, Lcom/mintegral/msdk/mtgnative/c/b$2;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/lang/String;Ljava/util/UUID;Z)V

    .line 2831
    new-instance v4, Lcom/mintegral/msdk/mtgnative/c/b$3;

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move/from16 v7, p4

    move-wide/from16 v10, p1

    move/from16 v12, p3

    move-object/from16 v13, p6

    invoke-direct/range {v4 .. v13}, Lcom/mintegral/msdk/mtgnative/c/b$3;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/lang/String;ZLjava/util/UUID;Lcom/mintegral/msdk/base/common/f/a;JILjava/lang/String;)V

    .line 2884
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mintegral/msdk/mtgnative/c/b;->q:Lcom/mintegral/msdk/mtgnative/c/b$e;

    const-wide/32 v6, 0x15f90

    invoke-virtual {v5, v4, v6, v7}, Lcom/mintegral/msdk/mtgnative/c/b$e;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2885
    new-instance v11, Lcom/mintegral/msdk/mtgnative/c/b$4;

    move-object/from16 v12, p0

    move/from16 v13, p4

    move-object/from16 v14, p5

    move-object v15, v8

    move-wide/from16 v16, p1

    move/from16 v18, p3

    move-object/from16 v19, p6

    invoke-direct/range {v11 .. v19}, Lcom/mintegral/msdk/mtgnative/c/b$4;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;ZLjava/lang/String;Ljava/util/UUID;JILjava/lang/String;)V

    .line 2918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/b;->K:Lcom/mintegral/msdk/base/common/f/b;

    if-nez v4, :cond_ab

    .line 2919
    new-instance v4, Lcom/mintegral/msdk/base/common/f/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/mintegral/msdk/base/common/f/b;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/b;->K:Lcom/mintegral/msdk/base/common/f/b;

    .line 2921
    :cond_ab
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/b;->K:Lcom/mintegral/msdk/base/common/f/b;

    if-eqz v4, :cond_b8

    .line 2922
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/b;->K:Lcom/mintegral/msdk/base/common/f/b;

    invoke-virtual {v4, v9, v11}, Lcom/mintegral/msdk/base/common/f/b;->a(Lcom/mintegral/msdk/base/common/f/a;Lcom/mintegral/msdk/base/common/f/a$b;)V

    .line 2924
    :cond_b8
    return-void

    .line 2797
    :cond_b9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/b;->L:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_ttc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mintegral/msdk/mtgnative/c/b;->L:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_post"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_60
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/Class;)V
    .registers 6

    .prologue
    .line 1656
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 1657
    :cond_4
    :try_start_4
    const-string v0, ""

    const-string v1, "traverseView  subview or mOnClickListener is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    :cond_b
    :goto_b
    return-void

    .line 1661
    :cond_c
    if-eqz p3, :cond_14

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1665
    :cond_14
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1666
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 1667
    check-cast p1, Landroid/view/ViewGroup;

    .line 1668
    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 1669
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1670
    invoke-direct {p0, v1, p2, p3}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/Class;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2b} :catch_2e

    .line 1668
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1675
    :catch_2e
    move-exception v0

    const-string v0, ""

    const-string v1, "traverseView  failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private a(Landroid/view/View;Ljava/lang/Class;)V
    .registers 5

    .prologue
    .line 1810
    if-nez p1, :cond_a

    .line 1811
    :try_start_2
    const-string v0, ""

    const-string v1, "traverseView  subview  is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    :cond_9
    :goto_9
    return-void

    .line 1815
    :cond_a
    if-eqz p2, :cond_12

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1819
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1820
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 1821
    check-cast p1, Landroid/view/ViewGroup;

    .line 1822
    const/4 v0, 0x0

    :goto_1d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 1823
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1824
    invoke-direct {p0, v1, p2}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Landroid/view/View;Ljava/lang/Class;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2a} :catch_2d

    .line 1822
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1829
    :catch_2d
    move-exception v0

    const-string v0, ""

    const-string v1, "traverseView  failed"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/view/View;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/base/entity/CampaignEx;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1614
    const/4 v5, 0x0

    .line 1615
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    if-eqz v0, :cond_44

    if-eqz p1, :cond_44

    .line 7597
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->P:Ljava/util/Hashtable;

    if-nez v0, :cond_12

    .line 7598
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->P:Ljava/util/Hashtable;

    .line 7600
    :cond_12
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    .line 7601
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->P:Ljava/util/Hashtable;

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 7602
    if-nez v0, :cond_8a

    .line 7603
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getOmid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/mintegral/msdk/a/b;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/mintegral/adsession/AdSession;

    move-result-object v5

    .line 7605
    :goto_35
    if-eqz v5, :cond_3c

    .line 7606
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->P:Ljava/util/Hashtable;

    invoke-virtual {v0, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    :cond_3c
    if-eqz v5, :cond_44

    .line 1618
    invoke-virtual {v5, p2}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    .line 1619
    invoke-virtual {v5}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->start()V

    .line 1622
    :cond_44
    const/4 v0, 0x0

    .line 1623
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    if-eqz v1, :cond_88

    .line 1624
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->c()I

    move-result v0

    move v6, v0

    .line 1626
    :goto_50
    new-instance v0, Lcom/mintegral/msdk/mtgnative/c/b$f;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/mtgnative/c/b$f;-><init>(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/view/View;Ljava/util/List;Lcom/mintegral/msdk/mtgnative/c/b;Lcom/iab/omid/library/mintegral/adsession/AdSession;)V

    .line 1627
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->O:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v1, :cond_64

    .line 1628
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->O:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1630
    :cond_64
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->O:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    new-instance v1, Lcom/mintegral/msdk/mtgnative/c/b$9;

    invoke-direct {v1, p0, v0}, Lcom/mintegral/msdk/mtgnative/c/b$9;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/mtgnative/c/b$f;)V

    .line 8077
    iput-object v1, v0, Lcom/mintegral/msdk/base/common/f/a;->j:Lcom/mintegral/msdk/base/common/f/a$b;

    .line 1641
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->q:Lcom/mintegral/msdk/mtgnative/c/b$e;

    if-eqz v1, :cond_7c

    .line 1642
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->q:Lcom/mintegral/msdk/mtgnative/c/b$e;

    mul-int/lit16 v2, v6, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/mintegral/msdk/mtgnative/c/b$e;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7c} :catch_7d

    .line 1647
    :cond_7c
    :goto_7c
    return-void

    .line 1644
    :catch_7d
    move-exception v0

    .line 1645
    sget-object v1, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    :cond_88
    move v6, v0

    goto :goto_50

    :cond_8a
    move-object v5, v0

    goto :goto_35
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 6

    .prologue
    .line 8420
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isReportClick()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 8421
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->setReportClick(Z)V

    .line 8422
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/j;->j()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 8423
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getNativeVideoTracking()Lcom/mintegral/msdk/base/entity/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/j;->j()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 109
    :cond_2e
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/view/View;Ljava/util/List;Lcom/iab/omid/library/mintegral/adsession/AdSession;)V
    .registers 9

    .prologue
    .line 109
    .line 8729
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "trackView start"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8730
    new-instance v0, Lcom/mintegral/msdk/mtgnative/c/b$10;

    invoke-direct {v0, p0, p1}, Lcom/mintegral/msdk/mtgnative/c/b$10;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    .line 8742
    new-instance v1, Lcom/mintegral/msdk/mtgnative/c/a;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p3, v0, v2}, Lcom/mintegral/msdk/mtgnative/c/a;-><init>(Ljava/util/List;Lcom/mintegral/msdk/mtgnative/c/a$a;Landroid/os/Handler;)V

    .line 8744
    invoke-virtual {v1, p2}, Lcom/mintegral/msdk/mtgnative/c/a;->a(Landroid/view/View;)V

    .line 8746
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->M:Ljava/util/List;

    if-eqz v2, :cond_26

    .line 8747
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->M:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8749
    :cond_26
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->N:Ljava/util/List;

    if-eqz v1, :cond_2f

    .line 8750
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->N:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8753
    :cond_2f
    if-eqz p4, :cond_38

    .line 8754
    invoke-static {p4}, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/mintegral/adsession/AdSession;)Lcom/iab/omid/library/mintegral/adsession/AdEvents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdEvents;->impressionOccurred()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    .line 8757
    :cond_38
    :goto_38
    return-void

    .line 109
    :catch_39
    move-exception v0

    goto :goto_38
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;ILcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V
    .registers 4

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;ILcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    return-void
.end method

.method private a(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2727
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->q:Lcom/mintegral/msdk/mtgnative/c/b$e;

    new-instance v1, Lcom/mintegral/msdk/mtgnative/c/b$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/mintegral/msdk/mtgnative/c/b$14;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b$e;->post(Ljava/lang/Runnable;)Z

    .line 2734
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    .registers 6

    .prologue
    .line 3223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    if-eqz p1, :cond_3b

    .line 3224
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 3227
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 3226
    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/l;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/l;

    move-result-object v0

    .line 3228
    new-instance v1, Lcom/mintegral/msdk/base/entity/f;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/f;-><init>()V

    .line 3229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mintegral/msdk/base/entity/f;->a(J)V

    .line 3230
    invoke-virtual {v1, p0}, Lcom/mintegral/msdk/base/entity/f;->b(Ljava/lang/String;)V

    .line 3231
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/f;->a(Ljava/lang/String;)V

    .line 3232
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/l;->a(Lcom/mintegral/msdk/base/entity/f;)V

    .line 3236
    :cond_3b
    return-void
.end method

.method private a(Ljava/util/List;ILcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;I",
            "Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->q:Lcom/mintegral/msdk/mtgnative/c/b$e;

    new-instance v1, Lcom/mintegral/msdk/mtgnative/c/b$13;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/mintegral/msdk/mtgnative/c/b$13;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b$e;->post(Ljava/lang/Runnable;)Z

    .line 2724
    return-void
.end method

.method private a(Ljava/util/List;Lcom/mintegral/msdk/mtgnative/c/b$b;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;",
            "Lcom/mintegral/msdk/mtgnative/c/b$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3287
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgnative/c/b;->f()V

    .line 3288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3289
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Y:Ljava/util/Timer;

    .line 3290
    iget-object v8, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Y:Ljava/util/Timer;

    new-instance v0, Lcom/mintegral/msdk/mtgnative/c/b$6;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mintegral/msdk/mtgnative/c/b$6;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;JLcom/mintegral/msdk/mtgnative/c/b$b;Ljava/util/List;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 3329
    return-void
.end method

.method private a(I)Z
    .registers 16

    .prologue
    const/4 v12, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 564
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 565
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 566
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->a()Ljava/util/Map;

    move-result-object v4

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 568
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->d()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 569
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v2

    .line 571
    if-eqz v1, :cond_67

    .line 572
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    .line 575
    :cond_67
    if-eqz v0, :cond_b6

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_b6

    .line 576
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 577
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 579
    if-nez v2, :cond_8a

    .line 580
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v2

    .line 582
    :cond_8a
    invoke-virtual {v2}, Lcom/mintegral/msdk/c/a;->aF()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 583
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v6, v10

    cmp-long v2, v6, v8

    if-ltz v2, :cond_b7

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_b6
    :goto_b6
    return v3

    .line 586
    :cond_b7
    if-ne p1, v5, :cond_14c

    .line 587
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 588
    if-eqz v2, :cond_b6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_b6

    .line 589
    iget-object v6, p0, Lcom/mintegral/msdk/mtgnative/c/b;->g:Lcom/mintegral/msdk/mtgnative/d/a;

    .line 590
    if-eqz v6, :cond_b6

    .line 593
    iget v7, p0, Lcom/mintegral/msdk/mtgnative/c/b;->H:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_f4

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-interface {v6, v2}, Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;->onAdFramesLoaded(Ljava/util/List;)V

    move v3, v5

    .line 597
    goto :goto_b6

    .line 599
    :cond_f4
    iget v7, p0, Lcom/mintegral/msdk/mtgnative/c/b;->H:I

    if-eqz v7, :cond_b6

    .line 602
    iget v7, p0, Lcom/mintegral/msdk/mtgnative/c/b;->G:I

    invoke-interface {v2, v3, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 603
    invoke-interface {v6, v2}, Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;->onAdFramesLoaded(Ljava/util/List;)V

    .line 604
    invoke-interface {v2, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 605
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 607
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 609
    :goto_110
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_127

    .line 610
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mintegral/msdk/out/Frame;

    .line 611
    iget v10, p0, Lcom/mintegral/msdk/mtgnative/c/b;->H:I

    if-lt v3, v10, :cond_123

    .line 613
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_123
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .line 616
    goto :goto_110

    .line 617
    :cond_127
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    invoke-interface {v6, v7}, Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;->onAdFramesLoaded(Ljava/util/List;)V

    move v3, v5

    .line 620
    goto/16 :goto_b6

    .line 625
    :cond_14c
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 626
    if-eqz v0, :cond_b6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b6

    .line 627
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 630
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getType()I

    move-result v1

    if-ne v1, v5, :cond_208

    .line 632
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19d

    .line 633
    iget v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->F:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 663
    :goto_17d
    if-lez v1, :cond_b6

    .line 665
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 667
    :goto_183
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_232

    .line 668
    if-eq v3, v1, :cond_232

    .line 671
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 672
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTemplate()I

    .line 673
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 675
    add-int/lit8 v3, v3, 0x1

    .line 676
    goto :goto_183

    .line 636
    :cond_19d
    :try_start_19d
    new-instance v8, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->p:Ljava/lang/String;

    invoke-direct {v8, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1dc

    move v2, v3

    move v4, v3

    move v6, v3

    .line 640
    :goto_1ad
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v6, v1, :cond_1de

    .line 641
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 642
    const-string v9, "id"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 643
    const/4 v10, 0x2

    if-ne v10, v9, :cond_1d2

    .line 644
    const-string v4, "ad_num"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move v13, v2

    move v2, v1

    move v1, v13

    .line 640
    :goto_1cc
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v2

    move v2, v1

    goto :goto_1ad

    .line 645
    :cond_1d2
    if-ne v12, v9, :cond_238

    .line 646
    const-string v2, "ad_num"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    move v2, v4

    goto :goto_1cc

    :cond_1dc
    move v2, v3

    move v4, v3

    .line 651
    :cond_1de
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 652
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTemplate()I

    move-result v1

    .line 654
    if-ne v12, v1, :cond_1f4

    .line 655
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_17d

    .line 657
    :cond_1f4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1fb} :catch_1fd

    move-result v1

    goto :goto_17d

    .line 660
    :catch_1fd
    move-exception v1

    sget-object v1, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v2, "load from catch error in get nativeinfo adnum"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto/16 :goto_17d

    .line 687
    :cond_208
    iget v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->F:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 688
    if-lez v1, :cond_b6

    .line 690
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 691
    :goto_218
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_232

    .line 692
    if-eq v3, v1, :cond_232

    .line 695
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 696
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTemplate()I

    .line 697
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 699
    add-int/lit8 v3, v3, 0x1

    .line 700
    goto :goto_218

    .line 708
    :cond_232
    invoke-direct {p0, v7}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;)Z

    move v3, v5

    .line 710
    goto/16 :goto_b6

    :cond_238
    move v1, v2

    move v2, v4

    goto :goto_1cc
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;)Z
    .registers 3

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/b;Z)Z
    .registers 2

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->A:Z

    return p1
.end method

.method private a(Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v3, 0x0

    .line 2635
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 2712
    :cond_12
    :goto_12
    return v3

    .line 2638
    :cond_13
    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 2639
    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->g:Lcom/mintegral/msdk/mtgnative/d/a;

    .line 2640
    if-eqz v4, :cond_b2

    .line 2642
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 2643
    if-eqz v0, :cond_7d

    .line 2644
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getTemplate()I

    move-result v1

    move v2, v1

    .line 2649
    :goto_2c
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v5

    .line 2650
    invoke-virtual {v5}, Lcom/mintegral/msdk/base/b/m;->d()V

    .line 2651
    :goto_39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_80

    .line 2652
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 2653
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mintegral/msdk/base/b/m;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_79

    .line 2655
    new-instance v6, Lcom/mintegral/msdk/base/entity/g;

    invoke-direct {v6}, Lcom/mintegral/msdk/base/entity/g;-><init>()V

    .line 2656
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mintegral/msdk/base/entity/g;->a(Ljava/lang/String;)V

    .line 2657
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFca()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mintegral/msdk/base/entity/g;->a(I)V

    .line 2658
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getFcb()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/mintegral/msdk/base/entity/g;->b(I)V

    .line 2659
    invoke-virtual {v6}, Lcom/mintegral/msdk/base/entity/g;->g()V

    .line 2660
    invoke-virtual {v6}, Lcom/mintegral/msdk/base/entity/g;->e()V

    .line 2661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/mintegral/msdk/base/entity/g;->a(J)V

    .line 2662
    invoke-virtual {v5, v6}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/entity/g;)V

    .line 2651
    :cond_79
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_39

    .line 2646
    :cond_7d
    const/4 v1, 0x2

    move v2, v1

    goto :goto_2c

    .line 2665
    :cond_80
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getType()I

    move-result v0

    .line 2667
    iget-boolean v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->X:Z

    if-eqz v1, :cond_10a

    iget-boolean v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->W:Z

    if-eqz v1, :cond_10a

    if-eq v0, v10, :cond_10a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_10a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_10a

    .line 2670
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgnative/c/b;->e()Lcom/mintegral/msdk/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->h()I

    move-result v0

    .line 2671
    if-ne v0, v10, :cond_bb

    .line 2672
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgnative/c/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2673
    if-eqz p1, :cond_b5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b5

    .line 2674
    new-instance v1, Lcom/mintegral/msdk/mtgnative/c/b$11;

    invoke-direct {v1, p0, v0, v2, v4}, Lcom/mintegral/msdk/mtgnative/c/b$11;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;ILcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    invoke-direct {p0, p1, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;Lcom/mintegral/msdk/mtgnative/c/b$b;)V

    .line 2710
    :cond_b2
    :goto_b2
    const/4 v3, 0x1

    goto/16 :goto_12

    .line 2686
    :cond_b5
    const-string v0, "has no ads"

    invoke-direct {p0, v4, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;Ljava/lang/String;)V

    goto :goto_b2

    .line 8268
    :cond_bb
    const/4 v3, 0x0

    .line 8269
    if-eqz p1, :cond_f5

    .line 8270
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c2
    :goto_c2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/Campaign;

    .line 8271
    instance-of v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_c2

    move-object v1, v0

    .line 8272
    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 8273
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c2

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c2

    .line 8274
    if-nez v3, :cond_10e

    .line 8275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8277
    :goto_f0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v1

    goto :goto_c2

    .line 2690
    :cond_f5
    if-eqz v3, :cond_106

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_106

    .line 2691
    new-instance v0, Lcom/mintegral/msdk/mtgnative/c/b$12;

    invoke-direct {v0, p0, p1, v2, v4}, Lcom/mintegral/msdk/mtgnative/c/b$12;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;ILcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    invoke-direct {p0, v3, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;Lcom/mintegral/msdk/mtgnative/c/b$b;)V

    goto :goto_b2

    .line 2703
    :cond_106
    invoke-direct {p0, p1, v2, v4}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;ILcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    goto :goto_b2

    .line 2707
    :cond_10a
    invoke-direct {p0, p1, v2, v4}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;ILcom/mintegral/msdk/out/NativeListener$NativeAdListener;)V

    goto :goto_b2

    :cond_10e
    move-object v1, v3

    goto :goto_f0
.end method

.method public static a(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2936
    if-eqz p0, :cond_35

    :try_start_2
    const-string v0, "app_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "app_key"

    .line 2937
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "key_word"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "key_word"

    .line 2938
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 2939
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "\u6709smart \u53c2\u6570"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_2b

    .line 2940
    const/4 v0, 0x1

    .line 2946
    :goto_2a
    return v0

    .line 2942
    :catch_2b
    move-exception v0

    .line 2943
    sget-object v1, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    :cond_35
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "\u6728\u6709smart \u53c2\u6570"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgnative/c/b;I)I
    .registers 2

    .prologue
    .line 109
    iput p1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->x:I

    return p1
.end method

.method private static b(Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 391
    if-nez p0, :cond_5

    move v0, v1

    .line 408
    :goto_4
    return v0

    .line 394
    :cond_5
    :try_start_5
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3c

    move v2, v1

    .line 396
    :goto_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_3c

    .line 397
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 398
    const-string v4, "id"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 399
    const/4 v5, 0x2

    if-ne v5, v4, :cond_2e

    .line 400
    const-string v2, "ad_num"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_32

    move-result v0

    goto :goto_4

    .line 396
    :cond_2e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    .line 405
    :catch_32
    move-exception v0

    .line 406
    sget-object v2, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    move v0, v1

    .line 408
    goto :goto_4
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->R:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3247
    if-eqz p1, :cond_52

    .line 3248
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 3249
    const/4 v0, 0x0

    .line 3250
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    move-object v1, v0

    :goto_b
    if-ltz v2, :cond_52

    .line 3252
    :try_start_d
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_13} :catch_4d

    move-object v1, v0

    .line 3256
    :goto_14
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 3257
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/Campaign;

    .line 3258
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v3

    .line 3259
    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v5}, Lcom/mintegral/msdk/mtgnative/a/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 3260
    sget-object v3, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "remove no videoURL ads:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3250
    :cond_49
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_b

    .line 3254
    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14

    .line 3264
    :cond_52
    return-object p1
.end method

.method public static b(Ljava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2957
    .line 2960
    :try_start_1
    const-string v0, "key_word"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_5a

    .line 2961
    const-string v0, "key_word"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2962
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2986
    :cond_19
    :goto_19
    return-object v1

    .line 2966
    :cond_1a
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2967
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_19

    .line 2971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_49

    .line 2972
    const/4 v1, 0x0

    :goto_2b
    :try_start_2b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_56

    .line 2974
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2975
    if-eqz v3, :cond_46

    .line 2976
    const-string v4, "p"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2977
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 2978
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_46} :catch_58

    .line 2972
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 2983
    :catch_49
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 2984
    :goto_4d
    sget-object v2, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    :goto_56
    move-object v1, v0

    .line 2986
    goto :goto_19

    .line 2983
    :catch_58
    move-exception v1

    goto :goto_4d

    :cond_5a
    move-object v0, v1

    goto :goto_56
.end method

.method public static b()V
    .registers 0

    .prologue
    .line 3217
    invoke-static {}, Lcom/mintegral/msdk/base/utils/e;->a()V

    .line 3218
    return-void
.end method

.method private b(ILjava/lang/String;)V
    .registers 11

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    .line 726
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->k:Ljava/util/Queue;

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_a4

    .line 727
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 728
    sget v0, Lcom/mintegral/msdk/MIntegralConstans;->REQUEST_TIME_OUT:I

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ac:J

    .line 729
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->l:Ljava/util/Queue;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 730
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ac:J

    .line 732
    :cond_39
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start queue adsource = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-wide v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ac:J

    .line 6757
    if-nez p1, :cond_81

    .line 6758
    invoke-static {v4}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 6759
    if-eqz v0, :cond_81

    .line 6760
    if-eq v4, v5, :cond_5b

    if-ne v4, v1, :cond_8f

    :cond_5b
    iget-object v6, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v7, "native_info"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 6761
    iget v6, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Q:I

    iput v6, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    .line 6765
    :goto_69
    iget-object v6, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    iget v7, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    invoke-virtual {v0, v6, v7}, Lcom/mintegral/msdk/mtgnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 6766
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 6771
    :cond_81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->A:Z

    .line 6772
    packed-switch v4, :pswitch_data_be

    move-object v0, p0

    move v1, v4

    move v4, p1

    move-object v5, p2

    .line 6819
    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/mtgnative/c/b;->a(IJILjava/lang/String;)V

    .line 6794
    :cond_8e
    :goto_8e
    return-void

    .line 6763
    :cond_8f
    iget v6, p0, Lcom/mintegral/msdk/mtgnative/c/b;->u:I

    iput v6, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    goto :goto_69

    .line 6774
    :pswitch_94
    iget-object v6, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    move-object v1, p0

    move v4, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/mintegral/msdk/mtgnative/c/b;->a(JIZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :pswitch_9d
    move-object v0, p0

    move v4, p1

    move-object v5, p2

    .line 6793
    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/mtgnative/c/b;->a(IJILjava/lang/String;)V

    goto :goto_8e

    .line 735
    :cond_a4
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->B:Z

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->g:Lcom/mintegral/msdk/mtgnative/d/a;

    if-eqz v0, :cond_8e

    .line 736
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "no ad source return"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iput-boolean v5, p0, Lcom/mintegral/msdk/mtgnative/c/b;->B:Z

    .line 738
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->g:Lcom/mintegral/msdk/mtgnative/d/a;

    const-string v1, "no ad source"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/d/a;->onAdLoadError(Ljava/lang/String;)V

    goto :goto_8e

    .line 6772
    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_94
        :pswitch_9d
    .end packed-switch
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;)V
    .registers 11

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9023
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12b

    .line 9024
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "===\u521b\u5efa\u4e0b\u8f7d\u4efb\u52a1"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_133

    .line 9026
    :try_start_f
    const-string v0, "com.mintegral.msdk.nativex.view.MTGMediaView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9027
    const-string v0, "com.mintegral.msdk.videocommon.download.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9028
    const-string v0, "com.mintegral.msdk.videocommon.download.c"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 9029
    const-string v1, "com.mintegral.msdk.videocommon.listener.a"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 9030
    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 9031
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 9032
    if-eqz v4, :cond_90

    .line 9033
    const-string v5, "createUnitCache"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/util/List;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object v1, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 9034
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p1, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9035
    const-string v1, "load"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 9036
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    aput-object v6, v1, v5

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9040
    :cond_90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_94
    :goto_94
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 9041
    if-eqz v0, :cond_c4

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c4

    .line 9042
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/mintegral/msdk/mtgnative/c/b$5;

    invoke-direct {v6, p0}, Lcom/mintegral/msdk/mtgnative/c/b$5;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;)V

    invoke-virtual {v1, v5, v6}, Lcom/mintegral/msdk/base/common/c/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/c/c;)V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_c4} :catch_122

    .line 9057
    :cond_c4
    :try_start_c4
    const-string v1, "com.mintegral.msdk.videocommon.download.g"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9058
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v5

    .line 9059
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 9061
    const-string v1, ".zip"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_103

    const-string v1, "md5filename"

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 9062
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/j;->a()Lcom/mintegral/msdk/videocommon/download/j;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/mintegral/msdk/videocommon/download/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13e

    move v1, v2

    .line 9065
    :goto_f2
    new-instance v6, Lcom/mintegral/msdk/mtgnative/c/b$g;

    iget-object v7, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-direct {v6, v7, v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b$g;-><init>(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    .line 9066
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$c;)V

    goto :goto_94

    .line 9078
    :catch_101
    move-exception v0

    goto :goto_94

    .line 9068
    :cond_103
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/h;->a()Lcom/mintegral/msdk/videocommon/download/h;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/mintegral/msdk/videocommon/download/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13c

    move v1, v2

    .line 9071
    :goto_112
    new-instance v6, Lcom/mintegral/msdk/mtgnative/c/b$d;

    iget-object v7, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-direct {v6, v7, v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b$d;-><init>(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Z)V

    .line 9072
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/g;->a()Lcom/mintegral/msdk/videocommon/download/g;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/mintegral/msdk/videocommon/download/g;->a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$a;)V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_120} :catch_101
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_120} :catch_122

    goto/16 :goto_94

    .line 9081
    :catch_122
    move-exception v0

    :try_start_123
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "please import the videocommon and nativex aar"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9091
    :cond_12a
    :goto_12a
    return-void

    .line 9084
    :cond_12b
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "onload \u4e0d\u7528\u4e0b\u8f7d\u89c6\u9891\u7d20\u6750 size\u4e3a0"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_132
    .catch Ljava/lang/Throwable; {:try_start_123 .. :try_end_132} :catch_133

    goto :goto_12a

    .line 9087
    :catch_133
    move-exception v0

    .line 9088
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_12a

    .line 9089
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12a

    :cond_13c
    move v1, v3

    goto :goto_112

    :cond_13e
    move v1, v3

    goto :goto_f2
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgnative/c/b;)Z
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->C:Z

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 109
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/mtgnative/c/b;Ljava/util/List;)Ljava/util/List;
    .registers 3

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgnative/c/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3383
    if-nez p1, :cond_4

    .line 3384
    const/4 v0, 0x0

    .line 3403
    :goto_3
    return-object v0

    .line 3386
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3387
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3388
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/out/Campaign;

    .line 3389
    instance-of v1, v0, Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-eqz v1, :cond_61

    move-object v1, v0

    .line 3390
    check-cast v1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 3391
    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isBidCampaign()Z

    move-result v5

    if-nez v5, :cond_49

    .line 3392
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 3393
    :cond_49
    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3394
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 3397
    :cond_61
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 3400
    :cond_65
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move-object v0, v2

    .line 3401
    goto :goto_3

    :cond_6f
    move-object v0, v3

    .line 3403
    goto :goto_3
.end method

.method static synthetic d(Lcom/mintegral/msdk/mtgnative/c/b;)I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    return v0
.end method

.method static synthetic d()Z
    .registers 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/mintegral/msdk/mtgnative/c/b;->E:Z

    return v0
.end method

.method private e()Lcom/mintegral/msdk/c/d;
    .registers 3

    .prologue
    .line 3239
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    const-string v0, ""

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    .line 3240
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    if-nez v0, :cond_19

    .line 3241
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/c/d;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    .line 3243
    :cond_19
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    return-object v0
.end method

.method static synthetic e(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .registers 2

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Y:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 3373
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Y:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Y:Ljava/util/Timer;

    .line 3376
    :cond_c
    return-void
.end method

.method static synthetic f(Lcom/mintegral/msdk/mtgnative/c/b;)Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->B:Z

    return v0
.end method

.method static synthetic g(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/click/a;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->t:Lcom/mintegral/msdk/click/a;

    return-object v0
.end method

.method static synthetic h(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/mtgnative/d/a;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->g:Lcom/mintegral/msdk/mtgnative/d/a;

    return-object v0
.end method

.method static synthetic i(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->O:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic j(Lcom/mintegral/msdk/mtgnative/c/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lcom/mintegral/msdk/mtgnative/c/b;)Z
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->af:Z

    return v0
.end method

.method static synthetic l(Lcom/mintegral/msdk/mtgnative/c/b;)Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->A:Z

    return v0
.end method

.method static synthetic m(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/mtgnative/c/b$e;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->q:Lcom/mintegral/msdk/mtgnative/c/b$e;

    return-object v0
.end method

.method static synthetic n(Lcom/mintegral/msdk/mtgnative/c/b;)I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ad:I

    return v0
.end method

.method static synthetic o(Lcom/mintegral/msdk/mtgnative/c/b;)I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ag:I

    return v0
.end method

.method static synthetic p(Lcom/mintegral/msdk/mtgnative/c/b;)I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ah:I

    return v0
.end method

.method static synthetic q(Lcom/mintegral/msdk/mtgnative/c/b;)Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->C:Z

    return v0
.end method

.method static synthetic r(Lcom/mintegral/msdk/mtgnative/c/b;)I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->w:I

    return v0
.end method

.method static synthetic s(Lcom/mintegral/msdk/mtgnative/c/b;)I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->x:I

    return v0
.end method

.method static synthetic t(Lcom/mintegral/msdk/mtgnative/c/b;)Z
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->B:Z

    return v0
.end method

.method static synthetic u(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/base/b/i;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->S:Lcom/mintegral/msdk/base/b/i;

    return-object v0
.end method

.method static synthetic v(Lcom/mintegral/msdk/mtgnative/c/b;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->L:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic w(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/base/common/f/b;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->K:Lcom/mintegral/msdk/base/common/f/b;

    return-object v0
.end method

.method static synthetic x(Lcom/mintegral/msdk/mtgnative/c/b;)V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgnative/c/b;->f()V

    return-void
.end method

.method static synthetic y(Lcom/mintegral/msdk/mtgnative/c/b;)Lcom/mintegral/msdk/c/d;
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgnative/c/b;->e()Lcom/mintegral/msdk/c/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mintegral/msdk/out/Campaign;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2592
    const/4 v1, 0x0

    .line 2593
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    if-eqz v0, :cond_bf

    .line 2594
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v2, v3

    .line 2595
    :goto_10
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_68

    .line 2597
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v5

    .line 2598
    if-eqz v5, :cond_c5

    .line 2599
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_3e

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_65

    :cond_3e
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v1, "native_info"

    .line 2600
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 2601
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Q:I

    .line 2605
    :goto_4a
    invoke-virtual {v5, p1, v0}, Lcom/mintegral/msdk/mtgnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2606
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2607
    if-nez v0, :cond_69

    .line 2595
    :goto_60
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_10

    .line 2603
    :cond_65
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->u:I

    goto :goto_4a

    :cond_68
    move-object v0, v1

    .line 2612
    :cond_69
    if-nez v0, :cond_c0

    .line 2613
    :goto_6b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_c0

    .line 2615
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v1

    .line 2616
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_97

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_bc

    :cond_97
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v2, "native_info"

    .line 2617
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 2618
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Q:I

    .line 2622
    :goto_a3
    invoke-virtual {v1, p1, v0}, Lcom/mintegral/msdk/mtgnative/a/b;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2623
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2624
    if-nez v0, :cond_c0

    .line 2613
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 2620
    :cond_bc
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->u:I

    goto :goto_a3

    :cond_bf
    move-object v0, v1

    .line 2630
    :cond_c0
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_c5
    move-object v0, v1

    goto :goto_60
.end method

.method public final a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1837
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->K:Lcom/mintegral/msdk/base/common/f/b;

    if-eqz v0, :cond_c

    .line 1838
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->K:Lcom/mintegral/msdk/base/common/f/b;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/f/b;->a()V

    .line 1839
    iput-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->K:Lcom/mintegral/msdk/base/common/f/b;

    .line 1841
    :cond_c
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->P:Ljava/util/Hashtable;

    if-eqz v0, :cond_31

    .line 1842
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->P:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iab/omid/library/mintegral/adsession/AdSession;

    .line 1843
    if-eqz v0, :cond_1a

    .line 1844
    invoke-virtual {v0}, Lcom/iab/omid/library/mintegral/adsession/AdSession;->finish()V

    goto :goto_1a

    .line 1848
    :cond_2c
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->P:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1850
    :cond_31
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->q:Lcom/mintegral/msdk/mtgnative/c/b$e;

    if-eqz v0, :cond_3a

    .line 1851
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->q:Lcom/mintegral/msdk/mtgnative/c/b$e;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/mtgnative/c/b$e;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1853
    :cond_3a
    invoke-static {}, Lcom/mintegral/msdk/base/common/net/a;->b()V

    .line 1854
    iput-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->h:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    .line 1855
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->t:Lcom/mintegral/msdk/click/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/click/a;->b()V

    .line 1857
    :try_start_44
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    if-eqz v0, :cond_51

    .line 1858
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/c/b;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/common/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/c/b;->c()V

    .line 1861
    :cond_51
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->M:Ljava/util/List;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7d

    .line 1862
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/mtgnative/c/a;

    .line 1863
    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgnative/c/a;->a()V

    goto :goto_63

    .line 1888
    :catch_73
    move-exception v0

    :cond_74
    :goto_74
    return-void

    .line 1865
    :cond_75
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->M:Ljava/util/List;

    .line 1868
    :cond_7d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->N:Ljava/util/List;

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a1

    .line 1869
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_8f

    .line 1872
    :cond_99
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->N:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->N:Ljava/util/List;

    .line 1875
    :cond_a1
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->O:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->O:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_74

    .line 1876
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->O:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1877
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 1878
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/common/f/a;

    .line 1879
    if-eqz v0, :cond_c9

    .line 1880
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/f/a;->d()V

    .line 1881
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->q:Lcom/mintegral/msdk/mtgnative/c/b$e;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgnative/c/b$e;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1884
    :cond_c9
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->O:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_ce} :catch_73

    goto :goto_74
.end method

.method public final declared-synchronized a(IJILjava/lang/String;)V
    .registers 16

    .prologue
    .line 1005
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v1, "native_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1006
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ag:I

    iget v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ah:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    .line 1008
    :cond_15
    if-nez p4, :cond_84

    .line 1009
    invoke-static {p1}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 1010
    iget-boolean v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->A:Z

    if-eqz v1, :cond_2f5

    .line 1011
    if-eqz v0, :cond_3c

    .line 1012
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1013
    const/4 v1, 0x1

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_31d
    .catchall {:try_start_1 .. :try_end_37} :catchall_332

    move-result v0

    if-eqz v0, :cond_3c

    .line 1236
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    .line 1017
    :cond_3c
    :try_start_3c
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isGetApiReulst = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->af:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isReturn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->V:Lcom/mintegral/msdk/mtgnative/c/b$a;

    if-eqz v0, :cond_6c

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->af:Z

    if-nez v0, :cond_6c

    .line 1020
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->V:Lcom/mintegral/msdk/mtgnative/c/b$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b$a;->a(Z)V

    .line 1022
    :cond_6c
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->af:Z

    if-eqz v0, :cond_80

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->B:Z

    if-nez v0, :cond_80

    .line 1023
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "222222"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const-string v0, "mtg load failed"

    invoke-virtual {p0, v0, p4, p5}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 1027
    :cond_80
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ai:Z

    if-eqz v0, :cond_3a

    .line 1042
    :cond_84
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->w:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_314

    .line 1043
    iput p1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->w:I

    .line 1048
    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v0

    .line 1049
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/f;->c()V

    .line 1051
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "START LOAD MTG MVNATIVE"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    new-instance v4, Lcom/mintegral/msdk/mtgnative/f/a/a;

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/mintegral/msdk/mtgnative/f/a/a;-><init>(Landroid/content/Context;)V

    .line 1054
    new-instance v5, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v5}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    .line 1055
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    .line 1056
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/a;->k()Ljava/lang/String;

    move-result-object v1

    .line 1058
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    if-eqz v2, :cond_4c4

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v3, "app_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c4

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v3, "app_key"

    .line 1059
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c4

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v3, "key_word"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c4

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v3, "key_word"

    .line 1060
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4c4

    .line 1061
    const/4 v3, 0x0

    .line 1062
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v6, "app_id"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_4c1

    .line 1063
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v2, "app_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1065
    :goto_ff
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v6, "app_key"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_116

    .line 1066
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v1, "app_key"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 1068
    :cond_116
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v6, "key_word"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_4be

    .line 1069
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v3, "key_word"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1071
    :goto_12c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13b

    .line 1072
    const-string v3, "smart"

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13b
    move-object v0, v1

    move-object v1, v2

    .line 1076
    :goto_13d
    const-string v2, "app_id"

    invoke-virtual {v5, v2, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v2, "unit_id"

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v2, "req_type"

    const-string v3, "2"

    invoke-virtual {v5, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->z:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15f

    .line 1080
    const-string v2, "category"

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->z:Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_15f
    const-string v2, "sign"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/CommonMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ae:I

    if-lez v0, :cond_335

    if-nez p4, :cond_335

    .line 1085
    const-string v0, "ad_num"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ae:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :goto_193
    const-string v0, "only_impression"

    const-string v1, "1"

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v0, "ping_mode"

    const-string v1, "1"

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->H:I

    if-eqz v0, :cond_1b9

    .line 1094
    const-string v0, "frame_num"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->H:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :cond_1b9
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34b

    .line 1099
    const-string v0, "native_info"

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->p:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e3

    sget-boolean v0, Lcom/mintegral/msdk/click/a;->a:Z

    if-nez v0, :cond_1e3

    .line 1102
    const-string v0, "tnum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :cond_1e3
    :goto_1e3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f5

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->R:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f5

    .line 1109
    const-string v0, "ttc_ids"

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->R:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :cond_1f5
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    const-string v1, "native"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/common/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_208

    .line 1114
    const-string v1, "display_info"

    invoke-virtual {v5, v1, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    :cond_208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2a4

    .line 1121
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v1, "native_video_width"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_244

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v1, "native_video_width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_244

    .line 1122
    const-string v1, "video_width"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v3, "native_video_width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    :cond_244
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v1, "native_video_height"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27a

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v1, "native_video_height"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_27a

    .line 1125
    const-string v1, "video_height"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v3, "native_video_height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :cond_27a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v1, "videoSupport"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29d

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v1, "videoSupport"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_29d

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v1, "videoSupport"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1129
    :cond_29d
    const-string v0, "video_version"

    const-string v1, "2.0"

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :cond_2a4
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/b;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1136
    if-nez v0, :cond_2bc

    .line 1137
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/c/b;->b()Lcom/mintegral/msdk/c/a;

    move-result-object v0

    .line 1140
    :cond_2bc
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_377

    .line 1141
    sget-object v1, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v2, "\u6ca1\u6709param \u53c2\u6570 \u8981\u4f20exclude_ids"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1143
    if-eqz v0, :cond_368

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/a;->aK()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_368

    .line 1144
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/m;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/m;

    move-result-object v0

    .line 1145
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/m;->c()[J

    move-result-object v2

    .line 1146
    if-eqz v2, :cond_368

    .line 1148
    array-length v3, v2

    const/4 v0, 0x0

    :goto_2eb
    if-ge v0, v3, :cond_368

    aget-wide v6, v2, v0

    .line 1149
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 1148
    add-int/lit8 v0, v0, 0x1

    goto :goto_2eb

    .line 1031
    :cond_2f5
    const/4 v1, 0x1

    if-eq p1, v1, :cond_84

    .line 1032
    if-eqz v0, :cond_84

    .line 1033
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/mtgnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1034
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_84

    goto/16 :goto_3a

    .line 1044
    :cond_314
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->w:I

    if-eq v0, p1, :cond_8b

    .line 1045
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->x:I
    :try_end_31b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_31b} :catch_31d
    .catchall {:try_start_3c .. :try_end_31b} :catchall_332

    goto/16 :goto_8b

    .line 1232
    :catch_31d
    move-exception v0

    .line 1233
    :try_start_31e
    sget-object v1, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    sget-object v1, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_330
    .catchall {:try_start_31e .. :try_end_330} :catchall_332

    goto/16 :goto_3a

    .line 1005
    :catchall_332
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1087
    :cond_335
    :try_start_335
    const-string v0, "ad_num"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_193

    .line 1104
    :cond_34b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e3

    sget-boolean v0, Lcom/mintegral/msdk/click/a;->a:Z

    if-nez v0, :cond_1e3

    .line 1105
    const-string v0, "tnum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e3

    .line 1153
    :cond_368
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_377

    .line 1154
    const-string v0, "exclude_ids"

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :cond_377
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1159
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->g()Ljava/util/List;

    move-result-object v0

    .line 1160
    if-eqz v0, :cond_3a3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3a3

    .line 1161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1162
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_38f

    .line 1165
    :cond_3a3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3b2

    .line 1166
    const-string v0, "install_ids"

    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/k;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    :cond_3b2
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f3

    .line 1170
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3f3

    .line 1171
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3f3

    .line 1172
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/base/entity/l;

    .line 1173
    if-eqz v0, :cond_3f3

    .line 1174
    const/4 v1, 0x1

    if-ne p1, v1, :cond_49a

    .line 1175
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/l;->b()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->x:I

    .line 1182
    :cond_3f3
    :goto_3f3
    const-string v0, "offset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string v0, "ad_type"

    const-string v1, "42"

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string v0, "ad_source_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_426

    .line 1186
    const-string v0, "session_id"

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->s:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    :cond_426
    new-instance v1, Lcom/mintegral/msdk/mtgnative/c/b$a;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgnative/c/b$a;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;)V

    .line 1191
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/c/b;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 1192
    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgnative/c/b$a;->a(Ljava/util/List;)V

    .line 1193
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    .line 7044
    iput-object v0, v1, Lcom/mintegral/msdk/base/common/net/a/a;->d:Ljava/lang/String;

    .line 1195
    const/4 v0, 0x1

    if-ne p1, v0, :cond_43f

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->A:Z

    if-eqz v0, :cond_4a5

    .line 1196
    :cond_43f
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgnative/c/b$a;->a(Z)V

    .line 1202
    :goto_443
    new-instance v2, Lcom/mintegral/msdk/mtgnative/c/b$c;

    invoke-direct {v2, p0, v1, p4, p5}, Lcom/mintegral/msdk/mtgnative/c/b$c;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/base/common/f/c;ILjava/lang/String;)V

    .line 1203
    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/mtgnative/c/b$a;->a(Ljava/lang/Runnable;)V

    .line 1204
    invoke-virtual {v1, p4}, Lcom/mintegral/msdk/mtgnative/c/b$a;->f(I)V

    .line 1205
    invoke-virtual {v1, p5}, Lcom/mintegral/msdk/mtgnative/c/b$a;->b(Ljava/lang/String;)V

    .line 1207
    const/4 v0, 0x0

    .line 1208
    if-nez p4, :cond_487

    .line 1209
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b7

    .line 1210
    const-string v0, "token"

    invoke-virtual {v5, v0, p5}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45f
    .catch Ljava/lang/Exception; {:try_start_335 .. :try_end_45f} :catch_31d
    .catchall {:try_start_335 .. :try_end_45f} :catchall_332

    .line 1212
    :try_start_45f
    const-string v0, "_"

    invoke-virtual {p5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1213
    if-eqz v0, :cond_4ac

    array-length v3, v0

    const/4 v6, 0x1

    if-le v3, v6, :cond_4ac

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "https://"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-hb.rayjump.com/load"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1214
    :goto_483
    invoke-virtual {v4, v0, v5, v1}, Lcom/mintegral/msdk/mtgnative/f/a/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_486
    .catch Ljava/lang/Exception; {:try_start_45f .. :try_end_486} :catch_4af
    .catchall {:try_start_45f .. :try_end_486} :catchall_332

    move-result-object v0

    .line 1222
    :cond_487
    :goto_487
    const/4 v3, 0x1

    if-ne p4, v3, :cond_490

    .line 1223
    :try_start_48a
    sget-object v0, Lcom/mintegral/msdk/mtgnative/b/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v1}, Lcom/mintegral/msdk/mtgnative/f/a/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    move-result-object v0

    .line 1225
    :cond_490
    invoke-virtual {v2, v0}, Lcom/mintegral/msdk/mtgnative/c/b$c;->a(Lcom/mintegral/msdk/base/common/f/a;)V

    .line 1228
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->q:Lcom/mintegral/msdk/mtgnative/c/b$e;

    invoke-virtual {v0, v2, p2, p3}, Lcom/mintegral/msdk/mtgnative/c/b$e;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3a

    .line 1176
    :cond_49a
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3f3

    .line 1177
    invoke-virtual {v0}, Lcom/mintegral/msdk/base/entity/l;->a()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->x:I

    goto/16 :goto_3f3

    .line 1198
    :cond_4a5
    iput-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->V:Lcom/mintegral/msdk/mtgnative/c/b$a;

    .line 1199
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgnative/c/b$a;->a(Z)V
    :try_end_4ab
    .catch Ljava/lang/Exception; {:try_start_48a .. :try_end_4ab} :catch_31d
    .catchall {:try_start_48a .. :try_end_4ab} :catchall_332

    goto :goto_443

    .line 1213
    :cond_4ac
    :try_start_4ac
    sget-object v0, Lcom/mintegral/msdk/mtgnative/b/a;->b:Ljava/lang/String;
    :try_end_4ae
    .catch Ljava/lang/Exception; {:try_start_4ac .. :try_end_4ae} :catch_4af
    .catchall {:try_start_4ac .. :try_end_4ae} :catchall_332

    goto :goto_483

    .line 1216
    :catch_4af
    move-exception v0

    :try_start_4b0
    sget-object v0, Lcom/mintegral/msdk/mtgnative/b/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v1}, Lcom/mintegral/msdk/mtgnative/f/a/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;

    move-result-object v0

    goto :goto_487

    .line 1219
    :cond_4b7
    sget-object v0, Lcom/mintegral/msdk/mtgnative/b/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v0, v5, v1}, Lcom/mintegral/msdk/mtgnative/f/a/a;->a(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_4bc
    .catch Ljava/lang/Exception; {:try_start_4b0 .. :try_end_4bc} :catch_31d
    .catchall {:try_start_4b0 .. :try_end_4bc} :catchall_332

    move-result-object v0

    goto :goto_487

    :cond_4be
    move-object v0, v3

    goto/16 :goto_12c

    :cond_4c1
    move-object v2, v0

    goto/16 :goto_ff

    :cond_4c4
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_13d
.end method

.method public final a(ILjava/lang/String;)V
    .registers 12

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 435
    iput-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->B:Z

    .line 436
    iput-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->C:Z

    .line 437
    iput-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->D:Z

    .line 438
    iput-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->af:Z

    .line 439
    iput-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->A:Z

    .line 440
    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    .line 441
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_fe

    .line 442
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->g:Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-virtual {v0, v8}, Lcom/mintegral/msdk/mtgnative/d/a;->a(Z)V

    .line 446
    :goto_1b
    iput-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->V:Lcom/mintegral/msdk/mtgnative/c/b$a;

    .line 448
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->c:Ljava/util/Map;

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 449
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 453
    :cond_2e
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_327

    .line 454
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_327

    .line 455
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4465
    :goto_50
    if-eqz v0, :cond_5a

    if-ne p1, v8, :cond_5a

    .line 4466
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 4472
    :cond_5a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v3, "app_id"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_324

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v3, "app_key"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_324

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v3, "key_word"

    .line 4473
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_324

    .line 4474
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v1, "app_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4475
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v3, "app_key"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5428
    :goto_8c
    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->f:Lcom/mintegral/msdk/c/c;

    iget-object v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->i:Landroid/content/Context;

    iget-object v5, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/mintegral/msdk/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4479
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    .line 4481
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    if-nez v0, :cond_105

    .line 4482
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/c/d;->b(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    .line 4495
    :cond_ac
    :goto_ac
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->A()I

    move-result v0

    iget v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    mul-int/2addr v0, v1

    .line 4496
    invoke-static {}, Lcom/mintegral/msdk/mtgnative/c/c;->e()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4497
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->w()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    .line 4498
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->x()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->b:Ljava/util/List;

    .line 4500
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->t()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ae:I

    .line 4501
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->u()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ad:I

    .line 4502
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->u:I

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    .line 4504
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_143

    .line 4505
    :cond_f2
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->g:Lcom/mintegral/msdk/mtgnative/d/a;

    .line 4506
    if-eqz v0, :cond_fd

    .line 4507
    iput-boolean v8, p0, Lcom/mintegral/msdk/mtgnative/c/b;->B:Z

    .line 4508
    const-string v1, "don\'t have sorceList"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeAdListener;->onAdLoadError(Ljava/lang/String;)V

    .line 4510
    :cond_fd
    :goto_fd
    return-void

    .line 444
    :cond_fe
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->g:Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/mtgnative/d/a;->a(Z)V

    goto/16 :goto_1b

    .line 4484
    :cond_105
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_119

    .line 4485
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->m:Ljava/lang/String;

    .line 4487
    :cond_119
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12d

    .line 4488
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->n:Ljava/lang/String;

    .line 4490
    :cond_12d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 4491
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->o:Ljava/lang/String;

    goto/16 :goto_ac

    .line 4512
    :cond_143
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v1, "native_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    .line 4513
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->p:Ljava/lang/String;

    if-nez v0, :cond_161

    .line 4514
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v1, "native_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->p:Ljava/lang/String;

    .line 5760
    :try_start_15d
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->p:Ljava/lang/String;
    :try_end_15f
    .catch Lorg/json/JSONException; {:try_start_15d .. :try_end_15f} :catch_2b2

    if-nez v0, :cond_257

    .line 4520
    :cond_161
    :goto_161
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_189

    :cond_17b
    if-nez p1, :cond_189

    .line 4522
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4523
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 4527
    :cond_189
    iput-boolean v8, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ai:Z

    .line 4528
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_209

    if-nez p1, :cond_209

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    .line 4529
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v8, :cond_209

    .line 4530
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4531
    invoke-static {v1}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 4533
    if-ne v1, v6, :cond_2d0

    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->d:Ljava/util/Map;

    const-string v4, "native_info"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d0

    .line 4534
    iget v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Q:I

    iput v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    .line 4538
    :goto_1c7
    if-eqz v0, :cond_1e1

    .line 4539
    iget-object v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    iget v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    invoke-virtual {v0, v3, v4}, Lcom/mintegral/msdk/mtgnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4540
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 4544
    :cond_1e1
    iput-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->A:Z

    .line 4545
    iput-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ai:Z

    .line 4548
    :try_start_1e5
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    .line 4549
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    iget-object v7, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/mintegral/msdk/mtgnative/c/b;->a(JIZLjava/lang/String;Ljava/lang/String;)V
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_209} :catch_321

    .line 4555
    :cond_209
    :goto_209
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->q:Lcom/mintegral/msdk/mtgnative/c/b$e;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ab:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/d;->q()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v8, v2, v3}, Lcom/mintegral/msdk/mtgnative/c/b$e;->sendEmptyMessageDelayed(IJ)Z

    .line 5860
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    if-eqz v0, :cond_2d6

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d6

    .line 5861
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->k:Ljava/util/Queue;

    if-eqz v0, :cond_23b

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_23b

    .line 5862
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "setRequestQueue clear requestqueue"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5863
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 5865
    :cond_23b
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_241
    :goto_241
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5866
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->k:Ljava/util/Queue;

    if-eqz v2, :cond_241

    .line 5867
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->k:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_241

    .line 5763
    :cond_257
    :try_start_257
    new-instance v3, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->p:Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 5764
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2be

    move v1, v2

    .line 5765
    :goto_265
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_2be

    .line 5766
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 5767
    const-string v4, "id"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 5768
    if-ne v6, v4, :cond_296

    .line 5769
    const-string v4, "ad_num"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ag:I

    .line 5770
    iget v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ae:I

    if-lez v4, :cond_292

    .line 5771
    const-string v4, "ad_num"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 5772
    const-string v4, "ad_num"

    iget v5, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ae:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5765
    :cond_292
    :goto_292
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_265

    .line 5774
    :cond_296
    const/4 v5, 0x3

    if-ne v5, v4, :cond_292

    .line 5775
    const-string v4, "ad_num"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ah:I

    .line 5776
    iget v4, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ae:I

    if-lez v4, :cond_292

    .line 5777
    const-string v4, "ad_num"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 5778
    const-string v4, "ad_num"

    iget v5, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ae:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2b1
    .catch Lorg/json/JSONException; {:try_start_257 .. :try_end_2b1} :catch_2b2

    goto :goto_292

    .line 5785
    :catch_2b2
    move-exception v0

    .line 5787
    sget-object v1, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_161

    .line 5783
    :cond_2be
    :try_start_2be
    iget v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ag:I

    iget v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->ah:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Q:I

    .line 5784
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->p:Ljava/lang/String;
    :try_end_2ce
    .catch Lorg/json/JSONException; {:try_start_2be .. :try_end_2ce} :catch_2b2

    goto/16 :goto_161

    .line 4536
    :cond_2d0
    iget v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->u:I

    iput v3, p0, Lcom/mintegral/msdk/mtgnative/c/b;->v:I

    goto/16 :goto_1c7

    .line 5871
    :cond_2d6
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->b:Ljava/util/List;

    if-eqz v0, :cond_31a

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_31a

    .line 5872
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->l:Ljava/util/Queue;

    if-eqz v0, :cond_2f3

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_2f3

    .line 5873
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 5875
    :cond_2f3
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f9
    :goto_2f9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5876
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->l:Ljava/util/Queue;

    if-eqz v2, :cond_2f9

    .line 5877
    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->l:Ljava/util/Queue;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2f9

    .line 4560
    :cond_31a
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->b(ILjava/lang/String;)V

    goto/16 :goto_fd

    :catch_321
    move-exception v0

    goto/16 :goto_209

    :cond_324
    move-object v0, v1

    goto/16 :goto_8c

    :cond_327
    move v0, v2

    goto/16 :goto_50
.end method

.method public final a(Lcom/mintegral/msdk/out/Campaign;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1431
    :try_start_0
    invoke-virtual {p1}, Lcom/mintegral/msdk/out/Campaign;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5f

    .line 1508
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->h:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_12

    .line 1509
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->t:Lcom/mintegral/msdk/click/a;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->h:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 1511
    :cond_12
    invoke-virtual {p1}, Lcom/mintegral/msdk/out/Campaign;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 1512
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/mintegral/msdk/mtgnative/a/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 1513
    check-cast p1, Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 1538
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    const-string v1, "native"

    invoke-static {v0, p1, v1}, Lcom/mintegral/msdk/base/common/a/c;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 1540
    if-eqz p1, :cond_5f

    .line 1542
    new-instance v0, Lcom/mintegral/msdk/mtgnative/c/b$8;

    invoke-direct {v0, p0, p1}, Lcom/mintegral/msdk/mtgnative/c/b$8;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/base/entity/CampaignEx;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_66

    .line 1553
    :try_start_31
    const-string v1, "com.mintegral.msdk.nativex.view.MTGMediaView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1554
    invoke-direct {p0, p2, v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/Class;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3a} :catch_60
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_66

    .line 1560
    :goto_3a
    :try_start_3a
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isReport()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1562
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1572
    invoke-direct {p0, p1, p2, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/view/View;Ljava/util/List;)V

    .line 1584
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendImpression"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    :cond_5f
    :goto_5f
    return-void

    .line 1556
    :catch_60
    move-exception v1

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/Class;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_65} :catch_66

    goto :goto_3a

    .line 1591
    :catch_66
    move-exception v0

    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "registerview exception!"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f
.end method

.method public final a(Lcom/mintegral/msdk/out/Campaign;Landroid/view/View;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/out/Campaign;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1240
    :try_start_0
    invoke-virtual {p1}, Lcom/mintegral/msdk/out/Campaign;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3e

    .line 1313
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->h:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    if-eqz v0, :cond_12

    .line 1314
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->t:Lcom/mintegral/msdk/click/a;

    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->h:Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 1316
    :cond_12
    invoke-virtual {p1}, Lcom/mintegral/msdk/out/Campaign;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/mintegral/msdk/mtgnative/a/f;->a(I)Lcom/mintegral/msdk/mtgnative/a/b;

    move-result-object v0

    .line 1317
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/mintegral/msdk/mtgnative/a/b;->a(Ljava/lang/String;Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V

    .line 1318
    check-cast p1, Lcom/mintegral/msdk/base/entity/CampaignEx;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_7a

    .line 1343
    const/4 v0, 0x0

    .line 1345
    :try_start_24
    const-string v1, "com.mintegral.msdk.nativex.view.MTGMediaView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_29} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_7a

    move-result-object v0

    move-object v1, v0

    .line 1350
    :goto_2b
    :try_start_2b
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->j:Ljava/lang/String;

    const-string v2, "native"

    invoke-static {v0, p1, v2}, Lcom/mintegral/msdk/base/common/a/c;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V

    .line 1351
    if-eqz p1, :cond_3e

    .line 1352
    if-eqz p2, :cond_51

    .line 1353
    if-eqz v1, :cond_49

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1413
    :cond_3e
    :goto_3e
    return-void

    .line 1347
    :catch_3f
    move-exception v1

    const-string v1, ""

    const-string v2, "MTGMediaView can\'t found"

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_2b

    .line 1356
    :cond_49
    new-instance v0, Lcom/mintegral/msdk/mtgnative/c/b$1;

    invoke-direct {v0, p0, p1}, Lcom/mintegral/msdk/mtgnative/c/b$1;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1365
    :cond_51
    if-eqz p3, :cond_83

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_83

    .line 1366
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1367
    if-eqz v1, :cond_71

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 1370
    :cond_71
    new-instance v3, Lcom/mintegral/msdk/mtgnative/c/b$7;

    invoke-direct {v3, p0, p1}, Lcom/mintegral/msdk/mtgnative/c/b$7;-><init>(Lcom/mintegral/msdk/mtgnative/c/b;Lcom/mintegral/msdk/base/entity/CampaignEx;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_79} :catch_7a

    goto :goto_5d

    .line 1411
    :catch_7a
    move-exception v0

    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "registerview exception!"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 1382
    :cond_83
    :try_start_83
    invoke-virtual {p1}, Lcom/mintegral/msdk/base/entity/CampaignEx;->isReport()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1392
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/view/View;Ljava/util/List;)V

    .line 1404
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendImpression"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_a0} :catch_7a

    goto :goto_3e
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .prologue
    .line 970
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request error msg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->k:Ljava/util/Queue;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_24

    :cond_20
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->k:Ljava/util/Queue;

    if-nez v0, :cond_4b

    .line 990
    :cond_24
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->g:Lcom/mintegral/msdk/mtgnative/d/a;

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->B:Z

    if-nez v0, :cond_4a

    .line 991
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->B:Z

    .line 992
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/b;->g:Lcom/mintegral/msdk/mtgnative/d/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgnative/d/a;->onAdLoadError(Ljava/lang/String;)V

    .line 993
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestError return listener isReturn = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mintegral/msdk/mtgnative/c/b;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :cond_4a
    :goto_4a
    return-void

    .line 997
    :cond_4b
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/b;->e:Ljava/lang/String;

    const-string v1, "request queue in request error"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-direct {p0, p2, p3}, Lcom/mintegral/msdk/mtgnative/c/b;->b(ILjava/lang/String;)V

    goto :goto_4a
.end method

.method public final b(Lcom/mintegral/msdk/out/Campaign;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 1763
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mintegral/msdk/mtgnative/c/b;->b(Lcom/mintegral/msdk/out/Campaign;Landroid/view/View;Ljava/util/List;)V

    .line 1764
    return-void
.end method

.method public final b(Lcom/mintegral/msdk/out/Campaign;Landroid/view/View;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mintegral/msdk/out/Campaign;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1767
    if-eqz p1, :cond_9

    .line 1768
    invoke-virtual {p1}, Lcom/mintegral/msdk/out/Campaign;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 1806
    :cond_9
    :goto_9
    return-void

    .line 1789
    :pswitch_a
    const/4 v0, 0x0

    .line 1791
    :try_start_b
    const-string v1, "com.mintegral.msdk.nativex.view.MTGMediaView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_2e

    move-result-object v0

    move-object v1, v0

    .line 1794
    :goto_12
    if-eqz p3, :cond_31

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_31

    .line 1795
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1796
    invoke-direct {p0, v0, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Landroid/view/View;Ljava/lang/Class;)V

    goto :goto_1e

    :catch_2e
    move-exception v1

    move-object v1, v0

    goto :goto_12

    .line 1799
    :cond_31
    if-eqz p2, :cond_9

    .line 1800
    invoke-direct {p0, p2, v1}, Lcom/mintegral/msdk/mtgnative/c/b;->a(Landroid/view/View;Ljava/lang/Class;)V

    goto :goto_9

    .line 1768
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
