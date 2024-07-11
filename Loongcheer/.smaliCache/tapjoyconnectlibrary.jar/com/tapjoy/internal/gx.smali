.class public Lcom/tapjoy/internal/gx;
.super Lcom/tapjoy/internal/hi;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String;

.field private static i:Lcom/tapjoy/internal/gx;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/tapjoy/internal/ht;

.field private final j:Lcom/tapjoy/internal/hb;

.field private k:Z

.field private l:Z

.field private m:J

.field private n:Landroid/content/Context;

.field private o:Lcom/tapjoy/internal/iq;

.field private p:Landroid/app/Activity;

.field private q:Lcom/tapjoy/internal/hc;

.field private r:Landroid/os/Handler;

.field private s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const-class v0, Lcom/tapjoy/internal/gx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/gx;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/hb;Ljava/lang/String;Lcom/tapjoy/internal/ht;Landroid/content/Context;)V
    .registers 5

    .line 67
    invoke-direct {p0}, Lcom/tapjoy/internal/hi;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/tapjoy/internal/gx;->j:Lcom/tapjoy/internal/hb;

    .line 69
    iput-object p2, p0, Lcom/tapjoy/internal/gx;->a:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/tapjoy/internal/gx;->b:Lcom/tapjoy/internal/ht;

    .line 71
    iput-object p4, p0, Lcom/tapjoy/internal/gx;->n:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public static a()V
    .registers 3

    .line 40
    sget-object v0, Lcom/tapjoy/internal/gx;->i:Lcom/tapjoy/internal/gx;

    .line 41
    if-eqz v0, :cond_29

    .line 42
    new-instance v1, Lcom/tapjoy/internal/gx$1;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/gx$1;-><init>(Lcom/tapjoy/internal/gx;)V

    .line 2016
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2017
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 1063
    :goto_1c
    if-eqz v0, :cond_22

    .line 1064
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1065
    return-void

    .line 1067
    :cond_22
    invoke-static {}, Lcom/tapjoy/internal/t;->a()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    :cond_29
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/tapjoy/internal/hc;Lcom/tapjoy/internal/fx;)V
    .registers 8

    .line 125
    iget-boolean v0, p0, Lcom/tapjoy/internal/gx;->k:Z

    if-eqz v0, :cond_13

    .line 126
    sget-object p1, Lcom/tapjoy/internal/gx;->h:Ljava/lang/String;

    new-instance p2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v0, "Content is already displayed"

    invoke-direct {p2, p3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 127
    return-void

    .line 130
    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/internal/gx;->k:Z

    .line 131
    iput-boolean v0, p0, Lcom/tapjoy/internal/gx;->l:Z

    .line 132
    sput-object p0, Lcom/tapjoy/internal/gx;->i:Lcom/tapjoy/internal/gx;

    .line 133
    nop

    .line 3133
    iget-object v0, p3, Lcom/tapjoy/internal/fx;->a:Lcom/tapjoy/internal/fr;

    .line 133
    iput-object v0, p0, Lcom/tapjoy/internal/gx;->g:Lcom/tapjoy/internal/fr;

    .line 135
    new-instance v0, Lcom/tapjoy/internal/iq;

    iget-object v1, p0, Lcom/tapjoy/internal/gx;->b:Lcom/tapjoy/internal/ht;

    new-instance v2, Lcom/tapjoy/internal/gx$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/tapjoy/internal/gx$2;-><init>(Lcom/tapjoy/internal/gx;Landroid/app/Activity;Lcom/tapjoy/internal/hc;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/tapjoy/internal/iq;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/ht;Lcom/tapjoy/internal/iq$a;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gx;->o:Lcom/tapjoy/internal/iq;

    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/tapjoy/internal/gx;->o:Lcom/tapjoy/internal/iq;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-static {p1, v0, v1}, Lcom/tapjoy/internal/ac;->a(Landroid/view/Window;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/gx;->m:J

    .line 173
    iget-object p1, p0, Lcom/tapjoy/internal/gx;->j:Lcom/tapjoy/internal/hb;

    iget-object v0, p0, Lcom/tapjoy/internal/gx;->b:Lcom/tapjoy/internal/ht;

    iget-object v0, v0, Lcom/tapjoy/internal/ht;->b:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/hb;->a(Ljava/util/Map;)V

    .line 174
    invoke-virtual {p3}, Lcom/tapjoy/internal/fx;->b()V

    .line 176
    iget-object p1, p0, Lcom/tapjoy/internal/gx;->g:Lcom/tapjoy/internal/fr;

    .line 177
    if-eqz p1, :cond_57

    .line 178
    invoke-virtual {p1}, Lcom/tapjoy/internal/fr;->b()Lcom/tapjoy/internal/gh$a;

    .line 181
    :cond_57
    iget-object p1, p0, Lcom/tapjoy/internal/gx;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/hc;->c(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/tapjoy/internal/gx;->b:Lcom/tapjoy/internal/ht;

    iget p1, p1, Lcom/tapjoy/internal/ht;->c:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_85

    .line 184
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tapjoy/internal/gx;->r:Landroid/os/Handler;

    .line 185
    new-instance p1, Lcom/tapjoy/internal/gx$3;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/gx$3;-><init>(Lcom/tapjoy/internal/gx;)V

    iput-object p1, p0, Lcom/tapjoy/internal/gx;->s:Ljava/lang/Runnable;

    .line 191
    iget-object p2, p0, Lcom/tapjoy/internal/gx;->r:Landroid/os/Handler;

    iget-object p3, p0, Lcom/tapjoy/internal/gx;->b:Lcom/tapjoy/internal/ht;

    iget p3, p3, Lcom/tapjoy/internal/ht;->c:F

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p3, p3, v0

    float-to-long v0, p3

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    :cond_85
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gx;)V
    .registers 8

    .line 34
    nop

    .line 3196
    iget-boolean v0, p0, Lcom/tapjoy/internal/gx;->l:Z

    if-eqz v0, :cond_5a

    .line 3199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/gx;->l:Z

    .line 3201
    iget-object v0, p0, Lcom/tapjoy/internal/gx;->r:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 3202
    iget-object v2, p0, Lcom/tapjoy/internal/gx;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3203
    iput-object v1, p0, Lcom/tapjoy/internal/gx;->s:Ljava/lang/Runnable;

    .line 3204
    iput-object v1, p0, Lcom/tapjoy/internal/gx;->r:Landroid/os/Handler;

    .line 3207
    :cond_16
    sget-object v0, Lcom/tapjoy/internal/gx;->i:Lcom/tapjoy/internal/gx;

    if-ne v0, p0, :cond_1c

    .line 3208
    sput-object v1, Lcom/tapjoy/internal/gx;->i:Lcom/tapjoy/internal/gx;

    .line 3211
    :cond_1c
    iget-object v0, p0, Lcom/tapjoy/internal/gx;->j:Lcom/tapjoy/internal/hb;

    iget-object v2, p0, Lcom/tapjoy/internal/gx;->b:Lcom/tapjoy/internal/ht;

    iget-object v2, v2, Lcom/tapjoy/internal/ht;->b:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/tapjoy/internal/gx;->m:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/tapjoy/internal/hb;->a(Ljava/util/Map;J)V

    .line 3213
    iget-boolean v0, p0, Lcom/tapjoy/internal/gx;->d:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/tapjoy/internal/gx;->q:Lcom/tapjoy/internal/hc;

    if-eqz v0, :cond_3d

    .line 3214
    iget-object v2, p0, Lcom/tapjoy/internal/gx;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/tapjoy/internal/gx;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/tapjoy/internal/hc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gn;)V

    .line 3215
    iput-object v1, p0, Lcom/tapjoy/internal/gx;->q:Lcom/tapjoy/internal/hc;

    .line 3218
    :cond_3d
    nop

    .line 3227
    iget-object v0, p0, Lcom/tapjoy/internal/gx;->o:Lcom/tapjoy/internal/iq;

    invoke-virtual {v0}, Lcom/tapjoy/internal/iq;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3228
    if-eqz v0, :cond_4d

    .line 3229
    iget-object v2, p0, Lcom/tapjoy/internal/gx;->o:Lcom/tapjoy/internal/iq;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3231
    :cond_4d
    iput-object v1, p0, Lcom/tapjoy/internal/gx;->o:Lcom/tapjoy/internal/iq;

    .line 3220
    iget-object v0, p0, Lcom/tapjoy/internal/gx;->p:Landroid/app/Activity;

    instance-of v2, v0, Lcom/tapjoy/TJContentActivity;

    if-eqz v2, :cond_58

    .line 3221
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 3223
    :cond_58
    iput-object v1, p0, Lcom/tapjoy/internal/gx;->p:Landroid/app/Activity;

    .line 34
    :cond_5a
    return-void
.end method

.method static synthetic b(Lcom/tapjoy/internal/gx;)Lcom/tapjoy/internal/hb;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/tapjoy/internal/gx;->j:Lcom/tapjoy/internal/hb;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/hc;Lcom/tapjoy/internal/fx;)V
    .registers 7

    .line 87
    iput-object p1, p0, Lcom/tapjoy/internal/gx;->q:Lcom/tapjoy/internal/hc;

    .line 90
    invoke-static {}, Lcom/tapjoy/internal/gt;->a()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gx;->p:Landroid/app/Activity;

    .line 92
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 94
    :try_start_12
    iget-object v0, p0, Lcom/tapjoy/internal/gx;->p:Landroid/app/Activity;

    invoke-direct {p0, v0, p1, p2}, Lcom/tapjoy/internal/gx;->a(Landroid/app/Activity;Lcom/tapjoy/internal/hc;Lcom/tapjoy/internal/fx;)V

    .line 95
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tapjoy/internal/gx;->a:Ljava/lang/String;

    aput-object v3, v0, v1
    :try_end_1d
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_12 .. :try_end_1d} :catch_1e

    .line 97
    return-void

    .line 98
    :catch_1e
    move-exception v0

    .line 104
    :cond_1f
    iget-object v0, p0, Lcom/tapjoy/internal/gx;->n:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gx;->p:Landroid/app/Activity;

    .line 105
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 107
    :try_start_2f
    iget-object v0, p0, Lcom/tapjoy/internal/gx;->p:Landroid/app/Activity;

    invoke-direct {p0, v0, p1, p2}, Lcom/tapjoy/internal/gx;->a(Landroid/app/Activity;Lcom/tapjoy/internal/hc;Lcom/tapjoy/internal/fx;)V

    .line 108
    const-class p2, Lcom/tapjoy/internal/ht;

    new-array p2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tapjoy/internal/gx;->a:Ljava/lang/String;

    aput-object v0, p2, v1
    :try_end_3c
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2f .. :try_end_3c} :catch_3d

    .line 110
    return-void

    .line 111
    :catch_3d
    move-exception p2

    .line 116
    :cond_3e
    new-array p2, v2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tapjoy/internal/gx;->a:Ljava/lang/String;

    aput-object v0, p2, v1

    const-string v0, "Failed to show the content for \"{}\". No usable activity found."

    invoke-static {v0, p2}, Lcom/tapjoy/internal/gy;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object p2, p0, Lcom/tapjoy/internal/gx;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/tapjoy/internal/gx;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/tapjoy/internal/hc;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gn;)V

    .line 120
    return-void
