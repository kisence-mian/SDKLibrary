.class public Lcom/bytedance/sdk/openadsdk/core/video/c/d;
.super Ljava/lang/Object;
.source "SSMediaPlayerWrapper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;
.implements Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;
.implements Lcom/bytedance/sdk/openadsdk/utils/ak$a;


# static fields
.field private static m:Z

.field private static final o:Landroid/util/SparseIntArray;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private n:Ljava/lang/String;

.field private p:Z

.field private final q:Ljava/lang/Object;

.field private r:Ljava/lang/StringBuilder;

.field private s:Z

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->m:Z

    .line 120
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->o:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 123
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;-><init>(Landroid/os/Handler;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;I)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "unused"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    .line 91
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b:Z

    .line 93
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c:Z

    .line 97
    const/16 v1, 0xc9

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 98
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g:J

    .line 114
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    .line 118
    const-string v1, "0"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->n:Ljava/lang/String;

    .line 925
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->q:Ljava/lang/Object;

    .line 926
    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->r:Ljava/lang/StringBuilder;

    .line 943
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->s:Z

    .line 944
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    .line 945
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    .line 946
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->v:J

    .line 947
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->w:J

    .line 950
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->x:Z

    .line 129
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    .line 131
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    .line 132
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "VideoManager"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 134
    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/ak;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ak;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ak$a;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    .line 135
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_50

    const/4 v0, 0x1

    :cond_50
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->x:Z

    .line 136
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->q()V

    .line 137
    return-void
.end method

.method private A()I
    .registers 3

    .prologue
    .line 897
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 898
    if-eqz v0, :cond_14

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    :goto_13
    return v0

    :cond_14
    const/4 v0, -0x1

    goto :goto_13
.end method

.method private B()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 907
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->m:Z

    if-eqz v0, :cond_c

    .line 908
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->l:I

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(IZ)V

    .line 909
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->m:Z

    .line 911
    :cond_c
    return-void
.end method

.method private C()V
    .registers 5

    .prologue
    .line 953
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e

    .line 954
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    .line 956
    :cond_e
    return-void
.end method

.method private D()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 964
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_16

    .line 965
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    .line 966
    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    .line 968
    :cond_16
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;I)I
    .registers 2

    .prologue
    .line 35
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private a(ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 657
    const/16 v0, 0x135

    if-ne p1, v0, :cond_7

    .line 658
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->B()V

    .line 660
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 661
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 663
    :cond_14
    return-void
.end method

.method private a(IZ)V
    .registers 6

    .prologue
    .line 884
    if-eqz p2, :cond_d

    .line 885
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->A()I

    move-result v0

    .line 886
    if-eq v0, p1, :cond_d

    .line 887
    const/4 v1, 0x1

    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->m:Z

    .line 888
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->l:I

    .line 891
    :cond_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 892
    if-eqz v0, :cond_20

    .line 893
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 894
    :cond_20
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 830
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 831
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    .line 833
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 619
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Ljava/io/FileDescriptor;)V

    .line 621
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 622
    return-void
.end method

.method private a(II)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 725
    const-string v1, "SSMediaPlayeWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnError - Error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Extra code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const/4 v1, 0x0

    .line 727
    sparse-switch p1, :sswitch_data_2e

    .line 738
    :goto_27
    sparse-switch p2, :sswitch_data_48

    move v0, v1

    .line 746
    :sswitch_2b
    return v0

    :sswitch_2c
    move v1, v0

    .line 735
    goto :goto_27

    .line 727
    :sswitch_data_2e
    .sparse-switch
        -0x3f2 -> :sswitch_2c
        -0x3ef -> :sswitch_2c
        -0x3ec -> :sswitch_2c
        -0x6e -> :sswitch_2c
        0x64 -> :sswitch_2c
        0xc8 -> :sswitch_2c
    .end sparse-switch

    .line 738
    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_2b
        0x2bc -> :sswitch_2b
        0x320 -> :sswitch_2b
    .end sparse-switch
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/c/d;Z)Z
    .registers 2

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p:Z

    return p1
.end method

