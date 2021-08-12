.class public abstract Lcom/anythink/core/common/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/core/common/f$b;,
        Lcom/anythink/core/common/f$a;
    }
.end annotation


# instance fields
.field protected A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected B:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f$b;",
            ">;"
        }
    .end annotation
.end field

.field D:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/api/ATBaseAdAdapter;",
            ">;"
        }
    .end annotation
.end field

.field E:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field F:D

.field G:Z

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/lang/Runnable;

.field private final a:Ljava/lang/String;

.field protected b:Landroid/content/Context;

.field protected c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field f:Z

.field protected g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Lcom/anythink/core/c/c;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Z

.field s:Ljava/lang/String;

.field t:Lcom/anythink/core/api/AdError;

.field u:J

.field v:I

.field w:I

.field x:I

.field y:Ljava/lang/Object;

.field protected z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/anythink/core/common/f;->d:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/anythink/core/common/f;->f:Z

    .line 63
    iput-boolean v1, p0, Lcom/anythink/core/common/f;->g:Z

    .line 64
    iput-boolean v1, p0, Lcom/anythink/core/common/f;->h:Z

    .line 65
    iput-boolean v1, p0, Lcom/anythink/core/common/f;->i:Z

    .line 67
    iput-boolean v1, p0, Lcom/anythink/core/common/f;->j:Z

    .line 93
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/anythink/core/common/f;->y:Ljava/lang/Object;

    .line 104
    new-instance v2, Lcom/anythink/core/common/f$1;

    invoke-direct {v2, p0}, Lcom/anythink/core/common/f$1;-><init>(Lcom/anythink/core/common/f;)V

    iput-object v2, p0, Lcom/anythink/core/common/f;->I:Ljava/lang/Runnable;

    .line 1171
    iput-boolean v1, p0, Lcom/anythink/core/common/f;->G:Z

    .line 150
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/anythink/core/common/f;->c:Ljava/lang/ref/WeakReference;

    .line 151
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f;->b:Landroid/content/Context;

    .line 153
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f;->k:Ljava/util/List;

    .line 154
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f;->l:Ljava/util/List;

    .line 156
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f;->m:Ljava/util/List;

    .line 157
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f;->n:Ljava/util/List;

    .line 159
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/f;->z:Ljava/util/HashMap;

    .line 161
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/f;->A:Ljava/util/HashMap;

    .line 162
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/f;->B:Ljava/util/HashMap;

    .line 164
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/f;->C:Ljava/util/Map;

    .line 166
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/core/common/f;->D:Ljava/util/concurrent/ConcurrentHashMap;

    .line 168
    const-string p1, "4001"

    invoke-static {p1, v0, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/f;->t:Lcom/anythink/core/api/AdError;

    .line 170
    return-void
.end method

.method private a(Lcom/anythink/core/c/c$b;JZ)Ljava/lang/Runnable;
    .registers 7

    .line 1047
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_8

    .line 1048
    const/4 p1, 0x0

    return-object p1

    .line 1051
    :cond_8
    new-instance v0, Lcom/anythink/core/common/f$6;

    invoke-direct {v0, p0, p1, p4}, Lcom/anythink/core/common/f$6;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/c/c$b;Z)V

    .line 1086
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1, v0, p2, p3}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;J)V

    .line 1087
    return-object v0
.end method

.method private declared-synchronized a(ILjava/util/List;Ljava/util/List;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 224
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/core/common/f;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-eqz v0, :cond_7

    .line 225
    monitor-exit p0

    return-void

    .line 228
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v7, Lcom/anythink/core/common/f$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/anythink/core/common/f$3;-><init>(Lcom/anythink/core/common/f;Ljava/util/List;ILjava/util/List;Z)V

    invoke-virtual {v0, v7}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    .line 277
    monitor-exit p0

    return-void

    .line 223
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(J)V
    .registers 5

    .line 1106
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;J)V

    .line 1107
    return-void
.end method