.end method

.method public final b()V
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/tapjoy/internal/gx;->b:Lcom/tapjoy/internal/ht;

    .line 2070
    iget-object v0, v0, Lcom/tapjoy/internal/ht;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/ic;

    .line 2084
    iget-object v1, v1, Lcom/tapjoy/internal/ic;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/ib;

    .line 2085
    iget-object v3, v2, Lcom/tapjoy/internal/ib;->l:Lcom/tapjoy/internal/hz;

    if-eqz v3, :cond_2f

    .line 2086
    iget-object v3, v2, Lcom/tapjoy/internal/ib;->l:Lcom/tapjoy/internal/hz;

    invoke-virtual {v3}, Lcom/tapjoy/internal/hz;->b()V

    .line 2088
    :cond_2f
    iget-object v3, v2, Lcom/tapjoy/internal/ib;->m:Lcom/tapjoy/internal/hz;

    if-eqz v3, :cond_38

    .line 2089
    iget-object v2, v2, Lcom/tapjoy/internal/ib;->m:Lcom/tapjoy/internal/hz;

    invoke-virtual {v2}, Lcom/tapjoy/internal/hz;->b()V

    .line 2091
    :cond_38
    goto :goto_1a

    .line 2072
    :cond_39
    goto :goto_8

    .line 77
    :cond_3a
    return-void