.method private b(II)V
    .registers 11

    .prologue
    const-wide/16 v6, 0x0

    .line 767
    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_10

    .line 768
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->D()V

    .line 769
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->v:J

    .line 784
    :cond_f
    :goto_f
    return-void

    .line 770
    :cond_10
    const/16 v0, 0x2be

    if-ne p1, v0, :cond_35

    .line 771
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_20

    .line 772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    .line 774
    :cond_20
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->v:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_f

    .line 775
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->w:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->v:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->w:J

    .line 776
    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->v:J

    goto :goto_f

    .line 778
    :cond_35
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->x:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    if-ne p1, v0, :cond_f

    .line 780
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_f

    .line 781
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    goto :goto_f
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->q()V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 872
    if-nez p1, :cond_3

    .line 880
    :goto_2
    return-void

    .line 875
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->e:Z

    if-nez v0, :cond_b

    .line 876
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 878
    :cond_b
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 929
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 930
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 932
    :cond_b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 933
    :try_start_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->r:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_15

    .line 934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->r:Ljava/lang/StringBuilder;

    .line 936
    :cond_15
    monitor-exit v1

    .line 937
    return-void

    .line 936
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_17

    throw v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)Lcom/bytedance/sdk/openadsdk/core/video/c/c;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    return-object v0
.end method

.method private q()V
    .registers 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-nez v0, :cond_43

    .line 141
    const-string v0, "SSMediaPlayeWrapper"

    const-string v1, "SSMediaPlayerWrapper use System Mediaplayer"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    .line 143
    const-string v0, "0"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->n:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;)V

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;)V

    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;)V

    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;)V

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;)V

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;)V

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;)V

    .line 152
    :try_start_39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->b(Z)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_40} :catch_44

    .line 156
    :goto_40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c:Z

    .line 159
    :cond_43
    return-void

    .line 153
    :catch_44
    move-exception v0

    .line 154
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "setLooping error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40
.end method

.method private r()V
    .registers 3

    .prologue
    .line 258
    const-string v0, "tag_video_play"

    const-string v1, "[video] MediaPlayerProxy#start first play prepare invoke !"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method private s()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 625
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-nez v0, :cond_6

    .line 643
    :goto_5
    return-void

    .line 627
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->l()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_3d

    .line 631
    :goto_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$b;)V

    .line 632
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$g;)V

    .line 633
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$a;)V

    .line 634
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$d;)V

    .line 635
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$c;)V

    .line 636
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$e;)V

    .line 637
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/c/c$f;)V

    .line 639
    :try_start_2e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->k()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_33} :catch_34

    goto :goto_5

    .line 640
    :catch_34
    move-exception v0

    .line 641
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "releaseMediaplayer error2: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 628
    :catch_3d
    move-exception v0

    .line 629
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "releaseMediaplayer error1: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method private t()V
    .registers 4

    .prologue
    .line 646
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 648
    :try_start_c
    const-string v0, "SSMediaPlayeWrapper"

    const-string v1, "onDestory............"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1c} :catch_1d

    .line 654
    :cond_1c
    :goto_1c
    return-void

    .line 650
    :catch_1d
    move-exception v0

    .line 651
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "onDestroy error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c
.end method

.method private u()V
    .registers 4

    .prologue
    .line 677
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->o:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 678
    if-nez v0, :cond_17

    .line 679
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->o:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 683
    :goto_16
    return-void

    .line 681
    :cond_17
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->o:Landroid/util/SparseIntArray;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_16
.end method

.method private v()V
    .registers 5

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->x:Z

    if-nez v0, :cond_12

    .line 815
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    .line 819
    :cond_12
    return-void
.end method

.method private w()V
    .registers 3

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->d:Z

    if-eqz v0, :cond_5

    .line 847
    :goto_4
    return-void

    .line 840
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->d:Z

    .line 841
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 842
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 843
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_13

    .line 845
    :cond_23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->d:Z

    goto :goto_4
.end method

.method private x()V
    .registers 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 854
    :cond_c
    :goto_c
    return-void

    .line 853
    :cond_d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->w()V

    goto :goto_c
.end method

.method private y()V
    .registers 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 858
    :cond_c
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t()V

    .line 862
    :goto_f
    return-void

    .line 861
    :cond_10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->w()V

    goto :goto_f
.end method

.method private z()V
    .registers 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 869
    :cond_c
    :goto_c
    return-void

    .line 868
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_c
.end method


