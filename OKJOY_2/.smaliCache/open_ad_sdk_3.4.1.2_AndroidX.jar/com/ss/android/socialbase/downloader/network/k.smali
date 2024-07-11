.class public Lcom/ss/android/socialbase/downloader/network/k;
.super Ljava/lang/Object;
.source "NetTrafficManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/network/k$b;,
        Lcom/ss/android/socialbase/downloader/network/k$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/ss/android/socialbase/downloader/network/d;

.field private volatile c:Z

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/ss/android/socialbase/downloader/network/l;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/ss/android/socialbase/downloader/network/l;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/socialbase/downloader/network/k$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const-class v0, Lcom/ss/android/socialbase/downloader/network/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/network/k;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/ss/android/socialbase/downloader/network/d;

    const-wide v1, 0x3fa999999999999aL    # 0.05

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/network/d;-><init>(D)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->b:Lcom/ss/android/socialbase/downloader/network/d;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->c:Z

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/ss/android/socialbase/downloader/network/l;->e:Lcom/ss/android/socialbase/downloader/network/l;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->f:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/network/k$1;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/k;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/network/k;
    .registers 1

    .line 67
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/k$a;->a:Lcom/ss/android/socialbase/downloader/network/k;

    return-object v0
.end method

.method private a(D)Lcom/ss/android/socialbase/downloader/network/l;
    .registers 5

    .line 196
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_9

    .line 197
    sget-object p1, Lcom/ss/android/socialbase/downloader/network/l;->e:Lcom/ss/android/socialbase/downloader/network/l;

    return-object p1

    .line 199
    :cond_9
    const-wide v0, 0x4062c00000000000L    # 150.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_15

    .line 200
    sget-object p1, Lcom/ss/android/socialbase/downloader/network/l;->a:Lcom/ss/android/socialbase/downloader/network/l;

    return-object p1

    .line 202
    :cond_15
    const-wide v0, 0x4081300000000000L    # 550.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_21

    .line 203
    sget-object p1, Lcom/ss/android/socialbase/downloader/network/l;->b:Lcom/ss/android/socialbase/downloader/network/l;

    return-object p1

    .line 205
    :cond_21
    const-wide v0, 0x409f400000000000L    # 2000.0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_2d

    .line 206
    sget-object p1, Lcom/ss/android/socialbase/downloader/network/l;->c:Lcom/ss/android/socialbase/downloader/network/l;

    return-object p1

    .line 208
    :cond_2d
    sget-object p1, Lcom/ss/android/socialbase/downloader/network/l;->d:Lcom/ss/android/socialbase/downloader/network/l;

    return-object p1
.end method