.method private a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/c/c$b;Ljava/util/Map;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/api/ATBaseAdAdapter;",
            "Lcom/anythink/core/c/c$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 691
    iget v0, p2, Lcom/anythink/core/c/c$b;->b:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_25

    .line 692
    iget-object v0, p0, Lcom/anythink/core/common/f;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v3}, Lcom/anythink/core/c/c;->y()I

    move-result v3

    if-eqz p4, :cond_16

    iget p4, p0, Lcom/anythink/core/common/f;->w:I

    goto :goto_18

    :cond_16
    iget p4, p0, Lcom/anythink/core/common/f;->v:I

    :goto_18
    invoke-static {v0, v1, v2, v3, p4}, Lcom/anythink/core/common/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object p4

    .line 693
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "tp_info"

    invoke-interface {p3, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    :cond_25
    new-instance p4, Lcom/anythink/core/common/f$4;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/anythink/core/common/f$4;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V

    .line 735
    iget-object p1, p0, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->y()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "2"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->y()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "4"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4f

    goto :goto_57

    .line 738
    :cond_4f
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/anythink/core/common/g/a/a;->b(Ljava/lang/Runnable;)V

    .line 742
    return-void

    .line 736
    :cond_57
    :goto_57
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/anythink/core/c/c$b;)V
    .registers 3

    monitor-enter p0

    .line 327
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/f;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/anythink/core/common/f;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 329
    monitor-exit p0

    return-void

    .line 326
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 12

    monitor-enter p0

    .line 932
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/f;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 934
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/c/c$b;)V

    .line 936
    iget-object v1, p1, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 937
    iget-object v1, p0, Lcom/anythink/core/common/f;->D:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    :cond_15
    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_af

    .line 942
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    new-instance v3, Lcom/anythink/core/common/f$5;

    invoke-direct {v3, p0, p2}, Lcom/anythink/core/common/f$5;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    invoke-virtual {v2, v3}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 951
    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v2

    .line 952
    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v3

    .line 954
    invoke-direct {p0, v3}, Lcom/anythink/core/common/f;->a(Ljava/lang/String;)Z

    move-result v4
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_de

    if-eqz v4, :cond_35

    .line 955
    monitor-exit p0

    return-void

    .line 959
    :cond_35
    :try_start_35
    iget-object v4, p0, Lcom/anythink/core/common/f;->t:Lcom/anythink/core/api/AdError;

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/anythink/core/common/d/d;->y()I

    move-result v6

    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, p3}, Lcom/anythink/core/api/AdError;->putNetworkErrorMsg(Ljava/lang/String;ILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 961
    invoke-static {}, Lcom/anythink/core/common/b;->a()Lcom/anythink/core/common/b;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 10051
    iget-object v4, v4, Lcom/anythink/core/common/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    iget-object v4, p0, Lcom/anythink/core/common/f;->z:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 965
    nop

    .line 967
    iget-object v6, p0, Lcom/anythink/core/common/f;->A:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Runnable;

    .line 968
    if-eqz v6, :cond_7c

    .line 969
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/anythink/core/common/b/g;->c(Ljava/lang/Runnable;)V

    .line 970
    iget-object v6, p0, Lcom/anythink/core/common/f;->A:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    move v6, v1

    goto :goto_7d

    .line 968
    :cond_7c
    move v6, p1

    .line 974
    :goto_7d
    iget-object v7, p0, Lcom/anythink/core/common/f;->B:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Runnable;

    .line 975
    if-eqz v7, :cond_94

    .line 976
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/anythink/core/common/b/g;->c(Ljava/lang/Runnable;)V

    .line 977
    iget-object v6, p0, Lcom/anythink/core/common/f;->B:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    move v6, v1

    .line 982
    :cond_94
    if-eqz v6, :cond_99

    .line 983
    nop

    .line 10414
    iput v1, v2, Lcom/anythink/core/common/d/d;->n:I

    .line 986
    :cond_99
    invoke-direct {p0, v3, v2, v1}, Lcom/anythink/core/common/f;->a(Ljava/lang/String;Lcom/anythink/core/common/d/d;Z)V

    .line 988
    sget-object v3, Lcom/anythink/core/common/b/e$e;->b:Ljava/lang/String;

    sget-object v6, Lcom/anythink/core/common/b/e$e;->g:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/anythink/core/api/AdError;->printStackTrace()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v6, v7}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v2, p1, p3, v6, v7}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;ILcom/anythink/core/api/AdError;J)V

    .line 995
    :cond_af
    if-eqz p2, :cond_ca

    invoke-virtual {p2}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/core/common/d/d;->p()Z

    move-result p2

    if-eqz p2, :cond_ca

    .line 996
    invoke-direct {p0}, Lcom/anythink/core/common/f;->g()Z

    move-result p1

    if-eqz p1, :cond_dc

    iget-boolean p1, p0, Lcom/anythink/core/common/f;->g:Z

    if-nez p1, :cond_dc

    .line 997
    invoke-direct {p0}, Lcom/anythink/core/common/f;->f()V
    :try_end_c8
    .catchall {:try_start_35 .. :try_end_c8} :catchall_de

    monitor-exit p0

    return-void

    .line 1001
    :cond_ca
    if-eqz v0, :cond_d5

    .line 1002
    :try_start_cc
    iget-object p1, p0, Lcom/anythink/core/common/f;->m:Ljava/util/List;

    iget-object p2, p0, Lcom/anythink/core/common/f;->n:Ljava/util/List;

    invoke-direct {p0, v1, p1, p2, v1}, Lcom/anythink/core/common/f;->a(ILjava/util/List;Ljava/util/List;Z)V
    :try_end_d3
    .catchall {:try_start_cc .. :try_end_d3} :catchall_de

    monitor-exit p0

    return-void

    .line 1004
    :cond_d5
    :try_start_d5
    iget-object p2, p0, Lcom/anythink/core/common/f;->k:Ljava/util/List;

    iget-object p3, p0, Lcom/anythink/core/common/f;->l:Ljava/util/List;

    invoke-direct {p0, v1, p2, p3, p1}, Lcom/anythink/core/common/f;->a(ILjava/util/List;Ljava/util/List;Z)V
    :try_end_dc
    .catchall {:try_start_d5 .. :try_end_dc} :catchall_de

    .line 1007
    :cond_dc
    monitor-exit p0

    return-void

    .line 931
    :catchall_de
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/anythink/core/c/c$b;ZZZ)V
    .registers 32

    .line 567
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    iget-object v0, v1, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startAdSourceRequest: NetworkFirmId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "---content:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v2, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "----Default:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-----fromHBPool:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_41
    iget v0, v2, Lcom/anythink/core/c/c$b;->n:I

    if-ne v0, v8, :cond_8d

    .line 571
    iget-object v0, v1, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    const-string v9, "hb request send win notice url, remove cache"

    invoke-static {v0, v9}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v0

    iget-object v9, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v10, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v0, v9, v10}, Lcom/anythink/core/b/e;->b(Ljava/lang/String;I)Lcom/anythink/core/common/d/l;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_7c

    .line 574
    nop

    .line 3038
    iget-boolean v9, v0, Lcom/anythink/core/common/d/l;->g:Z

    if-nez v9, :cond_73

    .line 3041
    iput-boolean v8, v0, Lcom/anythink/core/common/d/l;->g:Z

    .line 3042
    iget-object v9, v0, Lcom/anythink/core/common/d/l;->winNoticeUrl:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_73

    .line 3043
    new-instance v9, Lcom/anythink/core/common/e/e;

    iget-object v10, v0, Lcom/anythink/core/common/d/l;->winNoticeUrl:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/anythink/core/common/e/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5, v7}, Lcom/anythink/core/common/e/e;->a(ILcom/anythink/core/common/e/g;)V

    .line 576
    :cond_73
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v9

    iget-object v10, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v9, v10, v0}, Lcom/anythink/core/b/e;->a(Ljava/lang/String;Lcom/anythink/core/common/d/l;)V

    .line 579
    :cond_7c
    iget v0, v2, Lcom/anythink/core/c/c$b;->b:I

    const/16 v9, 0x42

    if-eq v0, v9, :cond_8d

    .line 580
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v0

    iget-object v9, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v10, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v0, v9, v10}, Lcom/anythink/core/b/e;->a(Ljava/lang/String;I)V
    :try_end_8d
    .catchall {:try_start_41 .. :try_end_8d} :catchall_8e

    .line 587
    :cond_8d
    goto :goto_8f

    .line 585
    :catchall_8e
    move-exception v0

    .line 590
    :goto_8f
    if-eqz v4, :cond_97

    .line 591
    iget v0, v1, Lcom/anythink/core/common/f;->w:I

    add-int/2addr v0, v8

    iput v0, v1, Lcom/anythink/core/common/f;->w:I

    goto :goto_9c

    .line 593
    :cond_97
    iget v0, v1, Lcom/anythink/core/common/f;->v:I

    add-int/2addr v0, v8

    iput v0, v1, Lcom/anythink/core/common/f;->v:I

    .line 596
    :goto_9c
    iget-object v9, v1, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    iget-object v10, v1, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    iget-object v11, v1, Lcom/anythink/core/common/f;->d:Ljava/lang/String;

    iget-object v12, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    if-eqz v4, :cond_b6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b8

    :cond_b6
    iget-object v0, v1, Lcom/anythink/core/common/f;->s:Ljava/lang/String;

    :goto_b8
    move-object v13, v0

    iget-object v0, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->B()I

    move-result v14

    iget-boolean v15, v1, Lcom/anythink/core/common/f;->r:Z

    invoke-static/range {v9 .. v15}, Lcom/anythink/core/common/g/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/common/d/d;

    move-result-object v9

    .line 598
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v10, v1, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    invoke-virtual {v0, v10, v2}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Lcom/anythink/core/common/d/ab;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_d6

    invoke-virtual {v0}, Lcom/anythink/core/common/d/ab;->a()Lcom/anythink/core/common/d/b;

    move-result-object v0

    goto :goto_d7

    :cond_d6
    move-object v0, v7

    .line 600
    :goto_d7
    if-eqz v0, :cond_116

    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->a()Z

    move-result v10

    if-eqz v10, :cond_116

    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->i()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 601
    nop

    .line 3765
    invoke-direct/range {p0 .. p1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/c/c$b;)V

    .line 3766
    iget-object v0, v1, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCacheAdLoaded: NetworkFirmId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3767
    iget v0, v1, Lcom/anythink/core/common/f;->x:I

    add-int/2addr v0, v8

    iput v0, v1, Lcom/anythink/core/common/f;->x:I

    .line 3768
    iget-boolean v0, v1, Lcom/anythink/core/common/f;->g:Z

    if-nez v0, :cond_115

    .line 3769
    invoke-direct {v1, v8}, Lcom/anythink/core/common/f;->b(Z)V

    .line 602
    :cond_115
    return-void

    .line 605
    :cond_116
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/common/g/i;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v6

    .line 606
    const-string v10, ""

    if-nez v6, :cond_18b

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/anythink/core/c/c$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " does not exist!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "2002"

    invoke-static {v3, v10, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 608
    iget-object v3, v1, Lcom/anythink/core/common/f;->t:Lcom/anythink/core/api/AdError;

    iget-object v6, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v9, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v3, v6, v9, v10, v0}, Lcom/anythink/core/api/AdError;->putNetworkErrorMsg(Ljava/lang/String;ILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 609
    invoke-direct {v1, v2, v7, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/AdError;)V

    .line 612
    :try_start_145
    iget-object v11, v1, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    iget-object v12, v1, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    iget-object v3, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    .line 614
    invoke-virtual {v3}, Lcom/anythink/core/c/c;->F()I

    move-result v13

    .line 615
    iget-boolean v3, v1, Lcom/anythink/core/common/f;->r:Z

    if-eqz v3, :cond_155

    move v14, v5

    goto :goto_156

    :cond_155
    move v14, v8

    :goto_156
    iget v15, v2, Lcom/anythink/core/c/c$b;->b:I

    iget-object v3, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget-object v5, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    .line 618
    invoke-virtual {v5}, Lcom/anythink/core/c/c;->y()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 619
    if-eqz v4, :cond_16a

    iget v4, v1, Lcom/anythink/core/common/f;->w:I

    sub-int/2addr v4, v8

    goto :goto_16d

    :cond_16a
    iget v4, v1, Lcom/anythink/core/common/f;->v:I

    sub-int/2addr v4, v8

    :goto_16d
    move/from16 v18, v4

    const/16 v19, 0x0

    iget v4, v2, Lcom/anythink/core/c/c$b;->n:I

    iget-wide v5, v2, Lcom/anythink/core/c/c$b;->m:D

    const-wide/16 v24, 0x0

    iget-object v2, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    .line 625
    invoke-virtual {v2}, Lcom/anythink/core/c/c;->p()I

    move-result v26

    .line 612
    move-object/from16 v16, v3

    move-object/from16 v20, v0

    move/from16 v21, v4

    move-wide/from16 v22, v5

    invoke-static/range {v11 .. v26}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILcom/anythink/core/api/AdError;IDJI)V
    :try_end_188
    .catchall {:try_start_145 .. :try_end_188} :catchall_189

    .line 628
    return-void

    .line 626
    :catchall_189
    move-exception v0

    .line 630
    return-void

    .line 634
    :cond_18b
    :try_start_18b
    iget v0, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v6}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/anythink/core/common/g/d;->a(ILjava/lang/String;)V
    :try_end_194
    .catchall {:try_start_18b .. :try_end_194} :catchall_195

    .line 637
    goto :goto_196

    .line 635
    :catchall_195
    move-exception v0

    .line 640
    :goto_196
    if-eqz v4, :cond_19b

    iget v0, v1, Lcom/anythink/core/common/f;->w:I

    goto :goto_19d

    :cond_19b
    iget v0, v1, Lcom/anythink/core/common/f;->v:I

    :goto_19d
    sub-int/2addr v0, v8

    invoke-static {v6, v9, v2, v0}, Lcom/anythink/core/common/g/n;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/d/d;Lcom/anythink/core/c/c$b;I)Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 641
    invoke-virtual {v0, v3}, Lcom/anythink/core/common/d/d;->a(Z)V

    .line 643
    if-eqz p4, :cond_1ab

    .line 644
    nop

    .line 4405
    const/4 v7, 0x5

    iput v7, v0, Lcom/anythink/core/common/d/d;->m:I

    .line 647
    :cond_1ab
    iget-object v7, v1, Lcom/anythink/core/common/f;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v7

    invoke-virtual {v7, v8, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 649
    sget-object v7, Lcom/anythink/core/common/b/e$e;->a:Ljava/lang/String;

    sget-object v8, Lcom/anythink/core/common/b/e$e;->h:Ljava/lang/String;

    invoke-static {v0, v7, v8, v10}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    if-nez v3, :cond_1de

    .line 655
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/c/c$b;->b()J

    move-result-wide v7

    invoke-direct {v1, v2, v7, v8, v4}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/c/c$b;JZ)Ljava/lang/Runnable;

    move-result-object v3

    .line 656
    if-eqz v3, :cond_1ce

    .line 657
    iget-object v7, v1, Lcom/anythink/core/common/f;->A:Ljava/util/HashMap;

    iget-object v8, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    :cond_1ce
    nop

    .line 5032
    iget-wide v7, v2, Lcom/anythink/core/c/c$b;->w:J

    .line 660
    invoke-direct {v1, v2, v7, v8, v4}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/c/c$b;JZ)Ljava/lang/Runnable;

    move-result-object v3

    .line 661
    if-eqz v3, :cond_1de

    .line 662
    iget-object v7, v1, Lcom/anythink/core/common/f;->B:Ljava/util/HashMap;

    iget-object v8, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_1de
    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0, v5}, Lcom/anythink/core/common/f;->a(Ljava/lang/String;Lcom/anythink/core/common/d/d;Z)V

    .line 668
    iget-object v0, v1, Lcom/anythink/core/common/f;->z:Ljava/util/HashMap;

    iget-object v3, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    iget-object v0, v1, Lcom/anythink/core/common/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_206

    .line 672
    const-string v0, "4002"

    invoke-static {v0, v10, v10}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/AdError;)V

    .line 673
    return-void

    .line 676
    :cond_206
    iget-object v0, v1, Lcom/anythink/core/common/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_21b

    .line 677
    iget-object v0, v1, Lcom/anythink/core/common/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v6, v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->refreshActivityContext(Landroid/app/Activity;)V

    .line 680
    :cond_21b
    iget-object v0, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    iget-object v3, v1, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    iget-object v5, v1, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v3, v5, v2}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)Ljava/util/Map;

    move-result-object v0

    .line 5691
    iget v3, v2, Lcom/anythink/core/c/c$b;->b:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_24a

    .line 5692
    iget-object v3, v1, Lcom/anythink/core/common/f;->b:Landroid/content/Context;

    iget-object v5, v1, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    iget-object v7, v1, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    iget-object v8, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v8}, Lcom/anythink/core/c/c;->y()I

    move-result v8

    if-eqz v4, :cond_23b

    iget v4, v1, Lcom/anythink/core/common/f;->w:I

    goto :goto_23d

    :cond_23b
    iget v4, v1, Lcom/anythink/core/common/f;->v:I

    :goto_23d
    invoke-static {v3, v5, v7, v8, v4}, Lcom/anythink/core/common/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v3

    .line 5693
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tp_info"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5696
    :cond_24a
    new-instance v3, Lcom/anythink/core/common/f$4;

    invoke-direct {v3, v1, v6, v2, v0}, Lcom/anythink/core/common/f$4;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V

    .line 5735
    iget-object v0, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27c

    iget-object v0, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "4"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_274

    goto :goto_27c

    .line 5738
    :cond_274
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/g/a/a;->b(Ljava/lang/Runnable;)V

    .line 681
    return-void

    .line 5736
    :cond_27c
    :goto_27c
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/f;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/anythink/core/common/f;->f()V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/f;Lcom/anythink/core/c/c$b;ZZZ)V
    .registers 32

    .line 54
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    .line 10567
    iget-object v0, v1, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startAdSourceRequest: NetworkFirmId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "---content:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v2, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "----Default:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-----fromHBPool:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10570
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_41
    iget v0, v2, Lcom/anythink/core/c/c$b;->n:I

    if-ne v0, v8, :cond_8d

    .line 10571
    iget-object v0, v1, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    const-string v9, "hb request send win notice url, remove cache"

    invoke-static {v0, v9}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10572
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v0

    iget-object v9, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v10, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v0, v9, v10}, Lcom/anythink/core/b/e;->b(Ljava/lang/String;I)Lcom/anythink/core/common/d/l;

    move-result-object v0

    .line 10573
    if-eqz v0, :cond_7c

    .line 10574
    nop

    .line 11038
    iget-boolean v9, v0, Lcom/anythink/core/common/d/l;->g:Z

    if-nez v9, :cond_73

    .line 11041
    iput-boolean v8, v0, Lcom/anythink/core/common/d/l;->g:Z

    .line 11042
    iget-object v9, v0, Lcom/anythink/core/common/d/l;->winNoticeUrl:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_73

    .line 11043
    new-instance v9, Lcom/anythink/core/common/e/e;

    iget-object v10, v0, Lcom/anythink/core/common/d/l;->winNoticeUrl:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/anythink/core/common/e/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5, v7}, Lcom/anythink/core/common/e/e;->a(ILcom/anythink/core/common/e/g;)V

    .line 10576
    :cond_73
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v9

    iget-object v10, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v9, v10, v0}, Lcom/anythink/core/b/e;->a(Ljava/lang/String;Lcom/anythink/core/common/d/l;)V

    .line 10579
    :cond_7c
    iget v0, v2, Lcom/anythink/core/c/c$b;->b:I

    const/16 v9, 0x42

    if-eq v0, v9, :cond_8d

    .line 10580
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object v0

    iget-object v9, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v10, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v0, v9, v10}, Lcom/anythink/core/b/e;->a(Ljava/lang/String;I)V
    :try_end_8d
    .catchall {:try_start_41 .. :try_end_8d} :catchall_8e

    .line 10587
    :cond_8d
    goto :goto_8f

    .line 10585
    :catchall_8e
    move-exception v0

    .line 10590
    :goto_8f
    if-eqz v4, :cond_97

    .line 10591
    iget v0, v1, Lcom/anythink/core/common/f;->w:I

    add-int/2addr v0, v8

    iput v0, v1, Lcom/anythink/core/common/f;->w:I

    goto :goto_9c

    .line 10593
    :cond_97
    iget v0, v1, Lcom/anythink/core/common/f;->v:I

    add-int/2addr v0, v8

    iput v0, v1, Lcom/anythink/core/common/f;->v:I

    .line 10596
    :goto_9c
    iget-object v9, v1, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    iget-object v10, v1, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    iget-object v11, v1, Lcom/anythink/core/common/f;->d:Ljava/lang/String;

    iget-object v12, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    if-eqz v4, :cond_b6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b8

    :cond_b6
    iget-object v0, v1, Lcom/anythink/core/common/f;->s:Ljava/lang/String;

    :goto_b8
    move-object v13, v0

    iget-object v0, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->B()I

    move-result v14

    iget-boolean v15, v1, Lcom/anythink/core/common/f;->r:Z

    invoke-static/range {v9 .. v15}, Lcom/anythink/core/common/g/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/common/d/d;

    move-result-object v9

    .line 10598
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v0

    iget-object v10, v1, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    invoke-virtual {v0, v10, v2}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Lcom/anythink/core/common/d/ab;

    move-result-object v0

    .line 10599
    if-eqz v0, :cond_d6

    invoke-virtual {v0}, Lcom/anythink/core/common/d/ab;->a()Lcom/anythink/core/common/d/b;

    move-result-object v0

    goto :goto_d7

    :cond_d6
    move-object v0, v7

    .line 10600
    :goto_d7
    if-eqz v0, :cond_116

    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->a()Z

    move-result v10

    if-eqz v10, :cond_116

    invoke-virtual {v0}, Lcom/anythink/core/common/d/b;->i()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 10601
    nop

    .line 11765
    invoke-direct/range {p0 .. p1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/c/c$b;)V

    .line 11766
    iget-object v0, v1, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onCacheAdLoaded: NetworkFirmId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11767
    iget v0, v1, Lcom/anythink/core/common/f;->x:I

    add-int/2addr v0, v8

    iput v0, v1, Lcom/anythink/core/common/f;->x:I

    .line 11768
    iget-boolean v0, v1, Lcom/anythink/core/common/f;->g:Z

    if-nez v0, :cond_115

    .line 11769
    invoke-direct {v1, v8}, Lcom/anythink/core/common/f;->b(Z)V

    .line 10602
    :cond_115
    return-void

    .line 10605
    :cond_116
    invoke-static/range {p1 .. p1}, Lcom/anythink/core/common/g/i;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v6

    .line 10606
    const-string v10, ""

    if-nez v6, :cond_18b

    .line 10607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/anythink/core/c/c$b;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " does not exist!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "2002"

    invoke-static {v3, v10, v0}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    .line 10608
    iget-object v3, v1, Lcom/anythink/core/common/f;->t:Lcom/anythink/core/api/AdError;

    iget-object v6, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget v9, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v3, v6, v9, v10, v0}, Lcom/anythink/core/api/AdError;->putNetworkErrorMsg(Ljava/lang/String;ILjava/lang/String;Lcom/anythink/core/api/AdError;)V

    .line 10609
    invoke-direct {v1, v2, v7, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/AdError;)V

    .line 10612
    :try_start_145
    iget-object v11, v1, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    iget-object v12, v1, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    iget-object v3, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    .line 10614
    invoke-virtual {v3}, Lcom/anythink/core/c/c;->F()I

    move-result v13

    .line 10615
    iget-boolean v3, v1, Lcom/anythink/core/common/f;->r:Z

    if-eqz v3, :cond_155

    move v14, v5

    goto :goto_156

    :cond_155
    move v14, v8

    :goto_156
    iget v15, v2, Lcom/anythink/core/c/c$b;->b:I

    iget-object v3, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    iget-object v5, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    .line 10618
    invoke-virtual {v5}, Lcom/anythink/core/c/c;->y()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    .line 10619
    if-eqz v4, :cond_16a

    iget v4, v1, Lcom/anythink/core/common/f;->w:I

    sub-int/2addr v4, v8

    goto :goto_16d

    :cond_16a
    iget v4, v1, Lcom/anythink/core/common/f;->v:I

    sub-int/2addr v4, v8

    :goto_16d
    move/from16 v18, v4

    const/16 v19, 0x0

    iget v4, v2, Lcom/anythink/core/c/c$b;->n:I

    iget-wide v5, v2, Lcom/anythink/core/c/c$b;->m:D

    const-wide/16 v24, 0x0

    iget-object v1, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    .line 10625
    invoke-virtual {v1}, Lcom/anythink/core/c/c;->p()I

    move-result v26

    .line 10612
    move-object/from16 v16, v3

    move-object/from16 v20, v0

    move/from16 v21, v4

    move-wide/from16 v22, v5

    invoke-static/range {v11 .. v26}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IILcom/anythink/core/api/AdError;IDJI)V
    :try_end_188
    .catchall {:try_start_145 .. :try_end_188} :catchall_189

    .line 10628
    return-void

    .line 10626
    :catchall_189
    move-exception v0

    .line 10630
    return-void

    .line 10634
    :cond_18b
    :try_start_18b
    iget v0, v2, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v6}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/anythink/core/common/g/d;->a(ILjava/lang/String;)V
    :try_end_194
    .catchall {:try_start_18b .. :try_end_194} :catchall_195

    .line 10637
    goto :goto_196

    .line 10635
    :catchall_195
    move-exception v0

    .line 10640
    :goto_196
    if-eqz v4, :cond_19b

    iget v0, v1, Lcom/anythink/core/common/f;->w:I

    goto :goto_19d

    :cond_19b
    iget v0, v1, Lcom/anythink/core/common/f;->v:I

    :goto_19d
    sub-int/2addr v0, v8

    invoke-static {v6, v9, v2, v0}, Lcom/anythink/core/common/g/n;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/common/d/d;Lcom/anythink/core/c/c$b;I)Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 10641
    invoke-virtual {v0, v3}, Lcom/anythink/core/common/d/d;->a(Z)V

    .line 10643
    if-eqz p4, :cond_1ab

    .line 10644
    nop

    .line 12405
    const/4 v7, 0x5

    iput v7, v0, Lcom/anythink/core/common/d/d;->m:I

    .line 10647
    :cond_1ab
    iget-object v7, v1, Lcom/anythink/core/common/f;->b:Landroid/content/Context;

    invoke-static {v7}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v7

    invoke-virtual {v7, v8, v0}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 10649
    sget-object v7, Lcom/anythink/core/common/b/e$e;->a:Ljava/lang/String;

    sget-object v8, Lcom/anythink/core/common/b/e$e;->h:Ljava/lang/String;

    invoke-static {v0, v7, v8, v10}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10654
    if-nez v3, :cond_1de

    .line 10655
    invoke-virtual/range {p1 .. p1}, Lcom/anythink/core/c/c$b;->b()J

    move-result-wide v7

    invoke-direct {v1, v2, v7, v8, v4}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/c/c$b;JZ)Ljava/lang/Runnable;

    move-result-object v3

    .line 10656
    if-eqz v3, :cond_1ce

    .line 10657
    iget-object v7, v1, Lcom/anythink/core/common/f;->A:Ljava/util/HashMap;

    iget-object v8, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10660
    :cond_1ce
    nop

    .line 13032
    iget-wide v7, v2, Lcom/anythink/core/c/c$b;->w:J

    .line 10660
    invoke-direct {v1, v2, v7, v8, v4}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/c/c$b;JZ)Ljava/lang/Runnable;

    move-result-object v3

    .line 10661
    if-eqz v3, :cond_1de

    .line 10662
    iget-object v7, v1, Lcom/anythink/core/common/f;->B:Ljava/util/HashMap;

    iget-object v8, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10666
    :cond_1de
    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0, v5}, Lcom/anythink/core/common/f;->a(Ljava/lang/String;Lcom/anythink/core/common/d/d;Z)V

    .line 10668
    iget-object v0, v1, Lcom/anythink/core/common/f;->z:Ljava/util/HashMap;

    iget-object v3, v2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10671
    iget-object v0, v1, Lcom/anythink/core/common/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_206

    .line 10672
    const-string v0, "4002"

    invoke-static {v0, v10, v10}, Lcom/anythink/core/api/ErrorCode;->getErrorCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/api/AdError;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/AdError;)V

    .line 10673
    return-void

    .line 10676
    :cond_206
    iget-object v0, v1, Lcom/anythink/core/common/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_21b

    .line 10677
    iget-object v0, v1, Lcom/anythink/core/common/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v6, v0}, Lcom/anythink/core/api/ATBaseAdAdapter;->refreshActivityContext(Landroid/app/Activity;)V

    .line 10680
    :cond_21b
    iget-object v0, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    iget-object v3, v1, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    iget-object v5, v1, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v3, v5, v2}, Lcom/anythink/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c$b;)Ljava/util/Map;

    move-result-object v0

    .line 13691
    iget v3, v2, Lcom/anythink/core/c/c$b;->b:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_24a

    .line 13692
    iget-object v3, v1, Lcom/anythink/core/common/f;->b:Landroid/content/Context;

    iget-object v5, v1, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    iget-object v7, v1, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    iget-object v8, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v8}, Lcom/anythink/core/c/c;->y()I

    move-result v8

    if-eqz v4, :cond_23b

    iget v4, v1, Lcom/anythink/core/common/f;->w:I

    goto :goto_23d

    :cond_23b
    iget v4, v1, Lcom/anythink/core/common/f;->v:I

    :goto_23d
    invoke-static {v3, v5, v7, v8, v4}, Lcom/anythink/core/common/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object v3

    .line 13693
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tp_info"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13696
    :cond_24a
    new-instance v3, Lcom/anythink/core/common/f$4;

    invoke-direct {v3, v1, v6, v2, v0}, Lcom/anythink/core/common/f$4;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/c/c$b;Ljava/util/Map;)V

    .line 13735
    iget-object v0, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27c

    iget-object v0, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_274

    goto :goto_27c

    .line 13738
    :cond_274
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/g/a/a;->b(Ljava/lang/Runnable;)V

    .line 54
    return-void

    .line 13736
    :cond_27c
    :goto_27c
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/f;Ljava/util/List;Ljava/util/List;Z)V
    .registers 5

    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/anythink/core/common/f;->a(ILjava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/anythink/core/common/d/d;Z)V
    .registers 5

    .line 1247
    iget-object v0, p0, Lcom/anythink/core/common/f;->C:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/common/f$b;

    .line 1248
    if-nez v0, :cond_15

    .line 1249
    new-instance v0, Lcom/anythink/core/common/f$b;

    invoke-direct {v0, p0, p2, p3}, Lcom/anythink/core/common/f$b;-><init>(Lcom/anythink/core/common/f;Lcom/anythink/core/common/d/d;Z)V

    .line 1250
    iget-object p2, p0, Lcom/anythink/core/common/f;->C:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1252
    :cond_15
    iput-object p2, v0, Lcom/anythink/core/common/f$b;->a:Lcom/anythink/core/common/d/d;

    .line 1253
    iput-boolean p3, v0, Lcom/anythink/core/common/f$b;->b:Z

    .line 1255
    return-void