# virtual methods
.method public a()Landroid/media/MediaPlayer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eqz v0, :cond_d

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->e()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 165
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a(J)V
    .registers 6

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->D()V

    .line 284
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_15

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_15

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_1d

    .line 286
    :cond_15
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;J)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/Runnable;)V

    .line 295
    :cond_1d
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .prologue
    .line 298
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$5;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/Runnable;)V

    .line 307
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .registers 12

    .prologue
    const/16 v2, 0xd1

    const/4 v4, 0x0

    const/16 v9, 0xcf

    const/16 v8, 0xce

    const/4 v3, 0x1

    .line 396
    .line 397
    iget v5, p1, Landroid/os/Message;->what:I

    .line 398
    const-string v0, "tag_video_play"

    const-string v1, "[video]  execute , mCurrentState = "

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eqz v0, :cond_1a

    .line 400
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_332

    :cond_1a
    move v0, v4

    .line 608
    :goto_1b
    if-eqz v0, :cond_30

    .line 610
    const/16 v0, 0xc8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 611
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c:Z

    if-nez v0, :cond_30

    .line 612
    const/16 v0, 0x134

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ILjava/lang/Object;)V

    .line 613
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c:Z

    .line 616
    :cond_30
    return-void

    .line 402
    :sswitch_31
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_43

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v0, v8, :cond_43

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v0, v9, :cond_43

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-ne v0, v2, :cond_84

    .line 405
    :cond_43
    :try_start_43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->f()V

    .line 406
    const-string v0, "tag_video_play"

    const-string v1, "[video] OP_START execute , mMediaPlayer real start !"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/16 v0, 0xce

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 409
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_66

    .line 410
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g:J

    invoke-interface {v0, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(J)V

    .line 411
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g:J

    .line 414
    :cond_66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_78

    .line 415
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v1, 0x138

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v1, 0x139

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_78} :catch_7a

    :cond_78
    move v0, v4

    .line 421
    goto :goto_1b

    .line 419
    :catch_7a
    move-exception v0

    .line 420
    const-string v1, "tag_video_play"

    const-string v2, "OP_START error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 421
    goto :goto_1b

    :cond_84
    move v0, v3

    .line 425
    goto :goto_1b

    .line 429
    :sswitch_86
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v0, v8, :cond_92

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v0, v9, :cond_92

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-ne v0, v2, :cond_ac

    .line 432
    :cond_92
    :try_start_92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->h()V

    .line 433
    const/16 v0, 0xcf

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p:Z
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_9e} :catch_a1

    move v0, v4

    .line 437
    goto/16 :goto_1b

    .line 435
    :catch_a1
    move-exception v0

    .line 436
    const-string v1, "NativeVideoController"

    const-string v2, "OP_PAUSE error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 437
    goto/16 :goto_1b

    :cond_ac
    move v0, v3

    .line 441
    goto/16 :goto_1b

    .line 443
    :sswitch_af
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xca

    if-eq v0, v1, :cond_bb

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_e8

    .line 445
    :cond_bb
    :try_start_bb
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/c/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/b;->e()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 446
    const-string v0, "tag_video_play"

    const-string v1, "[video] OP_PREPARE_ASYNC execute , mMediaPlayer real prepareAsync !"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_da

    .line 448
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v1, 0x138

    const-wide/16 v6, 0x2710

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_da
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_da} :catch_dd

    :cond_da
    move v0, v4

    .line 454
    goto/16 :goto_1b

    .line 452
    :catch_dd
    move-exception v0

    .line 453
    const-string v1, "NativeVideoController"

    const-string v2, "OP_PREPARE_ASYNC error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 454
    goto/16 :goto_1b

    :cond_e8
    move v0, v3

    .line 458
    goto/16 :goto_1b

    .line 461
    :sswitch_eb
    :try_start_eb
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->s()V

    .line 462
    const-string v0, "tag_video_play"

    const-string v1, "[video] OP_RELEASE execute , releaseMediaplayer !"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f5
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_f5} :catch_10a

    .line 466
    :goto_f5
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->e:Z

    .line 467
    const/16 v0, 0x135

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ILjava/lang/Object;)V

    .line 468
    const/16 v0, 0xcb

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    .line 473
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->y()V

    move v0, v4

    .line 475
    goto/16 :goto_1b

    .line 463
    :catch_10a
    move-exception v0

    .line 464
    const-string v1, "NativeVideoController"

    const-string v2, "OP_RELEASE error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f5

    .line 478
    :sswitch_113
    :try_start_113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->l()V

    .line 479
    const-string v0, "tag_video_play"

    const-string v1, "[video] OP_RELEASE execute , releaseMediaplayer !"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/16 v0, 0xc9

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I
    :try_end_123
    .catch Ljava/lang/Throwable; {:try_start_113 .. :try_end_123} :catch_126

    move v0, v4

    .line 483
    goto/16 :goto_1b

    .line 481
    :catch_126
    move-exception v0

    .line 482
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "OP_RESET error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 484
    goto/16 :goto_1b

    .line 486
    :sswitch_131
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v0, v8, :cond_13d

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v0, v9, :cond_13d

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-ne v0, v2, :cond_158

    .line 489
    :cond_13d
    :try_start_13d
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(J)V
    :try_end_14a
    .catch Ljava/lang/Throwable; {:try_start_13d .. :try_end_14a} :catch_14d

    move v0, v4

    .line 492
    goto/16 :goto_1b

    .line 490
    :catch_14d
    move-exception v0

    .line 491
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "OP_SEEKTO error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 492
    goto/16 :goto_1b

    :cond_158
    move v0, v3

    .line 496
    goto/16 :goto_1b

    .line 498
    :sswitch_15b
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_167

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_246

    .line 500
    :cond_167
    :try_start_167
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;

    .line 501
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a:Ljava/lang/String;

    .line 502
    if-eqz v2, :cond_1b4

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b4

    move v1, v3

    .line 503
    :goto_178
    if-eqz v2, :cond_182

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_186

    :cond_182
    iget v6, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->c:I

    if-ne v6, v3, :cond_1bd

    .line 505
    :cond_186
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1b6

    if-eqz v2, :cond_1b6

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    .line 507
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Ljava/lang/String;)V

    move v0, v1

    .line 527
    :goto_19a
    const/16 v1, 0xca

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 529
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v1, :cond_1b1

    .line 530
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v2, 0x13a

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1b1
    move v0, v4

    .line 534
    goto/16 :goto_1b

    :cond_1b4
    move v1, v4

    .line 502
    goto :goto_178

    .line 509
    :cond_1b6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_19a

    .line 513
    :cond_1bd
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/f/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/h/f/b;-><init>()V

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a:Ljava/lang/String;

    .line 514
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/h/f/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/f/b;

    move-result-object v1

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->d:Ljava/lang/String;

    .line 515
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/f/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/f/b;

    move-result-object v0

    .line 516
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f/a;->a()Lcom/bytedance/sdk/openadsdk/h/f/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/f/a;->b(Lcom/bytedance/sdk/openadsdk/h/f/b;)Ljava/lang/String;

    move-result-object v1

    .line 517
    const-string v0, "cache009"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4f7f\u7528Video\u7f13\u5b58-OP_SET_DATASOURCE-proxyurl="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    if-eqz v1, :cond_23d

    const-string v0, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23d

    move v0, v3

    .line 519
    :goto_1f9
    if-eqz v1, :cond_23f

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    if-eqz v2, :cond_23f

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23f

    .line 520
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 521
    const-string v2, "cache010"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4f7f\u7528uri parse ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Ljava/lang/String;)V
    :try_end_230
    .catch Ljava/lang/Throwable; {:try_start_167 .. :try_end_230} :catch_232

    goto/16 :goto_19a

    .line 532
    :catch_232
    move-exception v0

    .line 533
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "OP_SET_DATASOURCE error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 534
    goto/16 :goto_1b

    :cond_23d
    move v0, v4

    .line 518
    goto :goto_1f9

    .line 524
    :cond_23f
    :try_start_23f
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Ljava/lang/String;)V
    :try_end_244
    .catch Ljava/lang/Throwable; {:try_start_23f .. :try_end_244} :catch_232

    goto/16 :goto_19a

    :cond_246
    move v0, v3

    .line 538
    goto/16 :goto_1b

    .line 541
    :sswitch_249
    :try_start_249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_25d

    .line 542
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 543
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Landroid/view/Surface;)V

    .line 545
    :cond_25d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Z)V

    .line 546
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Landroid/content/Context;I)V

    .line 547
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->x()V
    :try_end_271
    .catch Ljava/lang/Throwable; {:try_start_249 .. :try_end_271} :catch_274

    move v0, v4

    .line 550
    goto/16 :goto_1b

    .line 548
    :catch_274
    move-exception v0

    .line 549
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "OP_SET_SURFACE error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 551
    goto/16 :goto_1b

    .line 554
    :sswitch_27f
    :try_start_27f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceHolder;

    .line 555
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Landroid/view/SurfaceHolder;)V

    .line 556
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_298

    .line 557
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Landroid/content/Context;I)V

    .line 559
    :cond_298
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(Z)V
    :try_end_29e
    .catch Ljava/lang/Throwable; {:try_start_27f .. :try_end_29e} :catch_2a1

    move v0, v4

    .line 563
    goto/16 :goto_1b

    .line 560
    :catch_2a1
    move-exception v0

    .line 562
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "OP_SET_DISPLAY error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 564
    goto/16 :goto_1b

    .line 566
    :sswitch_2ac
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_2c4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v0, v8, :cond_2c4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_2c4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v0, v9, :cond_2c4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-ne v0, v2, :cond_2db

    .line 569
    :cond_2c4
    :try_start_2c4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->g()V

    .line 570
    const/16 v0, 0xd0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I
    :try_end_2cd
    .catch Ljava/lang/Throwable; {:try_start_2c4 .. :try_end_2cd} :catch_2d0

    move v0, v4

    .line 573
    goto/16 :goto_1b

    .line 571
    :catch_2d0
    move-exception v0

    .line 572
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "OP_STOP error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 573
    goto/16 :goto_1b

    :cond_2db
    move v0, v3

    .line 577
    goto/16 :goto_1b

    .line 579
    :sswitch_2de
    const-wide/16 v0, 0x0

    .line 580
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v2, v8, :cond_2e8

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-ne v2, v9, :cond_2ee

    .line 582
    :cond_2e8
    :try_start_2e8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->j()J
    :try_end_2ed
    .catch Ljava/lang/Throwable; {:try_start_2e8 .. :try_end_2ed} :catch_2fa

    move-result-wide v0

    .line 587
    :cond_2ee
    :goto_2ee
    const/16 v2, 0x6c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ILjava/lang/Object;)V

    move v0, v4

    .line 588
    goto/16 :goto_1b

    .line 583
    :catch_2fa
    move-exception v2

    .line 584
    const-string v6, "SSMediaPlayeWrapper"

    const-string v7, "OP_REQUEST_DURATION error: "

    invoke-static {v6, v7, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2ee

    .line 590
    :sswitch_303
    const-wide/16 v6, 0x0

    .line 591
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-eq v0, v8, :cond_30d

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    if-ne v0, v9, :cond_32d

    .line 593
    :cond_30d
    :try_start_30d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->i()J
    :try_end_312
    .catch Ljava/lang/Throwable; {:try_start_30d .. :try_end_312} :catch_325

    move-result-wide v0

    .line 598
    :goto_313
    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-lez v2, :cond_1a

    .line 599
    const/16 v2, 0x6d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ILjava/lang/Object;)V

    move v0, v4

    goto/16 :goto_1b

    .line 594
    :catch_325
    move-exception v0

    .line 595
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "OP_REQUEST_CUR_POSITION error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_32d
    move-wide v0, v6

    goto :goto_313

    :sswitch_32f
    move v0, v4

    .line 603
    goto/16 :goto_1b

    .line 400
    :sswitch_data_332
    .sparse-switch
        0x64 -> :sswitch_31
        0x65 -> :sswitch_86
        0x66 -> :sswitch_113
        0x67 -> :sswitch_eb
        0x68 -> :sswitch_af
        0x69 -> :sswitch_2ac
        0x6a -> :sswitch_131
        0x6b -> :sswitch_15b
        0x6c -> :sswitch_2de
        0x6d -> :sswitch_303
        0x6e -> :sswitch_27f
        0x6f -> :sswitch_249
        0xc9 -> :sswitch_32f
    .end sparse-switch
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .registers 3

    .prologue
    .line 318
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$6;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/a;)V
    .registers 3

    .prologue
    .line 350
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$7;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;Lcom/bytedance/sdk/openadsdk/core/video/a/a;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;)V
    .registers 4

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b:Z

    if-nez v0, :cond_27

    const/16 v0, 0xd1

    :goto_6
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 688
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->o:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 689
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1e

    .line 690
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 693
    :cond_1e
    const-string v0, "completion"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/String;)V

    .line 694
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->D()V

    .line 695
    return-void

    .line 687
    :cond_27
    const/16 v0, 0xce

    goto :goto_6
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;I)V
    .registers 6

    .prologue
    .line 667
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eq v0, p1, :cond_5

    .line 673
    :cond_4
    :goto_4
    return-void

    .line 670
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 671
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v1, 0x12d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;IIII)V
    .registers 8

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 1002
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v1, 0x137

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1004
    :cond_f
    return-void
