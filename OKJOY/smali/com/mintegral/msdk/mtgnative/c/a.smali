.class public final Lcom/mintegral/msdk/mtgnative/c/a;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/mtgnative/c/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private d:Lcom/mintegral/msdk/mtgnative/c/a$a;

.field private e:Landroid/os/Handler;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/mintegral/msdk/mtgnative/c/a$a;Landroid/os/Handler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/mintegral/msdk/mtgnative/c/a$a;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 29
    iput-object p2, p0, Lcom/mintegral/msdk/mtgnative/c/a;->d:Lcom/mintegral/msdk/mtgnative/c/a$a;

    .line 30
    iput-object p3, p0, Lcom/mintegral/msdk/mtgnative/c/a;->e:Landroid/os/Handler;

    .line 31
    if-eqz p1, :cond_20

    .line 32
    iput-object p1, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;

    .line 1046
    :goto_15
    :try_start_15
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgnative/c/a;->b()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_26

    .line 1051
    :goto_18
    :try_start_18
    new-instance v0, Lcom/mintegral/msdk/mtgnative/c/a$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/mtgnative/c/a$1;-><init>(Lcom/mintegral/msdk/mtgnative/c/a;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1f} :catch_31

    .line 1060
    :goto_1f
    return-void

    .line 34
    :cond_20
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_15

    .line 1047
    :catch_26
    move-exception v0

    .line 1048
    const-string v1, "ImpressionTracker"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    .line 1058
    :catch_31
    move-exception v0

    .line 1059
    const-string v1, "ImpressionTracker"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method static synthetic a(Lcom/mintegral/msdk/mtgnative/c/a;)V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mintegral/msdk/mtgnative/c/a;->b()V

    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->f:Z

    if-eqz v0, :cond_5

    .line 76
    :goto_4
    return-void

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->e:Landroid/os/Handler;

    if-eqz v0, :cond_15

    .line 68
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->e:Landroid/os/Handler;

    new-instance v1, Lcom/mintegral/msdk/mtgnative/c/a$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/mtgnative/c/a$2;-><init>(Lcom/mintegral/msdk/mtgnative/c/a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->f:Z

    goto :goto_4
.end method

.method static synthetic b(Lcom/mintegral/msdk/mtgnative/c/a;)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 1114
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->f:Z

    .line 1117
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_77

    .line 1118
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 1120
    :goto_1b
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_78

    .line 1121
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1142
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3d

    :cond_33
    move v1, v2

    .line 1122
    :goto_34
    if-eqz v1, :cond_72

    .line 1123
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    :goto_39
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1b

    .line 1145
    :cond_3d
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1146
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 1150
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v1, v6

    int-to-long v6, v1

    .line 1151
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    mul-int/2addr v1, v8

    int-to-long v8, v1

    .line 1152
    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_70

    .line 1158
    long-to-double v6, v6

    long-to-double v8, v8

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    cmpl-double v1, v6, v8

    if-lez v1, :cond_70

    const/4 v1, 0x1

    goto :goto_34

    :cond_70
    move v1, v2

    goto :goto_34

    .line 1125
    :cond_72
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 17
    :catch_76
    move-exception v0

    .line 1138
    :cond_77
    :goto_77
    return-void

    .line 1128
    :cond_78
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->d:Lcom/mintegral/msdk/mtgnative/c/a$a;

    if-eqz v0, :cond_81

    .line 1129
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->d:Lcom/mintegral/msdk/mtgnative/c/a$a;

    invoke-interface {v0, v4}, Lcom/mintegral/msdk/mtgnative/c/a$a;->a(Ljava/util/ArrayList;)V

    .line 1131
    :cond_81
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8a

    .line 1132
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgnative/c/a;->a()V

    .line 1134
    :cond_8a
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1135
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_90} :catch_76

    goto :goto_77
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 177
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->f:Z

    .line 178
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 179
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->a:Ljava/lang/ref/WeakReference;

    .line 180
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    .line 181
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 182
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/a;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 185
    :cond_24
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 187
    :cond_29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->d:Lcom/mintegral/msdk/mtgnative/c/a$a;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 189
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;

    if-eqz v0, :cond_38

    .line 190
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 192
    :cond_38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3b} :catch_3c

    .line 196
    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    goto :goto_3b
.end method

.method public final a(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    if-eqz p1, :cond_13

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mintegral/msdk/mtgnative/c/e;->a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_10
    :goto_10
    if-nez v1, :cond_42

    .line 110
    :cond_12
    :goto_12
    return-void

    .line 84
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 85
    const/4 v0, 0x0

    move v2, v0

    :goto_21
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_10

    .line 86
    iget-object v0, p0, Lcom/mintegral/msdk/mtgnative/c/a;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 87
    if-eqz v0, :cond_61

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    invoke-static {v1, v0}, Lcom/mintegral/msdk/mtgnative/c/e;->a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 90
    if-nez v0, :cond_5f

    .line 85
    :goto_3d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_21

    .line 102
    :cond_42
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 106
    :cond_4e
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/a;->a:Ljava/lang/ref/WeakReference;

    .line 107
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/a;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_12

    .line 108
    iget-object v1, p0, Lcom/mintegral/msdk/mtgnative/c/a;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_12

    :cond_5f
    move-object v1, v0

    goto :goto_10

    :cond_61
    move-object v0, v1

    goto :goto_3d
.end method