.end method

.method private declared-synchronized a(Ljava/util/List;Lcom/anythink/core/c/c$b;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;",
            "Lcom/anythink/core/c/c$b;",
            "Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 286
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5d

    .line 287
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    const/4 p1, 0x1

    if-eqz p3, :cond_35

    .line 291
    iget-object p2, p0, Lcom/anythink/core/common/f;->n:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_2c

    iget-object p2, p0, Lcom/anythink/core/common/f;->A:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/anythink/core/common/f;->n:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/core/c/c$b;

    iget-object p3, p3, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5b

    .line 292
    :cond_2c
    iget-object p2, p0, Lcom/anythink/core/common/f;->m:Ljava/util/List;

    iget-object p3, p0, Lcom/anythink/core/common/f;->n:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3, p1}, Lcom/anythink/core/common/f;->a(ILjava/util/List;Ljava/util/List;Z)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_67

    monitor-exit p0

    return-void

    .line 295
    :cond_35
    :try_start_35
    iget-object p2, p0, Lcom/anythink/core/common/f;->l:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_54

    iget-object p2, p0, Lcom/anythink/core/common/f;->A:Ljava/util/HashMap;

    iget-object p3, p0, Lcom/anythink/core/common/f;->l:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/anythink/core/c/c$b;

    iget-object p3, p3, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5b

    .line 296
    :cond_54
    iget-object p2, p0, Lcom/anythink/core/common/f;->k:Ljava/util/List;

    iget-object p3, p0, Lcom/anythink/core/common/f;->l:Ljava/util/List;

    invoke-direct {p0, p1, p2, p3, p1}, Lcom/anythink/core/common/f;->a(ILjava/util/List;Ljava/util/List;Z)V
    :try_end_5b
    .catchall {:try_start_35 .. :try_end_5b} :catchall_67

    .line 299
    :cond_5b
    monitor-exit p0

    return-void

    .line 302
    :cond_5d
    :try_start_5d
    monitor-enter p1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_67

    .line 303
    :try_start_5e
    invoke-static {p1, p2}, Lcom/anythink/core/common/g/g;->a(Ljava/util/List;Lcom/anythink/core/c/c$b;)V

    .line 316
    monitor-exit p1
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_64

    monitor-exit p0

    return-void

    :catchall_64
    move-exception p2

    :try_start_65
    monitor-exit p1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw p2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    .line 285
    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static a(Lorg/json/JSONArray;Lcom/anythink/core/c/c$b;DI)V
    .registers 9

    .line 500
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 501
    const-string v1, "unit_id"

    iget-object v2, p1, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    const-string v1, "nw_firm_id"

    iget v2, p1, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 503
    const-string v1, "bidprice"

    iget-wide v2, p1, Lcom/anythink/core/c/c$b;->m:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 504
    const-string p1, "ctype"

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 505
    const-string p1, "result"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 507
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 512
    return-void

    .line 508
    :catch_28
    move-exception p0

    .line 514
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    .line 1230
    iget-object v0, p0, Lcom/anythink/core/common/f;->C:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1231
    iget-object v0, p0, Lcom/anythink/core/common/f;->C:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/common/f$b;

    .line 1232
    if-eqz p1, :cond_18

    iget-boolean p1, p1, Lcom/anythink/core/common/f$b;->b:Z

    if-eqz p1, :cond_18

    .line 1233
    const/4 p1, 0x1

    return p1

    .line 1236
    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/String;)Lcom/anythink/core/c/c$b;
    .registers 3

    .line 1262
    iget-object v0, p0, Lcom/anythink/core/common/f;->E:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_b

    .line 1263
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/core/c/c$b;

    return-object p1

    .line 1265
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lcom/anythink/core/common/f;)Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/anythink/core/c/c$b;)V
    .registers 4

    .line 491
    iget-object v0, p0, Lcom/anythink/core/common/f;->E:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_b

    .line 492
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/common/f;->E:Ljava/util/concurrent/ConcurrentHashMap;

    .line 495
    :cond_b
    iget-object v0, p0, Lcom/anythink/core/common/f;->E:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->G()Lcom/anythink/core/common/d/z;

    move-result-object v0

    .line 179
    if-nez v0, :cond_9

    .line 180
    return-void

    .line 183
    :cond_9
    iget v1, v0, Lcom/anythink/core/common/d/z;->c:I

    .line 184
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/anythink/core/c/c$b;

    .line 185
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/c$b;

    .line 186
    iget v5, v3, Lcom/anythink/core/c/c$b;->b:I

    if-ne v5, v1, :cond_26

    .line 187
    aput-object v3, v2, v4

    .line 188
    goto :goto_27

    .line 190
    :cond_26
    goto :goto_12

    .line 192
    :cond_27
    :goto_27
    aget-object p1, v2, v4

    if-nez p1, :cond_2c

    .line 193
    return-void

    .line 196
    :cond_2c
    iget-object p1, p0, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "addDefaultAdSourceToRequestingPool: Default UnitGroupInfo:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v2, v4

    iget v3, v3, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "--content:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v2, v4

    iget-object v3, v3, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "addDefaultAdSourceToRequestingPool delay:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/anythink/core/common/d/z;->b:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    new-instance v1, Lcom/anythink/core/common/f$2;

    invoke-direct {v1, p0, v2}, Lcom/anythink/core/common/f$2;-><init>(Lcom/anythink/core/common/f;[Lcom/anythink/core/c/c$b;)V

    iget-wide v2, v0, Lcom/anythink/core/common/d/z;->b:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;J)V

    .line 213
    return-void