.end method

.method public a(Z)V
    .registers 5

    .prologue
    .line 915
    if-eqz p1, :cond_a

    .line 916
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(FF)V

    .line 923
    :goto_9
    return-void

    .line 918
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->a(FF)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_13} :catch_14

    goto :goto_9

    .line 920
    :catch_14
    move-exception v0

    .line 921
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "setQuietPlay error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public a(ZJZ)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 169
    const-string v0, "tag_video_play"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[video] MediaPlayerProxy#start firstSeekToPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",firstPlay :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isPauseOtherMusicVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p:Z

    .line 171
    if-nez p4, :cond_41

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eqz v0, :cond_39

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Z)V

    .line 181
    :cond_39
    :goto_39
    if-eqz p1, :cond_49

    .line 183
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->r()V

    .line 184
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g:J

    .line 203
    :goto_40
    return-void

    .line 177
    :cond_41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eqz v0, :cond_39

    .line 178
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(Z)V

    goto :goto_39

    .line 186
    :cond_49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->C()V

    .line 187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eqz v0, :cond_5c

    .line 189
    :try_start_50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->i()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_65

    :goto_5a
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g:J
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_5c} :catch_6c

    .line 194
    :cond_5c
    :goto_5c
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/Runnable;)V

    goto :goto_40

    .line 189
    :cond_65
    :try_start_65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/c;->i()J
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6a} :catch_6c

    move-result-wide p2

    goto :goto_5a

    .line 190
    :catch_6c
    move-exception v0

    .line 191
    const-string v1, "tag_video_play"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[video] MediaPlayerProxy#start  error: getCurrentPosition :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/c/c;II)Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 699
    const-string v0, "SSMediaPlayeWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u()V

    .line 705
    const/16 v0, 0xc8

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 706
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_39

    .line 707
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 709
    :cond_39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_4b

    .line 710
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 713
    :cond_4b
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c:Z

    if-nez v0, :cond_5a

    .line 714
    const/16 v0, 0x134

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ILjava/lang/Object;)V

    .line 715
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->c:Z

    .line 717
    :cond_5a
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(II)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 718
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t()V

    .line 721
    :cond_63
    return v3
