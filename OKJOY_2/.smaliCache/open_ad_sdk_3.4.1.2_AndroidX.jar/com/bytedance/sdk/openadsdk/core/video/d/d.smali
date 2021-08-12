.class public Lcom/bytedance/sdk/openadsdk/core/video/d/d;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;
.implements Lcom/bytedance/sdk/openadsdk/utils/al$a;


# static fields
.field private static m:Z

.field private static final o:Landroid/util/SparseIntArray;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:J

.field private final h:Landroid/os/Handler;

.field private i:Landroid/os/Handler;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private n:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/lang/Runnable;

.field private r:Z

.field private final s:Ljava/lang/Object;

.field private t:Ljava/lang/StringBuilder;

.field private u:Z

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->m:Z

    .line 122
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->o:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 128
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;-><init>(Landroid/os/Handler;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;I)V
    .registers 6

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b:Z

    .line 95
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c:Z

    .line 99
    const/16 v1, 0xc9

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 100
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g:J

    .line 116
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    .line 120
    const-string v1, "0"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->n:Ljava/lang/String;

    .line 213
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->q:Ljava/lang/Runnable;

    .line 955
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->s:Ljava/lang/Object;

    .line 956
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t:Ljava/lang/StringBuilder;

    .line 973
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:Z

    .line 974
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v:J

    .line 975
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    .line 976
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->x:J

    .line 977
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->y:J

    .line 980
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->z:Z

    .line 134
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    .line 136
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    .line 137
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "VideoManager"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 139
    new-instance p2, Lcom/bytedance/sdk/openadsdk/utils/al;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/al;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/al$a;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    .line 140
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_57

    const/4 v0, 0x1

    :cond_57
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->z:Z

    .line 141
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->q()V

    .line 142
    return-void
.end method

.method private A()I
    .registers 3

    .line 927
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 928
    if-eqz v0, :cond_14

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, -0x1

    :goto_15
    return v0
.end method

.method private B()V
    .registers 3

    .line 937
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->m:Z

    if-eqz v0, :cond_c

    .line 938
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->l:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(IZ)V

    .line 939
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->m:Z

    .line 941
    :cond_c
    return-void
.end method

.method private C()V
    .registers 5

    .line 983
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e

    .line 984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    .line 986
    :cond_e
    return-void
.end method

.method private D()V
    .registers 9

    .line 994
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    .line 995
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v:J

    .line 996
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    .line 998
    :cond_16
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/d/d;I)I
    .registers 2

    .line 37
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Landroid/os/Handler;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    return-object p0
.end method

.method private a(ILjava/lang/Object;)V
    .registers 4

    .line 687
    const/16 v0, 0x135

    if-ne p1, v0, :cond_7

    .line 688
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->B()V

    .line 690
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 691
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 693
    :cond_12
    return-void
.end method

.method private a(IZ)V
    .registers 5

    .line 914
    if-eqz p2, :cond_d

    .line 915
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->A()I

    move-result p2

    .line 916
    if-eq p2, p1, :cond_d

    .line 917
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->m:Z

    .line 918
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->l:I

    .line 921
    :cond_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p2

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    .line 922
    if-eqz p2, :cond_20

    .line 923
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 924
    :cond_20
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    .line 860
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    .line 863
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 649
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 650
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Ljava/io/FileDescriptor;)V

    .line 651
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 652
    return-void
.end method

.method private a(II)Z
    .registers 5

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnError - Error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Extra code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSMediaPlayeWrapper"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    nop

    .line 757
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_32

    const/4 p1, 0x0

    goto :goto_2a

    .line 765
    :sswitch_29
    move p1, v0

    .line 768
    :goto_2a
    sparse-switch p2, :sswitch_data_4c

    move v0, p1

    goto :goto_30

    .line 772
    :sswitch_2f
    nop

    .line 776
    :goto_30
    return v0

    nop

    :sswitch_data_32
    .sparse-switch
        -0x3f2 -> :sswitch_29
        -0x3ef -> :sswitch_29
        -0x3ec -> :sswitch_29
        -0x6e -> :sswitch_29
        0x64 -> :sswitch_29
        0xc8 -> :sswitch_29
    .end sparse-switch

    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_2f
        0x2bc -> :sswitch_2f
        0x320 -> :sswitch_2f
    .end sparse-switch
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/d/d;Z)Z
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->r:Z

    return p1