.end method

.method public final c()Z
    .registers 7

    .line 81
    iget-object v0, p0, Lcom/tapjoy/internal/gx;->b:Lcom/tapjoy/internal/ht;

    .line 3076
    nop

    .line 3077
    iget-object v0, v0, Lcom/tapjoy/internal/ht;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/ic;

    .line 3078
    nop

    .line 3095
    nop

    .line 3096
    iget-object v2, v2, Lcom/tapjoy/internal/ic;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tapjoy/internal/ib;

    .line 3097
    iget-object v5, v3, Lcom/tapjoy/internal/ib;->l:Lcom/tapjoy/internal/hz;

    if-eqz v5, :cond_38

    iget-object v5, v3, Lcom/tapjoy/internal/ib;->l:Lcom/tapjoy/internal/hz;

    invoke-virtual {v5}, Lcom/tapjoy/internal/hz;->a()Z

    move-result v5

    if-eqz v5, :cond_44

    :cond_38
    iget-object v5, v3, Lcom/tapjoy/internal/ib;->m:Lcom/tapjoy/internal/hz;

    if-eqz v5, :cond_47

    iget-object v3, v3, Lcom/tapjoy/internal/ib;->m:Lcom/tapjoy/internal/hz;

    .line 3098
    invoke-virtual {v3}, Lcom/tapjoy/internal/hz;->a()Z

    move-result v3

    if-nez v3, :cond_47

    .line 3099
    :cond_44
    nop

    .line 3100
    const/4 v2, 0x0

    goto :goto_49

    .line 3102
    :cond_47
    goto :goto_1f

    .line 3096
    :cond_48
    const/4 v2, 0x1

    .line 3104
    :goto_49
    nop

    .line 3078
    nop

    .line 3079
    if-nez v2, :cond_4e

    .line 3080
    return v4

    .line 3081
    :cond_4e
    goto :goto_b

    .line 3082
    :cond_4f
    nop

    .line 81
    return v2
.end method