.end method

.method private b(Z)V
    .registers 12

    .line 883
    iget-object v0, p0, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onLoadedCallbackToDeveloper: isCache:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/f;->g:Z

    .line 885
    iput-boolean v0, p0, Lcom/anythink/core/common/f;->j:Z

    .line 887
    iget-object v1, p0, Lcom/anythink/core/common/f;->I:Ljava/lang/Runnable;

    if-eqz v1, :cond_21

    .line 889
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/f;->I:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/b/g;->c(Ljava/lang/Runnable;)V

    .line 892
    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/anythink/core/common/f;->u:J

    sub-long/2addr v1, v3

    .line 893
    iget-object v3, p0, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/core/common/f;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    iget-object v7, p0, Lcom/anythink/core/common/f;->s:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/anythink/core/c/c;->B()I

    move-result v8

    iget-boolean v9, p0, Lcom/anythink/core/common/f;->r:Z

    invoke-static/range {v3 .. v9}, Lcom/anythink/core/common/g/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/common/d/d;

    move-result-object v3

    .line 894
    invoke-virtual {v3, v0}, Lcom/anythink/core/common/d/d;->b(Z)V

    .line 895
    invoke-virtual {v3, v1, v2}, Lcom/anythink/core/common/d/d;->d(J)V

    .line 896
    if-eqz p1, :cond_48

    .line 897
    const/4 p1, 0x5

    invoke-virtual {v3, p1}, Lcom/anythink/core/common/d/d;->q(I)V

    .line 901
    :cond_48
    iget-object p1, p0, Lcom/anythink/core/common/f;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v3}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 903
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;)Lcom/anythink/core/common/d;

    move-result-object p1

    .line 904
    if-eqz p1, :cond_68

    .line 905
    iget-object v0, p0, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/c/c;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/anythink/core/common/d;->a(Ljava/lang/String;)V

    .line 909
    :cond_68
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/core/common/f;->H:Ljava/util/List;

    iget-object v3, p0, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    iget-object v5, p0, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/core/common/f;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/anythink/core/common/f;->s:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/anythink/core/common/f;->r:Z

    invoke-virtual/range {v1 .. v8}, Lcom/anythink/core/common/a;->a(Ljava/util/List;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 914
    iget-boolean p1, p0, Lcom/anythink/core/common/f;->G:Z

    if-nez p1, :cond_84

    .line 915
    invoke-virtual {p0}, Lcom/anythink/core/common/f;->a()V

    .line 918
    :cond_84
    invoke-virtual {p0}, Lcom/anythink/core/common/f;->b()V

    .line 920
    invoke-direct {p0}, Lcom/anythink/core/common/f;->h()V

    .line 921
    return-void
.end method

.method private c(Lcom/anythink/core/c/c$b;)V
    .registers 5

    .line 765
    invoke-direct {p0, p1}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/c/c$b;)V

    .line 766
    iget-object v0, p0, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCacheAdLoaded: NetworkFirmId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    iget p1, p0, Lcom/anythink/core/common/f;->x:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/anythink/core/common/f;->x:I

    .line 768
    iget-boolean p1, p0, Lcom/anythink/core/common/f;->g:Z

    if-nez p1, :cond_32

    .line 769
    invoke-direct {p0, v0}, Lcom/anythink/core/common/f;->b(Z)V

    .line 771
    :cond_32
    return-void