.end method

.method private b(II)V
    .registers 9

    .line 797
    const/16 p2, 0x2bd

    if-ne p1, p2, :cond_e

    .line 798
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->D()V

    .line 799
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->x:J

    goto :goto_48

    .line 800
    :cond_e
    const/16 p2, 0x2be

    const-wide/16 v0, 0x0

    if-ne p1, p2, :cond_35

    .line 801
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_20

    .line 802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    .line 804
    :cond_20
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->x:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_48

    .line 805
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->y:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->x:J

    sub-long/2addr v2, v4

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->y:J

    .line 806
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->x:J

    goto :goto_48

    .line 808
    :cond_35
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->z:Z

    if-eqz p2, :cond_48

    const/4 p2, 0x3

    if-ne p1, p2, :cond_48

    .line 810
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_48

    .line 811
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    .line 814
    :cond_48
    :goto_48
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->q()V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .registers 3

    .line 902
    if-nez p1, :cond_3

    .line 903
    return-void

    .line 905
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->e:Z

    if-nez v0, :cond_b

    .line 906
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_e

    .line 908
    :cond_b
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Ljava/lang/Runnable;)V

    .line 910
    :goto_e
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .line 959
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    if-eqz p1, :cond_9

    .line 960
    const/16 v0, 0xc9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 962
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->s:Ljava/lang/Object;

    monitor-enter p1

    .line 963
    :try_start_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_13

    .line 964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t:Ljava/lang/StringBuilder;

    .line 966
    :cond_13
    monitor-exit p1

    .line 967
    return-void

    .line 966
    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Lcom/bytedance/sdk/openadsdk/core/video/d/c;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    return-object p0
.end method

.method private q()V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-nez v0, :cond_48

    .line 150
    const-string v0, "SSMediaPlayeWrapper"

    const-string v1, "SSMediaPlayerWrapper use System Mediaplayer"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    .line 152
    const-string v2, "0"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->n:Ljava/lang/String;

    .line 153
    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;)V

    .line 154
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;)V

    .line 155
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;)V

    .line 156
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;)V

    .line 157
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;)V

    .line 158
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;)V

    .line 159
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;)V

    .line 161
    :try_start_37
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b:Z

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->b(Z)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    .line 164
    goto :goto_45

    .line 162
    :catchall_3f
    move-exception v1

    .line 163
    const-string v2, "setLooping error: "

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :goto_45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c:Z

    .line 168
    :cond_48
    return-void
.end method

.method private r()V
    .registers 3

    .line 274
    const-string v0, "tag_video_play"

    const-string v1, "[video] MediaPlayerProxy#start first play prepare invoke !"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/Runnable;)V

    .line 285
    return-void
.end method

.method private s()V
    .registers 4

    .line 655
    const-string v0, "SSMediaPlayeWrapper"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-nez v1, :cond_7

    return-void

    .line 657
    :cond_7
    :try_start_7
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->l()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    .line 660
    goto :goto_11

    .line 658
    :catchall_b
    move-exception v1

    .line 659
    const-string v2, "releaseMediaplayer error1: "

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 661
    :goto_11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;)V

    .line 662
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;)V

    .line 663
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;)V

    .line 664
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;)V

    .line 665
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;)V

    .line 666
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;)V

    .line 667
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;)V

    .line 669
    :try_start_35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->k()V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3b

    .line 672
    goto :goto_41

    .line 670
    :catchall_3b
    move-exception v1

    .line 671
    const-string v2, "releaseMediaplayer error2: "

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 673
    :goto_41
    return-void
.end method

.method private t()V
    .registers 4

    .line 676
    const-string v0, "SSMediaPlayeWrapper"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 678
    :try_start_c
    const-string v1, "onDestory............"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1b

    .line 682
    goto :goto_21

    .line 680
    :catchall_1b
    move-exception v1

    .line 681
    const-string v2, "onDestroy error: "

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 684
    :cond_21
    :goto_21
    return-void
.end method

.method private u()V
    .registers 5

    .line 707
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->o:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 708
    const/4 v2, 0x1

    if-nez v1, :cond_15

    .line 709
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_27

    .line 711
    :cond_15
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 713
    :goto_27
    return-void
.end method

