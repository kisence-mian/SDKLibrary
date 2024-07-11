.class final Lcom/anythink/basead/d/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/d/f$b;,
        Lcom/anythink/basead/d/f$c;,
        Lcom/anythink/basead/d/f$a;,
        Lcom/anythink/basead/d/f$d;
    }
.end annotation


# static fields
.field static final a:I = 0x32

.field private static d:I


# instance fields
.field final b:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/anythink/basead/d/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/anythink/basead/d/f$b;

.field private i:Lcom/anythink/basead/d/f$d;

.field private final j:Lcom/anythink/basead/d/f$c;

.field private final k:Landroid/os/Handler;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const/16 v0, 0x3e8

    sput v0, Lcom/anythink/basead/d/f;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 97
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Lcom/anythink/basead/d/f$b;

    invoke-direct {v1}, Lcom/anythink/basead/d/f$b;-><init>()V

    new-instance v2, Landroid/os/Handler;

    .line 100
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 97
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/anythink/basead/d/f;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/basead/d/f$b;Landroid/os/Handler;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 7

    .line 104
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Lcom/anythink/basead/d/f$b;

    invoke-direct {v1}, Lcom/anythink/basead/d/f$b;-><init>()V

    new-instance v2, Landroid/os/Handler;

    .line 107
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 104
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/anythink/basead/d/f;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/basead/d/f$b;Landroid/os/Handler;)V

    .line 108
    sput p2, Lcom/anythink/basead/d/f;->d:I

    .line 109
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/anythink/basead/d/f$b;Landroid/os/Handler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/anythink/basead/d/f$a;",
            ">;",
            "Lcom/anythink/basead/d/f$b;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/anythink/basead/d/f;->f:J

    .line 115
    iput-object p2, p0, Lcom/anythink/basead/d/f;->g:Ljava/util/Map;

    .line 116
    iput-object p3, p0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/d/f$b;

    .line 117
    iput-object p4, p0, Lcom/anythink/basead/d/f;->k:Landroid/os/Handler;

    .line 118
    new-instance p2, Lcom/anythink/basead/d/f$c;

    invoke-direct {p2, p0}, Lcom/anythink/basead/d/f$c;-><init>(Lcom/anythink/basead/d/f;)V

    iput-object p2, p0, Lcom/anythink/basead/d/f;->j:Lcom/anythink/basead/d/f$c;

    .line 119
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0x32

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/anythink/basead/d/f;->e:Ljava/util/ArrayList;

    .line 121
    new-instance p2, Lcom/anythink/basead/d/f$1;

    invoke-direct {p2, p0}, Lcom/anythink/basead/d/f$1;-><init>(Lcom/anythink/basead/d/f;)V

    iput-object p2, p0, Lcom/anythink/basead/d/f;->b:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 129
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/anythink/basead/d/f;->c:Ljava/lang/ref/WeakReference;

    .line 130
    invoke-direct {p0, p1, p3}, Lcom/anythink/basead/d/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 131
    return-void
.end method