.end method

.method static synthetic c(Lcom/anythink/core/common/f;)Z
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/anythink/core/common/f;->g()Z

    move-result p0

    return p0
.end method

.method private f()V
    .registers 10

    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/f;->g:Z

    .line 1018
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/f;->j:Z

    .line 1020
    iget-object v0, p0, Lcom/anythink/core/common/f;->I:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 1022
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->c(Ljava/lang/Runnable;)V

    .line 1025
    :cond_13
    iget-object v2, p0, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/anythink/core/common/f;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    iget-object v6, p0, Lcom/anythink/core/common/f;->s:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/anythink/core/c/c;->B()I

    move-result v7

    iget-boolean v8, p0, Lcom/anythink/core/common/f;->r:Z

    invoke-static/range {v2 .. v8}, Lcom/anythink/core/common/g/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;IZ)Lcom/anythink/core/common/d/d;

    move-result-object v0

    .line 1026
    iget-object v1, p0, Lcom/anythink/core/common/f;->t:Lcom/anythink/core/api/AdError;

    invoke-static {v0, v1}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;Lcom/anythink/core/api/AdError;)V

    .line 1028
    iget-boolean v0, p0, Lcom/anythink/core/common/f;->G:Z

    if-nez v0, :cond_35

    .line 1029
    iget-object v0, p0, Lcom/anythink/core/common/f;->t:Lcom/anythink/core/api/AdError;

    invoke-virtual {p0, v0}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/api/AdError;)V

    .line 1033
    :cond_35
    invoke-virtual {p0}, Lcom/anythink/core/common/f;->b()V

    .line 1035
    invoke-direct {p0}, Lcom/anythink/core/common/f;->h()V

    .line 1036
    return-void