.method private v()V
    .registers 5

    .line 844
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->z:Z

    if-nez v0, :cond_12

    .line 845
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    .line 846
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    .line 849
    :cond_12
    return-void
.end method

.method private w()V
    .registers 3

    .line 867
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->d:Z

    if-eqz v0, :cond_5

    .line 868
    return-void

    .line 870
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->d:Z

    .line 871
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 872
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 873
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 874
    goto :goto_13

    .line 875
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->d:Z

    .line 877
    return-void
.end method

.method private x()V
    .registers 2

    .line 880
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_f

    .line 883
    :cond_b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w()V

    .line 884
    return-void

    .line 881
    :cond_f
    :goto_f
    return-void
.end method

.method private y()V
    .registers 2

    .line 887
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_f

    .line 891
    :cond_b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w()V

    .line 892
    return-void

    .line 888
    :cond_f
    :goto_f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t()V

    .line 889
    return-void
.end method

.method private z()V
    .registers 2

    .line 895
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 898
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 899
    return-void

    .line 896
    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaPlayer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-eqz v0, :cond_b

    .line 172
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->e()Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0

    .line 174
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)V
    .registers 5

    .line 299
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->D()V

    .line 300
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_11

    const/16 v1, 0xce

    if-eq v0, v1, :cond_11

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_19

    .line 302
    :cond_11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;J)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/Runnable;)V

    .line 311
    :cond_19
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 314
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$5;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 20

    .line 412
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "/"

    .line 413
    iget v3, v0, Landroid/os/Message;->what:I

    .line 414
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[video]  execute , mCurrentState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " handlerMsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tag_video_play"

    invoke-static {v5, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    const/4 v7, 0x1

    if-eqz v4, :cond_2fb

    .line 416
    iget v4, v0, Landroid/os/Message;->what:I

    const/16 v9, 0xa

    const-string v10, "[video] OP_RELEASE execute , releaseMediaplayer !"

    const/16 v11, 0xcb

    const/16 v12, 0xc9

    const/16 v13, 0xca

    const-string v15, "NativeVideoController"

    const-wide/16 v16, 0x0

    const/16 v6, 0xcf

    const/16 v14, 0xce

    const-string v8, "SSMediaPlayeWrapper"

    sparse-switch v4, :sswitch_data_314

    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 633
    :sswitch_4d
    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 571
    :sswitch_50
    :try_start_50
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v2, v4, :cond_64

    .line 572
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 573
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Landroid/view/Surface;)V

    .line 575
    :cond_64
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Z)V

    .line 576
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Landroid/content/Context;I)V

    .line 577
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->x()V
    :try_end_75
    .catchall {:try_start_50 .. :try_end_75} :catchall_78

    .line 580
    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 578
    :catchall_78
    move-exception v0

    .line 579
    const-string v2, "OP_SET_SURFACE error: "

    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 581
    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 584
    :sswitch_81
    :try_start_81
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceHolder;

    .line 585
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Landroid/view/SurfaceHolder;)V

    .line 586
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_98

    .line 587
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Landroid/content/Context;I)V

    .line 589
    :cond_98
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Z)V
    :try_end_9d
    .catchall {:try_start_81 .. :try_end_9d} :catchall_a0

    .line 593
    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 590
    :catchall_a0
    move-exception v0

    .line 592
    const-string v2, "OP_SET_DISPLAY error: "

    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 620
    :sswitch_a9
    nop

    .line 621
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    if-eq v0, v14, :cond_b0

    if-ne v0, v6, :cond_bd

    .line 623
    :cond_b0
    :try_start_b0
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->i()J

    move-result-wide v4
    :try_end_b6
    .catchall {:try_start_b0 .. :try_end_b6} :catchall_b7

    .line 626
    goto :goto_bf

    .line 624
    :catchall_b7
    move-exception v0

    .line 625
    const-string v2, "OP_REQUEST_CUR_POSITION error: "

    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 628
    :cond_bd
    move-wide/from16 v4, v16

    :goto_bf
    cmp-long v0, v4, v16

    if-lez v0, :cond_cf

    .line 629
    const/16 v0, 0x6d

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ILjava/lang/Object;)V

    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 628
    :cond_cf
    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 609
    :sswitch_d2
    nop

    .line 610
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    if-eq v0, v14, :cond_d9

    if-ne v0, v6, :cond_e6

    .line 612
    :cond_d9
    :try_start_d9
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->j()J

    move-result-wide v16
    :try_end_df
    .catchall {:try_start_d9 .. :try_end_df} :catchall_e0

    .line 615
    goto :goto_e6

    .line 613
    :catchall_e0
    move-exception v0

    .line 614
    const-string v2, "OP_REQUEST_DURATION error: "

    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 617
    :cond_e6
    :goto_e6
    const/16 v0, 0x6c

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ILjava/lang/Object;)V

    .line 618
    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 515
    :sswitch_f2
    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    if-eq v4, v12, :cond_fd

    if-ne v4, v11, :cond_f9

    goto :goto_fd

    .line 566
    :cond_f9
    nop

    .line 568
    move v6, v7

    goto/16 :goto_2fd

    .line 517
    :cond_fd
    :goto_fd
    :try_start_fd
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;

    .line 518
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/String;

    .line 520
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 521
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_10e

    .line 522
    move-object v4, v5

    .line 525
    :cond_10e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_115

    .line 526
    return-void

    .line 528
    :cond_115
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a7

    iget v5, v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->c:I

    if-ne v5, v7, :cond_121

    goto/16 :goto_1a7

    .line 538
    :cond_121
    new-instance v2, Lcom/bytedance/sdk/openadsdk/i/f/b;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/i/f/b;-><init>()V

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->a:Ljava/lang/String;

    .line 539
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/i/f/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/f/b;

    move-result-object v2

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Ljava/lang/String;

    .line 540
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/i/f/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/f/b;

    move-result-object v2

    .line 542
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_149

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_149

    .line 543
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/b/a;->d:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1bc

    .line 545
    :cond_149
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/f/a;->a()Lcom/bytedance/sdk/openadsdk/i/f/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/i/f/a;->b(Lcom/bytedance/sdk/openadsdk/i/f/b;)Ljava/lang/String;

    move-result-object v0

    .line 546
    const-string v2, "cache009"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4f7f\u7528Video\u7f13\u5b58-OP_SET_DATASOURCE-proxyurl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    if-eqz v0, :cond_1a1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    if-eqz v2, :cond_1a1

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    .line 548
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 549
    const-string v2, "cache010"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4f7f\u7528uri parse ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Ljava/lang/String;)V

    .line 551
    goto :goto_1bc

    .line 553
    :cond_1a1
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Ljava/lang/String;)V

    goto :goto_1bc

    .line 530
    :cond_1a7
    :goto_1a7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1b7

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 532
    invoke-direct {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Ljava/lang/String;)V

    goto :goto_1bc

    .line 534
    :cond_1b7
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Ljava/lang/String;)V

    .line 557
    :goto_1bc
    iput v13, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 559
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1d2

    .line 560
    const/16 v2, 0x13a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1cb
    .catchall {:try_start_fd .. :try_end_1cb} :catchall_1cc

    goto :goto_1d2

    .line 562
    :catchall_1cc
    move-exception v0

    .line 563
    const-string v2, "OP_SET_DATASOURCE error: "

    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    :cond_1d2
    :goto_1d2
    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 503
    :sswitch_1d5
    iget v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    if-eq v2, v14, :cond_1e4

    if-eq v2, v6, :cond_1e4

    const/16 v4, 0xd1

    if-ne v2, v4, :cond_1e0

    goto :goto_1e4

    .line 511
    :cond_1e0
    nop

    .line 513
    move v6, v7

    goto/16 :goto_2fd

    .line 506
    :cond_1e4
    :goto_1e4
    :try_start_1e4
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(J)V
    :try_end_1f1
    .catchall {:try_start_1e4 .. :try_end_1f1} :catchall_1f2

    goto :goto_1f8

    .line 507
    :catchall_1f2
    move-exception v0

    .line 508
    const-string v2, "OP_SEEKTO error: "

    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 509
    :goto_1f8
    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 596
    :sswitch_1fb
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v2, 0xcd

    if-eq v0, v2, :cond_212

    if-eq v0, v14, :cond_212

    const/16 v2, 0xd0

    if-eq v0, v2, :cond_212

    if-eq v0, v6, :cond_212

    const/16 v2, 0xd1

    if-ne v0, v2, :cond_20e

    goto :goto_212

    .line 605
    :cond_20e
    nop

    .line 607
    move v6, v7

    goto/16 :goto_2fd

    .line 599
    :cond_212
    :goto_212
    :try_start_212
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->g()V

    .line 600
    const/16 v0, 0xd0

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I
    :try_end_21b
    .catchall {:try_start_212 .. :try_end_21b} :catchall_21c

    goto :goto_222

    .line 601
    :catchall_21c
    move-exception v0

    .line 602
    const-string v2, "OP_STOP error: "

    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 603
    :goto_222
    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 460
    :sswitch_225
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    if-eq v0, v13, :cond_232

    const/16 v2, 0xd0

    if-ne v0, v2, :cond_22e

    goto :goto_232

    .line 473
    :cond_22e
    nop

    .line 475
    move v6, v7

    goto/16 :goto_2fd

    .line 462
    :cond_232
    :goto_232
    :try_start_232
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->e()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 463
    const-string v0, "[video] OP_PREPARE_ASYNC execute , mMediaPlayer real prepareAsync !"

    invoke-static {v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_254

    .line 465
    const-wide/16 v4, 0x2710

    const/16 v2, 0x138

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_24d
    .catchall {:try_start_232 .. :try_end_24d} :catchall_24e

    goto :goto_254

    .line 469
    :catchall_24e
    move-exception v0

    .line 470
    const-string v2, "OP_PREPARE_ASYNC error: "

    invoke-static {v15, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    :cond_254
    :goto_254
    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 478
    :sswitch_257
    :try_start_257
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->s()V

    .line 479
    invoke-static {v5, v10}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25d
    .catchall {:try_start_257 .. :try_end_25d} :catchall_25e

    .line 482
    goto :goto_264

    .line 480
    :catchall_25e
    move-exception v0

    .line 481
    const-string v2, "OP_RELEASE error: "

    invoke-static {v15, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 483
    :goto_264
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->e:Z

    .line 484
    const/16 v0, 0x135

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ILjava/lang/Object;)V

    .line 485
    iput v11, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 486
    iput-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    .line 490
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->y()V

    .line 492
    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 495
    :sswitch_277
    :try_start_277
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->l()V

    .line 496
    invoke-static {v5, v10}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iput v12, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I
    :try_end_281
    .catchall {:try_start_277 .. :try_end_281} :catchall_284

    .line 500
    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 498
    :catchall_284
    move-exception v0

    .line 499
    const-string v2, "OP_RESET error: "

    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 501
    const/4 v2, 0x0

    goto/16 :goto_2fc

    .line 445
    :sswitch_28d
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    if-eq v0, v14, :cond_29b

    if-eq v0, v6, :cond_29b

    const/16 v2, 0xd1

    if-ne v0, v2, :cond_298

    goto :goto_29b

    .line 456
    :cond_298
    nop

    .line 458
    move v6, v7

    goto :goto_2fd

    .line 448
    :cond_29b
    :goto_29b
    :try_start_29b
    const-string v0, "[video] OP_PAUSE execute , mMediaPlayer  OP_PAUSE !"

    invoke-static {v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->h()V

    .line 450
    iput v6, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I
    :try_end_2a7
    .catchall {:try_start_29b .. :try_end_2a7} :catchall_2ad

    .line 451
    const/4 v2, 0x0

    :try_start_2a8
    iput-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->r:Z
    :try_end_2aa
    .catchall {:try_start_2a8 .. :try_end_2aa} :catchall_2ab

    goto :goto_2b4

    .line 452
    :catchall_2ab
    move-exception v0

    goto :goto_2af

    :catchall_2ad
    move-exception v0

    const/4 v2, 0x0

    .line 453
    :goto_2af
    const-string v4, "OP_PAUSE error: "

    invoke-static {v15, v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    :goto_2b4
    goto :goto_2fc

    .line 418
    :sswitch_2b5
    const/4 v2, 0x0

    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v4, 0xcd

    if-eq v0, v4, :cond_2c8

    if-eq v0, v14, :cond_2c8

    if-eq v0, v6, :cond_2c8

    const/16 v4, 0xd1

    if-ne v0, v4, :cond_2c5

    goto :goto_2c8

    .line 439
    :cond_2c5
    nop

    .line 441
    move v6, v7

    goto :goto_2fd

    .line 421
    :cond_2c8
    :goto_2c8
    :try_start_2c8
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->f()V

    .line 422
    const-string v0, "[video] OP_START execute , mMediaPlayer real start !"

    invoke-static {v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iput v14, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 425
    iget-wide v8, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g:J

    cmp-long v0, v8, v16

    if-ltz v0, :cond_2e3

    .line 426
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(J)V

    .line 427
    const-wide/16 v8, -0x1

    iput-wide v8, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g:J

    .line 430
    :cond_2e3
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_2fa

    .line 431
    const/16 v4, 0x138

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 432
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    const/16 v4, 0x139

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2f3
    .catchall {:try_start_2c8 .. :try_end_2f3} :catchall_2f4

    goto :goto_2fa

    .line 435
    :catchall_2f4
    move-exception v0

    .line 436
    const-string v4, "OP_START error: "

    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    :cond_2fa
    :goto_2fa
    goto :goto_2fc

    .line 415
    :cond_2fb
    const/4 v2, 0x0

    .line 638
    :goto_2fc
    move v6, v2

    :goto_2fd
    if-eqz v6, :cond_312

    .line 640
    const/16 v0, 0xc8

    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 641
    iget-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c:Z

    if-nez v0, :cond_312

    .line 642
    const/16 v0, 0x134

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ILjava/lang/Object;)V

    .line 643
    iput-boolean v7, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c:Z

    .line 646
    :cond_312
    return-void

    nop

    :sswitch_data_314
    .sparse-switch
        0x64 -> :sswitch_2b5
        0x65 -> :sswitch_28d
        0x66 -> :sswitch_277
        0x67 -> :sswitch_257
        0x68 -> :sswitch_225
        0x69 -> :sswitch_1fb
        0x6a -> :sswitch_1d5
        0x6b -> :sswitch_f2
        0x6c -> :sswitch_d2
        0x6d -> :sswitch_a9
        0x6e -> :sswitch_81
        0x6f -> :sswitch_50
        0xc9 -> :sswitch_4d
    .end sparse-switch
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 334
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$6;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V
    .registers 3

    .line 366
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$7;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;Lcom/bytedance/sdk/openadsdk/core/video/b/a;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;)V
    .registers 3

    .line 717
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b:Z

    if-nez p1, :cond_7

    const/16 p1, 0xd1

    goto :goto_9

    :cond_7
    const/16 p1, 0xce

    :goto_9
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 718
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->o:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 719
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_1f

    .line 720
    const/16 v0, 0x12e

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 723
    :cond_1f
    const-string p1, "completion"

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/String;)V

    .line 724
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->D()V

    .line 725
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;I)V
    .registers 4

    .line 697
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-eq v0, p1, :cond_5

    .line 698
    return-void

    .line 700
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_16

    .line 701
    const/16 v0, 0x12d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 703
    :cond_16
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;IIII)V
    .registers 6

    .line 1031
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_d

    .line 1032
    const/16 p4, 0x137

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1034
    :cond_d
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 145
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->p:Z

    .line 146
    return-void
