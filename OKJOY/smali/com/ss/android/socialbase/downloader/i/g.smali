.class public Lcom/ss/android/socialbase/downloader/i/g;
.super Ljava/lang/Object;
.source "NetTrafficManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/i/g$b;,
        Lcom/ss/android/socialbase/downloader/i/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/ss/android/socialbase/downloader/i/b;

.field private volatile c:Z

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/ss/android/socialbase/downloader/i/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/ss/android/socialbase/downloader/i/h;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ss/android/socialbase/downloader/i/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/ss/android/socialbase/downloader/i/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/i/g;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/ss/android/socialbase/downloader/i/b;

    const-wide v2, 0x3fa999999999999aL    # 0.05

    invoke-direct {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/i/b;-><init>(D)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->b:Lcom/ss/android/socialbase/downloader/i/b;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->c:Z

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/ss/android/socialbase/downloader/i/h;->e:Lcom/ss/android/socialbase/downloader/i/h;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->f:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/i/g$1;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/i/g;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/i/g;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/g$a;->a:Lcom/ss/android/socialbase/downloader/i/g;

    return-object v0
.end method

.method private a(D)Lcom/ss/android/socialbase/downloader/i/h;
    .registers 6

    .prologue
    .line 196
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_9

    .line 197
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/h;->e:Lcom/ss/android/socialbase/downloader/i/h;

    .line 208
    :goto_8
    return-object v0

    .line 199
    :cond_9
    const-wide v0, 0x4062c00000000000L    # 150.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_15

    .line 200
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/h;->a:Lcom/ss/android/socialbase/downloader/i/h;

    goto :goto_8

    .line 202
    :cond_15
    const-wide v0, 0x4081300000000000L    # 550.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_21

    .line 203
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/h;->b:Lcom/ss/android/socialbase/downloader/i/h;

    goto :goto_8

    .line 205
    :cond_21
    const-wide v0, 0x409f400000000000L    # 2000.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2d

    .line 206
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/h;->c:Lcom/ss/android/socialbase/downloader/i/h;

    goto :goto_8

    .line 208
    :cond_2d
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/h;->d:Lcom/ss/android/socialbase/downloader/i/h;

    goto :goto_8
.end method

.method private c()Z
    .registers 13

    .prologue
    const/4 v1, 0x0

    const-wide v8, 0x409f400000000000L    # 2000.0

    const-wide v6, 0x4081300000000000L    # 550.0

    const-wide v4, 0x4062c00000000000L    # 150.0

    const/4 v2, 0x1

    .line 116
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->b:Lcom/ss/android/socialbase/downloader/i/b;

    if-nez v0, :cond_17

    move v0, v1

    .line 156
    :goto_16
    return v0

    .line 121
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/i/h;

    .line 124
    sget-object v3, Lcom/ss/android/socialbase/downloader/i/g$1;->a:[I

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/h;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_60

    move v0, v2

    .line 142
    goto :goto_16

    .line 126
    :pswitch_2c
    const-wide/16 v6, 0x0

    .line 144
    :goto_2e
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->b:Lcom/ss/android/socialbase/downloader/i/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/b;->a()D
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_33} :catch_5a

    move-result-wide v8

    .line 145
    cmpl-double v0, v8, v4

    if-lez v0, :cond_4e

    .line 146
    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v4, v6

    cmpl-double v0, v8, v4

    if-lez v0, :cond_5e

    move v0, v2

    .line 147
    goto :goto_16

    :pswitch_41
    move-wide v10, v6

    move-wide v6, v4

    move-wide v4, v10

    .line 132
    goto :goto_2e

    :pswitch_45
    move-wide v4, v8

    .line 136
    goto :goto_2e

    .line 139
    :pswitch_47
    const-wide v4, 0x47efffffe0000000L    # 3.4028234663852886E38

    move-wide v6, v8

    .line 140
    goto :goto_2e

    .line 149
    :cond_4e
    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    cmpg-double v0, v8, v4

    if-gez v0, :cond_5e

    move v0, v2

    .line 150
    goto :goto_16

    .line 152
    :catch_5a
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5e
    move v0, v1

    .line 156
    goto :goto_16

    .line 124
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_41
        :pswitch_45
        :pswitch_47
    .end packed-switch
.end method

.method private d()V
    .registers 5

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 263
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v3, :cond_25

    .line 264
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/i/g$b;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/i/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/i/h;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/i/g$b;->a(Lcom/ss/android/socialbase/downloader/i/h;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_21

    .line 263
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 266
    :catch_21
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    :cond_25
    return-void
.end method


# virtual methods
.method public declared-synchronized a(JJ)V
    .registers 10

    .prologue
    .line 80
    monitor-enter p0

    long-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    long-to-double v2, p3

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    mul-double/2addr v0, v2

    .line 81
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_16

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_18

    .line 113
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 88
    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/i/g;->b:Lcom/ss/android/socialbase/downloader/i/b;

    invoke-virtual {v2, v0, v1}, Lcom/ss/android/socialbase/downloader/i/b;->a(D)V

    .line 89
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/i/g;->b()Lcom/ss/android/socialbase/downloader/i/h;

    move-result-object v0

    .line 91
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/i/g;->c:Z

    if-eqz v1, :cond_5f

    .line 92
    iget v1, p0, Lcom/ss/android/socialbase/downloader/i/g;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ss/android/socialbase/downloader/i/g;->g:I

    .line 93
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/i/g;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_39

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->c:Z

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->g:I

    .line 97
    :cond_39
    iget v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->g:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_16

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/i/g;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->c:Z

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->g:I

    .line 100
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/i/g;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 101
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/i/g;->d()V

    goto :goto_16

    .line 110
    :catch_5d
    move-exception v0

    goto :goto_16

    .line 106
    :cond_5f
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/i/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_16

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/i/g;->c:Z

    .line 108
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/i/g;->e:Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_71} :catch_5d
    .catchall {:try_start_18 .. :try_end_71} :catchall_72

    goto :goto_16

    .line 80
    :catchall_72
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lcom/ss/android/socialbase/downloader/i/h;
    .registers 3

    .prologue
    .line 180
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->b:Lcom/ss/android/socialbase/downloader/i/b;

    if-nez v0, :cond_9

    .line 181
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/h;->e:Lcom/ss/android/socialbase/downloader/i/h;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1b

    .line 192
    :goto_7
    monitor-exit p0

    return-object v0

    .line 184
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/i/g;->b:Lcom/ss/android/socialbase/downloader/i/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/i/b;->a()D

    move-result-wide v0

    .line 187
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/i/g;->a(D)Lcom/ss/android/socialbase/downloader/i/h;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_12} :catch_14
    .catchall {:try_start_9 .. :try_end_12} :catchall_1b

    move-result-object v0

    goto :goto_7

    .line 188
    :catch_14
    move-exception v0

    .line 190
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 192
    sget-object v0, Lcom/ss/android/socialbase/downloader/i/h;->e:Lcom/ss/android/socialbase/downloader/i/h;
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1b

    goto :goto_7

    .line 180
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