.end method

.method private declared-synchronized g()Z
    .registers 4

    monitor-enter p0

    .line 1091
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasFinishAllRequest:isFinishBidding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/anythink/core/common/f;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasFinishAllRequest:requestWaitingPool: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/common/f;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasFinishAllRequest:requestingPool: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/common/f;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasFinishAllRequest:hbRequestWaitingPool: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/common/f;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasFinishAllRequest:hbRequestingPool: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/core/common/f;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-boolean v0, p0, Lcom/anythink/core/common/f;->f:Z

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lcom/anythink/core/common/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/anythink/core/common/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/anythink/core/common/f;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/anythink/core/common/f;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_a1
    .catchall {:try_start_1 .. :try_end_a1} :catchall_a8

    if-nez v0, :cond_a6

    const/4 v0, 0x1

    :goto_a4
    monitor-exit p0

    return v0

    :cond_a6
    const/4 v0, 0x0

    goto :goto_a4

    .line 1090
    :catchall_a8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()V
    .registers 3

    .line 1147
    iget-boolean v0, p0, Lcom/anythink/core/common/f;->f:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/anythink/core/common/f;->g:Z

    if-eqz v0, :cond_21

    .line 1148
    iget-boolean v0, p0, Lcom/anythink/core/common/f;->j:Z

    if-eqz v0, :cond_10

    iget-boolean v1, p0, Lcom/anythink/core/common/f;->i:Z

    if-nez v1, :cond_12

    :cond_10
    if-nez v0, :cond_21

    .line 1149
    :cond_12
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;)Lcom/anythink/core/common/d;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/d;->b(Ljava/lang/String;)V

    .line 1152
    :cond_21
    return-void
.end method

.method private i()V
    .registers 2

    .line 1174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/f;->G:Z

    .line 1175
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(D)V
    .registers 5

    .line 1124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/f;->i:Z

    .line 1125
    iget-wide v0, p0, Lcom/anythink/core/common/f;->F:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_b

    .line 1126
    iput-wide p1, p0, Lcom/anythink/core/common/f;->F:D

    .line 1128
    :cond_b
    invoke-direct {p0}, Lcom/anythink/core/common/f;->h()V

    .line 1129
    return-void
.end method

.method public abstract a(Lcom/anythink/core/api/ATBaseAdAdapter;)V
.end method

.method protected a(Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/AdError;)V
    .registers 4

    .line 1010
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/api/ATBaseAdAdapter;Lcom/anythink/core/api/AdError;)V

    .line 1011
    return-void
.end method