.end method

.method public a(ZJZ)V
    .registers 9

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[video] MediaPlayerProxy#start firstSeekToPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",firstPlay :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isPauseOtherMusicVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag_video_play"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->r:Z

    .line 180
    if-nez p4, :cond_3a

    .line 182
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-eqz p4, :cond_41

    .line 183
    const/4 p4, 0x1

    invoke-virtual {p0, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Z)V

    goto :goto_41

    .line 186
    :cond_3a
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-eqz p4, :cond_41

    .line 187
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Z)V

    .line 190
    :cond_41
    :goto_41
    if-eqz p1, :cond_4e

    .line 191
    const-string p1, "[video] first start , SSMediaPlayer  start method !"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->r()V

    .line 194
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g:J

    goto :goto_92

    .line 196
    :cond_4e
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->C()V

    .line 197
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-eqz p1, :cond_83

    .line 199
    :try_start_55
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->i()J

    move-result-wide v2

    cmp-long p1, p2, v2

    if-lez p1, :cond_5e

    :goto_5d
    goto :goto_65

    :cond_5e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->i()J

    move-result-wide p2

    goto :goto_5d

    :goto_65
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g:J
    :try_end_67
    .catchall {:try_start_55 .. :try_end_67} :catchall_68

    .line 202
    goto :goto_83

    .line 200
    :catchall_68
    move-exception p1

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[video] MediaPlayerProxy#start  error: getCurrentPosition :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_83
    :goto_83
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->p:Z

    if-eqz p1, :cond_8d

    .line 205
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->q:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/Runnable;)V

    goto :goto_92

    .line 207
    :cond_8d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->q:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Ljava/lang/Runnable;)V

    .line 211
    :goto_92
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;II)Z
    .registers 6

    .line 729
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "what="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "extra="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SSMediaPlayeWrapper"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u()V

    .line 735
    const/16 p1, 0xc8

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 736
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_36

    .line 737
    const/16 v0, 0x12f

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 739
    :cond_36
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    if-eqz p1, :cond_46

    .line 740
    const/16 v0, 0x6c

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 741
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/16 v0, 0x6d

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 743
    :cond_46
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c:Z

    const/4 v0, 0x1

    if-nez p1, :cond_56

    .line 744
    const/16 p1, 0x134

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ILjava/lang/Object;)V

    .line 745
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c:Z

    .line 747
    :cond_56
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(II)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 748
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t()V

    .line 751
    :cond_5f
    return v0