.end method

.method public b()V
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p:Z

    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->D()V

    .line 213
    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/c/c;)V
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 788
    const/16 v0, 0xcd

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 790
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p:Z

    if-eqz v0, :cond_29

    .line 791
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/c/d$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 806
    :goto_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->o:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 807
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_25

    .line 808
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v1, 0x131

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 810
    :cond_25
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->v()V

    .line 811
    return-void

    .line 804
    :cond_29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_13
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/c/c;II)Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 752
    const-string v0, "SSMediaPlayeWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what,extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eq v0, p1, :cond_28

    .line 763
    :goto_27
    return v3

    .line 756
    :cond_28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_46

    .line 757
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v1, 0x130

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 758
    const/16 v0, -0x3ec

    if-ne p3, v0, :cond_46

    .line 759
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 762
    :cond_46
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(II)V

    goto :goto_27
.end method

.method public c()V
    .registers 4

    .prologue
    .line 229
    const/16 v0, 0xcb

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    .line 230
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->D()V

    .line 234
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->z()V

    .line 235
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_27

    .line 237
    :try_start_e
    const-string v0, "release"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/c/c;

    if-eqz v0, :cond_27

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->e:Z

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_27} :catch_28

    .line 248
    :cond_27
    :goto_27
    return-void

    .line 243
    :catch_28
    move-exception v0

    .line 244
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t()V

    .line 245
    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "release error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/video/c/c;)V
    .registers 4

    .prologue
    .line 824
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 825
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i:Landroid/os/Handler;

    const/16 v1, 0x132

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 827
    :cond_b
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 272
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/c/d$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/c/d;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->b(Ljava/lang/Runnable;)V

    .line 280
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 331
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 333
    :cond_f
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 337
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 339
    :cond_f
    return-void
.end method

.method public g()Z
    .registers 3

    .prologue
    .line 366
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_10
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->k()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->g()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->i()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 374
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->p:Z

    if-eqz v0, :cond_16

    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 378
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public k()Z
    .registers 3

    .prologue
    .line 382
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public l()Z
    .registers 3

    .prologue
    .line 386
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->f:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public m()V
    .registers 3

    .prologue
    .line 959
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    .line 960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    .line 961
    return-void
.end method

.method public n()J
    .registers 3

    .prologue
    .line 974
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->w:J

    return-wide v0
.end method

.method public o()J
    .registers 3

    .prologue
    .line 978
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->D()V

    .line 979
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    return-wide v0
.end method

.method public p()J
    .registers 7

    .prologue
    .line 983
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1a

    .line 984
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    .line 985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->u:J

    .line 987
    :cond_1a
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->t:J

    return-wide v0
.end method