.method public declared-synchronized a(Lcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/api/ATBaseAdAdapter;",
            "Ljava/util/List<",
            "+",
            "Lcom/anythink/core/api/BaseAd;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 782
    if-eqz p1, :cond_c

    :try_start_3
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_c
    const-string v0, ""

    .line 784
    :goto_e
    invoke-direct {p0, v0}, Lcom/anythink/core/common/f;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_148

    if-eqz v1, :cond_16

    .line 785
    monitor-exit p0

    return-void

    .line 788
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/anythink/core/common/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAdLoaded: NetworkFirmId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v3

    iget v3, v3, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---content:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v3

    iget-object v3, v3, Lcom/anythink/core/c/c$b;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object v1

    .line 791
    iget-object v2, p0, Lcom/anythink/core/common/f;->z:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 792
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/anythink/core/common/d/d;->d(J)V

    .line 795
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getNetworkPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/d/d;->c(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/anythink/core/common/f;->a(Lcom/anythink/core/c/c$b;)V

    .line 808
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v2

    .line 6032
    iget-wide v2, v2, Lcom/anythink/core/c/c$b;->w:J

    .line 808
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7f

    .line 809
    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->A()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7f

    .line 810
    invoke-static {v1}, Lcom/anythink/core/common/f/c;->a(Lcom/anythink/core/common/d/d;)V

    .line 815
    :cond_7f
    nop

    .line 817
    iget-object v2, p0, Lcom/anythink/core/common/f;->A:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 818
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_9a

    .line 819
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/anythink/core/common/b/g;->c(Ljava/lang/Runnable;)V

    .line 820
    iget-object v2, p0, Lcom/anythink/core/common/f;->A:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    move v2, v4

    goto :goto_9b

    .line 818
    :cond_9a
    move v2, v3

    .line 823
    :goto_9b
    iget-object v5, p0, Lcom/anythink/core/common/f;->B:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 824
    if-eqz v5, :cond_b2

    .line 825
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/anythink/core/common/b/g;->c(Ljava/lang/Runnable;)V

    .line 826
    iget-object v2, p0, Lcom/anythink/core/common/f;->B:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    move v2, v4

    .line 830
    :cond_b2
    if-eqz v2, :cond_b7

    .line 831
    nop

    .line 6414
    iput v4, v1, Lcom/anythink/core/common/d/d;->n:I

    .line 834
    :cond_b7
    invoke-direct {p0, v0, v1, v4}, Lcom/anythink/core/common/f;->a(Ljava/lang/String;Lcom/anythink/core/common/d/d;Z)V

    .line 836
    iget-wide v5, p0, Lcom/anythink/core/common/f;->F:D

    const-wide/16 v7, 0x0

    cmpl-double v2, v5, v7

    const/4 v7, 0x2

    if-lez v2, :cond_d5

    .line 838
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v2

    iget-wide v8, v2, Lcom/anythink/core/c/c$b;->m:D

    cmpg-double v2, v5, v8

    if-gez v2, :cond_d1

    .line 839
    nop

    .line 6423
    iput v7, v1, Lcom/anythink/core/common/d/d;->o:I

    .line 839
    goto :goto_d8

    .line 841
    :cond_d1
    nop

    .line 7423
    iput v4, v1, Lcom/anythink/core/common/d/d;->o:I

    .line 841
    goto :goto_d8

    .line 844
    :cond_d5
    nop

    .line 8423
    iput v3, v1, Lcom/anythink/core/common/d/d;->o:I

    .line 847
    :goto_d8
    iget-object v2, p0, Lcom/anythink/core/common/f;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/common/f/a;->a(Landroid/content/Context;)Lcom/anythink/core/common/f/a;

    move-result-object v2

    invoke-virtual {v2, v7, v1}, Lcom/anythink/core/common/f/a;->a(ILcom/anythink/core/common/d/aa;)V

    .line 848
    sget-object v2, Lcom/anythink/core/common/b/e$e;->b:Ljava/lang/String;

    sget-object v5, Lcom/anythink/core/common/b/e$e;->f:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v1, v2, v5, v6}, Lcom/anythink/core/common/g/g;->a(Lcom/anythink/core/common/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/c/c$b;->a()J

    move-result-wide v10

    .line 856
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v5

    iget-object v6, p0, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/anythink/core/common/d/d;->q()I

    move-result v7

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v5 .. v11}, Lcom/anythink/core/common/a;->a(Ljava/lang/String;ILcom/anythink/core/api/ATBaseAdAdapter;Ljava/util/List;J)Lcom/anythink/core/common/d/ab;

    .line 859
    iget-boolean p2, p0, Lcom/anythink/core/common/f;->G:Z

    if-nez p2, :cond_133

    iget-boolean p2, p0, Lcom/anythink/core/common/f;->i:Z

    if-nez p2, :cond_133

    .line 860
    invoke-static {}, Lcom/anythink/core/common/o;->a()Lcom/anythink/core/common/o;

    move-result-object p2

    iget-object v1, p0, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/anythink/core/common/o;->a(Ljava/lang/String;)Lcom/anythink/core/common/d;

    move-result-object v6

    .line 861
    if-eqz v6, :cond_133

    iget-object p2, p0, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {p2}, Lcom/anythink/core/c/c;->u()I

    move-result p2

    if-lez p2, :cond_133

    .line 862
    iget-object v10, p0, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object p2

    iget-wide v8, p2, Lcom/anythink/core/c/c$b;->m:D

    .line 9034
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p2

    new-instance v1, Lcom/anythink/core/common/d$5;

    move-object v5, v1

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/anythink/core/common/d$5;-><init>(Lcom/anythink/core/common/d;Lcom/anythink/core/api/ATBaseAdAdapter;DLjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 868
    :cond_133
    iget p1, p0, Lcom/anythink/core/common/f;->x:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/anythink/core/common/f;->x:I

    .line 870
    if-eqz v0, :cond_13f

    .line 871
    iget-object p1, p0, Lcom/anythink/core/common/f;->D:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    :cond_13f
    iget-boolean p1, p0, Lcom/anythink/core/common/f;->g:Z

    if-nez p1, :cond_146

    .line 875
    invoke-direct {p0, v3}, Lcom/anythink/core/common/f;->b(Z)V
    :try_end_146
    .catchall {:try_start_16 .. :try_end_146} :catchall_148

    .line 877
    :cond_146
    monitor-exit p0

    return-void

    .line 781
    :catchall_148
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract a(Lcom/anythink/core/api/AdError;)V
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_b

    .line 1159
    iput-object v1, p0, Lcom/anythink/core/common/f;->d:Ljava/lang/String;

    goto :goto_d

    .line 1161
    :cond_b
    iput-object p1, p0, Lcom/anythink/core/common/f;->d:Ljava/lang/String;

    .line 1164
    :goto_d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 1165
    iput-object v1, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    return-void

    .line 1167
    :cond_16
    iput-object p2, p0, Lcom/anythink/core/common/f;->e:Ljava/lang/String;

    .line 1169
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c;",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;Z)V"
        }
    .end annotation

    .line 531
    iput-boolean p5, p0, Lcom/anythink/core/common/f;->f:Z

    .line 532
    iget-object p5, p0, Lcom/anythink/core/common/f;->k:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 533
    iput-object p2, p0, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    .line 534
    iput-object p1, p0, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    .line 535
    iput-object p3, p0, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    .line 536
    const-string p1, ""

    iput-object p1, p0, Lcom/anythink/core/common/f;->s:Ljava/lang/String;

    .line 538
    iput-object p4, p0, Lcom/anythink/core/common/f;->H:Ljava/util/List;

    .line 540
    const/4 p1, 0x0

    move p2, p1

    :goto_15
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p5

    if-ge p2, p5, :cond_61

    .line 541
    if-lez p2, :cond_34

    .line 542
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/anythink/core/common/f;->s:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, ","

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/anythink/core/common/f;->s:Ljava/lang/String;

    .line 544
    :cond_34
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    iget v0, v0, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/anythink/core/common/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/anythink/core/common/f;->s:Ljava/lang/String;

    .line 540
    add-int/lit8 p2, p2, 0x1

    goto :goto_15

    .line 548
    :cond_61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/anythink/core/common/f;->u:J

    .line 551
    iget-object p2, p0, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {p2}, Lcom/anythink/core/c/c;->s()J

    move-result-wide v0

    .line 2106
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p2

    iget-object p5, p0, Lcom/anythink/core/common/f;->I:Ljava/lang/Runnable;

    invoke-virtual {p2, p5, v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;J)V

    .line 553
    invoke-virtual {p3}, Lcom/anythink/core/c/c;->B()I

    move-result p2

    iget-object p3, p0, Lcom/anythink/core/common/f;->k:Ljava/util/List;

    iget-object p5, p0, Lcom/anythink/core/common/f;->l:Ljava/util/List;

    invoke-direct {p0, p2, p3, p5, p1}, Lcom/anythink/core/common/f;->a(ILjava/util/List;Ljava/util/List;Z)V

    .line 555
    invoke-direct {p0, p4}, Lcom/anythink/core/common/f;->b(Ljava/util/List;)V

    .line 556
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;)V"
        }
    .end annotation

    .line 338
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/anythink/core/common/f;->y:Ljava/lang/Object;

    monitor-enter v2

    .line 339
    :try_start_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 340
    monitor-exit v2

    return-void

    .line 344
    :cond_d
    const-wide/16 v3, 0x0

    .line 345
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 347
    nop

    .line 348
    iget-object v5, v1, Lcom/anythink/core/common/f;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v5, :cond_2d

    .line 349
    iget-object v5, v1, Lcom/anythink/core/common/f;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/anythink/core/c/c$b;

    goto :goto_2e

    .line 348
    :cond_2d
    move-object v5, v6

    .line 352
    :goto_2e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 353
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 356
    iget-boolean v10, v1, Lcom/anythink/core/common/f;->g:Z

    const/4 v11, 0x2

    if-eqz v10, :cond_bb

    .line 357
    nop

    .line 360
    iget-boolean v5, v1, Lcom/anythink/core/common/f;->j:Z

    if-eqz v5, :cond_56

    .line 361
    nop

    .line 362
    invoke-static {}, Lcom/anythink/core/common/a;->a()Lcom/anythink/core/common/a;

    move-result-object v5

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v6

    invoke-virtual {v6}, Lcom/anythink/core/common/b/g;->c()Landroid/content/Context;

    move-result-object v6

    iget-object v14, v1, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    invoke-virtual {v5, v6, v14}, Lcom/anythink/core/common/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/anythink/core/common/d/b;

    move-result-object v6

    goto :goto_57

    .line 364
    :cond_56
    const/4 v11, 0x3

    .line 367
    :goto_57
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/c$b;

    .line 369
    invoke-direct {v1, v3}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/c/c$b;)V

    .line 371
    iget-wide v14, v3, Lcom/anythink/core/c/c$b;->s:J

    .line 372
    nop

    .line 377
    iget-boolean v4, v1, Lcom/anythink/core/common/f;->j:Z

    if-eqz v4, :cond_a3

    .line 378
    if-eqz v6, :cond_98

    .line 379
    invoke-virtual {v6}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v4

    move/from16 v16, v11

    iget-wide v10, v4, Lcom/anythink/core/c/c$b;->m:D

    .line 380
    iget-wide v12, v3, Lcom/anythink/core/c/c$b;->m:D

    invoke-virtual {v6}, Lcom/anythink/core/common/d/b;->g()Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/api/ATBaseAdAdapter;->getmUnitgroupInfo()Lcom/anythink/core/c/c$b;

    move-result-object v4

    move-object/from16 v17, v8

    iget-wide v7, v4, Lcom/anythink/core/c/c$b;->m:D

    cmpl-double v4, v12, v7

    if-lez v4, :cond_96

    .line 381
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    const/4 v4, 0x1

    goto :goto_aa

    .line 401
    :cond_96
    const/4 v4, 0x3

    goto :goto_aa

    .line 404
    :cond_98
    move-object/from16 v17, v8

    move/from16 v16, v11

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    const/4 v4, 0x1

    const-wide/16 v10, 0x0

    goto :goto_aa

    .line 416
    :cond_a3
    move-object/from16 v17, v8

    move/from16 v16, v11

    const/4 v4, 0x3

    const-wide/16 v10, 0x0

    .line 419
    :goto_aa
    invoke-static {v0, v3, v10, v11, v4}, Lcom/anythink/core/common/f;->a(Lorg/json/JSONArray;Lcom/anythink/core/c/c$b;DI)V

    .line 420
    move-wide v3, v14

    move/from16 v11, v16

    move-object/from16 v8, v17

    const/4 v7, 0x1

    goto :goto_5b

    .line 422
    :cond_b4
    move-object/from16 v17, v8

    move/from16 v16, v11

    move-object/from16 v10, v17

    goto :goto_104

    .line 423
    :cond_bb
    move-object/from16 v17, v8

    .line 427
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_101

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/c$b;

    .line 429
    invoke-direct {v1, v3}, Lcom/anythink/core/common/f;->b(Lcom/anythink/core/c/c$b;)V

    .line 431
    iget-wide v7, v3, Lcom/anythink/core/c/c$b;->s:J

    .line 432
    if-eqz v5, :cond_ed

    iget-wide v12, v3, Lcom/anythink/core/c/c$b;->m:D

    iget-wide v14, v5, Lcom/anythink/core/c/c$b;->m:D

    cmpl-double v4, v12, v14

    if-lez v4, :cond_df

    move-object/from16 v10, v17

    goto :goto_ef

    .line 446
    :cond_df
    move-object/from16 v10, v17

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    if-eqz v5, :cond_e9

    iget-wide v12, v5, Lcom/anythink/core/c/c$b;->m:D

    goto :goto_eb

    :cond_e9
    const-wide/16 v12, 0x0

    .line 457
    :goto_eb
    move v4, v11

    goto :goto_fa

    .line 432
    :cond_ed
    move-object/from16 v10, v17

    .line 433
    :goto_ef
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    if-eqz v5, :cond_f7

    iget-wide v12, v5, Lcom/anythink/core/c/c$b;->m:D

    goto :goto_f9

    :cond_f7
    const-wide/16 v12, 0x0

    .line 444
    :goto_f9
    const/4 v4, 0x1

    .line 460
    :goto_fa
    invoke-static {v0, v3, v12, v13, v4}, Lcom/anythink/core/common/f;->a(Lorg/json/JSONArray;Lcom/anythink/core/c/c$b;DI)V
    :try_end_fd
    .catchall {:try_start_5 .. :try_end_fd} :catchall_157

    .line 461
    move-wide v3, v7

    move-object/from16 v17, v10

    goto :goto_c1

    .line 427
    :cond_101
    move-object/from16 v10, v17

    const/4 v11, 0x1

    .line 466
    :goto_104
    :try_start_104
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 467
    const-string v6, "load_status"

    invoke-virtual {v5, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 468
    const-string v6, "bid_time"

    invoke-virtual {v5, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 469
    const-string v3, "result_list"

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 470
    iget-object v0, v1, Lcom/anythink/core/common/f;->p:Ljava/lang/String;

    iget-object v3, v1, Lcom/anythink/core/common/f;->q:Ljava/lang/String;

    iget-object v4, v1, Lcom/anythink/core/common/f;->o:Lcom/anythink/core/c/c;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/c/c;Ljava/lang/String;)V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_125} :catch_126
    .catchall {:try_start_104 .. :try_end_125} :catchall_157

    .line 475
    goto :goto_127

    .line 471
    :catch_126
    move-exception v0

    .line 479
    :goto_127
    :try_start_127
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/c$b;

    .line 480
    iget-object v4, v1, Lcom/anythink/core/common/f;->k:Ljava/util/List;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v3, v5}, Lcom/anythink/core/common/f;->a(Ljava/util/List;Lcom/anythink/core/c/c$b;Z)V

    .line 481
    goto :goto_12b

    .line 484
    :cond_13e
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_142
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_155

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/anythink/core/c/c$b;

    .line 485
    iget-object v4, v1, Lcom/anythink/core/common/f;->m:Ljava/util/List;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v3, v5}, Lcom/anythink/core/common/f;->a(Ljava/util/List;Lcom/anythink/core/c/c$b;Z)V

    .line 486
    goto :goto_142

    .line 487
    :cond_155
    monitor-exit v2

    return-void

    :catchall_157
    move-exception v0

    monitor-exit v2
    :try_end_159
    .catchall {:try_start_127 .. :try_end_159} :catchall_157

    throw v0