.end method

.method public b()V
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->r:Z

    .line 227
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->D()V

    .line 229
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/d/c;)V
    .registers 4

    .line 818
    const/16 p1, 0xcd

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 820
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->r:Z

    if-eqz p1, :cond_13

    .line 821
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1f

    .line 834
    :cond_13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/16 v0, 0x64

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 836
    :goto_1f
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->o:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 837
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_2f

    .line 838
    const/16 v0, 0x131

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 840
    :cond_2f
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v()V

    .line 841
    return-void
.end method

.method public b(Z)V
    .registers 4

    .line 945
    if-eqz p1, :cond_9

    .line 946
    :try_start_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(FF)V

    goto :goto_10

    .line 948
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(FF)V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_11

    .line 952
    :goto_10
    goto :goto_19

    .line 950
    :catchall_11
    move-exception p1

    .line 951
    const-string v0, "SSMediaPlayeWrapper"

    const-string v1, "setQuietPlay error: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 953
    :goto_19
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/d/c;II)Z
    .registers 6

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "what,extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSMediaPlayeWrapper"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_28

    .line 784
    return v1

    .line 786
    :cond_28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_44

    .line 787
    const/16 v0, 0x130

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 788
    const/16 p1, -0x3ec

    if-ne p3, p1, :cond_44

    .line 789
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    const/16 v0, 0x12f

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 792
    :cond_44
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(II)V

    .line 793
    return v1