.method private a(J)V
    .registers 7

    .line 209
    iget-object v0, p0, Lcom/anythink/basead/d/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/basead/d/f$a;

    iget-wide v2, v2, Lcom/anythink/basead/d/f$a;->c:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_2b

    .line 211
    iget-object v2, p0, Lcom/anythink/basead/d/f;->e:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_2b
    goto :goto_a

    .line 215
    :cond_2c
    iget-object p1, p0, Lcom/anythink/basead/d/f;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_32
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 216
    invoke-virtual {p0, p2}, Lcom/anythink/basead/d/f;->a(Landroid/view/View;)V

    .line 217
    goto :goto_32

    .line 218
    :cond_42
    iget-object p1, p0, Lcom/anythink/basead/d/f;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 219
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/anythink/basead/d/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    .line 135
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 136
    return-void

    .line 139
    :cond_11
    invoke-static {p1, p2}, Lcom/anythink/basead/d/e;->a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    .line 140
    const-string p2, "VisibilityTracker"

    if-nez p1, :cond_1f

    .line 141
    const-string p1, "Unable to set Visibility Tracker due to no available root view."

    invoke-static {p2, p1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void

    .line 145
    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 147
    const-string p1, "Visibility Tracker was unable to track views because the root view tree observer was not alive"

    invoke-static {p2, p1}, Lcom/anythink/core/common/g/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void

    .line 152
    :cond_2f
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/anythink/basead/d/f;->c:Ljava/lang/ref/WeakReference;

    .line 153
    iget-object p2, p0, Lcom/anythink/basead/d/f;->b:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 154
    return-void
.end method

.method private a(Landroid/view/View;ILjava/lang/Integer;)V
    .registers 10

    .line 166
    nop

    .line 1171
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move v3, p2

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/basead/d/f;->a(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V

    .line 167
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;ILjava/lang/Integer;)V
    .registers 11

    .line 171
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/anythink/basead/d/f;->a(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V

    .line 172
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/d/f;)Z
    .registers 2

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/basead/d/f;->l:Z

    return v0
.end method

.method static synthetic b(Lcom/anythink/basead/d/f;)Ljava/util/Map;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/anythink/basead/d/f;->g:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic c(Lcom/anythink/basead/d/f;)Lcom/anythink/basead/d/f$b;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/anythink/basead/d/f;->h:Lcom/anythink/basead/d/f$b;

    return-object p0
.end method

.method static synthetic d(Lcom/anythink/basead/d/f;)Lcom/anythink/basead/d/f$d;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/anythink/basead/d/f;->i:Lcom/anythink/basead/d/f$d;

    return-object p0
.end method


# virtual methods
.method final a()V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/anythink/basead/d/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 233
    iget-object v0, p0, Lcom/anythink/basead/d/f;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    iput-boolean v1, p0, Lcom/anythink/basead/d/f;->l:Z

    .line 235
    return-void
.end method

.method final a(Landroid/view/View;)V
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/anythink/basead/d/f;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    return-void
.end method

.method final a(Landroid/view/View;Landroid/view/View;IILjava/lang/Integer;)V
    .registers 10

    .line 178
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/anythink/basead/d/f;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/anythink/basead/d/f;->g:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/basead/d/f$a;

    .line 182
    if-nez v0, :cond_1e

    .line 183
    new-instance v0, Lcom/anythink/basead/d/f$a;

    invoke-direct {v0}, Lcom/anythink/basead/d/f$a;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/anythink/basead/d/f;->g:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {p0}, Lcom/anythink/basead/d/f;->c()V

    .line 188
    :cond_1e
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 190
    iput-object p1, v0, Lcom/anythink/basead/d/f$a;->d:Landroid/view/View;

    .line 191
    iput p3, v0, Lcom/anythink/basead/d/f$a;->a:I

    .line 192
    iput p2, v0, Lcom/anythink/basead/d/f$a;->b:I

    .line 193
    iget-wide p1, p0, Lcom/anythink/basead/d/f;->f:J

    iput-wide p1, v0, Lcom/anythink/basead/d/f$a;->c:J

    .line 194
    iput-object p5, v0, Lcom/anythink/basead/d/f$a;->e:Ljava/lang/Integer;

    .line 197
    iget-wide p1, p0, Lcom/anythink/basead/d/f;->f:J

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/anythink/basead/d/f;->f:J

    .line 198
    const-wide/16 p3, 0x32

    rem-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long p5, v0, v2

    if-nez p5, :cond_43

    .line 199
    sub-long/2addr p1, p3

    invoke-direct {p0, p1, p2}, Lcom/anythink/basead/d/f;->a(J)V
    :try_end_43
    .catchall {:try_start_0 .. :try_end_43} :catchall_44

    .line 203
    :cond_43
    return-void

    .line 201
    :catchall_44
    move-exception p1

    .line 205
    return-void
.end method

.method final a(Lcom/anythink/basead/d/f$d;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/anythink/basead/d/f;->i:Lcom/anythink/basead/d/f$d;

    .line 159
    return-void
.end method

.method final b()V
    .registers 3

    .line 241
    invoke-virtual {p0}, Lcom/anythink/basead/d/f;->a()V

    .line 242
    iget-object v0, p0, Lcom/anythink/basead/d/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    .line 243
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 244
    iget-object v1, p0, Lcom/anythink/basead/d/f;->b:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 246
    :cond_18
    iget-object v0, p0, Lcom/anythink/basead/d/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/basead/d/f;->i:Lcom/anythink/basead/d/f$d;

    .line 248
    return-void
.end method

.method final c()V
    .registers 5

    .line 253
    iget-boolean v0, p0, Lcom/anythink/basead/d/f;->l:Z

    if-eqz v0, :cond_5

    .line 254
    return-void

    .line 257
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/basead/d/f;->l:Z

    .line 258
    iget-object v0, p0, Lcom/anythink/basead/d/f;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/anythink/basead/d/f;->j:Lcom/anythink/basead/d/f$c;

    sget v2, Lcom/anythink/basead/d/f;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    return-void
.end method