.end method

.method public final a(Z)V
    .registers 2

    .line 1110
    iput-boolean p1, p0, Lcom/anythink/core/common/f;->r:Z

    .line 1111
    return-void
.end method

.method public abstract b()V
.end method

.method public final b(Lcom/anythink/core/api/ATBaseAdAdapter;)V
    .registers 6

    .line 754
    invoke-virtual {p1}, Lcom/anythink/core/api/ATBaseAdAdapter;->getTrackingInfo()Lcom/anythink/core/common/d/d;

    move-result-object p1

    .line 755
    iget-object v0, p0, Lcom/anythink/core/common/f;->z:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/d;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 756
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/anythink/core/common/d/d;->c(J)V

    .line 757
    return-void
.end method

.method public final c()Z
    .registers 2

    .line 1115
    iget-boolean v0, p0, Lcom/anythink/core/common/f;->g:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/anythink/core/common/f;->f:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/anythink/core/common/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/anythink/core/common/f;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/anythink/core/common/f;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    return v0

    :cond_23
    :goto_23
    const/4 v0, 0x1

    return v0
.end method

.method public final d()V
    .registers 3

    .line 1135
    iget-object v0, p0, Lcom/anythink/core/common/f;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 1136
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/anythink/core/common/f;->f:Z

    .line 1138
    iget-boolean v1, p0, Lcom/anythink/core/common/f;->g:Z

    if-nez v1, :cond_13

    invoke-direct {p0}, Lcom/anythink/core/common/f;->g()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1139
    invoke-direct {p0}, Lcom/anythink/core/common/f;->f()V

    .line 1142
    :cond_13
    invoke-direct {p0}, Lcom/anythink/core/common/f;->h()V

    .line 1143
    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public e()V
    .registers 3

    .line 1178
    iget-object v0, p0, Lcom/anythink/core/common/f;->I:Ljava/lang/Runnable;

    if-eqz v0, :cond_d

    .line 1180
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/f;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->c(Ljava/lang/Runnable;)V

    .line 1183
    :cond_d
    return-void
.end method