.method private c()Z
    .registers 12

    .line 116
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->b:Lcom/ss/android/socialbase/downloader/network/d;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 118
    return v1

    .line 121
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/network/l;

    .line 124
    sget-object v2, Lcom/ss/android/socialbase/downloader/network/k$1;->a:[I

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/l;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const-wide v2, 0x409f400000000000L    # 2000.0

    const-wide v4, 0x4081300000000000L    # 550.0

    const-wide v6, 0x4062c00000000000L    # 150.0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_64

    .line 142
    return v8

    .line 138
    :pswitch_2a
    nop

    .line 139
    const-wide v4, 0x47efffffe0000000L    # 3.4028234663852886E38

    .line 140
    move-wide v9, v2

    move-wide v2, v4

    move-wide v4, v9

    goto :goto_41

    .line 134
    :pswitch_34
    nop

    .line 135
    nop

    .line 136
    goto :goto_41

    .line 130
    :pswitch_37
    nop

    .line 131
    nop

    .line 132
    move-wide v2, v4

    move-wide v4, v6

    goto :goto_41

    .line 126
    :pswitch_3c
    const-wide/16 v2, 0x0

    .line 127
    nop

    .line 128
    move-wide v4, v2

    move-wide v2, v6

    .line 144
    :goto_41
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->b:Lcom/ss/android/socialbase/downloader/network/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/d;->a()D

    move-result-wide v6
    :try_end_47
    .catchall {:try_start_6 .. :try_end_47} :catchall_5f

    .line 145
    cmpl-double v0, v6, v2

    if-lez v0, :cond_53

    .line 146
    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    cmpl-double v0, v6, v2

    if-lez v0, :cond_5e

    .line 147
    return v8

    .line 149
    :cond_53
    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v2

    cmpg-double v0, v6, v4

    if-gez v0, :cond_5e

    .line 150
    return v8

    .line 155
    :cond_5e
    goto :goto_63

    .line 152
    :catchall_5f
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    :goto_63
    return v1

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_37
        :pswitch_34
        :pswitch_2a
    .end packed-switch
.end method

.method private d()V
    .registers 5

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 263
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1f

    .line 264
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/network/k$b;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/network/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/network/l;

    invoke-interface {v2, v3}, Lcom/ss/android/socialbase/downloader/network/k$b;->a(Lcom/ss/android/socialbase/downloader/network/l;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_20

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 269
    :cond_1f
    goto :goto_24

    .line 266
    :catchall_20
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    :goto_24
    return-void
.end method


# virtual methods
.method public declared-synchronized a(JJ)V
    .registers 7

    monitor-enter p0

    .line 80
    long-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    long-to-double v0, p3

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    mul-double/2addr p1, v0

    .line 81
    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-eqz p3, :cond_6f

    const-wide/high16 p3, 0x4008000000000000L    # 3.0

    cmpg-double p3, p1, p3

    if-gez p3, :cond_17

    goto :goto_6f

    .line 88
    :cond_17
    :try_start_17
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/network/k;->b:Lcom/ss/android/socialbase/downloader/network/d;

    invoke-virtual {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/network/d;->a(D)V

    .line 89
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/network/k;->b()Lcom/ss/android/socialbase/downloader/network/l;

    move-result-object p1

    .line 91
    iget-boolean p2, p0, Lcom/ss/android/socialbase/downloader/network/k;->c:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_5a

    .line 92
    iget p2, p0, Lcom/ss/android/socialbase/downloader/network/k;->g:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/ss/android/socialbase/downloader/network/k;->g:I

    .line 93
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/network/k;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    const/4 p4, 0x0

    if-eq p1, p2, :cond_37

    .line 94
    iput-boolean p4, p0, Lcom/ss/android/socialbase/downloader/network/k;->c:Z

    .line 95
    iput p3, p0, Lcom/ss/android/socialbase/downloader/network/k;->g:I

    .line 97
    :cond_37
    iget p1, p0, Lcom/ss/android/socialbase/downloader/network/k;->g:I

    int-to-double p1, p1

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_58

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/k;->c()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 98
    iput-boolean p4, p0, Lcom/ss/android/socialbase/downloader/network/k;->c:Z

    .line 99
    iput p3, p0, Lcom/ss/android/socialbase/downloader/network/k;->g:I

    .line 100
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/network/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/network/k;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 101
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/k;->d()V
    :try_end_58
    .catchall {:try_start_17 .. :try_end_58} :catchall_6c

    .line 103
    :cond_58
    monitor-exit p0

    return-void

    .line 106
    :cond_5a
    :try_start_5a
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/network/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p1, :cond_6b

    .line 107
    iput-boolean p3, p0, Lcom/ss/android/socialbase/downloader/network/k;->c:Z

    .line 108
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/network/k;->e:Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_6b
    .catchall {:try_start_5a .. :try_end_6b} :catchall_6c

    .line 112
    :cond_6b
    goto :goto_6d

    .line 110
    :catchall_6c
    move-exception p1

    .line 113
    :goto_6d
    monitor-exit p0

    return-void

    .line 82
    :cond_6f
    :goto_6f
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()Lcom/ss/android/socialbase/downloader/network/l;
    .registers 3

    monitor-enter p0

    .line 180
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->b:Lcom/ss/android/socialbase/downloader/network/d;

    if-nez v0, :cond_9

    .line 181
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/l;->e:Lcom/ss/android/socialbase/downloader/network/l;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1b

    monitor-exit p0

    return-object v0

    .line 184
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/d;->a()D

    move-result-wide v0

    .line 187
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/network/k;->a(D)Lcom/ss/android/socialbase/downloader/network/l;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 188
    :catchall_13
    move-exception v0

    .line 190
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 192
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/l;->e:Lcom/ss/android/socialbase/downloader/network/l;
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v0

    .line 179
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
