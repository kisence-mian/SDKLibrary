.class public final Lcom/mintegral/msdk/e/a;
.super Ljava/lang/Object;
.source "LoopTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/e/a$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Z

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Lcom/mintegral/msdk/base/b/f;

.field private h:Lcom/mintegral/msdk/videocommon/e/a;

.field private i:Lcom/mintegral/msdk/base/b/u;

.field private j:Lcom/mintegral/msdk/base/b/i;

.field private k:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, p0, Lcom/mintegral/msdk/e/a;->b:Z

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/e/a;->c:Ljava/util/LinkedList;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mintegral/msdk/e/a;->d:Ljava/util/LinkedList;

    .line 36
    iput v1, p0, Lcom/mintegral/msdk/e/a;->e:I

    iput v1, p0, Lcom/mintegral/msdk/e/a;->f:I

    .line 41
    new-instance v0, Lcom/mintegral/msdk/e/a$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/e/a$1;-><init>(Lcom/mintegral/msdk/e/a;)V

    iput-object v0, p0, Lcom/mintegral/msdk/e/a;->k:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/mintegral/msdk/e/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 193
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    .line 194
    if-nez v0, :cond_b

    .line 224
    :goto_a
    return-void

    .line 197
    :cond_b
    new-instance v1, Lcom/mintegral/msdk/reward/a/c;

    invoke-direct {v1, v0, p1}, Lcom/mintegral/msdk/reward/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1, p2}, Lcom/mintegral/msdk/reward/a/c;->a(Z)V

    .line 200
    new-instance v0, Lcom/mintegral/msdk/e/a$2;

    invoke-direct {v0, p0, v1}, Lcom/mintegral/msdk/e/a$2;-><init>(Lcom/mintegral/msdk/e/a;Lcom/mintegral/msdk/reward/a/c;)V

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/reward/a/c;->a(Lcom/mintegral/msdk/reward/a/b;)V

    .line 219
    invoke-virtual {v1}, Lcom/mintegral/msdk/reward/a/c;->f()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_a

    .line 221
    :catch_1f
    move-exception v0

    .line 222
    const-string v1, "LoopTimer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method static synthetic a(Lcom/mintegral/msdk/e/a;)Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/mintegral/msdk/e/a;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/mintegral/msdk/e/a;)J
    .registers 3

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/mintegral/msdk/e/a;->a:J

    return-wide v0
.end method

.method static synthetic c(Lcom/mintegral/msdk/e/a;)V
    .registers 4

    .prologue
    .line 27
    .line 2122
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->c:Ljava/util/LinkedList;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1a

    iget v0, p0, Lcom/mintegral/msdk/e/a;->e:I

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/mintegral/msdk/e/a;->e:I

    if-gt v0, v1, :cond_45

    .line 2125
    :cond_1a
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->d:Ljava/util/LinkedList;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_34

    iget v0, p0, Lcom/mintegral/msdk/e/a;->f:I

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/mintegral/msdk/e/a;->f:I

    if-ne v0, v1, :cond_45

    .line 2128
    :cond_34
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/e/a;->f:I

    iput v0, p0, Lcom/mintegral/msdk/e/a;->e:I

    .line 2129
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->k:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    :cond_45
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 133
    .line 135
    :try_start_1
    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->g:Lcom/mintegral/msdk/base/b/f;

    if-eqz v1, :cond_27

    .line 136
    const-wide/16 v2, 0x0

    .line 137
    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->h:Lcom/mintegral/msdk/videocommon/e/a;

    if-eqz v1, :cond_11

    .line 138
    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->h:Lcom/mintegral/msdk/videocommon/e/a;

    invoke-virtual {v1}, Lcom/mintegral/msdk/videocommon/e/a;->e()J

    move-result-wide v2

    .line 140
    :cond_11
    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->g:Lcom/mintegral/msdk/base/b/f;

    invoke-virtual {v1, p1, v2, v3}, Lcom/mintegral/msdk/base/b/f;->a(Ljava/lang/String;J)I

    move-result v1

    .line 141
    packed-switch v1, :pswitch_data_66

    .line 148
    :cond_1a
    :goto_1a
    :pswitch_1a
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->k:Landroid/os/Handler;

    iget-object v2, p0, Lcom/mintegral/msdk/e/a;->k:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    :cond_27
    :goto_27
    :pswitch_27
    return v0

    .line 1254
    :pswitch_28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1257
    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->c:Ljava/util/LinkedList;

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1258
    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1267
    :cond_3f
    :goto_3f
    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->i:Lcom/mintegral/msdk/base/b/u;

    if-eqz v1, :cond_1a

    .line 1268
    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->i:Lcom/mintegral/msdk/base/b/u;

    invoke-virtual {v1, p1}, Lcom/mintegral/msdk/base/b/u;->a(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_48} :catch_49

    goto :goto_1a

    .line 157
    :catch_49
    move-exception v1

    .line 158
    const-string v2, "LoopTimer"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    .line 1259
    :cond_54
    :try_start_54
    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->d:Ljava/util/LinkedList;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1260
    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_65} :catch_49

    goto :goto_3f

    .line 141
    :pswitch_data_66
    .packed-switch -0x1
        :pswitch_28
        :pswitch_1a
        :pswitch_27
    .end packed-switch