.end method

.method public c()V
    .registers 4

    .line 245
    const/16 v0, 0xcb

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 246
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->D()V

    .line 250
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->z()V

    .line 251
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_33

    .line 253
    :try_start_e
    const-string v0, "release"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-eqz v0, :cond_27

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->e:Z

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_28

    .line 262
    :cond_27
    goto :goto_33

    .line 259
    :catchall_28
    move-exception v0

    .line 260
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t()V

    .line 261
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "release error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    :cond_33
    :goto_33
    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/video/d/c;)V
    .registers 3

    .line 854
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_9

    .line 855
    const/16 v0, 0x132

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 857
    :cond_9
    return-void
.end method

.method public d()V
    .registers 2

    .line 288
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method

.method public e()V
    .registers 3

    .line 346
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 347
    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 349
    :cond_d
    return-void
.end method

.method public f()V
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 353
    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 355
    :cond_d
    return-void
.end method

.method public g()Z
    .registers 3

    .line 382
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_10
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->r:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public h()Z
    .registers 2

    .line 386
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public i()Z
    .registers 3

    .line 390
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->r:Z

    if-eqz v0, :cond_16

    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public j()Z
    .registers 3

    .line 394
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public k()Z
    .registers 3

    .line 398
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public l()Z
    .registers 3

    .line 402
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public m()V
    .registers 3

    .line 989
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v:J

    .line 990
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    .line 991
    return-void
.end method

.method public n()J
    .registers 3

    .line 1004
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->y:J

    return-wide v0
.end method

.method public o()J
    .registers 3

    .line 1008
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->D()V

    .line 1009
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v:J

    return-wide v0
.end method

.method public p()J
    .registers 7

    .line 1013
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    .line 1014
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v:J

    .line 1015
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    .line 1017
    :cond_1a
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v:J

    return-wide v0
.end method