.end method

.method static synthetic d(Lcom/mintegral/msdk/e/a;)V
    .registers 4

    .prologue
    .line 2166
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->c:Ljava/util/LinkedList;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_31

    iget v0, p0, Lcom/mintegral/msdk/e/a;->e:I

    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 2167
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->c:Ljava/util/LinkedList;

    iget v1, p0, Lcom/mintegral/msdk/e/a;->e:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2168
    iget v1, p0, Lcom/mintegral/msdk/e/a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mintegral/msdk/e/a;->e:I

    .line 2169
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/e/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2170
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mintegral/msdk/e/a;->a(Ljava/lang/String;Z)V

    .line 2183
    :cond_30
    :goto_30
    return-void

    .line 2173
    :cond_31
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->d:Ljava/util/LinkedList;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_30

    iget v0, p0, Lcom/mintegral/msdk/e/a;->f:I

    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 2174
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->d:Ljava/util/LinkedList;

    iget v1, p0, Lcom/mintegral/msdk/e/a;->f:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2175
    iget v1, p0, Lcom/mintegral/msdk/e/a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mintegral/msdk/e/a;->f:I

    .line 2176
    invoke-direct {p0, v0}, Lcom/mintegral/msdk/e/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2188
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mintegral/msdk/e/a;->a(Ljava/lang/String;Z)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_61} :catch_62

    goto :goto_30

    .line 2181
    :catch_62
    move-exception v0

    .line 2182
    const-string v1, "LoopTimer"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30
.end method

.method static synthetic e(Lcom/mintegral/msdk/e/a;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->k:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .registers 8

    .prologue
    .line 109
    .line 1075
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->j:Lcom/mintegral/msdk/base/b/i;

    if-nez v0, :cond_12

    .line 1076
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/e/a;->j:Lcom/mintegral/msdk/base/b/i;

    .line 1080
    :cond_12
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->i:Lcom/mintegral/msdk/base/b/u;

    if-nez v0, :cond_1e

    .line 1081
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->j:Lcom/mintegral/msdk/base/b/i;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/u;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/u;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/e/a;->i:Lcom/mintegral/msdk/base/b/u;

    .line 1084
    :cond_1e
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->i:Lcom/mintegral/msdk/base/b/u;

    const/16 v1, 0x11f

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/u;->a(I)Ljava/util/List;

    move-result-object v0

    .line 1085
    if-eqz v0, :cond_41

    .line 1086
    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1087
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1088
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/e/a;->b(Ljava/lang/String;)V

    goto :goto_31

    .line 1091
    :cond_41
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->i:Lcom/mintegral/msdk/base/b/u;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/u;->a(I)Ljava/util/List;

    move-result-object v0

    .line 1092
    if-eqz v0, :cond_64

    .line 1093
    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 1094
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1095
    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/e/a;->a(Ljava/lang/String;)V

    goto :goto_54

    .line 1099
    :cond_64
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->g:Lcom/mintegral/msdk/base/b/f;

    if-nez v0, :cond_70

    .line 1100
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->j:Lcom/mintegral/msdk/base/b/i;

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/f;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/e/a;->g:Lcom/mintegral/msdk/base/b/f;

    .line 1103
    :cond_70
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->h:Lcom/mintegral/msdk/videocommon/e/a;

    if-nez v0, :cond_7d

    .line 1104
    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->a()Lcom/mintegral/msdk/videocommon/e/b;

    invoke-static {}, Lcom/mintegral/msdk/videocommon/e/b;->b()Lcom/mintegral/msdk/videocommon/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/e/a;->h:Lcom/mintegral/msdk/videocommon/e/a;

    .line 110
    :cond_7d
    iput-wide p1, p0, Lcom/mintegral/msdk/e/a;->a:J

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mintegral/msdk/e/a;->b:Z

    .line 112
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mintegral/msdk/e/a;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/mintegral/msdk/e/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 113
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 229
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->i:Lcom/mintegral/msdk/base/b/u;

    if-eqz v0, :cond_18

    .line 231
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->i:Lcom/mintegral/msdk/base/b/u;

    const/16 v1, 0x5e

    invoke-virtual {v0, p1, v1}, Lcom/mintegral/msdk/base/b/u;->a(Ljava/lang/String;I)V

    .line 234
    :cond_18
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 242
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->i:Lcom/mintegral/msdk/base/b/u;

    if-eqz v0, :cond_18

    .line 244
    iget-object v0, p0, Lcom/mintegral/msdk/e/a;->i:Lcom/mintegral/msdk/base/b/u;

    const/16 v1, 0x11f

    invoke-virtual {v0, p1, v1}, Lcom/mintegral/msdk/base/b/u;->a(Ljava/lang/String;I)V

    .line 247
    :cond_18
    return-void
.end method
