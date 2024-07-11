.class public Lcom/uc/crashsdk/e;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/crashsdk/e$c;,
        Lcom/uc/crashsdk/e$d;,
        Lcom/uc/crashsdk/e$b;,
        Lcom/uc/crashsdk/e$a;
    }
.end annotation


# static fields
.field private static A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static B:Ljava/lang/String;

.field private static C:I

.field private static D:I

.field private static E:I

.field private static F:I

.field private static G:I

.field private static H:I

.field private static I:I

.field private static J:Ljava/lang/String;

.field private static K:Z

.field private static L:Z

.field private static M:I

.field private static N:I

.field private static O:Z

.field private static P:Lcom/uc/crashsdk/a/e;

.field private static Q:Lcom/uc/crashsdk/e$c;

.field private static R:Z

.field private static final S:Lcom/uc/crashsdk/a/e;

.field private static T:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static U:Ljava/lang/Throwable;

.field private static V:Z

.field private static W:Z

.field private static X:Ljava/lang/Runnable;

.field private static final Y:Ljava/lang/Object;

.field private static Z:I

.field static final synthetic a:Z

.field private static aa:Ljava/lang/Runnable;

.field private static final ab:Ljava/lang/Object;

.field private static ac:Z

.field private static ad:Landroid/os/ParcelFileDescriptor;

.field private static ae:Z

.field private static af:Z

.field private static b:J

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Z

.field private static f:J

.field private static g:J

.field private static h:Z

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static final n:Ljava/lang/Object;

.field private static final o:Ljava/lang/Object;

.field private static final p:Ljava/lang/Object;

.field private static final q:Ljava/lang/Object;

.field private static final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s:I

.field private static t:Ljava/lang/String;

.field private static u:Z

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static final y:Ljava/lang/Object;

.field private static final z:Ljava/lang/Object;


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 59
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/e;->a:Z

    .line 70
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    sput-boolean v2, Lcom/uc/crashsdk/e;->d:Z

    .line 113
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/uc/crashsdk/e;->f:J

    .line 140
    const-wide/16 v3, -0x1

    sput-wide v3, Lcom/uc/crashsdk/e;->g:J

    .line 149
    sput-boolean v0, Lcom/uc/crashsdk/e;->h:Z

    .line 702
    const-string v0, ""

    sput-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    .line 786
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    .line 787
    sput-object v0, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    .line 1585
    sput-object v0, Lcom/uc/crashsdk/e;->m:Ljava/lang/String;

    .line 2246
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    .line 2346
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->o:Ljava/lang/Object;

    .line 2646
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->p:Ljava/lang/Object;

    .line 2768
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->q:Ljava/lang/Object;

    .line 2909
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->r:Ljava/util/ArrayList;

    .line 2910
    sput v2, Lcom/uc/crashsdk/e;->s:I

    .line 2911
    sput-object v0, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    .line 2913
    sput-boolean v2, Lcom/uc/crashsdk/e;->u:Z

    .line 2914
    sput-object v0, Lcom/uc/crashsdk/e;->v:Ljava/lang/String;

    .line 3077
    sput-object v0, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    .line 3078
    sput-object v0, Lcom/uc/crashsdk/e;->x:Ljava/lang/String;

    .line 3080
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->y:Ljava/lang/Object;

    .line 3107
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->z:Ljava/lang/Object;

    .line 3117
    sput-object v0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    .line 3337
    sput-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    .line 3420
    const/4 v1, -0x1

    sput v1, Lcom/uc/crashsdk/e;->C:I

    .line 3421
    sput v1, Lcom/uc/crashsdk/e;->D:I

    .line 3422
    sput v1, Lcom/uc/crashsdk/e;->E:I

    .line 3423
    sput v1, Lcom/uc/crashsdk/e;->F:I

    .line 3424
    sput v1, Lcom/uc/crashsdk/e;->G:I

    .line 3425
    sput v1, Lcom/uc/crashsdk/e;->H:I

    .line 3426
    sput v1, Lcom/uc/crashsdk/e;->I:I

    .line 3427
    const-string v1, "?"

    sput-object v1, Lcom/uc/crashsdk/e;->J:Ljava/lang/String;

    .line 3428
    sput-boolean v2, Lcom/uc/crashsdk/e;->K:Z

    .line 3431
    sput-boolean v2, Lcom/uc/crashsdk/e;->L:Z

    .line 3432
    sput v2, Lcom/uc/crashsdk/e;->M:I

    .line 3550
    sput v2, Lcom/uc/crashsdk/e;->N:I

    .line 3552
    sput-boolean v2, Lcom/uc/crashsdk/e;->O:Z

    .line 3702
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x195

    invoke-direct {v1, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v1, Lcom/uc/crashsdk/e;->P:Lcom/uc/crashsdk/a/e;

    .line 3733
    new-instance v1, Lcom/uc/crashsdk/e$c;

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/e$c;-><init>(B)V

    sput-object v1, Lcom/uc/crashsdk/e;->Q:Lcom/uc/crashsdk/e$c;

    .line 3734
    sput-boolean v2, Lcom/uc/crashsdk/e;->R:Z

    .line 3763
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x19c

    invoke-direct {v1, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v1, Lcom/uc/crashsdk/e;->S:Lcom/uc/crashsdk/a/e;

    .line 3796
    sput-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3816
    sput-object v0, Lcom/uc/crashsdk/e;->U:Ljava/lang/Throwable;

    .line 3817
    sput-boolean v2, Lcom/uc/crashsdk/e;->V:Z

    .line 4053
    sput-boolean v2, Lcom/uc/crashsdk/e;->W:Z

    .line 4054
    sput-object v0, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    .line 4055
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->Y:Ljava/lang/Object;

    .line 4057
    const/16 v1, 0x65

    sput v1, Lcom/uc/crashsdk/e;->Z:I

    .line 4111
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x197

    invoke-direct {v1, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v1, Lcom/uc/crashsdk/e;->aa:Ljava/lang/Runnable;

    .line 4325
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/e;->ab:Ljava/lang/Object;

    .line 4326
    sput-boolean v2, Lcom/uc/crashsdk/e;->ac:Z

    .line 4559
    sput-object v0, Lcom/uc/crashsdk/e;->ad:Landroid/os/ParcelFileDescriptor;

    .line 4560
    sput-boolean v2, Lcom/uc/crashsdk/e;->ae:Z

    .line 4581
    sput-boolean v2, Lcom/uc/crashsdk/e;->af:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    .line 76
    :try_start_a
    invoke-direct {p0}, Lcom/uc/crashsdk/e;->L()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    .line 79
    return-void

    .line 77
    :catchall_e
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public static A()V
    .registers 4

    .line 4329
    sget-boolean v0, Lcom/uc/crashsdk/e;->ac:Z

    if-eqz v0, :cond_5

    .line 4330
    return-void

    .line 4332
    :cond_5
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4333
    return-void

    .line 4335
    :cond_c
    const/4 v0, 0x1

    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x198

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 4338
    return-void
.end method

.method static B()V
    .registers 4

    .line 4435
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x199

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const/4 v1, 0x1

    const-wide/16 v2, 0x1b58

    invoke-static {v1, v0, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 4438
    return-void
.end method

.method public static C()V
    .registers 12

    .line 4513
    nop

    .line 4514
    invoke-static {}, Lcom/uc/crashsdk/g;->L()I

    move-result v0

    .line 4515
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_14

    if-eq v0, v2, :cond_14

    if-ne v0, v1, :cond_10

    goto :goto_14

    .line 4531
    :cond_10
    if-ne v0, v3, :cond_48

    .line 4532
    const/4 v5, 0x0

    goto :goto_49

    .line 4518
    :cond_14
    :goto_14
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_48

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x19

    if-gt v5, v6, :cond_48

    .line 4519
    if-nez v0, :cond_24

    .line 4520
    const/4 v5, 0x0

    goto :goto_25

    .line 4519
    :cond_24
    const/4 v5, 0x1

    .line 4522
    :goto_25
    const-wide/16 v6, 0x0

    if-ne v0, v2, :cond_37

    .line 4523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    .line 4524
    cmp-long v2, v8, v6

    if-nez v2, :cond_36

    const/4 v5, 0x1

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    .line 4526
    :cond_37
    :goto_37
    if-ne v0, v1, :cond_49

    .line 4527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v8, 0x3

    rem-long/2addr v0, v8

    .line 4528
    cmp-long v2, v0, v6

    if-nez v2, :cond_46

    const/4 v5, 0x1

    goto :goto_47

    :cond_46
    const/4 v5, 0x0

    .line 4529
    :goto_47
    goto :goto_49

    .line 4534
    :cond_48
    const/4 v5, 0x1

    :cond_49
    :goto_49
    if-nez v5, :cond_52

    .line 4535
    const-string v0, "crashsdk"

    const-string v1, "SIG 3 is disabled by settings"

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4538
    :cond_52
    nop

    .line 4539
    nop

    .line 4540
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 4541
    goto :goto_5c

    .line 4540
    :cond_5b
    const/4 v3, 0x0

    .line 4543
    :goto_5c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_75

    if-eqz v5, :cond_75

    .line 4545
    nop

    .line 4548
    const/4 v0, 0x2

    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x19d

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    goto :goto_76

    .line 4552
    :cond_75
    move v4, v5

    :goto_76
    const/4 v0, 0x7

    int-to-long v1, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    .line 4554
    if-eqz v4, :cond_83

    .line 4555
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    .line 4557
    :cond_83
    return-void
.end method

.method public static D()Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 4563
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 4564
    const-string v0, "crashsdk"

    const-string v2, "Crash so is not loaded!"

    invoke-static {v0, v2}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4565
    return-object v1

    .line 4568
    :cond_d
    sget-object v0, Lcom/uc/crashsdk/e;->ad:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_12

    .line 4569
    return-object v0

    .line 4572
    :cond_12
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 4573
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1d

    .line 4574
    return-object v1

    .line 4576
    :cond_1d
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->ad:Landroid/os/ParcelFileDescriptor;

    .line 4577
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/crashsdk/e;->ae:Z

    .line 4578
    return-object v0
.end method

.method public static E()Z
    .registers 1

    .line 4608
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    return v0
.end method

.method public static F()V
    .registers 6

    .line 4612
    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v0

    .line 4613
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4614
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_50

    .line 4618
    :cond_16
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 4619
    if-nez v1, :cond_2f

    .line 4620
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ucebu can not list folder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 4621
    return-void

    .line 4624
    :cond_2f
    array-length v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v0, :cond_4f

    aget-object v4, v1, v3

    .line 4625
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 4626
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ucebu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 4629
    invoke-static {v2, v2}, Lcom/uc/crashsdk/e;->a(ZZ)Z

    .line 4630
    return-void

    .line 4624
    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 4633
    :cond_4f
    return-void

    .line 4615
    :cond_50
    :goto_50
    return-void
.end method

.method static synthetic G()Z
    .registers 1

    .line 59
    sget-boolean v0, Lcom/uc/crashsdk/e;->h:Z

    return v0
.end method

.method static synthetic H()Z
    .registers 1

    .line 59
    invoke-static {}, Lcom/uc/crashsdk/e;->N()Z

    move-result v0

    return v0
.end method

.method static synthetic I()I
    .registers 1

    .line 59
    sget v0, Lcom/uc/crashsdk/e;->M:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/uc/crashsdk/e;->M:I

    return v0
.end method

.method static synthetic J()V
    .registers 2

    .line 59
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/uc/crashsdk/e;->X()Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v1, 0x7d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/crashsdk/e;->L:Z

    invoke-static {}, Lcom/uc/crashsdk/e;->Y()V

    return-void
.end method

.method static synthetic K()I
    .registers 1

    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/uc/crashsdk/e;->M:I

    return v0
.end method

.method private L()V
    .registers 5

    .line 87
    invoke-static {}, Lcom/uc/crashsdk/g;->G()I

    move-result v0

    .line 88
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1c

    .line 90
    :try_start_7
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/dev/null"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_17

    .line 95
    nop

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 92
    :catch_17
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 94
    return-void

    .line 97
    :cond_1c
    return-void
.end method

.method private M()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/FileInputStream;

    .line 101
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 102
    goto :goto_6

    .line 103
    :cond_16
    iget-object v0, p0, Lcom/uc/crashsdk/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    return-void
.end method

.method private static N()Z
    .registers 1

    .line 107
    invoke-static {}, Lcom/uc/crashsdk/g;->N()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 108
    const/4 v0, 0x1

    return v0

    .line 110
    :cond_8
    invoke-static {}, Lcom/uc/crashsdk/e;->a()Z

    move-result v0

    return v0
.end method

.method private static O()Ljava/lang/String;
    .registers 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static P()Ljava/lang/String;
    .registers 1

    .line 315
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "fg"

    return-object v0

    :cond_9
    const-string v0, "bg"

    return-object v0
.end method

.method private static Q()[B
    .registers 3

    .line 332
    nop

    .line 333
    const/4 v0, 0x0

    const/16 v1, 0x400

    .line 334
    :cond_4
    :goto_4
    if-nez v0, :cond_12

    if-lez v1, :cond_12

    .line 336
    :try_start_8
    new-array v0, v1, [B
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_b

    .line 343
    goto :goto_4

    .line 337
    :catchall_b
    move-exception v2

    .line 339
    div-int/lit8 v1, v1, 0x2

    .line 340
    const/16 v2, 0x10

    if-ge v1, v2, :cond_4

    .line 341
    :cond_12
    return-object v0
.end method

.method private static R()Ljava/lang/String;
    .registers 1

    .line 479
    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    if-nez v0, :cond_d

    .line 480
    const-string v0, "ucebujava"

    return-object v0

    .line 482
    :cond_d
    const-string v0, "java"

    return-object v0
.end method

.method private static S()V
    .registers 9

    .line 804
    const-string v0, "-"

    .line 805
    nop

    .line 808
    :try_start_3
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_6

    .line 811
    goto :goto_b

    .line 809
    :catchall_6
    move-exception v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 813
    :goto_b
    nop

    .line 814
    nop

    .line 816
    const/4 v2, 0x0

    :try_start_e
    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_6b

    .line 817
    :try_start_1a
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x200

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_66

    .line 818
    const/4 v2, 0x0

    .line 820
    :cond_22
    :try_start_22
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_60

    .line 821
    const-string v6, "Hardware"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_64

    const-string v7, ":"

    if-eqz v6, :cond_43

    .line 822
    :try_start_32
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 823
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 824
    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 825
    :cond_43
    const-string v6, "Processor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 826
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 827
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_59
    .catchall {:try_start_32 .. :try_end_59} :catchall_64

    .line 828
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 825
    :cond_5c
    :goto_5c
    nop

    .line 830
    :goto_5d
    const/4 v5, 0x2

    if-lt v2, v5, :cond_22

    .line 831
    :cond_60
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_75

    .line 834
    :catchall_64
    move-exception v2

    goto :goto_6f

    :catchall_66
    move-exception v4

    move-object v8, v4

    move-object v4, v2

    move-object v2, v8

    goto :goto_6f

    :catchall_6b
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    move-object v3, v4

    :goto_6f
    :try_start_6f
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_7e

    .line 837
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 838
    :goto_75
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 839
    nop

    .line 841
    sput-object v1, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    .line 842
    sput-object v0, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    .line 843
    return-void

    .line 837
    :catchall_7e
    move-exception v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 838
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_87

    :goto_86
    throw v0

    :goto_87
    goto :goto_86
.end method

.method private static T()Ljava/lang/String;
    .registers 2

    .line 2339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static U()Z
    .registers 2

    .line 3491
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private static V()V
    .registers 1

    .line 3543
    sget-boolean v0, Lcom/uc/crashsdk/e;->O:Z

    if-nez v0, :cond_15

    .line 3544
    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    if-nez v0, :cond_15

    .line 3545
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    .line 3548
    :cond_15
    return-void
.end method

.method private static W()V
    .registers 4

    .line 3591
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x19e

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v0, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 3594
    return-void
.end method

.method private static X()Ljava/lang/StringBuilder;
    .registers 7

    .line 3610
    const-string v0, "\n"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/uc/crashsdk/e;->C:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/uc/crashsdk/e;->D:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->F:I
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_dd

    const-string v3, " (Unknown)"

    const-string v4, " (?)"

    packed-switch v2, :pswitch_data_e4

    move-object v2, v4

    goto :goto_43

    :pswitch_30
    :try_start_30
    const-string v2, " (Cold)"

    goto :goto_43

    :pswitch_33
    const-string v2, " (Unspecified failure)"

    goto :goto_43

    :pswitch_36
    const-string v2, " (Over voltage)"

    goto :goto_43

    :pswitch_39
    const-string v2, " (Dead)"

    goto :goto_43

    :pswitch_3c
    const-string v2, " (Overheat)"

    goto :goto_43

    :pswitch_3f
    const-string v2, " (Good)"

    goto :goto_43

    :pswitch_42
    move-object v2, v3

    :goto_43
    const-string v5, "health: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/uc/crashsdk/e;->F:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->G:I

    packed-switch v2, :pswitch_data_f6

    :pswitch_5b
    move-object v2, v4

    goto :goto_68

    :pswitch_5d
    const-string v2, " (Wireless)"

    goto :goto_68

    :pswitch_60
    const-string v2, " (USB port)"

    goto :goto_68

    :pswitch_63
    const-string v2, " (AC charger)"

    goto :goto_68

    :pswitch_66
    const-string v2, " (None)"

    :goto_68
    const-string v5, "pluged: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/uc/crashsdk/e;->G:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/uc/crashsdk/e;->H:I

    packed-switch v2, :pswitch_data_104

    move-object v3, v4

    goto :goto_8d

    :pswitch_82
    const-string v3, " (Full)"

    goto :goto_8d

    :pswitch_85
    const-string v3, " (Not charging)"

    goto :goto_8d

    :pswitch_88
    const-string v3, " (Discharging)"

    goto :goto_8d

    :pswitch_8b
    const-string v3, " (Charging)"

    :goto_8d
    :pswitch_8d
    const-string v2, "status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/uc/crashsdk/e;->H:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/uc/crashsdk/e;->E:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "temperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/uc/crashsdk/e;->I:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "technology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/uc/crashsdk/e;->J:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "battery low: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/uc/crashsdk/e;->K:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_dc
    .catchall {:try_start_30 .. :try_end_dc} :catchall_dd

    return-object v1

    .line 3611
    :catchall_dd
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3615
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5b
        :pswitch_5d
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
    .end packed-switch
.end method

.method private static Y()V
    .registers 4

    .line 3706
    sget-boolean v0, Lcom/uc/crashsdk/b;->c:Z

    if-eqz v0, :cond_1e

    sget-boolean v0, Lcom/uc/crashsdk/e;->L:Z

    if-eqz v0, :cond_1e

    sget-boolean v0, Lcom/uc/crashsdk/a;->c:Z

    if-eqz v0, :cond_1e

    .line 3708
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/e;->L:Z

    .line 3709
    sget-object v1, Lcom/uc/crashsdk/e;->P:Lcom/uc/crashsdk/a/e;

    invoke-static {v1}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 3710
    sget-object v1, Lcom/uc/crashsdk/e;->P:Lcom/uc/crashsdk/a/e;

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 3714
    :cond_1e
    return-void
.end method

.method private static Z()Z
    .registers 1

    .line 3824
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeIsCrashing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;I)I
    .registers 8

    .line 1472
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 1473
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1474
    return v0

    .line 1477
    :cond_7
    nop

    .line 1479
    :try_start_8
    invoke-static {p1}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1480
    if-nez v1, :cond_23

    .line 1481
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' not found or decode failed!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1484
    :cond_23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_68

    .line 1486
    add-int/lit8 v2, p2, 0x20

    if-le p1, v2, :cond_2c

    .line 1487
    goto :goto_2d

    .line 1486
    :cond_2c
    move p2, p1

    .line 1489
    :goto_2d
    const-string p1, "UTF-8"

    if-lez p2, :cond_41

    .line 1490
    :try_start_31
    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 1491
    const-string v2, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1494
    :cond_41
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_64

    .line 1495
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(truncated %d bytes)\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 1496
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1495
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1496
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1495
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_64
    .catchall {:try_start_31 .. :try_end_64} :catchall_65

    .line 1500
    :cond_64
    goto :goto_6d

    .line 1498
    :catchall_65
    move-exception p1

    move v0, p2

    goto :goto_69

    :catchall_68
    move-exception p1

    :goto_69
    invoke-static {p1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    move p2, v0

    .line 1502
    :goto_6d
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1503
    return p2
.end method

.method private static a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7

    .line 1152
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_26

    .line 1158
    const-class v2, Landroid/os/StatFs;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1159
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1160
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1161
    if-eqz p1, :cond_26

    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_26

    .line 1162
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_27

    return-wide p0

    .line 1166
    :cond_26
    goto :goto_28

    .line 1165
    :catchall_27
    move-exception p1

    .line 1169
    :goto_28
    :try_start_28
    const-class p1, Landroid/os/StatFs;

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1170
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1171
    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1172
    if-eqz p0, :cond_47

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_47

    .line 1173
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_45
    .catchall {:try_start_28 .. :try_end_45} :catchall_48

    int-to-long p0, p0

    return-wide p0

    .line 1177
    :cond_47
    goto :goto_4c

    .line 1175
    :catchall_48
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1179
    :goto_4c
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static a(Ljava/io/InputStreamReader;)Ljava/io/BufferedReader;
    .registers 4

    .line 921
    nop

    .line 922
    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 923
    :cond_4
    :goto_4
    if-nez v0, :cond_16

    if-lez v1, :cond_16

    .line 925
    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    .line 932
    move-object v0, v2

    goto :goto_4

    .line 926
    :catchall_f
    move-exception v2

    .line 928
    div-int/lit8 v1, v1, 0x2

    .line 929
    const/16 v2, 0x200

    if-ge v1, v2, :cond_4

    .line 930
    :cond_16
    return-object v0
.end method

.method static a(I)Ljava/lang/String;
    .registers 6

    .line 1589
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "/proc/%d/cmdline"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1590
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 1589
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1591
    const/16 p0, 0x80

    invoke-static {v0, p0, v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object p0

    .line 1592
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1593
    invoke-static {p0}, Lcom/uc/crashsdk/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_29

    return-object p0

    .line 1597
    :cond_28
    goto :goto_2d

    .line 1595
    :catchall_29
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1598
    :goto_2d
    const-string p0, "unknown"

    return-object p0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 1094
    nop

    .line 1096
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    .line 1098
    goto :goto_8

    .line 1097
    :catchall_6
    move-exception v0

    const/4 v0, 0x0

    .line 1099
    :goto_8
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1100
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1102
    :cond_12
    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1912
    invoke-static {}, Lcom/uc/crashsdk/g;->x()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1913
    return-object p0

    .line 1916
    :cond_7
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1917
    if-gtz v0, :cond_10

    .line 1918
    return-object p0

    .line 1920
    :cond_10
    const/16 v1, 0x5f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1921
    if-gt v2, v0, :cond_19

    .line 1922
    return-object p0

    .line 1924
    :cond_19
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1925
    if-gt v1, v2, :cond_22

    .line 1926
    return-object p0

    .line 1930
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CrashSDK"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    .line 1931
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1932
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1933
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1934
    if-nez v0, :cond_46

    .line 1935
    return-object p0

    .line 1938
    :cond_46
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1939
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->e(Ljava/io/File;)[B

    move-result-object v2

    .line 1940
    if-eqz v2, :cond_b2

    array-length v3, v2

    if-gtz v3, :cond_55

    goto :goto_b2

    .line 1944
    :cond_55
    const/4 v3, 0x0

    .line 1946
    const/4 v4, 0x0

    const/16 v5, 0x10

    :try_start_59
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/c;->b([B[B)[B

    move-result-object v3
    :try_end_65
    .catchall {:try_start_59 .. :try_end_65} :catchall_66

    .line 1949
    goto :goto_6a

    .line 1947
    :catchall_66
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1951
    :goto_6a
    if-nez v3, :cond_6d

    .line 1952
    return-object p0

    .line 1955
    :cond_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".ec"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1956
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1957
    invoke-static {v2, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z

    move-result v3

    if-nez v3, :cond_9f

    .line 1958
    return-object p0

    .line 1961
    :cond_9f
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_ae

    .line 1962
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1963
    return-object p0

    .line 1965
    :cond_ae
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1966
    return-object v0

    .line 1941
    :cond_b2
    :goto_b2
    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 883
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_0 .. :try_end_2} :catchall_82

    const/16 v1, 0x1a

    const-string v2, "ps"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v1, :cond_14

    .line 886
    const/4 v0, 0x2

    :try_start_b
    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    const-string v1, "-ef"

    aput-object v1, v0, v4

    goto :goto_18

    .line 888
    :cond_14
    new-array v0, v4, [Ljava/lang/String;

    aput-object v2, v0, v3

    .line 890
    :goto_18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 891
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 892
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 894
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    .line 895
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v2

    .line 897
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 899
    :goto_3b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_82

    const-string v7, "UTF-8"

    if-eqz v6, :cond_7d

    .line 900
    nop

    .line 901
    if-eqz v0, :cond_4c

    :try_start_46
    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_54

    :cond_4c
    if-eqz v2, :cond_56

    .line 902
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 903
    :cond_54
    const/4 v8, 0x1

    goto :goto_6a

    .line 904
    :cond_56
    const/16 v8, 0x2f

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_69

    const/16 v8, 0x2e

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gtz v8, :cond_67

    goto :goto_69

    :cond_67
    const/4 v8, 0x1

    goto :goto_6a

    .line 905
    :cond_69
    :goto_69
    const/4 v8, 0x0

    .line 907
    :goto_6a
    if-eqz v8, :cond_7c

    .line 908
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 909
    const-string v6, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 911
    :cond_7c
    goto :goto_3b

    .line 912
    :cond_7d
    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_81
    .catchall {:try_start_46 .. :try_end_81} :catchall_82

    return-object p0

    .line 913
    :catchall_82
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 916
    const-string p0, "exception exists."

    return-object p0
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/String;JZ)Ljava/lang/String;
    .registers 29

    .line 1669
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const-string v5, "\n"

    const-string v6, "\'\n"

    const-string v7, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    const-string v8, "UTF-8"

    .line 1672
    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    :try_start_11
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_4c0

    const/4 v12, 0x1

    if-nez v0, :cond_22

    .line 1673
    :try_start_18
    invoke-static {}, Lcom/uc/crashsdk/g;->a()V

    .line 1674
    invoke-static {v12}, Lcom/uc/crashsdk/e;->a(Z)V

    goto :goto_22

    .line 1814
    :catchall_1f
    move-exception v0

    goto/16 :goto_4c2

    .line 1678
    :cond_22
    :goto_22
    nop

    .line 1679
    cmp-long v0, v3, v9

    if-nez v0, :cond_2d

    .line 1680
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_1f

    goto :goto_2e

    .line 1679
    :cond_2d
    move-object v0, v11

    .line 1682
    :goto_2e
    :try_start_2e
    new-instance v13, Lcom/uc/crashsdk/e$a;

    invoke-direct {v13, v3, v4, v0}, Lcom/uc/crashsdk/e$a;-><init>(JLjava/io/OutputStream;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_4c0

    .line 1685
    :try_start_33
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_3c

    .line 1686
    const/16 v0, 0x7e

    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_3d

    .line 1690
    :cond_3c
    goto :goto_41

    .line 1688
    :catchall_3d
    move-exception v0

    :try_start_3e
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1693
    :goto_41
    invoke-static {}, Lcom/uc/crashsdk/e;->R()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v2, v0}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_4bc

    .line 1694
    if-eqz p4, :cond_58

    .line 1697
    :try_start_4a
    invoke-virtual {v13}, Lcom/uc/crashsdk/e$a;->flush()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    .line 1700
    goto :goto_58

    .line 1698
    :catchall_4e
    move-exception v0

    move-object v14, v0

    :try_start_50
    invoke-static {v14}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    .line 1814
    :catchall_54
    move-exception v0

    move-object v11, v13

    goto/16 :goto_4c2

    .line 1704
    :cond_58
    :goto_58
    :try_start_58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v14, "Process Name: \'"

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v14, "Thread Name: \'"

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_98
    .catchall {:try_start_58 .. :try_end_98} :catchall_99

    goto :goto_9d

    :catchall_99
    move-exception v0

    :try_start_9a
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_4bc

    .line 1708
    :goto_9d
    :try_start_9d
    const-string v0, "Back traces starts.\n"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_f4

    .line 1709
    :try_start_a6
    const-class v0, Ljava/lang/Throwable;

    const-string v6, "detailMessage"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_c9

    check-cast v6, Ljava/lang/String;

    const-string v14, "\n\t"

    const-string v15, "\n->  "

    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c4
    .catchall {:try_start_a6 .. :try_end_c4} :catchall_c5

    goto :goto_c9

    :catchall_c5
    move-exception v0

    :try_start_c6
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1713
    :cond_c9
    :goto_c9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1714
    if-eqz v0, :cond_f3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f3

    .line 1715
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "Message: "

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_f3
    .catchall {:try_start_c6 .. :try_end_f3} :catchall_f4

    .line 1719
    :cond_f3
    goto :goto_f8

    .line 1717
    :catchall_f4
    move-exception v0

    :try_start_f5
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_f8
    .catchall {:try_start_f5 .. :try_end_f8} :catchall_4bc

    .line 1721
    :goto_f8
    :try_start_f8
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v13}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1722
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_100
    .catchall {:try_start_f8 .. :try_end_100} :catchall_101

    .line 1725
    goto :goto_105

    .line 1723
    :catchall_101
    move-exception v0

    :try_start_102
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_105
    .catchall {:try_start_102 .. :try_end_105} :catchall_4bc

    .line 1727
    :goto_105
    :try_start_105
    const-string v0, "Back traces ends.\n"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_10e
    .catchall {:try_start_105 .. :try_end_10e} :catchall_10f

    .line 1730
    goto :goto_113

    .line 1728
    :catchall_10f
    move-exception v0

    :try_start_110
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1731
    :goto_113
    invoke-static {v13}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_116
    .catchall {:try_start_110 .. :try_end_116} :catchall_4bc

    .line 1734
    :try_start_116
    invoke-virtual {v13}, Lcom/uc/crashsdk/e$a;->flush()V
    :try_end_119
    .catchall {:try_start_116 .. :try_end_119} :catchall_11a

    .line 1737
    goto :goto_11f

    .line 1735
    :catchall_11a
    move-exception v0

    move-object v1, v0

    :try_start_11c
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_11f
    .catchall {:try_start_11c .. :try_end_11f} :catchall_4bc

    .line 1741
    :goto_11f
    :try_start_11f
    invoke-static {v13, v8, v7}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_123

    .line 1744
    goto :goto_128

    .line 1742
    :catchall_123
    move-exception v0

    move-object v1, v0

    :try_start_125
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_4bc

    .line 1746
    :goto_128
    if-eqz p4, :cond_133

    .line 1748
    :try_start_12a
    invoke-virtual {v13}, Lcom/uc/crashsdk/e$a;->flush()V
    :try_end_12d
    .catchall {:try_start_12a .. :try_end_12d} :catchall_12e

    .line 1751
    goto :goto_133

    .line 1749
    :catchall_12e
    move-exception v0

    move-object v1, v0

    :try_start_130
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_54

    .line 1755
    :cond_133
    :goto_133
    const/16 v1, 0x2800

    :try_start_135
    const-string v0, "/proc/meminfo"

    const-string v6, "meminfo:\n"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v13, v0, v1}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    :try_end_143
    .catchall {:try_start_135 .. :try_end_143} :catchall_144

    goto :goto_148

    :catchall_144
    move-exception v0

    :try_start_145
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_148
    .catchall {:try_start_145 .. :try_end_148} :catchall_4bc

    :goto_148
    const/4 v6, 0x0

    :try_start_149
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "/proc/%d/status"

    new-array v15, v12, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v6

    invoke-static {v0, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "status:\n"

    invoke-virtual {v14, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v13, v0, v1}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    :try_end_169
    .catchall {:try_start_149 .. :try_end_169} :catchall_16a

    goto :goto_16e

    :catchall_16a
    move-exception v0

    :try_start_16b
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_16e
    .catchall {:try_start_16b .. :try_end_16e} :catchall_4bc

    :goto_16e
    :try_start_16e
    const-string v0, "memory info:\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/uc/crashsdk/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_18c
    .catchall {:try_start_16e .. :try_end_18c} :catchall_18d

    goto :goto_191

    :catchall_18d
    move-exception v0

    :try_start_18e
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_191
    invoke-static {v13}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1758
    invoke-static {v13}, Lcom/uc/crashsdk/e;->f(Ljava/io/OutputStream;)V
    :try_end_197
    .catchall {:try_start_18e .. :try_end_197} :catchall_4bc

    .line 1761
    :try_start_197
    invoke-static {v13, v8, v11}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_19a
    .catchall {:try_start_197 .. :try_end_19a} :catchall_19b

    goto :goto_1a0

    :catchall_19b
    move-exception v0

    move-object v1, v0

    :try_start_19d
    invoke-static {v1, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_1a0
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z
    :try_end_1a2
    .catchall {:try_start_19d .. :try_end_1a2} :catchall_4bc

    if-eqz v0, :cond_1ba

    :try_start_1a4
    sput-boolean v6, Lcom/uc/crashsdk/e;->h:Z
    :try_end_1a6
    .catchall {:try_start_1a4 .. :try_end_1a6} :catchall_54

    :try_start_1a6
    const-string v0, "JAVADUMPFILES"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1b3
    .catchall {:try_start_1a6 .. :try_end_1b3} :catchall_1b4

    goto :goto_1b8

    :catchall_1b4
    move-exception v0

    :try_start_1b5
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_1b8
    sput-boolean v12, Lcom/uc/crashsdk/e;->h:Z
    :try_end_1ba
    .catchall {:try_start_1b5 .. :try_end_1ba} :catchall_54

    .line 1764
    :cond_1ba
    :try_start_1ba
    invoke-virtual {v13}, Lcom/uc/crashsdk/e$a;->flush()V
    :try_end_1bd
    .catchall {:try_start_1ba .. :try_end_1bd} :catchall_1be

    .line 1767
    goto :goto_1c3

    .line 1765
    :catchall_1be
    move-exception v0

    move-object v1, v0

    :try_start_1c0
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1770
    :goto_1c3
    invoke-static {v13}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;)V
    :try_end_1c6
    .catchall {:try_start_1c0 .. :try_end_1c6} :catchall_4bc

    .line 1773
    :try_start_1c6
    invoke-virtual {v13}, Lcom/uc/crashsdk/e$a;->flush()V
    :try_end_1c9
    .catchall {:try_start_1c6 .. :try_end_1c9} :catchall_1ca

    .line 1776
    goto :goto_1cf

    .line 1774
    :catchall_1ca
    move-exception v0

    move-object v1, v0

    :try_start_1cc
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_1cf
    .catchall {:try_start_1cc .. :try_end_1cf} :catchall_4bc

    .line 1779
    :goto_1cf
    :try_start_1cf
    const-string v0, "battery info:\n"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1d8
    .catchall {:try_start_1cf .. :try_end_1d8} :catchall_1d9

    goto :goto_1dd

    :catchall_1d9
    move-exception v0

    :try_start_1da
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_1dd
    .catchall {:try_start_1da .. :try_end_1dd} :catchall_4bc

    :goto_1dd
    :try_start_1dd
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v0, :cond_1f3

    sput-boolean v6, Lcom/uc/crashsdk/e;->h:Z

    const-string v0, "BATTERYINFO"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V

    sput-boolean v12, Lcom/uc/crashsdk/e;->h:Z

    goto :goto_209

    :cond_1f3
    invoke-static {}, Lcom/uc/crashsdk/e;->X()Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_209

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_204
    .catchall {:try_start_1dd .. :try_end_204} :catchall_205

    goto :goto_209

    :catchall_205
    move-exception v0

    :try_start_206
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_209
    :goto_209
    invoke-static {v13}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_20c
    .catchall {:try_start_206 .. :try_end_20c} :catchall_4bc

    .line 1782
    :try_start_20c
    const-string v0, "disk info:\n"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_215
    .catchall {:try_start_20c .. :try_end_215} :catchall_216

    goto :goto_21a

    :catchall_216
    move-exception v0

    :try_start_217
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_21a
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z
    :try_end_21c
    .catchall {:try_start_217 .. :try_end_21c} :catchall_4bc

    if-eqz v0, :cond_239

    :try_start_21e
    sput-boolean v6, Lcom/uc/crashsdk/e;->h:Z
    :try_end_220
    .catchall {:try_start_21e .. :try_end_220} :catchall_54

    :try_start_220
    const-string v0, "FSSTAT"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_22d
    .catchall {:try_start_220 .. :try_end_22d} :catchall_22e

    goto :goto_232

    :catchall_22e
    move-exception v0

    :try_start_22f
    invoke-static {v0, v13}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_232
    sput-boolean v12, Lcom/uc/crashsdk/e;->h:Z
    :try_end_234
    .catchall {:try_start_22f .. :try_end_234} :catchall_54

    move-object/from16 v21, v7

    move-object v1, v13

    goto/16 :goto_36f

    :cond_239
    :try_start_239
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->b()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/uc/crashsdk/e;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_364

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_364

    const-string v14, "/storage/emulated"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_261

    goto/16 :goto_360

    :cond_261
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_264
    .catchall {:try_start_239 .. :try_end_264} :catchall_368

    :try_start_264
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_269
    .catchall {:try_start_264 .. :try_end_269} :catchall_35f

    :try_start_269
    const-string v14, "getBlockCountLong"

    const-string v15, "getBlockCount"

    invoke-static {v0, v14, v15}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    const-string v9, "getBlockSizeLong"

    const-string v10, "getBlockSize"

    invoke-static {v0, v9, v10}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v17, 0x400

    div-long v17, v14, v17

    mul-long v17, v17, v9

    const-wide/16 v19, 0x2800

    cmp-long v21, v17, v19

    if-ltz v21, :cond_35b

    const-string v11, "getAvailableBlocksLong"

    const-string v6, "getAvailableBlocks"
    :try_end_289
    .catchall {:try_start_269 .. :try_end_289} :catchall_368

    move-object/from16 v19, v13

    :try_start_28b
    invoke-static {v0, v11, v6}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    const-string v6, "getFreeBlocksLong"

    const-string v11, "getFreeBlocks"

    invoke-static {v0, v6, v11}, Lcom/uc/crashsdk/e;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2
    :try_end_297
    .catchall {:try_start_28b .. :try_end_297} :catchall_355

    :try_start_297
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s:\n"

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v11, v6

    invoke-static {v0, v4, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_2a9
    .catchall {:try_start_297 .. :try_end_2a9} :catchall_34a

    move-object/from16 v1, v19

    :try_start_2ab
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "  total:      %d kB\n"

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/Object;
    :try_end_2b5
    .catchall {:try_start_2ab .. :try_end_2b5} :catchall_346

    long-to-double v14, v14

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v19

    move-object/from16 v21, v7

    long-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v6

    const-wide/high16 v22, 0x4090000000000000L    # 1024.0

    div-double v14, v14, v22

    double-to-long v14, v14

    :try_start_2ca
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v11, v15

    invoke-static {v0, v4, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "  available:  %d kB\n"

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Object;
    :try_end_2e3
    .catchall {:try_start_2ca .. :try_end_2e3} :catchall_344

    long-to-double v11, v12

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v19

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v6

    div-double v11, v11, v22

    double-to-long v11, v11

    :try_start_2f1
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v14, v12

    invoke-static {v0, v4, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "  free:       %d kB\n"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;
    :try_end_30a
    .catchall {:try_start_2f1 .. :try_end_30a} :catchall_344

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v19

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v6

    div-double v2, v2, v22

    double-to-long v2, v2

    :try_start_318
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v12, v3

    invoke-static {v0, v4, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "  block size: %d B\n\n"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_343
    .catchall {:try_start_318 .. :try_end_343} :catchall_344

    goto :goto_36f

    :catchall_344
    move-exception v0

    goto :goto_34f

    :catchall_346
    move-exception v0

    move-object/from16 v21, v7

    goto :goto_34f

    :catchall_34a
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v1, v19

    :goto_34f
    :try_start_34f
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_352
    .catchall {:try_start_34f .. :try_end_352} :catchall_353

    goto :goto_36f

    :catchall_353
    move-exception v0

    goto :goto_36c

    :catchall_355
    move-exception v0

    move-object/from16 v21, v7

    move-object/from16 v1, v19

    goto :goto_36c

    :cond_35b
    move-object/from16 v21, v7

    move-object v1, v13

    goto :goto_36f

    :catchall_35f
    move-exception v0

    :goto_360
    move-object/from16 v21, v7

    move-object v1, v13

    goto :goto_36f

    :cond_364
    move-object/from16 v21, v7

    move-object v1, v13

    goto :goto_36f

    :catchall_368
    move-exception v0

    move-object/from16 v21, v7

    move-object v1, v13

    :goto_36c
    :try_start_36c
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_36f
    invoke-static {v1}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_372
    .catchall {:try_start_36c .. :try_end_372} :catchall_4ba

    .line 1785
    :try_start_372
    const-string v0, "device status:\n"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_37b
    .catchall {:try_start_372 .. :try_end_37b} :catchall_37c

    goto :goto_380

    :catchall_37c
    move-exception v0

    :try_start_37d
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_380
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z
    :try_end_382
    .catchall {:try_start_37d .. :try_end_382} :catchall_4ba

    if-eqz v0, :cond_39c

    const/4 v2, 0x0

    :try_start_385
    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z

    const-string v0, "DEVICESTATUS"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z
    :try_end_397
    .catchall {:try_start_385 .. :try_end_397} :catchall_399

    goto/16 :goto_43e

    :catchall_399
    move-exception v0

    goto/16 :goto_43b

    :cond_39c
    :try_start_39c
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "has root: %s\n"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->e()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, ""

    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v2, :cond_3c1

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    :cond_3c1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build tags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->f()Z

    move-result v0

    if-eqz v0, :cond_3da

    const-string v0, " (default root)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3da
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-static {}, Lcom/uc/crashsdk/a/g;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43e

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "su binary: %s\n"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v5, v4

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "su permission: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uc/crashsdk/a/g;->g()Z

    move-result v2

    if-eqz v2, :cond_41d

    const-string v2, "valid ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_422

    :cond_41d
    const-string v2, "invalid ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_422
    invoke-static {}, Lcom/uc/crashsdk/a/g;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_439
    .catchall {:try_start_39c .. :try_end_439} :catchall_43a

    goto :goto_43e

    :catchall_43a
    move-exception v0

    :goto_43b
    :try_start_43b
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_43e
    :goto_43e
    invoke-static {v1}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1788
    invoke-static {v1}, Lcom/uc/crashsdk/e;->c(Ljava/io/OutputStream;)V

    .line 1791
    invoke-static {v1}, Lcom/uc/crashsdk/e;->d(Ljava/io/OutputStream;)V
    :try_end_447
    .catchall {:try_start_43b .. :try_end_447} :catchall_4ba

    .line 1794
    move-object/from16 v2, v21

    const/4 v3, 0x0

    :try_start_44a
    invoke-static {v1, v8, v2, v3}, Lcom/uc/crashsdk/a;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_44d
    .catchall {:try_start_44a .. :try_end_44d} :catchall_44e

    goto :goto_453

    :catchall_44e
    move-exception v0

    move-object v3, v0

    :try_start_450
    invoke-static {v3, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_453
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v0, :cond_46f

    const/4 v3, 0x0

    sput-boolean v3, Lcom/uc/crashsdk/e;->h:Z
    :try_end_45a
    .catchall {:try_start_450 .. :try_end_45a} :catchall_4ba

    :try_start_45a
    const-string v0, "JAVACACHEDINFOS"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_467
    .catchall {:try_start_45a .. :try_end_467} :catchall_468

    goto :goto_46c

    :catchall_468
    move-exception v0

    :try_start_469
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_46c
    const/4 v3, 0x1

    sput-boolean v3, Lcom/uc/crashsdk/e;->h:Z
    :try_end_46f
    .catchall {:try_start_469 .. :try_end_46f} :catchall_4ba

    .line 1797
    :cond_46f
    :try_start_46f
    invoke-virtual {v1}, Lcom/uc/crashsdk/e$a;->flush()V
    :try_end_472
    .catchall {:try_start_46f .. :try_end_472} :catchall_473

    .line 1800
    goto :goto_478

    .line 1798
    :catchall_473
    move-exception v0

    move-object v3, v0

    :try_start_475
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_478
    .catchall {:try_start_475 .. :try_end_478} :catchall_4ba

    .line 1803
    :goto_478
    const/4 v3, 0x0

    :try_start_479
    invoke-static {v1, v8, v2, v3}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_47c
    .catchall {:try_start_479 .. :try_end_47c} :catchall_47d

    goto :goto_482

    :catchall_47d
    move-exception v0

    move-object v2, v0

    :try_start_47f
    invoke-static {v2, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_482
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v0, :cond_49e

    const/4 v2, 0x0

    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z
    :try_end_489
    .catchall {:try_start_47f .. :try_end_489} :catchall_4ba

    :try_start_489
    const-string v0, "JAVACALLBACKINFOS"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_496
    .catchall {:try_start_489 .. :try_end_496} :catchall_497

    goto :goto_49b

    :catchall_497
    move-exception v0

    :try_start_498
    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_49b
    const/4 v2, 0x1

    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z

    .line 1806
    :cond_49e
    invoke-virtual {v1}, Lcom/uc/crashsdk/e$a;->a()V

    .line 1807
    invoke-static {v1}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$a;)V
    :try_end_4a4
    .catchall {:try_start_498 .. :try_end_4a4} :catchall_4ba

    .line 1810
    :try_start_4a4
    invoke-virtual {v1}, Lcom/uc/crashsdk/e$a;->flush()V
    :try_end_4a7
    .catchall {:try_start_4a4 .. :try_end_4a7} :catchall_4a8

    .line 1813
    goto :goto_4ad

    .line 1811
    :catchall_4a8
    move-exception v0

    move-object v2, v0

    :try_start_4aa
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_4ad
    .catchall {:try_start_4aa .. :try_end_4ad} :catchall_4ba

    .line 1817
    :goto_4ad
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_4b6

    .line 1818
    invoke-static {v1}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$a;)V

    .line 1820
    :cond_4b6
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_4d1

    .line 1814
    :catchall_4ba
    move-exception v0

    goto :goto_4be

    :catchall_4bc
    move-exception v0

    move-object v1, v13

    :goto_4be
    move-object v11, v1

    goto :goto_4c2

    :catchall_4c0
    move-exception v0

    move-object v3, v11

    :goto_4c2
    :try_start_4c2
    invoke-static {v0, v11}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_4c5
    .catchall {:try_start_4c2 .. :try_end_4c5} :catchall_4f4

    .line 1817
    const-wide/16 v1, 0x0

    cmp-long v0, p2, v1

    if-eqz v0, :cond_4ce

    .line 1818
    invoke-static {v11}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$a;)V

    .line 1820
    :cond_4ce
    invoke-static {v11}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1821
    :goto_4d1
    nop

    .line 1823
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-nez v0, :cond_4d9

    .line 1825
    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->q(Ljava/lang/String;)V

    .line 1829
    :cond_4d9
    nop

    .line 1830
    :try_start_4da
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-nez v0, :cond_4e7

    .line 1832
    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1833
    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4e9

    .line 1830
    :cond_4e7
    move-object/from16 v0, p1

    .line 1837
    :goto_4e9
    const-string v1, "java"

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4ee
    .catchall {:try_start_4da .. :try_end_4ee} :catchall_4ef

    .line 1840
    goto :goto_4f3

    .line 1838
    :catchall_4ef
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1842
    :goto_4f3
    return-object p1

    .line 1817
    :catchall_4f4
    move-exception v0

    move-object v1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_4ff

    .line 1818
    invoke-static {v11}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$a;)V

    .line 1820
    :cond_4ff
    invoke-static {v11}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static a(Ljava/util/Date;)Ljava/lang/String;
    .registers 5

    .line 3291
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 3292
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 3293
    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x5

    aput-object p0, v1, v2

    .line 3291
    const-string p0, "%d%02d%02d%02d%02d%02d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 11

    .line 4482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4483
    nop

    .line 4484
    const/4 v1, 0x0

    if-eqz p0, :cond_47

    array-length v2, p0

    if-lez v2, :cond_47

    .line 4485
    const/4 v2, 0x1

    if-nez p1, :cond_11

    const/4 v3, 0x1

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    .line 4486
    :goto_12
    array-length v4, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_15
    if-ge v5, v4, :cond_46

    aget-object v7, p0, v5

    .line 4487
    add-int/lit8 v6, v6, 0x1

    .line 4488
    const-string v8, "  at "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4489
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4490
    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4492
    if-nez v3, :cond_43

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 4493
    nop

    .line 4495
    nop

    .line 4496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 4486
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_46
    move v1, v6

    .line 4500
    :cond_47
    if-nez v1, :cond_4e

    .line 4501
    const-string p0, "  (no java stack)\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4504
    :cond_4e
    return-object v0
.end method

.method public static a(I[Ljava/lang/Object;)V
    .registers 9

    .line 377
    const/16 v0, 0x1d

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_21e

    .line 450
    :pswitch_a
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-eqz p0, :cond_215

    .line 453
    return-void

    .line 440
    :pswitch_f
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_1c

    if-eqz p1, :cond_16

    goto :goto_1c

    :cond_16
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 441
    :cond_1c
    :goto_1c
    aget-object p0, p1, v3

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 442
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    cmp-long v3, v1, p0

    if-ltz v3, :cond_3f

    invoke-static {}, Lcom/uc/crashsdk/a/h;->g()V

    const/16 p0, 0x64

    invoke-static {p0}, Lcom/uc/crashsdk/f;->a(I)V

    invoke-static {v4, v4}, Lcom/uc/crashsdk/e;->b(ZZ)I

    invoke-static {}, Lcom/uc/crashsdk/a/h;->b()V

    goto :goto_48

    :cond_3f
    invoke-static {}, Lcom/uc/crashsdk/a/h;->h()V

    invoke-static {}, Lcom/uc/crashsdk/a/h;->i()V

    invoke-static {}, Lcom/uc/crashsdk/a/h;->c()V

    :goto_48
    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/util/Calendar;)V

    .line 446
    :pswitch_4b
    invoke-static {}, Lcom/uc/crashsdk/e;->V()V

    .line 447
    return-void

    .line 436
    :pswitch_4f
    :try_start_4f
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/e;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5a

    return-void

    :cond_5a
    sget p0, Lcom/uc/crashsdk/e;->N:I

    add-int/2addr p0, v4

    sput p0, Lcom/uc/crashsdk/e;->N:I

    if-lt p0, v2, :cond_6d

    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_6c

    const/16 p0, 0x82

    const-string p1, "(get failed)"

    invoke-static {p0, p1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_6c
    return-void

    :cond_6d
    invoke-static {}, Lcom/uc/crashsdk/e;->W()V
    :try_end_70
    .catchall {:try_start_4f .. :try_end_70} :catchall_71

    return-void

    :catchall_71
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 437
    return-void

    .line 432
    :pswitch_76
    const/16 p0, 0x8

    invoke-static {p0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    .line 433
    return-void

    .line 428
    :pswitch_7c
    sget-boolean p0, Lcom/uc/crashsdk/e;->R:Z

    if-nez p0, :cond_94

    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result p0

    if-eqz p0, :cond_94

    invoke-static {}, Lcom/uc/crashsdk/g;->K()Z

    move-result p0

    if-eqz p0, :cond_94

    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/e;->b(Landroid/content/Context;)V

    return-void

    :cond_94
    sget-boolean p0, Lcom/uc/crashsdk/e;->R:Z

    if-eqz p0, :cond_b4

    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result p0

    if-eqz p0, :cond_a4

    invoke-static {}, Lcom/uc/crashsdk/g;->K()Z

    move-result p0

    if-nez p0, :cond_b4

    :cond_a4
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object p0

    :try_start_a8
    sget-object p1, Lcom/uc/crashsdk/e;->Q:Lcom/uc/crashsdk/e$c;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-boolean v3, Lcom/uc/crashsdk/e;->R:Z
    :try_end_af
    .catchall {:try_start_a8 .. :try_end_af} :catchall_b0

    return-void

    :catchall_b0
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 429
    :cond_b4
    return-void

    .line 424
    :pswitch_b5
    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_cd

    const-string p0, "jni"

    invoke-static {p0}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;)Z

    move-result p0

    const/16 p1, 0x1c

    invoke-static {p1, p0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    const-string p0, "anr"

    invoke-static {p0}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 425
    :cond_cd
    return-void

    .line 420
    :pswitch_ce
    invoke-static {v3, v4}, Lcom/uc/crashsdk/e;->a(ZZ)Z

    .line 421
    return-void

    .line 413
    :pswitch_d2
    invoke-static {v3, v3}, Lcom/uc/crashsdk/e;->b(ZZ)I

    .line 417
    return-void

    .line 412
    :pswitch_d6
    sget-object p0, Lcom/uc/crashsdk/e;->ab:Ljava/lang/Object;

    monitor-enter p0

    :try_start_d9
    sget-boolean p1, Lcom/uc/crashsdk/e;->ac:Z

    if-nez p1, :cond_10d

    invoke-static {}, Lcom/uc/crashsdk/g;->O()Z

    move-result p1

    if-eqz p1, :cond_10d

    invoke-static {}, Lcom/uc/crashsdk/b;->w()Z

    move-result p1

    if-nez p1, :cond_ea

    goto :goto_10d

    :cond_ea
    invoke-static {}, Lcom/uc/crashsdk/b;->p()Z

    invoke-static {}, Lcom/uc/crashsdk/a/h;->f()V

    invoke-static {}, Lcom/uc/crashsdk/f;->c()V

    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result p1

    if-eqz p1, :cond_fc

    invoke-static {}, Lcom/uc/crashsdk/e;->B()V

    :cond_fc
    invoke-static {}, Lcom/uc/crashsdk/g;->O()Z

    move-result p1

    if-eqz p1, :cond_109

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/crashsdk/e;->a(Ljava/util/Calendar;)V

    :cond_109
    sput-boolean v4, Lcom/uc/crashsdk/e;->ac:Z

    monitor-exit p0

    return-void

    :cond_10d
    :goto_10d
    monitor-exit p0

    return-void

    :catchall_10f
    move-exception p1

    monitor-exit p0
    :try_end_111
    .catchall {:try_start_d9 .. :try_end_111} :catchall_10f

    throw p1

    .line 405
    :pswitch_112
    :try_start_112
    invoke-static {}, Lcom/uc/crashsdk/a;->d()V
    :try_end_115
    .catchall {:try_start_112 .. :try_end_115} :catchall_116

    .line 408
    return-void

    .line 406
    :catchall_116
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 409
    return-void

    .line 395
    :pswitch_11b
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_128

    if-eqz p1, :cond_122

    goto :goto_128

    :cond_122
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 396
    :cond_128
    :goto_128
    aget-object p0, p1, v3

    check-cast p0, Ljava/lang/String;

    .line 397
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 398
    const/4 v1, 0x2

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 399
    invoke-static {p0, v0, p1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;ZZ)V

    .line 400
    return-void

    .line 391
    :pswitch_141
    sput-boolean v3, Lcom/uc/crashsdk/e;->L:Z

    invoke-static {}, Lcom/uc/crashsdk/e;->X()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/uc/crashsdk/b;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_159

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/lang/String;)Z

    .line 392
    :cond_159
    return-void

    .line 387
    :pswitch_15a
    invoke-static {}, Lcom/uc/crashsdk/e;->aa()V

    .line 388
    return-void

    .line 383
    :pswitch_15e
    sget-object p0, Lcom/uc/crashsdk/e;->Y:Ljava/lang/Object;

    monitor-enter p0

    :try_start_161
    sget-object p1, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    if-nez p1, :cond_167

    monitor-exit p0

    return-void

    :cond_167
    sput-boolean v4, Lcom/uc/crashsdk/e;->W:Z

    monitor-exit p0
    :try_end_16a
    .catchall {:try_start_161 .. :try_end_16a} :catchall_1f0

    invoke-static {}, Lcom/uc/crashsdk/b;->n()Z

    move-result p1

    if-nez p1, :cond_1ef

    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result p1

    if-nez p1, :cond_180

    const-string p0, "DEBUG"

    invoke-static {}, Lcom/uc/crashsdk/a/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_180
    const-string p1, "unexp"

    invoke-static {p1}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_190

    const-string p0, "DEBUG"

    const-string p1, "unexp sample miss"

    invoke-static {p0, p1}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_190
    invoke-static {}, Lcom/uc/crashsdk/g;->o()I

    move-result p1

    int-to-long v5, p1

    invoke-static {}, Lcom/uc/crashsdk/g;->p()I

    move-result p1

    invoke-static {v5, v6, p1}, Lcom/uc/crashsdk/JNIBridge;->nativeGenerateUnexpLog(JI)I

    move-result p1

    if-eqz p1, :cond_1e7

    const/16 v3, 0xb

    invoke-static {v3}, Lcom/uc/crashsdk/f;->a(I)V

    and-int/lit16 v3, p1, 0x1100

    if-eqz v3, :cond_1b2

    const/16 p1, 0x69

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    const/16 p1, 0x1e

    :goto_1ae
    invoke-static {p1}, Lcom/uc/crashsdk/f;->a(I)V

    goto :goto_1e4

    :cond_1b2
    and-int/lit16 v3, p1, 0x2100

    if-eqz v3, :cond_1bd

    const/16 p1, 0x68

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    const/16 p1, 0x1f

    goto :goto_1ae

    :cond_1bd
    and-int/lit16 v3, p1, 0x4100

    if-eqz v3, :cond_1c8

    const/16 p1, 0x6a

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    const/16 p1, 0x20

    goto :goto_1ae

    :cond_1c8
    and-int/lit16 v3, p1, 0x500

    if-eqz v3, :cond_1d4

    const/16 p1, 0x67

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    invoke-static {v2}, Lcom/uc/crashsdk/f;->a(I)V

    goto :goto_1e4

    :cond_1d4
    and-int/lit16 p1, p1, 0x900

    if-eqz p1, :cond_1e0

    const/16 p1, 0x6b

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    goto :goto_1e4

    :cond_1e0
    const/16 p1, 0x66

    sput p1, Lcom/uc/crashsdk/e;->Z:I

    :goto_1e4
    invoke-static {v4}, Lcom/uc/crashsdk/e;->a(Z)V

    :cond_1e7
    monitor-enter p0

    :try_start_1e8
    sput-object v1, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    monitor-exit p0

    return-void

    :catchall_1ec
    move-exception p1

    monitor-exit p0
    :try_end_1ee
    .catchall {:try_start_1e8 .. :try_end_1ee} :catchall_1ec

    throw p1

    .line 384
    :cond_1ef
    return-void

    .line 383
    :catchall_1f0
    move-exception p1

    :try_start_1f1
    monitor-exit p0
    :try_end_1f2
    .catchall {:try_start_1f1 .. :try_end_1f2} :catchall_1f0

    throw p1

    .line 379
    :pswitch_1f3
    invoke-static {}, Lcom/uc/crashsdk/b;->F()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_1fc

    const/4 p0, 0x1

    goto :goto_1fd

    :cond_1fc
    const/4 p0, 0x0

    :goto_1fd
    if-eqz p0, :cond_202

    const-wide/16 p0, 0x1

    goto :goto_204

    :cond_202
    const-wide/16 p0, 0x0

    :goto_204
    invoke-static {v2, p0, p1, v1, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    sput-boolean v4, Lcom/uc/crashsdk/a;->c:Z

    invoke-static {v3}, Lcom/uc/crashsdk/a;->a(Z)Z

    sput-boolean v4, Lcom/uc/crashsdk/e;->L:Z

    invoke-static {}, Lcom/uc/crashsdk/e;->Y()V

    invoke-static {}, Lcom/uc/crashsdk/e;->x()V

    .line 380
    return-void

    .line 450
    :cond_215
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_21c

    :goto_21b
    throw p0

    :goto_21c
    goto :goto_21b

    nop

    :pswitch_data_21e
    .packed-switch 0x191
        :pswitch_1f3
        :pswitch_15e
        :pswitch_15a
        :pswitch_a
        :pswitch_141
        :pswitch_11b
        :pswitch_112
        :pswitch_d6
        :pswitch_d2
        :pswitch_ce
        :pswitch_b5
        :pswitch_7c
        :pswitch_76
        :pswitch_4f
        :pswitch_f
        :pswitch_4b
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    .line 3496
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/e;->U()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3498
    return-void

    .line 3500
    :cond_7
    new-instance v0, Lcom/uc/crashsdk/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/e$c;-><init>(B)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANR"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 3502
    invoke-static {v3}, Lcom/uc/crashsdk/a/f;->a(I)Landroid/os/Handler;

    move-result-object v3

    .line 3500
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    .line 3505
    return-void

    .line 3503
    :catchall_1e
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3506
    return-void
.end method

.method private static a(Lcom/uc/crashsdk/e$a;)V
    .registers 6

    .line 1451
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "log end: %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1452
    invoke-static {}, Lcom/uc/crashsdk/e;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1451
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1453
    invoke-virtual {p0, v0}, Lcom/uc/crashsdk/e$a;->a(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    .line 1456
    return-void

    .line 1454
    :catchall_16
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1457
    return-void
.end method

.method private static a(Lcom/uc/crashsdk/e$a;Ljava/lang/String;J)V
    .registers 8

    .line 2852
    const-string v0, "UTF-8"

    .line 2853
    nop

    .line 2854
    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    .line 2857
    :try_start_8
    invoke-virtual {p0}, Lcom/uc/crashsdk/e$a;->flush()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    .line 2860
    goto :goto_10

    .line 2858
    :catchall_c
    move-exception v1

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2863
    :goto_10
    invoke-static {p1, p2, p3}, Lcom/uc/crashsdk/JNIBridge;->nativeDumpThreads(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 2864
    sget-boolean p2, Lcom/uc/crashsdk/e;->af:Z

    if-nez p2, :cond_50

    if-eqz p1, :cond_50

    .line 2865
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x200

    if-ge p2, p3, :cond_50

    .line 2866
    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_50

    const/16 p2, 0xa

    .line 2867
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_50

    .line 2869
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2872
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_4c

    .line 2873
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Can not found "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2875
    :cond_4c
    move-object v3, v2

    move-object v2, p1

    move-object p1, v3

    goto :goto_54

    .line 2877
    :cond_50
    move-object v2, p1

    goto :goto_54

    .line 2880
    :cond_52
    const-string p1, "Native not initialized, skip dump!"

    .line 2883
    :goto_54
    if-eqz p1, :cond_6f

    .line 2886
    :try_start_56
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uc/crashsdk/e$a;->write([B)V

    .line 2887
    const-string p1, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_66
    .catchall {:try_start_56 .. :try_end_66} :catchall_67

    .line 2890
    goto :goto_6b

    .line 2888
    :catchall_67
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2891
    :goto_6b
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    goto :goto_88

    .line 2892
    :cond_6f
    if-eqz v2, :cond_88

    sget-boolean p1, Lcom/uc/crashsdk/e;->af:Z

    if-nez p1, :cond_88

    .line 2894
    const/high16 p1, 0x100000

    invoke-static {p0, v2, p1}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I

    .line 2896
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2897
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_88

    .line 2898
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 2903
    :cond_88
    :goto_88
    :try_start_88
    invoke-virtual {p0}, Lcom/uc/crashsdk/e$a;->flush()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    .line 2906
    return-void

    .line 2904
    :catchall_8c
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2907
    return-void
.end method

.method private static a(Ljava/io/OutputStream;)V
    .registers 3

    .line 939
    :try_start_0
    const-string v0, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 942
    return-void

    .line 940
    :catchall_c
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 943
    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 3410
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/e;->h:Z

    .line 3412
    const/4 v1, 0x1

    :try_start_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "$^%s`%s^$"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    .line 3413
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 3412
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1d

    .line 3416
    goto :goto_21

    .line 3414
    :catchall_1d
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3417
    :goto_21
    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z

    .line 3418
    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 11

    .line 3396
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/e;->h:Z

    .line 3398
    const/4 v1, 0x1

    :try_start_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "$^%s`%s`%d`%d,%d^$"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    const/4 p1, 0x2

    .line 3399
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x3

    if-eqz p4, :cond_1b

    const/4 p2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p2, 0x0

    :goto_1c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x4

    if-eqz p5, :cond_26

    const/4 v0, 0x1

    .line 3400
    :cond_26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    .line 3398
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    .line 3400
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 3398
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_3a

    .line 3403
    goto :goto_3e

    .line 3401
    :catchall_3a
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3404
    :goto_3e
    sput-boolean v1, Lcom/uc/crashsdk/e;->h:Z

    .line 3405
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 3406
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 3

    .line 3094
    if-eqz p1, :cond_5

    .line 3095
    sput-object p0, Lcom/uc/crashsdk/e;->x:Ljava/lang/String;

    .line 3096
    return-void

    .line 3099
    :cond_5
    sget-object p1, Lcom/uc/crashsdk/e;->y:Ljava/lang/Object;

    monitor-enter p1

    .line 3100
    :try_start_8
    sput-object p0, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    .line 3101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3103
    invoke-static {}, Lcom/uc/crashsdk/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 3102
    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3104
    monitor-exit p1

    return-void

    :catchall_26
    move-exception p0

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw p0
.end method

.method private static a(Ljava/lang/String;ZZ)V
    .registers 34

    .line 1984
    const-string v0, "crashsdk uploading logs"

    const-string v1, "crashsdk"

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    sget-object v1, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 1987
    :try_start_a
    invoke-static/range {p0 .. p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_432

    .line 1988
    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_35

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Folder not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_439

    :cond_35
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_4f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "List folder failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    goto/16 :goto_439

    :cond_4f
    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_5d
    if-ge v5, v3, :cond_3d8

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    move-object/from16 v18, v2

    if-nez v0, :cond_6f

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    move/from16 v22, v3

    goto :goto_ab

    :cond_6f
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-wide/16 v20, 0x3e8

    if-eqz v2, :cond_b4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    sub-long v22, v22, v24

    div-long v22, v22, v20

    const-wide/16 v19, 0x1e

    cmp-long v2, v22, v19

    if-lez v2, :cond_a9

    new-instance v2, Ljava/lang/StringBuilder;

    move/from16 v22, v3

    const-string v3, "delete legacy tmp file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    goto :goto_ab

    :cond_a9
    move/from16 v22, v3

    :goto_ab
    move/from16 v26, v8

    move/from16 v23, v14

    :goto_af
    const/4 v14, 0x0

    move-object/from16 v8, p0

    goto/16 :goto_3cc

    :cond_b4
    move/from16 v22, v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v2

    move/from16 v23, v14

    move/from16 v24, v15

    const-wide/16 v14, 0x0

    cmp-long v0, v2, v14

    if-nez v0, :cond_ce

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    :goto_c9
    move/from16 v26, v8

    move/from16 v15, v24

    goto :goto_af

    :cond_ce
    const/4 v2, 0x3

    if-eqz p1, :cond_127

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v27

    sub-long v25, v25, v27

    div-long v25, v25, v20

    cmp-long v0, v25, v14

    if-ltz v0, :cond_fc

    const-wide/16 v20, 0x2

    cmp-long v0, v25, v20

    if-gez v0, :cond_e9

    :goto_e7
    const/4 v0, 0x0

    goto :goto_fd

    :cond_e9
    const-wide/16 v20, 0x5

    cmp-long v0, v25, v20

    if-gez v0, :cond_fc

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v14, ".log"

    invoke-virtual {v0, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    goto :goto_e7

    :cond_fc
    const/4 v0, 0x1

    :goto_fd
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "file: %s, modify interval: %d s, safe upload: %s"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    const/16 v17, 0x0

    aput-object v28, v3, v17

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const/16 v19, 0x1

    aput-object v25, v3, v19

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    const/16 v26, 0x2

    aput-object v25, v3, v26

    invoke-static {v14, v15, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;)V
    :try_end_122
    .catchall {:try_start_a .. :try_end_122} :catchall_43e

    if-nez v0, :cond_127

    add-int/lit8 v8, v8, 0x1

    goto :goto_c9

    :cond_127
    :try_start_127
    invoke-static {}, Lcom/uc/crashsdk/g;->k()Z

    move-result v0

    if-eqz v0, :cond_1c0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "([^_]+)_([^_]+)_([^_]+)\\.crashsdk"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1c0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s%s_%s_%s.%s"
    :try_end_153
    .catchall {:try_start_127 .. :try_end_153} :catchall_1c9

    move/from16 v26, v8

    const/4 v8, 0x5

    :try_start_156
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v15}, Lcom/uc/crashsdk/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    aput-object v15, v8, v17

    invoke-static {}, Lcom/uc/crashsdk/e;->m()Ljava/lang/String;

    move-result-object v15

    const/16 v19, 0x1

    aput-object v15, v8, v19

    invoke-static {}, Lcom/uc/crashsdk/e;->P()Ljava/lang/String;

    move-result-object v15

    const/16 v27, 0x2

    aput-object v15, v8, v27

    const/4 v15, 0x3

    aput-object v14, v8, v15

    const/4 v14, 0x4

    aput-object v0, v8, v14

    invoke-static {v3, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "File "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " matches, rename to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "crashsdk"

    invoke-static {v3, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1bd
    .catchall {:try_start_156 .. :try_end_1bd} :catchall_1be

    goto :goto_1c3

    :catchall_1be
    move-exception v0

    goto :goto_1cc

    :cond_1c0
    move/from16 v26, v8

    move-object v2, v4

    :goto_1c3
    if-eq v2, v4, :cond_1c7

    add-int/lit8 v12, v12, 0x1

    :cond_1c7
    move-object v4, v2

    goto :goto_1cf

    :catchall_1c9
    move-exception v0

    move/from16 v26, v8

    :goto_1cc
    :try_start_1cc
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_1cf
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->m(Ljava/lang/String;)[Z

    move-result-object v2

    const/4 v3, 0x0

    aget-boolean v8, v2, v3

    const/4 v14, 0x1

    aget-boolean v15, v2, v14

    invoke-static {v0, v8, v15}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    if-eq v0, v8, :cond_1f5

    aget-boolean v0, v2, v3

    if-eqz v0, :cond_1e9

    add-int/lit8 v11, v11, 0x1

    :cond_1e9
    const/4 v3, 0x1

    aget-boolean v0, v2, v3

    if-eqz v0, :cond_1f0

    add-int/lit8 v9, v9, 0x1

    :cond_1f0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1f5
    invoke-static {v4}, Lcom/uc/crashsdk/d;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1fd

    const/4 v0, 0x0

    goto :goto_216

    :cond_1fd
    if-eq v4, v0, :cond_216

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_216

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_216

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_216
    :goto_216
    if-nez v0, :cond_22f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onBeforeUploadLog return null, skip upload: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    goto :goto_243

    :cond_22f
    invoke-static {}, Lcom/uc/crashsdk/g;->z()I

    move-result v3

    if-lez v3, :cond_24a

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v14

    int-to-long v3, v3

    cmp-long v8, v14, v3

    if-ltz v8, :cond_24a

    add-int/lit8 v10, v10, 0x1

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;)Z

    :goto_243
    move-object/from16 v8, p0

    move/from16 v15, v24

    const/4 v14, 0x0

    goto/16 :goto_3cc

    :cond_24a
    new-instance v3, Lcom/uc/crashsdk/e$d;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/uc/crashsdk/e$d;-><init>(B)V

    const-wide/16 v14, 0x0

    iput-wide v14, v3, Lcom/uc/crashsdk/e$d;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v3, Lcom/uc/crashsdk/e$d;->a:J

    invoke-static {}, Lcom/uc/crashsdk/e;->T()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_27c

    new-instance v8, Lcom/uc/crashsdk/a/e;

    const/16 v14, 0x1c3

    const/4 v15, 0x2

    new-array v2, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v2, v15

    const/4 v15, 0x1

    aput-object v3, v2, v15

    invoke-direct {v8, v14, v2}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v4, v8}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    :cond_27c
    invoke-static {}, Lcom/uc/crashsdk/g;->A()J

    move-result-wide v14

    invoke-static {}, Lcom/uc/crashsdk/g;->B()I

    move-result v2

    invoke-static {}, Lcom/uc/crashsdk/g;->C()I

    move-result v4

    const-wide/16 v20, 0x0

    cmp-long v8, v14, v20

    if-ltz v8, :cond_2b2

    move/from16 v20, v9

    iget-wide v8, v3, Lcom/uc/crashsdk/e$d;->b:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v29

    add-long v8, v8, v29

    cmp-long v21, v8, v14

    if-lez v21, :cond_2b4

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/uc/crashsdk/e$d;->e:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Reach max upload bytes: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2ae
    invoke-static {v2}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    goto :goto_2f2

    :cond_2b2
    move/from16 v20, v9

    :cond_2b4
    invoke-static {}, Lcom/uc/crashsdk/g;->f()Z

    move-result v8

    if-nez v8, :cond_2f2

    invoke-static {v0}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_2d9

    if-ltz v2, :cond_2f2

    iget v4, v3, Lcom/uc/crashsdk/e$d;->c:I

    if-lt v4, v2, :cond_2f2

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/uc/crashsdk/e$d;->g:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Reach max upload builtin log count: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2ae

    :cond_2d9
    if-ltz v4, :cond_2f2

    iget v2, v3, Lcom/uc/crashsdk/e$d;->d:I

    if-lt v2, v4, :cond_2f2

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/uc/crashsdk/e$d;->f:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Reach max upload custom log count: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2ae

    :cond_2f2
    :goto_2f2
    iget-boolean v2, v3, Lcom/uc/crashsdk/e$d;->e:Z

    if-eqz v2, :cond_301

    move-object/from16 v8, p0

    move/from16 v9, v20

    move/from16 v15, v24

    const/4 v14, 0x0

    const/16 v23, 0x1

    goto/16 :goto_3cc

    :cond_301
    iget-boolean v2, v3, Lcom/uc/crashsdk/e$d;->g:Z

    if-eqz v2, :cond_30d

    move-object/from16 v8, p0

    move/from16 v9, v20

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto/16 :goto_3cc

    :cond_30d
    iget-boolean v2, v3, Lcom/uc/crashsdk/e$d;->f:Z

    if-eqz v2, :cond_31c

    move-object/from16 v8, p0

    move/from16 v9, v20

    move/from16 v15, v24

    const/4 v14, 0x0

    const/16 v16, 0x1

    goto/16 :goto_3cc

    :cond_31c
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/uc/crashsdk/e;->O()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33b

    const-string v4, "_"

    const/16 v8, 0xa

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/16 v8, 0x9

    if-ne v4, v8, :cond_33b

    const/4 v4, 0x1

    aget-object v2, v2, v4

    goto :goto_33c

    :cond_33b
    const/4 v2, 0x0

    :goto_33c
    if-eqz v2, :cond_34a

    invoke-static {}, Lcom/uc/crashsdk/g;->R()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34a

    const/4 v2, 0x1

    goto :goto_34b

    :cond_34a
    const/4 v2, 0x0

    :goto_34b
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, p0

    invoke-static {v0, v4, v8}, Lcom/uc/crashsdk/a/c;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Uploaded log: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "crashsdk"

    const/4 v13, 0x0

    invoke-static {v9, v4, v13}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_377

    const/16 v2, 0xd

    invoke-static {v2}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_377
    iget-wide v13, v3, Lcom/uc/crashsdk/e$d;->b:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v29

    add-long v13, v13, v29

    iput-wide v13, v3, Lcom/uc/crashsdk/e$d;->b:J

    invoke-static {v0}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_38e

    iget v2, v3, Lcom/uc/crashsdk/e$d;->c:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v3, Lcom/uc/crashsdk/e$d;->c:I

    goto :goto_394

    :cond_38e
    iget v2, v3, Lcom/uc/crashsdk/e$d;->d:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v3, Lcom/uc/crashsdk/e$d;->d:I

    :goto_394
    invoke-static {}, Lcom/uc/crashsdk/e;->T()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/uc/crashsdk/a/e;

    const/16 v9, 0x1c4

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v15, 0x1

    aput-object v3, v13, v15

    invoke-direct {v4, v9, v13}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v2, v4}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v13, 0x0

    goto :goto_3ba

    :cond_3b0
    const/4 v14, 0x0

    add-int/lit8 v13, v13, 0x1

    if-eqz v2, :cond_3ba

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_3ba
    :goto_3ba
    const/4 v2, 0x3

    if-lt v13, v2, :cond_3c8

    const-string v0, "Upload failed 3 times continuously, abort upload!"

    const-string v2, "crashsdk"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v9, v20

    goto :goto_3de

    :cond_3c8
    move/from16 v9, v20

    move/from16 v15, v24

    :goto_3cc
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v18

    move/from16 v3, v22

    move/from16 v14, v23

    move/from16 v8, v26

    goto/16 :goto_5d

    :cond_3d8
    move/from16 v26, v8

    move/from16 v23, v14

    move/from16 v24, v15

    :goto_3de
    if-lez v7, :cond_3e5

    const/16 v0, 0xc8

    invoke-static {v0, v7}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_3e5
    if-lez v6, :cond_3ec

    const/16 v0, 0xf

    invoke-static {v0, v6}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_3ec
    if-lez v10, :cond_3f3

    const/16 v0, 0x11

    invoke-static {v0, v10}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_3f3
    if-eqz v23, :cond_3fa

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_3fa
    if-eqz v24, :cond_401

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_401
    if-eqz v16, :cond_408

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_408
    if-nez v23, :cond_40e

    if-nez v24, :cond_40e

    if-eqz v16, :cond_413

    :cond_40e
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    :cond_413
    if-lez v11, :cond_41a

    const/16 v0, 0x18

    invoke-static {v0, v11}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_41a
    if-lez v9, :cond_421

    const/16 v0, 0xc9

    invoke-static {v0, v9}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_421
    if-lez v12, :cond_428

    const/16 v0, 0x19

    invoke-static {v0, v12}, Lcom/uc/crashsdk/f;->a(II)V

    :cond_428
    if-lez v26, :cond_439

    const/16 v0, 0x1a

    move/from16 v4, v26

    invoke-static {v0, v4}, Lcom/uc/crashsdk/f;->a(II)V

    goto :goto_439

    .line 1990
    :cond_432
    const-string v0, "upload url is empty!"

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_439
    .catchall {:try_start_1cc .. :try_end_439} :catchall_43e

    .line 1995
    :cond_439
    :goto_439
    if-eqz p2, :cond_449

    .line 1996
    :try_start_43b
    sget-object v0, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;
    :try_end_43d
    .catchall {:try_start_43b .. :try_end_43d} :catchall_44b

    goto :goto_446

    .line 1992
    :catchall_43e
    move-exception v0

    :try_start_43f
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_442
    .catchall {:try_start_43f .. :try_end_442} :catchall_44d

    .line 1995
    if-eqz p2, :cond_449

    .line 1996
    :try_start_444
    sget-object v0, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    :goto_446
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1999
    :cond_449
    monitor-exit v1

    return-void

    :catchall_44b
    move-exception v0

    goto :goto_457

    .line 1995
    :catchall_44d
    move-exception v0

    move-object v2, v0

    if-eqz p2, :cond_456

    .line 1996
    sget-object v0, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_456
    throw v2

    .line 1999
    :goto_457
    monitor-exit v1
    :try_end_458
    .catchall {:try_start_444 .. :try_end_458} :catchall_44b

    goto :goto_45a

    :goto_459
    throw v0

    :goto_45a
    goto :goto_459
.end method

.method private static a(Ljava/lang/Throwable;)V
    .registers 2

    .line 4020
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 4021
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/uc/crashsdk/e;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 4022
    const-string v0, "DEBUG"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    .line 4024
    return-void

    .line 4023
    :catchall_13
    move-exception p0

    .line 4025
    return-void
.end method

.method static a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .registers 4

    .line 1970
    const-string v0, "UTF-8"

    if-eqz p1, :cond_23

    .line 1972
    :try_start_4
    const-string v1, "[DEBUG] CrashHandler occurred new exception:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1973
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1974
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1975
    const-string v1, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1f

    .line 1978
    goto :goto_23

    .line 1976
    :catchall_1f
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1980
    :cond_23
    :goto_23
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1981
    return-void
.end method

.method private static a(Ljava/util/Calendar;)V
    .registers 10

    .line 4373
    invoke-static {}, Lcom/uc/crashsdk/g;->Q()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4374
    return-void

    .line 4377
    :cond_7
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 4378
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 4379
    const/16 v2, 0xb

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 4380
    const/16 v2, 0xc

    invoke-virtual {p0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 4381
    const/16 v2, 0xd

    invoke-virtual {p0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 4382
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 4385
    sub-long v0, v5, v0

    .line 4386
    const-wide/32 v7, 0x36ee80

    cmp-long p0, v0, v7

    if-lez p0, :cond_2e

    .line 4388
    goto :goto_31

    .line 4391
    :cond_2e
    const-wide/16 v7, 0x3e8

    add-long/2addr v7, v0

    .line 4395
    :goto_31
    new-instance p0, Lcom/uc/crashsdk/a/e;

    const/16 v0, 0x19f

    new-array v1, v3, [Ljava/lang/Object;

    .line 4397
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    .line 4395
    invoke-static {v4, p0, v7, v8}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 4399
    return-void
.end method

.method static a(Z)V
    .registers 11

    .line 497
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/b;->v()Z

    move-result v0

    if-nez v0, :cond_7

    .line 498
    return-void

    .line 501
    :cond_7
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 503
    if-nez v0, :cond_17

    .line 504
    return-void

    .line 507
    :cond_17
    invoke-static {}, Lcom/uc/crashsdk/g;->l()I

    move-result v1

    .line 508
    invoke-static {}, Lcom/uc/crashsdk/g;->m()I

    move-result v2

    .line 509
    array-length v3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_27

    .line 510
    return-void

    .line 514
    :cond_27
    nop

    .line 515
    nop

    .line 516
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2e
    if-ge v5, v3, :cond_40

    aget-object v8, v0, v5

    .line 517
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v8

    .line 518
    if-eqz v8, :cond_3b

    .line 519
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    .line 521
    :cond_3b
    add-int/lit8 v7, v7, 0x1

    .line 516
    :goto_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 526
    :cond_40
    nop

    .line 527
    nop

    .line 528
    if-eqz p0, :cond_4a

    if-lt v6, v1, :cond_4a

    .line 529
    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 531
    :cond_4a
    const/4 v6, 0x0

    :goto_4b
    if-nez p0, :cond_53

    if-lt v7, v2, :cond_53

    .line 532
    sub-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    .line 534
    :cond_53
    const/4 v7, 0x0

    :goto_54
    if-nez v6, :cond_59

    if-nez v7, :cond_59

    .line 535
    return-void

    .line 539
    :cond_59
    new-instance p0, Lcom/uc/crashsdk/e$b;

    invoke-direct {p0, v4}, Lcom/uc/crashsdk/e$b;-><init>(B)V

    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 541
    nop

    .line 542
    nop

    .line 543
    array-length p0, v0

    move v1, v6

    move v2, v7

    :goto_66
    if-ge v4, p0, :cond_b6

    aget-object v3, v0, v4

    .line 544
    invoke-static {v3}, Lcom/uc/crashsdk/e;->b(Ljava/io/File;)Z

    move-result v5
    :try_end_6e
    .catchall {:try_start_0 .. :try_end_6e} :catchall_cc

    .line 545
    const-string v8, "crashsdk"

    if-eqz v5, :cond_90

    if-lez v1, :cond_90

    .line 546
    :try_start_74
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Delete oldest crash log: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 548
    add-int/lit8 v1, v1, -0x1

    goto :goto_af

    .line 549
    :cond_90
    if-nez v5, :cond_af

    if-lez v2, :cond_af

    .line 550
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Delete oldest custom log: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 552
    add-int/lit8 v2, v2, -0x1

    .line 554
    :cond_af
    :goto_af
    if-nez v1, :cond_b3

    if-eqz v2, :cond_b6

    .line 555
    :cond_b3
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 559
    :cond_b6
    const/16 p0, 0x10

    add-int v0, v6, v7

    invoke-static {p0, v0}, Lcom/uc/crashsdk/f;->a(II)V

    .line 561
    if-lez v6, :cond_c4

    .line 562
    const/16 p0, 0x16

    invoke-static {p0, v6}, Lcom/uc/crashsdk/f;->a(II)V

    .line 565
    :cond_c4
    if-lez v7, :cond_cb

    .line 566
    const/16 p0, 0x17

    invoke-static {p0, v7}, Lcom/uc/crashsdk/f;->a(II)V
    :try_end_cb
    .catchall {:try_start_74 .. :try_end_cb} :catchall_cc

    .line 571
    :cond_cb
    return-void

    .line 569
    :catchall_cc
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 572
    return-void
.end method

.method public static a()Z
    .registers 7

    .line 116
    sget-wide v0, Lcom/uc/crashsdk/e;->f:J

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1e

    .line 117
    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/uc/crashsdk/e;->f:J

    .line 118
    const-string v0, "logs"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->g(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1e

    .line 119
    sput-wide v2, Lcom/uc/crashsdk/e;->f:J

    .line 122
    :cond_1e
    sget-wide v0, Lcom/uc/crashsdk/e;->f:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_26

    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/os/ParcelFileDescriptor;)Z
    .registers 6

    .line 4584
    sget-boolean v0, Lcom/uc/crashsdk/e;->ae:Z

    const-string v1, "crashsdk"

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 4585
    const-string p0, "Can not call setHostFd and getHostFd in the same process!"

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4586
    return v2

    .line 4589
    :cond_d
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-nez v0, :cond_17

    .line 4590
    const-string p0, "Crash so is not loaded!"

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4591
    return v2

    .line 4594
    :cond_17
    sget-object v0, Lcom/uc/crashsdk/e;->ad:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_20

    .line 4595
    const-string v0, "Has already set host fd!"

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4598
    :cond_20
    sput-object p0, Lcom/uc/crashsdk/e;->ad:Landroid/os/ParcelFileDescriptor;

    .line 4600
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p0

    .line 4601
    const/16 v0, 0xd

    int-to-long v3, p0

    const/4 v1, 0x0

    invoke-static {v0, v3, v4, v1, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 4603
    const/4 v0, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_35

    const/4 v4, 0x1

    goto :goto_36

    :cond_35
    const/4 v4, 0x0

    :goto_36
    sput-boolean v4, Lcom/uc/crashsdk/e;->af:Z

    .line 4604
    if-eq p0, v3, :cond_3e

    if-eq v1, v3, :cond_3d

    goto :goto_3e

    :cond_3d
    return v2

    :cond_3e
    :goto_3e
    return v0
.end method

.method private static a(Ljava/lang/String;JLjava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2920
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 2921
    nop

    .line 2923
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    cmp-long v0, v2, v9

    if-nez v0, :cond_1f

    .line 2924
    :try_start_14
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1b

    move-object v11, v0

    goto :goto_20

    .line 2935
    :catchall_1b
    move-exception v0

    move-object v11, v8

    move-object v12, v11

    goto :goto_3e

    .line 2923
    :cond_1f
    move-object v11, v8

    .line 2926
    :goto_20
    :try_start_20
    new-instance v12, Lcom/uc/crashsdk/e$a;

    invoke-direct {v12, v2, v3, v11}, Lcom/uc/crashsdk/e$a;-><init>(JLjava/io/OutputStream;)V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_3c

    .line 2927
    :try_start_25
    sget-object v13, Lcom/uc/crashsdk/e;->r:Ljava/util/ArrayList;

    monitor-enter v13
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_3a

    .line 2928
    :try_start_28
    sput-object v1, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    .line 2929
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_35

    .line 2930
    const/16 v0, 0x7e

    sget-object v14, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    invoke-static {v0, v14}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 2932
    :cond_35
    monitor-exit v13

    goto :goto_41

    :catchall_37
    move-exception v0

    monitor-exit v13
    :try_end_39
    .catchall {:try_start_28 .. :try_end_39} :catchall_37

    :try_start_39
    throw v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    .line 2935
    :catchall_3a
    move-exception v0

    goto :goto_3e

    :catchall_3c
    move-exception v0

    move-object v12, v8

    :goto_3e
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2937
    :goto_41
    const/4 v13, 0x0

    if-nez v12, :cond_45

    .line 2938
    return v13

    .line 2943
    :cond_45
    const-wide/16 v14, 0x1

    and-long v14, p5, v14

    const/16 v16, 0x1

    cmp-long v0, v14, v9

    if-eqz v0, :cond_58

    .line 2944
    move-object/from16 v14, p4

    :try_start_51
    invoke-static {v12, v1, v14}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_58

    .line 3044
    :catchall_55
    move-exception v0

    goto/16 :goto_138

    .line 2949
    :cond_58
    :goto_58
    :try_start_58
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/uc/crashsdk/e$a;->write([B)V

    .line 2950
    const-string v0, "\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/uc/crashsdk/e$a;->write([B)V

    .line 2951
    invoke-virtual {v12}, Lcom/uc/crashsdk/e$a;->flush()V
    :try_end_71
    .catchall {:try_start_58 .. :try_end_71} :catchall_72

    .line 2954
    goto :goto_76

    .line 2952
    :catchall_72
    move-exception v0

    :try_start_73
    invoke-static {v0, v12}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 2955
    :goto_76
    invoke-static {v12}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 2958
    const-wide/16 v0, 0x4

    and-long v0, p5, v0

    cmp-long v14, v0, v9

    if-eqz v14, :cond_8d

    .line 2959
    invoke-static {v12}, Lcom/uc/crashsdk/e;->b(Ljava/io/OutputStream;)V
    :try_end_84
    .catchall {:try_start_73 .. :try_end_84} :catchall_55

    .line 2961
    :try_start_84
    invoke-virtual {v12}, Lcom/uc/crashsdk/e$a;->flush()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    .line 2964
    goto :goto_8d

    .line 2962
    :catchall_88
    move-exception v0

    move-object v1, v0

    :try_start_8a
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2968
    :cond_8d
    :goto_8d
    if-eqz v4, :cond_9a

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9a

    .line 2969
    const-string v0, "UTF-8"

    invoke-static {v12, v0, v4}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2973
    :cond_9a
    if-eqz v5, :cond_a9

    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a9

    .line 2974
    const-string v0, "UTF-8"

    const-string v1, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-static {v12, v0, v1, v5}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2978
    :cond_a9
    if-eqz v6, :cond_b8

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b8

    .line 2979
    const-string v0, "UTF-8"

    const-string v1, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-static {v12, v0, v1, v6}, Lcom/uc/crashsdk/a;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_b8
    .catchall {:try_start_8a .. :try_end_b8} :catchall_55

    .line 2983
    :cond_b8
    if-eqz v7, :cond_e4

    .line 2985
    :try_start_ba
    invoke-virtual {v12}, Lcom/uc/crashsdk/e$a;->flush()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_be

    .line 2988
    goto :goto_c3

    .line 2986
    :catchall_be
    move-exception v0

    move-object v1, v0

    :try_start_c0
    invoke-static {v1, v12}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_55

    .line 2991
    :goto_c3
    :try_start_c3
    const-string v0, "threads dump:\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_ce
    .catchall {:try_start_c3 .. :try_end_ce} :catchall_cf

    .line 2994
    goto :goto_d3

    .line 2992
    :catchall_cf
    move-exception v0

    :try_start_d0
    invoke-static {v0, v12}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 2996
    :goto_d3
    sput-boolean v13, Lcom/uc/crashsdk/e;->h:Z

    .line 2997
    sput-object v7, Lcom/uc/crashsdk/e;->v:Ljava/lang/String;
    :try_end_d7
    .catchall {:try_start_d0 .. :try_end_d7} :catchall_55

    .line 2999
    :try_start_d7
    invoke-static {v12, v7, v2, v3}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$a;Ljava/lang/String;J)V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_db

    .line 3002
    goto :goto_e0

    .line 3000
    :catchall_db
    move-exception v0

    move-object v1, v0

    :try_start_dd
    invoke-static {v1, v12}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 3003
    :goto_e0
    sput-object v8, Lcom/uc/crashsdk/e;->v:Ljava/lang/String;

    .line 3004
    sput-boolean v16, Lcom/uc/crashsdk/e;->h:Z
    :try_end_e4
    .catchall {:try_start_dd .. :try_end_e4} :catchall_55

    .line 3008
    :cond_e4
    const-wide/16 v0, 0x8

    and-long v0, p5, v0

    cmp-long v4, v0, v9

    if-eqz v4, :cond_117

    cmp-long v0, v2, v9

    if-nez v0, :cond_117

    .line 3010
    :try_start_f0
    invoke-virtual {v12}, Lcom/uc/crashsdk/e$a;->flush()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_f4

    .line 3013
    goto :goto_f9

    .line 3011
    :catchall_f4
    move-exception v0

    move-object v1, v0

    :try_start_f6
    invoke-static {v1, v12}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_55

    .line 3016
    :goto_f9
    :try_start_f9
    const-string v0, "all threads dump:\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_104
    .catchall {:try_start_f9 .. :try_end_104} :catchall_105

    .line 3019
    goto :goto_109

    .line 3017
    :catchall_105
    move-exception v0

    :try_start_106
    invoke-static {v0, v12}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 3021
    :goto_109
    sput-boolean v16, Lcom/uc/crashsdk/e;->u:Z
    :try_end_10b
    .catchall {:try_start_106 .. :try_end_10b} :catchall_55

    .line 3023
    :try_start_10b
    const-string v0, "all"

    invoke-static {v12, v0, v9, v10}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$a;Ljava/lang/String;J)V
    :try_end_110
    .catchall {:try_start_10b .. :try_end_110} :catchall_111

    .line 3026
    goto :goto_115

    .line 3024
    :catchall_111
    move-exception v0

    :try_start_112
    invoke-static {v0, v12}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 3027
    :goto_115
    sput-boolean v13, Lcom/uc/crashsdk/e;->u:Z

    .line 3031
    :cond_117
    const-wide/16 v0, 0x10

    and-long v0, p5, v0

    cmp-long v4, v0, v9

    if-eqz v4, :cond_122

    .line 3032
    invoke-static {v12}, Lcom/uc/crashsdk/e;->e(Ljava/io/OutputStream;)V

    .line 3036
    :cond_122
    const-wide/16 v0, 0x2

    and-long v0, p5, v0

    cmp-long v4, v0, v9

    if-eqz v4, :cond_130

    .line 3037
    invoke-virtual {v12}, Lcom/uc/crashsdk/e$a;->a()V

    .line 3038
    invoke-static {v12}, Lcom/uc/crashsdk/e;->a(Lcom/uc/crashsdk/e$a;)V

    .line 3041
    :cond_130
    cmp-long v0, v2, v9

    if-eqz v0, :cond_13b

    .line 3042
    invoke-static {v12}, Lcom/uc/crashsdk/e;->b(Lcom/uc/crashsdk/e$a;)V
    :try_end_137
    .catchall {:try_start_112 .. :try_end_137} :catchall_55

    goto :goto_13b

    .line 3044
    :goto_138
    :try_start_138
    invoke-static {v0, v12}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_13b
    .catchall {:try_start_138 .. :try_end_13b} :catchall_17f

    .line 3047
    :cond_13b
    :goto_13b
    invoke-static {v12}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 3048
    invoke-static {v11}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 3049
    nop

    .line 3052
    :try_start_142
    sget-object v1, Lcom/uc/crashsdk/e;->r:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_145
    .catchall {:try_start_142 .. :try_end_145} :catchall_17a

    .line 3053
    :try_start_145
    sget v0, Lcom/uc/crashsdk/e;->s:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/uc/crashsdk/e;->s:I

    .line 3054
    sget-object v0, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    if-eqz v0, :cond_169

    .line 3055
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3056
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_15c

    .line 3057
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3060
    :cond_15c
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_167

    .line 3061
    const/16 v0, 0x7f

    sget-object v2, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 3063
    :cond_167
    sput-object v8, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    .line 3066
    :cond_169
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_175

    .line 3067
    const/16 v0, 0x19

    sget v2, Lcom/uc/crashsdk/e;->s:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    .line 3069
    :cond_175
    monitor-exit v1

    goto :goto_17e

    :catchall_177
    move-exception v0

    monitor-exit v1
    :try_end_179
    .catchall {:try_start_145 .. :try_end_179} :catchall_177

    :try_start_179
    throw v0
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_17a

    .line 3072
    :catchall_17a
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3074
    :goto_17e
    return v16

    .line 3047
    :catchall_17f
    move-exception v0

    move-object v1, v0

    invoke-static {v12}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 3048
    invoke-static {v11}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z
    .registers 7

    .line 2350
    nop

    .line 2351
    sget-object v0, Lcom/uc/crashsdk/e;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2353
    :try_start_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2354
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_6a

    if-nez p0, :cond_17

    .line 2356
    :try_start_f
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13
    .catchall {:try_start_f .. :try_end_12} :catchall_6a

    .line 2359
    goto :goto_17

    .line 2357
    :catch_13
    move-exception p0

    :try_start_14
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_6a

    .line 2362
    :cond_17
    :goto_17
    nop

    .line 2365
    const/4 p0, 0x0

    const/4 v2, 0x0

    :try_start_1a
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_28
    .catchall {:try_start_1a .. :try_end_25} :catchall_26

    .line 2368
    goto :goto_2d

    .line 2393
    :catchall_26
    move-exception p1

    goto :goto_66

    .line 2366
    :catch_28
    move-exception v1

    :try_start_29
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_58
    .catchall {:try_start_29 .. :try_end_2c} :catchall_26

    move-object v1, p0

    .line 2370
    :goto_2d
    nop

    .line 2372
    if-eqz v1, :cond_3c

    .line 2373
    :try_start_30
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_34} :catch_35
    .catchall {:try_start_30 .. :try_end_34} :catchall_64

    goto :goto_3c

    .line 2375
    :catch_35
    move-exception v3

    :try_start_36
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a
    .catchall {:try_start_36 .. :try_end_39} :catchall_64

    goto :goto_3d

    .line 2390
    :catch_3a
    move-exception p0

    goto :goto_5b

    .line 2377
    :cond_3c
    :goto_3c
    nop

    .line 2380
    :goto_3d
    :try_start_3d
    invoke-virtual {p1}, Lcom/uc/crashsdk/a/e;->a()Z

    move-result v2
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_4c

    .line 2382
    if-eqz p0, :cond_5e

    .line 2384
    :try_start_43
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47
    .catchall {:try_start_43 .. :try_end_46} :catchall_64

    .line 2387
    :goto_46
    goto :goto_5e

    .line 2385
    :catch_47
    move-exception p0

    :try_start_48
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_3a
    .catchall {:try_start_48 .. :try_end_4b} :catchall_64

    goto :goto_46

    .line 2382
    :catchall_4c
    move-exception p1

    if-eqz p0, :cond_57

    .line 2384
    :try_start_4f
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53
    .catchall {:try_start_4f .. :try_end_52} :catchall_64

    .line 2387
    goto :goto_57

    .line 2385
    :catch_53
    move-exception p0

    :try_start_54
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2387
    :cond_57
    :goto_57
    throw p1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_58} :catch_3a
    .catchall {:try_start_54 .. :try_end_58} :catchall_64

    .line 2390
    :catch_58
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    :goto_5b
    :try_start_5b
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_64

    .line 2393
    :cond_5e
    :goto_5e
    :try_start_5e
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 2394
    nop

    .line 2395
    monitor-exit v0

    .line 2396
    return v2

    .line 2393
    :catchall_64
    move-exception p1

    move-object p0, v1

    :goto_66
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw p1

    .line 2395
    :catchall_6a
    move-exception p0

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_6a

    goto :goto_6e

    :goto_6d
    throw p0

    :goto_6e
    goto :goto_6d
.end method

.method private static a(Ljava/lang/String;Lcom/uc/crashsdk/e$d;)Z
    .registers 10

    .line 2451
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2452
    const/16 p0, 0x40

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object p0

    .line 2453
    if-nez p0, :cond_f

    .line 2454
    return v1

    .line 2457
    :cond_f
    const/4 v0, 0x1

    :try_start_10
    const-string v1, "(\\d+)\\s+(\\d+)\\s+(\\d+)\\s+(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2458
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 2459
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 2461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0x5265c00

    cmp-long v7, v3, v5

    if-gez v7, :cond_57

    .line 2462
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p1, Lcom/uc/crashsdk/e$d;->b:J

    .line 2463
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/uc/crashsdk/e$d;->c:I

    .line 2464
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/uc/crashsdk/e$d;->d:I

    .line 2465
    iput-wide v1, p1, Lcom/uc/crashsdk/e$d;->a:J
    :try_end_57
    .catchall {:try_start_10 .. :try_end_57} :catchall_58

    .line 2470
    :cond_57
    goto :goto_5c

    .line 2468
    :catchall_58
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2471
    :goto_5c
    return v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .line 2754
    invoke-static {p1}, Lcom/uc/crashsdk/e;->n(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 2755
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 2756
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "Custom log \'%s\' has reach max count!"

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 2758
    return v0

    .line 2760
    :cond_1b
    return v1
.end method

.method public static a(Ljava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2652
    move-object/from16 v0, p1

    sget-object v1, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_1e

    .line 2653
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing java crash, skip generate custom log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 2654
    return v12

    .line 2657
    :cond_1e
    sget-boolean v1, Lcom/uc/crashsdk/e;->af:Z

    if-nez v1, :cond_2b

    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v14, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v14, 0x1

    .line 2658
    :goto_2c
    if-nez v14, :cond_3e

    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v1

    if-nez v1, :cond_3e

    .line 2659
    const-string v0, "DEBUG"

    invoke-static {}, Lcom/uc/crashsdk/a/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    return v12

    .line 2663
    :cond_3e
    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 2664
    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "custom log sample miss: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2665
    return v12

    .line 2668
    :cond_59
    invoke-static {}, Lcom/uc/crashsdk/e;->Z()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 2669
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing native crash, skip generate custom log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;)V

    .line 2670
    return v12

    .line 2673
    :cond_72
    if-eqz p0, :cond_138

    if-nez v0, :cond_78

    goto/16 :goto_138

    .line 2677
    :cond_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2678
    invoke-static/range {p1 .. p1}, Lcom/uc/crashsdk/e;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2679
    const-wide/16 v1, 0x20

    and-long v1, p2, v1

    const-wide/16 v16, 0x0

    cmp-long v3, v1, v16

    if-eqz v3, :cond_9d

    const/4 v11, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v11, 0x0

    .line 2680
    :goto_9e
    nop

    .line 2681
    if-eqz v14, :cond_d0

    .line 2682
    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v1, :cond_b2

    .line 2683
    nop

    .line 2684
    if-eqz v11, :cond_aa

    .line 2685
    const/4 v1, 0x1

    goto :goto_ab

    .line 2684
    :cond_aa
    const/4 v1, 0x0

    .line 2687
    :goto_ab
    const-string v2, "custom"

    invoke-static {v15, v2, v0, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCreateConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v1

    goto :goto_b4

    .line 2682
    :cond_b2
    move-wide/from16 v1, v16

    .line 2691
    :goto_b4
    cmp-long v3, v1, v16

    if-nez v3, :cond_cd

    .line 2692
    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skip custom log: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2693
    return v12

    .line 2691
    :cond_cd
    move-wide/from16 v18, v1

    goto :goto_e3

    .line 2696
    :cond_d0
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v11}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 2697
    return v12

    .line 2700
    :cond_db
    invoke-static {}, Lcom/uc/crashsdk/g;->a()V

    .line 2701
    invoke-static {v12}, Lcom/uc/crashsdk/e;->a(Z)V

    move-wide/from16 v18, v16

    .line 2705
    :goto_e3
    sget-object v20, Lcom/uc/crashsdk/e;->p:Ljava/lang/Object;

    monitor-enter v20

    .line 2709
    move-object v1, v15

    move-wide/from16 v2, v18

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move v13, v11

    move-object/from16 v11, p7

    :try_start_f8
    invoke-static/range {v1 .. v11}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;JLjava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    .line 2712
    monitor-exit v20
    :try_end_fd
    .catchall {:try_start_f8 .. :try_end_fd} :catchall_135

    .line 2714
    if-eqz v1, :cond_108

    if-nez v14, :cond_108

    .line 2715
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v13}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2718
    :cond_108
    cmp-long v2, v18, v16

    if-eqz v2, :cond_10f

    .line 2719
    invoke-static/range {v18 .. v19}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    .line 2722
    :cond_10f
    if-nez v1, :cond_112

    .line 2723
    return v12

    .line 2727
    :cond_112
    if-nez v14, :cond_117

    .line 2728
    invoke-static {v15}, Lcom/uc/crashsdk/e;->q(Ljava/lang/String;)V

    .line 2732
    :cond_117
    nop

    .line 2733
    if-nez v14, :cond_122

    .line 2734
    invoke-static {v15}, Lcom/uc/crashsdk/e;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2735
    invoke-static {v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2738
    :cond_122
    invoke-static {v15, v0}, Lcom/uc/crashsdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    if-eqz v13, :cond_133

    if-nez v14, :cond_133

    .line 2743
    const/4 v1, 0x1

    :try_start_12a
    invoke-static {v1, v12}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_12d
    .catchall {:try_start_12a .. :try_end_12d} :catchall_12e

    .line 2746
    goto :goto_133

    .line 2744
    :catchall_12e
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2749
    :cond_133
    :goto_133
    const/4 v1, 0x1

    return v1

    .line 2712
    :catchall_135
    move-exception v0

    :try_start_136
    monitor-exit v20
    :try_end_137
    .catchall {:try_start_136 .. :try_end_137} :catchall_135

    throw v0

    .line 2674
    :cond_138
    :goto_138
    return v12
.end method

.method public static a(ZZ)Z
    .registers 9

    .line 2250
    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 2251
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_c

    .line 2252
    invoke-static {v1, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    .line 2254
    :cond_c
    sput-boolean v1, Lcom/uc/crashsdk/e;->d:Z

    .line 2258
    :cond_e
    const/4 v0, 0x0

    :try_start_f
    invoke-static {}, Lcom/uc/crashsdk/e;->k()Ljava/lang/String;

    move-result-object v2

    .line 2259
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2260
    const-string p0, "CrashHandler url is empty!"

    const-string p1, "crashsdk"

    invoke-static {p1, p0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    return v0

    .line 2264
    :cond_21
    sget-object v3, Lcom/uc/crashsdk/e;->n:Ljava/lang/Object;

    monitor-enter v3
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_58

    .line 2265
    :try_start_24
    new-instance v4, Lcom/uc/crashsdk/a/e;

    const/16 v5, 0x196

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v0

    .line 2267
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 p1, 0x2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, p1

    invoke-direct {v4, v5, v6}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    .line 2268
    nop

    .line 2269
    if-nez p0, :cond_42

    .line 2270
    const/4 p1, 0x0

    goto :goto_43

    .line 2269
    :cond_42
    const/4 p1, 0x1

    .line 2272
    :goto_43
    invoke-static {p1, v4}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    move-result p1
    :try_end_47
    .catchall {:try_start_24 .. :try_end_47} :catchall_55

    .line 2273
    if-eqz p1, :cond_53

    if-eqz p0, :cond_53

    .line 2276
    :try_start_4b
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4e} :catch_4f
    .catchall {:try_start_4b .. :try_end_4e} :catchall_55

    .line 2279
    goto :goto_53

    .line 2277
    :catch_4f
    move-exception p0

    :try_start_50
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2281
    :cond_53
    :goto_53
    monitor-exit v3

    .line 2282
    return v1

    .line 2281
    :catchall_55
    move-exception p0

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_55

    :try_start_57
    throw p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    .line 2283
    :catchall_58
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2286
    return v0
.end method

.method private static aa()V
    .registers 17

    .line 4253
    invoke-static {}, Lcom/uc/crashsdk/g;->W()Ljava/lang/String;

    move-result-object v1

    .line 4254
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4255
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_10

    .line 4256
    return-void

    .line 4260
    :cond_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 4261
    if-nez v2, :cond_17

    .line 4262
    return-void

    .line 4264
    :cond_17
    array-length v0, v2

    const/16 v3, 0x96

    if-gt v0, v3, :cond_1d

    .line 4265
    return-void

    .line 4268
    :cond_1d
    new-instance v0, Lcom/uc/crashsdk/e$b;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/uc/crashsdk/e$b;-><init>(B)V

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 4270
    array-length v0, v2

    sub-int/2addr v0, v3

    .line 4271
    if-gez v0, :cond_2c

    .line 4272
    const/4 v3, 0x0

    goto :goto_2d

    .line 4271
    :cond_2c
    move v3, v0

    .line 4275
    :goto_2d
    nop

    .line 4276
    nop

    .line 4278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 4279
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_36
    array-length v0, v2

    if-ge v7, v0, :cond_67

    .line 4280
    aget-object v0, v2, v7

    .line 4282
    const/4 v10, 0x1

    if-ge v7, v3, :cond_40

    const/4 v11, 0x1

    goto :goto_41

    :cond_40
    const/4 v11, 0x0

    .line 4283
    :goto_41
    if-nez v11, :cond_51

    .line 4284
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v12
    :try_end_47
    .catchall {:try_start_10 .. :try_end_47} :catchall_84

    .line 4285
    sub-long v12, v5, v12

    const-wide/32 v14, 0x19bfcc00

    cmp-long v16, v12, v14

    if-ltz v16, :cond_51

    .line 4286
    const/4 v11, 0x1

    .line 4290
    :cond_51
    if-eqz v11, :cond_67

    .line 4291
    :try_start_53
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5b

    .line 4296
    nop

    .line 4297
    add-int/lit8 v8, v8, 0x1

    .line 4301
    const/4 v9, 0x0

    goto :goto_61

    .line 4298
    :catchall_5b
    move-exception v0

    move-object v11, v0

    .line 4299
    add-int/2addr v9, v10

    .line 4300
    :try_start_5e
    invoke-static {v11}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4304
    :goto_61
    const/4 v0, 0x3

    if-ge v9, v0, :cond_67

    .line 4305
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 4309
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Removed "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " logs in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_5e .. :try_end_83} :catchall_84

    .line 4312
    return-void

    .line 4310
    :catchall_84
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4313
    return-void
.end method

.method static b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    .registers 13

    .line 1507
    nop

    .line 1508
    nop

    .line 1509
    nop

    .line 1511
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_a4

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    if-eqz v3, :cond_5c

    .line 1513
    :try_start_13
    invoke-static {}, Lcom/uc/crashsdk/e;->Q()[B

    move-result-object p1

    .line 1514
    if-nez p1, :cond_26

    .line 1515
    const-string p1, "(alloc buffer failed!)\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_a4

    .line 1516
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    return v1

    .line 1518
    :cond_26
    :try_start_26
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_a4

    .line 1519
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1522
    :goto_33
    :try_start_33
    invoke-virtual {v3, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_57

    .line 1523
    add-int/2addr v0, v7

    .line 1524
    nop

    .line 1525
    sub-int v8, p2, v2

    add-int/lit8 v9, v8, 0x20

    if-le v7, v9, :cond_43

    .line 1526
    goto :goto_44

    .line 1525
    :cond_43
    move v8, v7

    .line 1528
    :goto_44
    if-lez v8, :cond_4c

    if-nez v6, :cond_4c

    .line 1529
    invoke-virtual {p0, p1, v1, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_58

    .line 1530
    add-int/2addr v2, v8

    .line 1532
    :cond_4c
    if-nez v6, :cond_56

    .line 1533
    if-lt v8, v7, :cond_55

    if-lt v2, p2, :cond_53

    goto :goto_55

    :cond_53
    const/4 v6, 0x0

    goto :goto_56

    :cond_55
    :goto_55
    const/4 v6, 0x1

    .line 1535
    :cond_56
    :goto_56
    goto :goto_33

    .line 1536
    :cond_57
    goto :goto_7b

    .line 1547
    :catchall_58
    move-exception p1

    move v1, v2

    move-object v0, v3

    goto :goto_a5

    .line 1537
    :cond_5c
    :try_start_5c
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "file: \'"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' not exists!\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_78
    .catchall {:try_start_5c .. :try_end_78} :catchall_a4

    move-object v3, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1539
    :goto_7b
    if-lez v2, :cond_86

    .line 1540
    :try_start_7d
    const-string p1, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1543
    :cond_86
    if-ge v2, v0, :cond_a0

    .line 1544
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "(truncated %d bytes)\n"

    new-array v4, v4, [Ljava/lang/Object;

    sub-int/2addr v0, v2

    .line 1545
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1544
    invoke-static {p1, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1545
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1544
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_a0
    .catchall {:try_start_7d .. :try_end_a0} :catchall_58

    .line 1550
    :cond_a0
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1551
    goto :goto_ac

    .line 1547
    :catchall_a4
    move-exception p1

    :goto_a5
    :try_start_a5
    invoke-static {p1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_b0

    .line 1550
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1551
    move v2, v1

    .line 1552
    :goto_ac
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1553
    return v2

    .line 1550
    :catchall_b0
    move-exception p0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_b6

    :goto_b5
    throw p0

    :goto_b6
    goto :goto_b5
.end method

.method public static b(ZZ)I
    .registers 4

    .line 4442
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    sget-boolean v1, Lcom/uc/crashsdk/e;->ac:Z

    if-nez v1, :cond_a

    .line 4443
    invoke-static {v0}, Lcom/uc/crashsdk/f;->d(Z)V

    .line 4447
    :cond_a
    if-eqz p0, :cond_19

    .line 4450
    invoke-static {}, Lcom/uc/crashsdk/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 4449
    invoke-static {v1, v0}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 4451
    invoke-static {}, Lcom/uc/crashsdk/a/h;->i()V

    .line 4452
    nop

    .line 4453
    goto :goto_20

    .line 4454
    :cond_19
    invoke-static {}, Lcom/uc/crashsdk/f;->a()I

    move-result v0

    .line 4455
    invoke-static {}, Lcom/uc/crashsdk/a/h;->i()V

    .line 4459
    :goto_20
    if-eqz p1, :cond_27

    .line 4460
    invoke-static {p0}, Lcom/uc/crashsdk/f;->a(Z)I

    move-result p0

    return p0

    .line 4462
    :cond_27
    return v0
.end method

.method static b()J
    .registers 5

    .line 143
    sget-wide v0, Lcom/uc/crashsdk/e;->g:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    .line 144
    const-string v0, "local"

    invoke-static {v0}, Lcom/uc/crashsdk/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->g(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/uc/crashsdk/e;->g:J

    .line 146
    :cond_14
    sget-wide v0, Lcom/uc/crashsdk/e;->g:J

    return-wide v0
.end method

.method private static b(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 3

    .line 2598
    nop

    .line 2599
    if-eqz p1, :cond_c

    .line 2601
    :try_start_3
    invoke-static {p0}, Lcom/uc/crashsdk/e;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_8

    .line 2604
    goto :goto_c

    .line 2602
    :catchall_8
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2606
    :cond_c
    :goto_c
    if-eqz p2, :cond_17

    .line 2608
    :try_start_e
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    .line 2611
    goto :goto_17

    .line 2609
    :catchall_13
    move-exception p1

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2613
    :cond_17
    :goto_17
    return-object p0
.end method

.method public static b(I)V
    .registers 4

    .line 4241
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x19a

    invoke-direct {v0, v1}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v1, p0

    const/4 p0, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 4244
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 6

    .line 3737
    invoke-static {}, Lcom/uc/crashsdk/g;->K()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3738
    return-void

    .line 3742
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3743
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3744
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3745
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3746
    sget-object v1, Lcom/uc/crashsdk/e;->Q:Lcom/uc/crashsdk/e$c;

    const/4 v2, 0x0

    .line 3747
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/uc/crashsdk/a/f;->a(I)Landroid/os/Handler;

    move-result-object v4

    .line 3746
    invoke-virtual {p0, v1, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3748
    sput-boolean v3, Lcom/uc/crashsdk/e;->R:Z
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_29

    .line 3751
    return-void

    .line 3749
    :catchall_29
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3752
    return-void
.end method

.method private static b(Lcom/uc/crashsdk/e$a;)V
    .registers 3

    .line 1460
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/e;->h:Z

    .line 1462
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LOG_END"

    invoke-static {v1}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1463
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uc/crashsdk/e$a;->write([B)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    .line 1466
    goto :goto_2a

    .line 1464
    :catchall_26
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 1467
    :goto_2a
    const/4 p0, 0x1

    sput-boolean p0, Lcom/uc/crashsdk/e;->h:Z

    .line 1468
    return-void
.end method

.method private static b(Ljava/io/OutputStream;)V
    .registers 12

    .line 946
    const-string v0, "-b"

    const-string v1, "UTF-8"

    .line 949
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_6
    const-string v4, "logcat:\n"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 950
    invoke-static {}, Lcom/uc/crashsdk/g;->n()I

    move-result v4
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_e6

    if-gtz v4, :cond_2a

    .line 952
    :try_start_15
    const-string v0, "[DEBUG] custom java logcat lines count is 0!\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1f

    .line 955
    goto :goto_23

    .line 953
    :catchall_1f
    move-exception v0

    :try_start_20
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 956
    :goto_23
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_e6

    .line 1011
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 957
    return-void

    .line 960
    :cond_2a
    :try_start_2a
    invoke-static {}, Lcom/uc/crashsdk/g;->n()I

    move-result v4

    .line 963
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "logcat"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "-d"

    aput-object v7, v6, v3

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v9, 0x3

    const-string v10, "events"

    aput-object v10, v6, v9

    const/4 v9, 0x4

    aput-object v0, v6, v9

    const/4 v0, 0x5

    const-string v9, "main"

    aput-object v9, v6, v0

    const/4 v0, 0x6

    const-string v9, "-v"

    aput-object v9, v6, v0

    const/4 v0, 0x7

    const-string v9, "threadtime"

    aput-object v9, v6, v0

    const/16 v0, 0x8

    const-string v9, "-t"

    aput-object v9, v6, v0

    const/16 v0, 0x9

    .line 965
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v0

    .line 963
    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 966
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 967
    invoke-static {v5}, Lcom/uc/crashsdk/e;->a(Ljava/io/InputStreamReader;)Ljava/io/BufferedReader;

    move-result-object v2
    :try_end_78
    .catchall {:try_start_2a .. :try_end_78} :catchall_e6

    .line 968
    if-nez v2, :cond_8f

    .line 970
    :try_start_7a
    const-string v0, "[DEBUG] alloc buffer failed!\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_84

    .line 973
    goto :goto_88

    .line 971
    :catchall_84
    move-exception v0

    :try_start_85
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 974
    :goto_88
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_e6

    .line 1011
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 975
    return-void

    .line 979
    :cond_8f
    :try_start_8f
    sput-boolean v8, Lcom/uc/crashsdk/e;->h:Z

    .line 980
    nop

    .line 982
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 983
    :cond_94
    :goto_94
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c1

    .line 984
    add-int/lit8 v0, v0, 0x1

    .line 988
    if-ge v5, v4, :cond_94

    const-string v9, " I auditd "

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_94

    const-string v9, " I liblog "

    .line 989
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_94

    .line 990
    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 991
    const-string v6, "\n"

    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_be
    .catchall {:try_start_8f .. :try_end_be} :catchall_e6

    .line 992
    add-int/lit8 v5, v5, 0x1

    goto :goto_94

    .line 996
    :cond_c1
    :try_start_c1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "[DEBUG] Read %d lines, wrote %d lines.\n"

    new-array v7, v7, [Ljava/lang/Object;

    .line 998
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    .line 996
    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 998
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 996
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_de
    .catchall {:try_start_c1 .. :try_end_de} :catchall_df

    .line 1001
    goto :goto_e3

    .line 999
    :catchall_df
    move-exception v0

    :try_start_e0
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1002
    :goto_e3
    sput-boolean v3, Lcom/uc/crashsdk/e;->h:Z
    :try_end_e5
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_e6

    goto :goto_ec

    .line 1007
    :catchall_e6
    move-exception v0

    .line 1008
    :try_start_e7
    sput-boolean v3, Lcom/uc/crashsdk/e;->h:Z

    .line 1009
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_ec
    .catchall {:try_start_e7 .. :try_end_ec} :catchall_f4

    .line 1011
    :goto_ec
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1012
    nop

    .line 1014
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1015
    return-void

    .line 1011
    :catchall_f4
    move-exception p0

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_fa

    :goto_f9
    throw p0

    :goto_fa
    goto :goto_f9
.end method

.method private static b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    .line 590
    move-object/from16 v1, p0

    const-string v2, "\n"

    const-string v3, "UTF-8"

    :try_start_6
    const-string v0, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\n"

    .line 591
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_10

    .line 594
    goto :goto_14

    .line 592
    :catchall_10
    move-exception v0

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 597
    :goto_14
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_18
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Basic Information: \'pid: %d/tid: %d/time: %s\'\n"

    new-array v9, v4, [Ljava/lang/Object;

    .line 599
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    .line 600
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    .line 601
    invoke-static {}, Lcom/uc/crashsdk/e;->m()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 597
    invoke-static {v0, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 604
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Cpu Information: \'abi: %s/processor: %s/hardware: %s\'\n"

    new-array v9, v4, [Ljava/lang/Object;

    .line 606
    invoke-static {}, Lcom/uc/crashsdk/e;->e()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    sget-object v10, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    invoke-static {v10}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5a

    invoke-static {}, Lcom/uc/crashsdk/e;->S()V

    :cond_5a
    sget-object v10, Lcom/uc/crashsdk/e;->l:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-static {}, Lcom/uc/crashsdk/e;->f()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 604
    invoke-static {v0, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_6f
    .catchall {:try_start_18 .. :try_end_6f} :catchall_70

    .line 610
    goto :goto_74

    .line 608
    :catchall_70
    move-exception v0

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 613
    :goto_74
    const/4 v8, 0x4

    :try_start_75
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Mobile Information: \'model: %s/version: %s/sdk: %d\'\n"

    new-array v10, v4, [Ljava/lang/Object;

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v11, v10, v6

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v11, v10, v7

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 615
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    .line 613
    invoke-static {v0, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "Build fingerprint: \'"

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\'\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 621
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Runtime Information: \'start: %s/maxheap: %s/primaryabi: %s/ground: %s\'\n"

    new-array v10, v8, [Ljava/lang/Object;

    new-instance v11, Ljava/util/Date;

    sget-wide v12, Lcom/uc/crashsdk/e;->b:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 623
    invoke-static {v11}, Lcom/uc/crashsdk/e;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    .line 624
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    .line 625
    invoke-static {}, Lcom/uc/crashsdk/a/g;->d()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 626
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v11

    if-eqz v11, :cond_e4

    const-string v11, "fg"

    goto :goto_e6

    :cond_e4
    const-string v11, "bg"

    :goto_e6
    aput-object v11, v10, v4

    .line 621
    invoke-static {v0, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_f3
    .catchall {:try_start_75 .. :try_end_f3} :catchall_f4

    .line 630
    goto :goto_f8

    .line 628
    :catchall_f4
    move-exception v0

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 633
    :goto_f8
    :try_start_f8
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Application Information: \'version: %s/subversion: %s/buildseq: %s/versioncode: %d\'\n"

    new-array v10, v8, [Ljava/lang/Object;

    .line 635
    invoke-static {}, Lcom/uc/crashsdk/g;->R()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {}, Lcom/uc/crashsdk/g;->S()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    .line 636
    invoke-static {}, Lcom/uc/crashsdk/g;->T()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {}, Lcom/uc/crashsdk/a;->c()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    .line 633
    invoke-static {v0, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 639
    const-string v0, "0"

    .line 640
    nop

    .line 641
    sget-boolean v9, Lcom/uc/crashsdk/b;->d:Z
    :try_end_12a
    .catchall {:try_start_f8 .. :try_end_12a} :catchall_18b

    const-string v10, ""

    if-eqz v9, :cond_13d

    .line 642
    const/4 v0, 0x0

    const-wide/16 v11, 0x0

    :try_start_131
    invoke-static {v7, v11, v12, v0}, Lcom/uc/crashsdk/JNIBridge;->nativeGet(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 643
    invoke-static {v5, v11, v12, v0}, Lcom/uc/crashsdk/JNIBridge;->nativeGet(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v9

    move-object v9, v0

    move-object v0, v15

    goto :goto_13e

    .line 641
    :cond_13d
    move-object v9, v10

    .line 645
    :goto_13e
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "CrashSDK Information: \'version: %s/nativeseq: %s/javaseq: %s/arch: %s/target: %s\'\n"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "3.2.0.4"

    aput-object v14, v13, v6

    aput-object v0, v13, v7

    const-string v0, "210105150455"

    aput-object v0, v13, v5

    aput-object v9, v13, v4

    const-string v0, "release"

    aput-object v0, v13, v8

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 651
    if-nez p1, :cond_163

    goto :goto_165

    :cond_163
    move-object/from16 v10, p1

    .line 652
    :goto_165
    const/16 v0, 0x2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v7

    .line 653
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Report Name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_18a
    .catchall {:try_start_131 .. :try_end_18a} :catchall_18b

    .line 657
    goto :goto_18f

    .line 655
    :catchall_18b
    move-exception v0

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 660
    :goto_18f
    :try_start_18f
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v0, :cond_19a

    .line 662
    const-string v0, "UUID"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19c

    .line 664
    :cond_19a
    sget-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    .line 666
    :goto_19c
    const-string v4, "UUID: %s\n"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Log Type: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1c9
    .catchall {:try_start_18f .. :try_end_1c9} :catchall_1ca

    .line 672
    goto :goto_1ce

    .line 670
    :catchall_1ca
    move-exception v0

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 675
    :goto_1ce
    :try_start_1ce
    invoke-static {}, Lcom/uc/crashsdk/b;->B()Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1da

    .line 677
    const-string v0, "(none)"

    .line 679
    :cond_1da
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Activity: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1f4
    .catchall {:try_start_1ce .. :try_end_1f4} :catchall_1f5

    .line 683
    goto :goto_1f9

    .line 681
    :catchall_1f5
    move-exception v0

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 685
    :goto_1f9
    invoke-static/range {p0 .. p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 689
    :try_start_1fc
    invoke-static {v1, v3}, Lcom/uc/crashsdk/a;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 691
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v0, :cond_214

    .line 692
    sput-boolean v6, Lcom/uc/crashsdk/e;->h:Z

    .line 693
    const-string v0, "HEADER"

    invoke-static {v0}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 694
    sput-boolean v7, Lcom/uc/crashsdk/e;->h:Z
    :try_end_214
    .catchall {:try_start_1fc .. :try_end_214} :catchall_215

    .line 698
    :cond_214
    goto :goto_219

    .line 696
    :catchall_215
    move-exception v0

    invoke-static {v0, v1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 699
    :goto_219
    invoke-static/range {p0 .. p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 700
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 4

    .line 3110
    sget-object v0, Lcom/uc/crashsdk/e;->z:Ljava/lang/Object;

    monitor-enter v0

    .line 3112
    :try_start_3
    invoke-static {}, Lcom/uc/crashsdk/b;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3111
    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3114
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3331
    :try_start_0
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/uc/crashsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 3334
    return-void

    .line 3332
    :catchall_8
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3335
    return-void
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 2765
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    .line 2766
    return-void
.end method

.method static b(Z)V
    .registers 4

    .line 2300
    nop

    .line 2301
    :try_start_1
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 2302
    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_18

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    .line 2301
    :cond_17
    const/4 v0, 0x0

    .line 2304
    :goto_18
    if-nez v0, :cond_1e

    .line 2305
    invoke-static {}, Lcom/uc/crashsdk/g;->s()Z

    move-result v0

    .line 2307
    :cond_1e
    if-nez v0, :cond_21

    .line 2308
    return-void

    .line 2311
    :cond_21
    if-eqz p0, :cond_34

    .line 2314
    invoke-static {}, Lcom/uc/crashsdk/e;->k()Ljava/lang/String;

    move-result-object p0

    .line 2315
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 2316
    invoke-static {}, Lcom/uc/crashsdk/e;->j()V

    .line 2317
    invoke-static {p0, v2, v2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;ZZ)V

    .line 2319
    :cond_33
    return-void

    .line 2320
    :cond_34
    invoke-static {v1, v2}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    .line 2324
    return-void

    .line 2322
    :catchall_38
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2325
    return-void
.end method

.method public static b(I[Ljava/lang/Object;)Z
    .registers 8

    .line 456
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_7a

    .line 472
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-eqz p0, :cond_74

    .line 475
    return v1

    .line 465
    :pswitch_a
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_17

    if-eqz p1, :cond_11

    goto :goto_17

    :cond_11
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 466
    :cond_17
    :goto_17
    aget-object p0, p1, v1

    check-cast p0, Ljava/lang/String;

    .line 467
    aget-object p1, p1, v0

    check-cast p1, Lcom/uc/crashsdk/e$d;

    .line 468
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p1, Lcom/uc/crashsdk/e$d;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    iget-wide v4, p1, Lcom/uc/crashsdk/e$d;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    iget v1, p1, Lcom/uc/crashsdk/e$d;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x3

    iget p1, p1, Lcom/uc/crashsdk/e$d;->d:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "%d %d %d %d"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z

    move-result p0

    return p0

    .line 458
    :pswitch_5a
    sget-boolean p0, Lcom/uc/crashsdk/e;->a:Z

    if-nez p0, :cond_67

    if-eqz p1, :cond_61

    goto :goto_67

    :cond_61
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 459
    :cond_67
    :goto_67
    aget-object p0, p1, v1

    check-cast p0, Ljava/lang/String;

    .line 460
    aget-object p1, p1, v0

    check-cast p1, Lcom/uc/crashsdk/e$d;

    .line 461
    invoke-static {p0, p1}, Lcom/uc/crashsdk/e;->a(Ljava/lang/String;Lcom/uc/crashsdk/e$d;)Z

    move-result p0

    return p0

    .line 472
    :cond_74
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_data_7a
    .packed-switch 0x1c3
        :pswitch_5a
        :pswitch_a
    .end packed-switch
.end method

.method private static b(Ljava/io/File;)Z
    .registers 5

    .line 2475
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 2478
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2479
    const/4 v1, 0x0

    if-gtz v0, :cond_e

    .line 2480
    return v1

    .line 2482
    :cond_e
    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 2483
    if-gtz v2, :cond_17

    .line 2484
    return v1

    .line 2487
    :cond_17
    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2488
    const-string v0, "java"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2489
    const-string v0, "ucebujava"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2490
    const-string v0, "jni"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2491
    const-string v0, "ucebujni"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2492
    const-string v0, "unexp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2493
    const-string v0, "anr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4e

    goto :goto_4f

    .line 2488
    :cond_4e
    return v1

    .line 2493
    :cond_4f
    :goto_4f
    return v3
.end method

.method static synthetic c(I)I
    .registers 1

    .line 59
    sput p0, Lcom/uc/crashsdk/e;->C:I

    return p0
.end method

.method static c()V
    .registers 1

    .line 291
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/crashsdk/e;->i:Ljava/lang/String;

    .line 292
    return-void
.end method

.method private static c(Ljava/io/OutputStream;)V
    .registers 10

    .line 1239
    const-string v0, "UTF-8"

    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3d

    .line 1240
    invoke-static {}, Lcom/uc/crashsdk/b;->l()Ljava/lang/String;

    move-result-object v0

    .line 1241
    sput-boolean v2, Lcom/uc/crashsdk/e;->h:Z

    .line 1242
    const-wide/16 v1, 0x1

    const/16 v4, 0x11

    invoke-static {v4, v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(ILjava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_3a

    .line 1243
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1245
    :try_start_1f
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->e(Ljava/io/File;)[B

    move-result-object v0

    .line 1246
    if-eqz v0, :cond_28

    .line 1247
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_29

    .line 1251
    :cond_28
    goto :goto_2d

    .line 1249
    :catchall_29
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1253
    :goto_2d
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    .line 1256
    goto :goto_35

    .line 1254
    :catchall_31
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1257
    :goto_35
    sput-boolean v3, Lcom/uc/crashsdk/e;->h:Z

    .line 1258
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1260
    :cond_3a
    sput-boolean v3, Lcom/uc/crashsdk/e;->h:Z

    .line 1261
    return-void

    .line 1264
    :cond_3d
    const/4 v1, 0x0

    .line 1265
    const/16 v4, 0x384

    .line 1267
    :try_start_40
    invoke-static {}, Lcom/uc/crashsdk/g;->H()I

    move-result v4

    .line 1268
    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/self/fd"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1270
    if-eqz v1, :cond_71

    .line 1271
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "opened file count: %d, write limit: %d.\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    array-length v8, v1

    .line 1273
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 1271
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1273
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1271
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_7f

    .line 1275
    :cond_71
    const-string v3, "[DEBUG] listFiles failed!\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_7a
    .catchall {:try_start_40 .. :try_end_7a} :catchall_7b

    .line 1279
    goto :goto_7f

    .line 1277
    :catchall_7b
    move-exception v3

    invoke-static {v3, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1283
    :goto_7f
    if-eqz v1, :cond_c8

    :try_start_81
    array-length v3, v1

    if-lt v3, v4, :cond_c8

    .line 1284
    const-string v3, "opened files:\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_92
    .catchall {:try_start_81 .. :try_end_92} :catchall_c3

    .line 1288
    :try_start_92
    array-length v4, v1

    :goto_93
    if-ge v2, v4, :cond_b2

    aget-object v5, v1, v2

    .line 1289
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    const-string v6, " -> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_af
    .catchall {:try_start_92 .. :try_end_af} :catchall_b3

    .line 1288
    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 1296
    :cond_b2
    goto :goto_b7

    .line 1294
    :catchall_b3
    move-exception v1

    :try_start_b4
    invoke-static {v1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1297
    :goto_b7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_c2
    .catchall {:try_start_b4 .. :try_end_c2} :catchall_c3

    goto :goto_c8

    .line 1299
    :catchall_c3
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto :goto_c9

    .line 1301
    :cond_c8
    :goto_c8
    nop

    .line 1303
    :goto_c9
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1304
    return-void
.end method

.method static c(Z)V
    .registers 4

    .line 3767
    nop

    .line 3768
    sget-boolean v0, Lcom/uc/crashsdk/e;->R:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 3769
    if-eqz p0, :cond_f

    invoke-static {}, Lcom/uc/crashsdk/g;->K()Z

    move-result p0

    if-nez p0, :cond_19

    .line 3770
    :cond_f
    goto :goto_1a

    .line 3772
    :cond_10
    if-eqz p0, :cond_19

    invoke-static {}, Lcom/uc/crashsdk/g;->K()Z

    move-result p0

    if-eqz p0, :cond_19

    .line 3773
    goto :goto_1a

    .line 3776
    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_2c

    .line 3778
    sget-object p0, Lcom/uc/crashsdk/e;->S:Lcom/uc/crashsdk/a/e;

    invoke-static {p0}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3779
    invoke-static {p0}, Lcom/uc/crashsdk/a/f;->a(Ljava/lang/Runnable;)V

    .line 3781
    :cond_27
    const-wide/16 v0, 0xbb8

    invoke-static {v2, p0, v0, v1}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 3784
    :cond_2c
    return-void
.end method

.method static synthetic c(Landroid/content/Context;)Z
    .registers 1

    .line 59
    invoke-static {p0}, Lcom/uc/crashsdk/e;->d(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static c(Ljava/lang/String;)Z
    .registers 3

    .line 3120
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 3122
    return v1

    .line 3126
    :cond_6
    :try_start_6
    invoke-static {p0}, Lcom/uc/crashsdk/e;->o(Ljava/lang/String;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return p0

    .line 3127
    :catchall_b
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3130
    return v1
.end method

.method static synthetic d(I)I
    .registers 1

    .line 59
    sput p0, Lcom/uc/crashsdk/e;->D:I

    return p0
.end method

.method static d()Ljava/lang/String;
    .registers 1

    .line 295
    sget-object v0, Lcom/uc/crashsdk/e;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 296
    return-object v0

    .line 298
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    sput-object v0, Lcom/uc/crashsdk/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Z)Ljava/lang/String;
    .registers 1

    .line 4234
    if-eqz p0, :cond_5

    .line 4235
    const-string p0, "https://errlogos.umeng.com/upload"

    return-object p0

    .line 4237
    :cond_5
    const-string p0, "https://errlog.umeng.com/upload"

    return-object p0
.end method

.method private static d(Ljava/io/OutputStream;)V
    .registers 13

    .line 1307
    const-string v0, "UTF-8"

    .line 1308
    nop

    .line 1309
    nop

    .line 1311
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_6
    invoke-static {}, Lcom/uc/crashsdk/g;->I()I

    move-result v3
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_1f

    .line 1312
    :try_start_a
    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/self/task"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1313
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1314
    if-nez v2, :cond_18

    .line 1315
    return-void

    .line 1318
    :cond_18
    array-length v4, v2
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1d

    .line 1319
    if-ge v4, v3, :cond_1c

    .line 1320
    return-void

    .line 1324
    :cond_1c
    goto :goto_26

    .line 1322
    :catchall_1d
    move-exception v4

    goto :goto_22

    :catchall_1f
    move-exception v4

    const/16 v3, 0x12c

    :goto_22
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    .line 1326
    :goto_26
    if-nez v2, :cond_29

    .line 1327
    return-void

    .line 1331
    :cond_29
    :try_start_29
    const-string v5, "threads info:\n"

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V

    .line 1332
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "threads count: %d, dump limit: %d.\n"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    .line 1334
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v8, v4

    .line 1332
    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1334
    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1332
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1336
    const-string v3, " tid     name\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1337
    array-length v3, v2

    const/4 v5, 0x0

    :goto_5c
    if-ge v5, v3, :cond_91

    aget-object v6, v2, v5

    .line 1338
    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "comm"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const/16 v9, 0x80

    invoke-static {v8, v9, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v8

    .line 1340
    invoke-static {v8}, Lcom/uc/crashsdk/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1341
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%5s %s\n"

    new-array v11, v7, [Ljava/lang/Object;

    .line 1342
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v1

    aput-object v8, v11, v4

    .line 1341
    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1343
    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_8e
    .catchall {:try_start_29 .. :try_end_8e} :catchall_92

    .line 1337
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 1347
    :cond_91
    goto :goto_96

    .line 1345
    :catchall_92
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1349
    :goto_96
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1350
    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 6

    .line 3509
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 3510
    const/4 v0, 0x0

    if-nez p0, :cond_c

    .line 3511
    return v0

    .line 3513
    :cond_c
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object p0

    .line 3514
    if-nez p0, :cond_13

    .line 3515
    return v0

    .line 3517
    :cond_13
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 3518
    nop

    .line 3519
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 3520
    iget v4, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    if-ne v4, v1, :cond_1c

    .line 3521
    sput-boolean v3, Lcom/uc/crashsdk/e;->O:Z

    .line 3524
    nop

    .line 3525
    invoke-static {}, Lcom/uc/crashsdk/e;->N()Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 3526
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "ANR occurred in process: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "crashsdk"

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3530
    :cond_4c
    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_57

    .line 3531
    const/16 p0, 0x82

    iget-object v0, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    .line 3535
    :cond_57
    const/4 v0, 0x1

    :cond_58
    if-nez v0, :cond_61

    sget-boolean p0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz p0, :cond_61

    .line 3537
    invoke-static {}, Lcom/uc/crashsdk/e;->V()V

    .line 3539
    :cond_61
    return v3
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 3

    .line 4221
    :try_start_0
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "lib"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, ".so"

    .line 4222
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 4223
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 4224
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_26

    .line 4225
    const/4 p0, 0x1

    return p0

    .line 4229
    :cond_25
    goto :goto_2a

    .line 4227
    :catchall_26
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4230
    :goto_2a
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic e(I)I
    .registers 1

    .line 59
    sput p0, Lcom/uc/crashsdk/e;->E:I

    return p0
.end method

.method public static e(Z)I
    .registers 2

    .line 4466
    nop

    .line 4467
    if-eqz p0, :cond_11

    .line 4468
    invoke-static {}, Lcom/uc/crashsdk/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4469
    const/4 v0, 0x1

    goto :goto_15

    .line 4468
    :cond_f
    const/4 v0, 0x0

    goto :goto_15

    .line 4472
    :cond_11
    invoke-static {}, Lcom/uc/crashsdk/f;->b()I

    move-result v0

    .line 4475
    :goto_15
    invoke-static {p0}, Lcom/uc/crashsdk/f;->b(Z)I

    move-result p0

    .line 4476
    if-le p0, v0, :cond_1c

    return p0

    .line 4477
    :cond_1c
    return v0
.end method

.method public static e()Ljava/lang/String;
    .registers 10

    .line 705
    const-string v0, ","

    sget-object v1, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 706
    sget-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    return-object v0

    .line 711
    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_10
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4d

    .line 712
    const-class v4, Landroid/os/Build;

    const-string v5, "SUPPORTED_ABIS"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 713
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 714
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 715
    if-eqz v4, :cond_4d

    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_4d

    .line 716
    check-cast v4, [Ljava/lang/String;

    .line 717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    nop

    .line 719
    array-length v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_36
    if-ge v7, v6, :cond_47

    aget-object v9, v4, v7

    .line 720
    if-nez v8, :cond_3f

    .line 721
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    :cond_3f
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    nop

    .line 719
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    goto :goto_36

    .line 726
    :cond_47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;
    :try_end_4d
    .catchall {:try_start_10 .. :try_end_4d} :catchall_4e

    .line 730
    :cond_4d
    goto :goto_4f

    .line 729
    :catchall_4e
    move-exception v4

    .line 733
    :goto_4f
    sget-object v4, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 734
    nop

    .line 735
    nop

    .line 737
    :try_start_59
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_60

    .line 738
    :try_start_5b
    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_5e

    .line 740
    goto :goto_63

    .line 739
    :catchall_5e
    move-exception v5

    goto :goto_62

    :catchall_60
    move-exception v4

    move-object v4, v3

    :goto_62
    move-object v5, v3

    .line 742
    :goto_63
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v6

    .line 743
    xor-int/2addr v6, v2

    if-eqz v6, :cond_6c

    .line 744
    sput-object v4, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    .line 746
    :cond_6c
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a1

    .line 747
    if-eqz v6, :cond_9f

    .line 748
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    .line 749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    goto :goto_a1

    .line 751
    :cond_9f
    sput-object v5, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    .line 757
    :cond_a1
    :goto_a1
    nop

    .line 758
    nop

    .line 760
    :try_start_a3
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 761
    const-string v5, "get"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 763
    if-eqz v4, :cond_df

    .line 764
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 765
    new-array v5, v6, [Ljava/lang/Object;

    const-string v7, "ro.product.cpu.abi"

    aput-object v7, v5, v1

    aput-object v3, v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_cd
    .catchall {:try_start_a3 .. :try_end_cd} :catchall_e1

    .line 766
    :try_start_cd
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "ro.product.cpu.abi2"

    aput-object v7, v6, v1

    aput-object v3, v6, v2

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_db
    .catchall {:try_start_cd .. :try_end_db} :catchall_dd

    move-object v3, v5

    goto :goto_e0

    .line 768
    :catchall_dd
    move-exception v1

    goto :goto_e3

    .line 763
    :cond_df
    move-object v1, v3

    .line 770
    :goto_e0
    goto :goto_e8

    .line 768
    :catchall_e1
    move-exception v1

    move-object v5, v3

    :goto_e3
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move-object v1, v3

    move-object v3, v5

    .line 772
    :goto_e8
    :try_start_e8
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_120

    sget-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_120

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    .line 776
    :cond_120
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_158

    sget-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_158

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;
    :try_end_158
    .catchall {:try_start_e8 .. :try_end_158} :catchall_159

    .line 782
    :cond_158
    goto :goto_15d

    .line 780
    :catchall_159
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 783
    :goto_15d
    sget-object v0, Lcom/uc/crashsdk/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method static e(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 2

    .line 4508
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 4509
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/io/OutputStream;)V
    .registers 12

    .line 1389
    const-string v0, "UTF-8"

    sget-boolean v1, Lcom/uc/crashsdk/b;->d:Z

    if-nez v1, :cond_7

    .line 1390
    return-void

    .line 1394
    :cond_7
    :try_start_7
    const-string v1, "solib build id:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    .line 1397
    goto :goto_15

    .line 1395
    :catchall_11
    move-exception v1

    invoke-static {v1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1399
    :goto_15
    nop

    .line 1400
    nop

    .line 1402
    const/4 v1, 0x0

    :try_start_18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1403
    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/self/maps"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_c7

    .line 1404
    :try_start_29
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x200

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_c3

    .line 1405
    :cond_30
    :goto_30
    :try_start_30
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_bd

    .line 1407
    const-string v5, ".so"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1408
    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1411
    const/4 v6, -0x1

    if-eq v5, v6, :cond_30

    .line 1412
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1416
    const-string v5, "/data/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_60

    sget-object v5, Lcom/uc/crashsdk/a;->a:Ljava/lang/String;

    .line 1417
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5e

    goto :goto_60

    :cond_5e
    const/4 v5, 0x0

    goto :goto_61

    :cond_60
    :goto_60
    const/4 v5, 0x1

    .line 1418
    :goto_61
    if-eqz v5, :cond_30

    .line 1419
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 1423
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1427
    sget-boolean v5, Lcom/uc/crashsdk/e;->af:Z
    :try_end_6e
    .catchall {:try_start_30 .. :try_end_6e} :catchall_c1

    const/4 v8, 0x2

    if-eqz v5, :cond_9f

    .line 1429
    :try_start_71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SOBUILDID"

    const-string v10, "$^%s`%s^$"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v6

    aput-object v1, v8, v7

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1430
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_99
    .catchall {:try_start_71 .. :try_end_99} :catchall_9a

    goto :goto_9e

    .line 1431
    :catchall_9a
    move-exception v1

    :try_start_9b
    invoke-static {v1, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1433
    :goto_9e
    goto :goto_30

    .line 1435
    :cond_9f
    const/4 v5, 0x3

    const-wide/16 v9, 0x0

    invoke-static {v5, v9, v10, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeGet(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1436
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s: %s\n"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v6

    aput-object v5, v8, v7

    invoke-static {v9, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1437
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1436
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_bb
    .catchall {:try_start_9b .. :try_end_bb} :catchall_c1

    .line 1439
    goto/16 :goto_30

    .line 1443
    :cond_bd
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_cf

    .line 1440
    :catchall_c1
    move-exception v0

    goto :goto_c5

    :catchall_c3
    move-exception v0

    move-object v4, v1

    :goto_c5
    move-object v1, v3

    goto :goto_c9

    :catchall_c7
    move-exception v0

    move-object v4, v1

    :goto_c9
    :try_start_c9
    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_d7

    .line 1443
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1444
    :goto_cf
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1445
    nop

    .line 1446
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1447
    return-void

    .line 1443
    :catchall_d7
    move-exception p0

    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 1444
    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    goto :goto_e0

    :goto_df
    throw p0

    :goto_e0
    goto :goto_df
.end method

.method static synthetic f(I)I
    .registers 1

    .line 59
    sput p0, Lcom/uc/crashsdk/e;->F:I

    return p0
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    .line 790
    sget-object v0, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 791
    invoke-static {}, Lcom/uc/crashsdk/e;->S()V

    .line 793
    :cond_b
    sget-object v0, Lcom/uc/crashsdk/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 59
    sput-object p0, Lcom/uc/crashsdk/e;->J:Ljava/lang/String;

    return-object p0
.end method

.method private static f(Ljava/io/OutputStream;)V
    .registers 9

    .line 1847
    :try_start_0
    const-string v0, "recent status:\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 1850
    goto :goto_10

    .line 1848
    :catchall_c
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1854
    :goto_10
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_12
    sget-boolean v2, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v2, :cond_1d

    .line 1855
    const-string v2, "LASTVER"

    invoke-static {v2}, Lcom/uc/crashsdk/e;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    .line 1857
    :cond_1d
    invoke-static {}, Lcom/uc/crashsdk/a;->m()Ljava/lang/String;

    move-result-object v2

    .line 1859
    :goto_21
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "last version: \'%s\'\n"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 1860
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1859
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_37

    .line 1863
    goto :goto_3b

    .line 1861
    :catchall_37
    move-exception v2

    invoke-static {v2, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1866
    :goto_3b
    :try_start_3b
    sget-object v2, Lcom/uc/crashsdk/e;->r:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_df

    .line 1867
    :try_start_3e
    sget-object v3, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    if-eqz v3, :cond_59

    .line 1868
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "generating log: %s\n"

    new-array v5, v1, [Ljava/lang/Object;

    sget-object v6, Lcom/uc/crashsdk/e;->t:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 1869
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1868
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1872
    :cond_59
    sget v3, Lcom/uc/crashsdk/e;->s:I

    if-gtz v3, :cond_63

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a4

    .line 1873
    :cond_63
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "generated %d logs, recent are:\n"

    new-array v5, v1, [Ljava/lang/Object;

    sget v6, Lcom/uc/crashsdk/e;->s:I

    .line 1875
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 1873
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    .line 1875
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1873
    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 1876
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1877
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "* %s\n"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v0

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    .line 1878
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1877
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1879
    goto :goto_82

    .line 1881
    :cond_a4
    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_3e .. :try_end_a5} :catchall_dc

    .line 1883
    :try_start_a5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "dumping all threads: %s\n"

    new-array v4, v1, [Ljava/lang/Object;

    sget-boolean v5, Lcom/uc/crashsdk/e;->u:Z

    .line 1884
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    .line 1883
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    .line 1884
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1883
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1885
    sget-object v2, Lcom/uc/crashsdk/e;->v:Ljava/lang/String;

    if-eqz v2, :cond_db

    .line 1886
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "dumping threads: %s\n"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lcom/uc/crashsdk/e;->v:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 1887
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1886
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_db
    .catchall {:try_start_a5 .. :try_end_db} :catchall_df

    .line 1891
    :cond_db
    goto :goto_e3

    .line 1881
    :catchall_dc
    move-exception v0

    :try_start_dd
    monitor-exit v2
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    :try_start_de
    throw v0
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_df

    .line 1889
    :catchall_df
    move-exception v0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 1893
    :goto_e3
    invoke-static {p0}, Lcom/uc/crashsdk/e;->a(Ljava/io/OutputStream;)V

    .line 1894
    return-void
.end method

.method static synthetic f(Z)Z
    .registers 1

    .line 59
    sput-boolean p0, Lcom/uc/crashsdk/e;->K:Z

    return p0
.end method

.method static synthetic g(I)I
    .registers 1

    .line 59
    sput p0, Lcom/uc/crashsdk/e;->G:I

    return p0
.end method

.method private static g(Ljava/lang/String;)J
    .registers 10

    .line 127
    const-wide/16 v0, 0x0

    :try_start_2
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 128
    const-string v3, "getLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 130
    if-eqz v2, :cond_36

    .line 131
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 132
    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v4, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_37

    return-wide v0

    .line 136
    :cond_36
    goto :goto_3b

    .line 134
    :catchall_37
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 137
    :goto_3b
    return-wide v0
.end method

.method static g()Ljava/lang/String;
    .registers 9

    .line 847
    const-string v0, " kB\n"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    const-string v2, "JavaMax:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    const-string v2, "JavaTotal:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const-string v2, "JavaFree:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    const-string v2, "NativeHeap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    const-string v2, "NativeAllocated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v2, "NativeFree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_81
    .catchall {:try_start_2 .. :try_end_81} :catchall_d2

    .line 861
    :try_start_81
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 862
    if-eqz v2, :cond_c8

    .line 863
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 864
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 865
    const-string v2, "availMem:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v7, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    const-string v2, "threshold:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v7, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    const-string v0, "lowMemory:  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c8
    .catchall {:try_start_81 .. :try_end_c8} :catchall_c9

    .line 872
    :cond_c8
    goto :goto_cd

    .line 870
    :catchall_c9
    move-exception v0

    :try_start_ca
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 874
    :goto_cd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_d1
    .catchall {:try_start_ca .. :try_end_d1} :catchall_d2

    return-object v0

    .line 875
    :catchall_d2
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 878
    const-string v0, ""

    return-object v0
.end method

.method static synthetic h(I)I
    .registers 1

    .line 59
    sput p0, Lcom/uc/crashsdk/e;->H:I

    return p0
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    .line 1613
    sget-object v0, Lcom/uc/crashsdk/e;->m:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1614
    return-object v0

    .line 1617
    :cond_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1618
    sput-object v0, Lcom/uc/crashsdk/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 276
    :try_start_0
    const-string v0, "[^0-9a-zA-Z-.]"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    .line 279
    goto :goto_c

    .line 277
    :catchall_9
    move-exception p0

    .line 278
    const-string p0, "unknown"

    .line 280
    :goto_c
    return-object p0
.end method

.method static synthetic i(I)I
    .registers 1

    .line 59
    sput p0, Lcom/uc/crashsdk/e;->I:I

    return p0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 304
    if-nez p0, :cond_26

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 308
    :cond_26
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 309
    invoke-static {}, Lcom/uc/crashsdk/e;->O()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/uc/crashsdk/g;->R()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 310
    invoke-static {}, Lcom/uc/crashsdk/g;->T()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lcom/uc/crashsdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 311
    invoke-static {v3}, Lcom/uc/crashsdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p0, v1, v2

    .line 308
    const-string p0, "%s%s_%s_%s_%s_%s_"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static i()Z
    .registers 1

    .line 2243
    sget-boolean v0, Lcom/uc/crashsdk/e;->d:Z

    return v0
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 368
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 369
    invoke-static {}, Lcom/uc/crashsdk/e;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/uc/crashsdk/e;->m()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 370
    invoke-static {}, Lcom/uc/crashsdk/e;->P()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p0, v1, v2

    .line 368
    const-string p0, "%s%s_%s_%s.log"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j()V
    .registers 2

    .line 2330
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2331
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2332
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    .line 2335
    return-void

    .line 2333
    :catchall_15
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2336
    return-void
.end method

.method public static k()Ljava/lang/String;
    .registers 4

    .line 3083
    sget-object v0, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3084
    sget-object v0, Lcom/uc/crashsdk/e;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 3086
    :try_start_b
    invoke-static {}, Lcom/uc/crashsdk/b;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/uc/crashsdk/e;->x:Ljava/lang/String;

    const/4 v3, 0x1

    .line 3085
    invoke-static {v1, v2, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    .line 3088
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_1a

    throw v1

    .line 3090
    :cond_1d
    :goto_1d
    sget-object v0, Lcom/uc/crashsdk/e;->w:Ljava/lang/String;

    return-object v0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1602
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1603
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1604
    if-ltz v1, :cond_11

    .line 1605
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1607
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1609
    :cond_16
    const-string p0, ""

    return-object p0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1897
    nop

    .line 1898
    invoke-static {}, Lcom/uc/crashsdk/g;->w()Ljava/lang/String;

    move-result-object v0

    .line 1899
    invoke-static {}, Lcom/uc/crashsdk/g;->v()Z

    move-result v1

    .line 1897
    invoke-static {p0, v0, v1}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1902
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1903
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_21

    .line 1905
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1908
    :cond_21
    return-object v0
.end method

.method public static l()V
    .registers 4

    .line 3268
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    if-eqz v0, :cond_5

    .line 3269
    return-void

    .line 3271
    :cond_5
    const/4 v0, 0x1

    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x19b

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 3274
    return-void
.end method

.method static m()Ljava/lang/String;
    .registers 1

    .line 3287
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static m(Ljava/lang/String;)[Z
    .registers 8

    .line 2529
    invoke-static {}, Lcom/uc/crashsdk/g;->v()Z

    move-result v0

    .line 2530
    invoke-static {}, Lcom/uc/crashsdk/g;->x()Z

    move-result v1

    .line 2533
    const/4 v2, 0x0

    if-nez v0, :cond_d

    if-eqz v1, :cond_7e

    .line 2534
    :cond_d
    const-string v3, ".tmp"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7a

    const-string v3, ".ec"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_7a

    .line 2546
    :cond_1e
    nop

    .line 2547
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2548
    if-gez v3, :cond_2a

    .line 2549
    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_2b

    .line 2548
    :cond_2a
    const/4 v4, 0x0

    .line 2552
    :cond_2b
    :goto_2b
    const/16 v5, 0x5f

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 2553
    if-ltz v3, :cond_37

    .line 2554
    add-int/lit8 v4, v4, 0x1

    .line 2555
    add-int/lit8 v3, v3, 0x1

    .line 2557
    :cond_37
    if-gez v3, :cond_2b

    .line 2559
    const/16 v3, 0x8

    if-eq v4, v3, :cond_42

    .line 2560
    nop

    .line 2561
    nop

    .line 2562
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_7e

    .line 2566
    :cond_42
    invoke-static {}, Lcom/uc/crashsdk/g;->w()Ljava/lang/String;

    move-result-object v3

    .line 2567
    const-string v4, ".log"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_61

    .line 2568
    nop

    .line 2569
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 v0, 0x0

    goto :goto_7e

    .line 2571
    :cond_5e
    :goto_5e
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_7e

    .line 2578
    :cond_61
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 2579
    nop

    .line 2580
    const/4 v0, 0x0

    goto :goto_7e

    .line 2585
    :cond_6a
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2586
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 2587
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-eq v3, p0, :cond_7e

    .line 2588
    const/4 v0, 0x0

    goto :goto_7e

    .line 2540
    :cond_7a
    :goto_7a
    nop

    .line 2541
    nop

    .line 2542
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2589
    :cond_7e
    :goto_7e
    const/4 p0, 0x2

    new-array p0, p0, [Z

    aput-boolean v0, p0, v2

    const/4 v0, 0x1

    aput-boolean v1, p0, v0

    return-object p0
.end method

.method public static n()V
    .registers 2

    .line 3297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/uc/crashsdk/e;->b:J

    .line 3298
    return-void
.end method

.method private static n(Ljava/lang/String;)Z
    .registers 18

    .line 2776
    move-object/from16 v1, p0

    .line 2777
    sget-object v2, Lcom/uc/crashsdk/e;->q:Ljava/lang/Object;

    monitor-enter v2

    .line 2778
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "customlog"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2779
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2780
    const/16 v0, 0x400

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v0

    .line 2782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2783
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 2784
    nop

    .line 2785
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_b0

    .line 2786
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2787
    const-string v0, "([^\\n\\r\\t\\s]+) (\\d+) (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2789
    nop

    .line 2790
    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const/4 v0, 0x0

    .line 2791
    :goto_45
    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 2792
    invoke-virtual {v10, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 2793
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 2794
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 2795
    goto :goto_45

    .line 2798
    :cond_5a
    invoke-virtual {v10, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_f5

    .line 2799
    nop

    .line 2801
    sub-long v13, v5, v11

    const-wide/32 v15, 0x5265c00

    const/4 v8, 0x3

    cmp-long v0, v13, v15

    if-gez v0, :cond_7c

    .line 2803
    :try_start_6d
    invoke-virtual {v10, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_75} :catch_76
    .catchall {:try_start_6d .. :try_end_75} :catchall_f5

    .line 2806
    goto :goto_7e

    .line 2804
    :catch_76
    move-exception v0

    :try_start_77
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 2806
    const/4 v0, 0x0

    goto :goto_7e

    .line 2808
    :cond_7c
    move-wide v11, v5

    const/4 v0, 0x0

    .line 2811
    :goto_7e
    invoke-static {}, Lcom/uc/crashsdk/g;->D()I

    move-result v13

    .line 2812
    if-ltz v13, :cond_88

    if-lt v0, v13, :cond_88

    .line 2813
    const/4 v13, 0x1

    goto :goto_89

    .line 2818
    :cond_88
    const/4 v13, 0x0

    :goto_89
    add-int/2addr v0, v9

    .line 2819
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s %d %d"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v4

    .line 2820
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v11, 0x2

    aput-object v0, v8, v11

    .line 2819
    invoke-static {v14, v15, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2821
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {v7, v8, v10, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2823
    const/4 v0, 0x1

    goto :goto_b2

    .line 2824
    :cond_b0
    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_b2
    if-nez v0, :cond_ca

    .line 2829
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s %d 1\n"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v4

    .line 2830
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v9

    .line 2829
    invoke-static {v0, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2831
    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_ca
    .catchall {:try_start_77 .. :try_end_ca} :catchall_f5

    .line 2834
    :cond_ca
    const/4 v1, 0x0

    .line 2836
    :try_start_cb
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d0} :catch_e7
    .catchall {:try_start_cb .. :try_end_d0} :catchall_e5

    .line 2837
    :try_start_d0
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2838
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5, v0, v4, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_db} :catch_e2
    .catchall {:try_start_d0 .. :try_end_db} :catchall_df

    .line 2842
    :try_start_db
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_f5

    goto :goto_ee

    :catchall_df
    move-exception v0

    move-object v1, v5

    goto :goto_f1

    .line 2839
    :catch_e2
    move-exception v0

    move-object v1, v5

    goto :goto_e8

    .line 2842
    :catchall_e5
    move-exception v0

    goto :goto_f1

    .line 2839
    :catch_e7
    move-exception v0

    :goto_e8
    :try_start_e8
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_e5

    .line 2842
    :try_start_eb
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    .line 2843
    :goto_ee
    nop

    .line 2844
    monitor-exit v2

    .line 2845
    return v13

    .line 2842
    :goto_f1
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/Closeable;)V

    throw v0

    .line 2844
    :catchall_f5
    move-exception v0

    monitor-exit v2
    :try_end_f7
    .catchall {:try_start_eb .. :try_end_f7} :catchall_f5

    goto :goto_f9

    :goto_f8
    throw v0

    :goto_f9
    goto :goto_f8
.end method

.method public static o()V
    .registers 5

    .line 3343
    sget-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3344
    return-void

    .line 3347
    :cond_9
    nop

    .line 3350
    const/4 v0, 0x0

    :try_start_b
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "unique"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3351
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 3352
    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v2
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_6e

    .line 3353
    if-eqz v2, :cond_4e

    .line 3356
    :try_start_36
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x24

    if-eq v3, v4, :cond_3f

    .line 3357
    goto :goto_4f

    .line 3360
    :cond_3f
    const-string v0, "[^0-9a-zA-Z-]"

    const-string v3, "-"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_47} :catch_4a
    .catchall {:try_start_36 .. :try_end_47} :catchall_48

    .line 3364
    goto :goto_4f

    .line 3375
    :catchall_48
    move-exception v0

    goto :goto_71

    .line 3362
    :catch_4a
    move-exception v0

    :try_start_4b
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_48

    .line 3368
    :cond_4e
    move-object v0, v2

    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 3369
    invoke-static {}, Lcom/uc/crashsdk/b;->D()V

    .line 3370
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3371
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 3372
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;[B)Z
    :try_end_6d
    .catchall {:try_start_4f .. :try_end_6d} :catchall_6e

    .line 3377
    :cond_6d
    goto :goto_75

    .line 3375
    :catchall_6e
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_71
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 3379
    :goto_75
    sput-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    .line 3380
    return-void
.end method

.method private static o(Ljava/lang/String;)Z
    .registers 15

    .line 3134
    sget-object v0, Lcom/uc/crashsdk/e;->z:Ljava/lang/Object;

    monitor-enter v0

    .line 3135
    :try_start_3
    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 3137
    invoke-static {}, Lcom/uc/crashsdk/b;->i()Ljava/lang/String;

    move-result-object v1

    const-string v3, "all:1"

    .line 3136
    invoke-static {v1, v3, v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 3139
    invoke-static {v1}, Lcom/uc/crashsdk/e;->p(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    .line 3142
    :cond_18
    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v3, "all"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_33

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "all"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_2d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto/16 :goto_ac

    :cond_33
    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_2d

    :cond_44
    const-string v1, "java"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, "jni"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, "anr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    const-string v1, "unexp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    goto :goto_67

    :cond_65
    const/4 p0, 0x0

    goto :goto_68

    :cond_67
    :goto_67
    const/4 p0, 0x1

    :goto_68
    if-eqz p0, :cond_7f

    sget-object v1, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v4, "crash"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "crash"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_2d

    :cond_7f
    if-nez p0, :cond_96

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "nocrash"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_96

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "nocrash"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_2d

    :cond_96
    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "other"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ab

    sget-object p0, Lcom/uc/crashsdk/e;->A:Ljava/util/Map;

    const-string v1, "other"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_2d

    :cond_ab
    const/4 p0, 0x1

    .line 3143
    :goto_ac
    if-eqz p0, :cond_104

    int-to-long v4, p0

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    cmp-long p0, v4, v8

    if-gez p0, :cond_ef

    const-wide/16 v10, 0x1e

    const-wide/16 v12, -0x2

    cmp-long p0, v4, v12

    if-nez p0, :cond_c2

    const-wide/16 v10, 0x7

    goto :goto_d3

    :cond_c2
    const-wide/16 v12, -0x3

    cmp-long p0, v4, v12

    if-nez p0, :cond_cb

    const-wide/16 v10, 0xf

    goto :goto_d3

    :cond_cb
    const-wide/16 v12, -0x4

    cmp-long p0, v4, v12

    if-nez p0, :cond_d3

    const-wide/16 v10, 0x3c

    :cond_d3
    :goto_d3
    invoke-static {}, Lcom/uc/crashsdk/a;->b()J

    move-result-wide v4

    cmp-long p0, v4, v8

    if-nez p0, :cond_de

    const-wide/16 v4, -0x1

    goto :goto_e8

    :cond_de
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    const-wide/32 v4, 0x5265c00

    div-long v4, v12, v4

    :goto_e8
    cmp-long p0, v4, v10

    if-gtz p0, :cond_ee

    move-wide v4, v6

    goto :goto_ef

    :cond_ee
    sub-long/2addr v4, v10

    :cond_ef
    :goto_ef
    cmp-long p0, v4, v6

    if-nez p0, :cond_f5

    :goto_f3
    const/4 v2, 0x1

    goto :goto_104

    :cond_f5
    cmp-long p0, v4, v8

    if-gtz p0, :cond_fa

    goto :goto_f3

    :cond_fa
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    rem-long/2addr v6, v4

    cmp-long p0, v6, v8

    if-nez p0, :cond_104

    goto :goto_f3

    :cond_104
    :goto_104
    monitor-exit v0

    return v2

    .line 3144
    :catchall_106
    move-exception p0

    monitor-exit v0
    :try_end_108
    .catchall {:try_start_3 .. :try_end_108} :catchall_106

    goto :goto_10a

    :goto_109
    throw p0

    :goto_10a
    goto :goto_109
.end method

.method public static p()Ljava/lang/String;
    .registers 1

    .line 3383
    sget-object v0, Lcom/uc/crashsdk/e;->B:Ljava/lang/String;

    return-object v0
.end method

.method private static p(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3150
    const-string v1, "\\|"

    const/16 v2, 0x1e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 3151
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_48

    aget-object v4, p0, v3

    .line 3152
    const/4 v5, 0x3

    const-string v6, ":"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 3153
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_45

    .line 3154
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3158
    invoke-static {v5}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_45

    .line 3159
    nop

    .line 3164
    const/4 v6, 0x1

    :try_start_2d
    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_3a

    .line 3167
    goto :goto_3e

    .line 3165
    :catchall_3a
    move-exception v4

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3169
    :goto_3e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3151
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 3172
    :cond_48
    return-object v0
.end method

.method static q()V
    .registers 5

    .line 3555
    const/4 v0, 0x0

    sput-boolean v0, Lcom/uc/crashsdk/e;->O:Z

    .line 3556
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v1

    if-nez v1, :cond_16

    .line 3558
    const/4 v1, 0x3

    new-instance v2, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x1a0

    invoke-direct {v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v3, 0x2af8

    invoke-static {v1, v2, v3, v4}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 3563
    :cond_16
    invoke-static {}, Lcom/uc/crashsdk/e;->U()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3564
    return-void

    .line 3568
    :cond_1d
    sput v0, Lcom/uc/crashsdk/e;->N:I

    .line 3569
    invoke-static {}, Lcom/uc/crashsdk/e;->W()V

    .line 3570
    return-void
.end method

.method private static q(Ljava/lang/String;)V
    .registers 4

    .line 3301
    invoke-static {}, Lcom/uc/crashsdk/g;->q()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3302
    return-void

    .line 3306
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/uc/crashsdk/e;->aa()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    .line 3309
    goto :goto_f

    .line 3307
    :catchall_b
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3311
    :goto_f
    if-eqz p0, :cond_4e

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_4e

    .line 3316
    :cond_1a
    :try_start_1a
    invoke-static {}, Lcom/uc/crashsdk/g;->W()Ljava/lang/String;

    move-result-object v0

    .line 3317
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3318
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 3319
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 3322
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "copy log to: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3323
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_48
    .catchall {:try_start_1a .. :try_end_48} :catchall_49

    .line 3326
    return-void

    .line 3324
    :catchall_49
    move-exception p0

    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3327
    return-void

    .line 3312
    :cond_4e
    :goto_4e
    return-void
.end method

.method private static r(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 3387
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "$^%s^$"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static r()V
    .registers 1

    .line 3799
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 3800
    new-instance v0, Lcom/uc/crashsdk/e;

    invoke-direct {v0}, Lcom/uc/crashsdk/e;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3801
    return-void
.end method

.method public static s()V
    .registers 1

    .line 3804
    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 3805
    return-void
.end method

.method static t()Z
    .registers 1

    .line 3828
    sget-object v0, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/uc/crashsdk/e;->Z()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method public static u()Ljava/lang/Throwable;
    .registers 1

    .line 4028
    sget-object v0, Lcom/uc/crashsdk/e;->U:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static v()I
    .registers 2

    .line 4060
    invoke-static {}, Lcom/uc/crashsdk/b;->F()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 4061
    sget v0, Lcom/uc/crashsdk/e;->Z:I

    return v0

    .line 4063
    :cond_a
    const/16 v0, 0x64

    return v0
.end method

.method public static w()V
    .registers 6

    .line 4067
    invoke-static {}, Lcom/uc/crashsdk/g;->o()I

    move-result v0

    int-to-long v0, v0

    .line 4068
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_c

    .line 4069
    return-void

    .line 4075
    :cond_c
    invoke-static {}, Lcom/uc/crashsdk/b;->F()I

    move-result v2

    .line 4076
    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v2, v3, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 4078
    :goto_17
    new-instance v3, Lcom/uc/crashsdk/a/e;

    const/16 v5, 0x191

    invoke-direct {v3, v5}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    .line 4082
    if-nez v2, :cond_24

    .line 4083
    return-void

    .line 4087
    :cond_24
    new-instance v2, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0x192

    invoke-direct {v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    sput-object v2, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    .line 4088
    invoke-static {v4, v2, v0, v1}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 4089
    return-void
.end method

.method static x()V
    .registers 4

    .line 4115
    sget-boolean v0, Lcom/uc/crashsdk/b;->c:Z

    if-eqz v0, :cond_18

    sget-boolean v0, Lcom/uc/crashsdk/a;->c:Z

    if-eqz v0, :cond_18

    .line 4118
    sget-object v0, Lcom/uc/crashsdk/e;->aa:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/uc/crashsdk/a/f;->b(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 4119
    const/4 v0, 0x0

    sget-object v1, Lcom/uc/crashsdk/e;->aa:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 4123
    :cond_18
    return-void
.end method

.method public static y()Z
    .registers 3

    .line 4183
    sget-object v0, Lcom/uc/crashsdk/e;->Y:Ljava/lang/Object;

    monitor-enter v0

    .line 4184
    :try_start_3
    sget-object v1, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    if-eqz v1, :cond_14

    sget-boolean v2, Lcom/uc/crashsdk/e;->W:Z

    if-nez v2, :cond_14

    .line 4185
    invoke-static {v1}, Lcom/uc/crashsdk/a/f;->a(Ljava/lang/Runnable;)V

    .line 4186
    const/4 v1, 0x0

    sput-object v1, Lcom/uc/crashsdk/e;->X:Ljava/lang/Runnable;

    .line 4187
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 4189
    :cond_14
    monitor-exit v0

    .line 4190
    const/4 v0, 0x0

    return v0

    .line 4189
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public static z()V
    .registers 4

    .line 4316
    invoke-static {}, Lcom/uc/crashsdk/g;->q()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4317
    return-void

    .line 4320
    :cond_7
    const/4 v0, 0x0

    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x193

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    .line 4323
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .registers 23

    .line 3832
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "original exception is: "

    const-string v4, "crashsdk"

    const-string v5, "Call java default handler: "

    const-string v6, "DEBUG"

    .line 3833
    nop

    .line 3835
    sget-boolean v0, Lcom/uc/crashsdk/e;->af:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_17

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-nez v0, :cond_1d

    .line 3836
    :cond_17
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    const/4 v9, 0x1

    goto :goto_20

    :cond_1f
    const/4 v9, 0x0

    .line 3839
    :goto_20
    :try_start_20
    sget-object v0, Lcom/uc/crashsdk/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v12, 0x4

    if-eqz v0, :cond_cd

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_cd

    .line 3841
    const-string v0, "another thread is generating java report!"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3842
    const-string v0, "current thread exception is:"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3843
    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V

    .line 3846
    const/4 v13, 0x0

    .line 3847
    :cond_3d
    sget-boolean v0, Lcom/uc/crashsdk/e;->V:Z
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_56c

    if-nez v0, :cond_4f

    .line 3849
    const-wide/16 v14, 0x3e8

    :try_start_43
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    .line 3852
    goto :goto_4c

    .line 3850
    :catchall_47
    move-exception v0

    move-object v14, v0

    :try_start_49
    invoke-static {v14}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3853
    :goto_4c
    add-int/2addr v13, v7

    if-lt v13, v12, :cond_3d

    .line 3854
    :cond_4f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_56c

    .line 3858
    nop

    .line 3968
    nop

    .line 3972
    nop

    .line 3974
    if-eqz p3, :cond_72

    :try_start_5b
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_6c

    if-eqz v0, :cond_72

    if-nez v9, :cond_72

    .line 3976
    nop

    .line 3977
    :try_start_64
    invoke-static {v7, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_69

    const/4 v3, 0x1

    goto :goto_73

    .line 3979
    :catchall_69
    move-exception v0

    const/4 v3, 0x1

    goto :goto_6e

    :catchall_6c
    move-exception v0

    const/4 v3, 0x0

    :goto_6e
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_74

    .line 3981
    :cond_72
    const/4 v3, 0x0

    :goto_73
    nop

    .line 3983
    :goto_74
    if-nez v3, :cond_7b

    if-nez v9, :cond_7b

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_7b
    :try_start_7b
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    .line 3990
    goto :goto_84

    .line 3988
    :catchall_7f
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_84
    :try_start_84
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_8f

    .line 3995
    const/4 v0, 0x1

    .line 3997
    :cond_8f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    if-eqz v0, :cond_a8

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_a8

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_a8
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_b7

    if-nez v9, :cond_b7

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_b7
    .catchall {:try_start_84 .. :try_end_b7} :catchall_b8

    .line 4009
    :cond_b7
    goto :goto_bc

    .line 4007
    :catchall_b8
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :goto_bc
    sput-boolean v7, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_cb

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 4015
    :cond_cb
    nop

    .line 3858
    return-void

    .line 3861
    :cond_cd
    :try_start_cd
    sput-object v2, Lcom/uc/crashsdk/e;->U:Ljava/lang/Throwable;

    .line 3863
    if-nez v9, :cond_155

    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v0

    if-nez v0, :cond_155

    .line 3864
    invoke-static {}, Lcom/uc/crashsdk/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_de
    .catchall {:try_start_cd .. :try_end_de} :catchall_56c

    .line 3865
    nop

    .line 4015
    nop

    .line 3972
    nop

    .line 3974
    if-eqz p3, :cond_fa

    :try_start_e3
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_e7
    .catchall {:try_start_e3 .. :try_end_e7} :catchall_f4

    if-eqz v0, :cond_fa

    if-nez v9, :cond_fa

    .line 3976
    nop

    .line 3977
    :try_start_ec
    invoke-static {v7, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_f1

    const/4 v3, 0x1

    goto :goto_fb

    .line 3979
    :catchall_f1
    move-exception v0

    const/4 v3, 0x1

    goto :goto_f6

    :catchall_f4
    move-exception v0

    const/4 v3, 0x0

    :goto_f6
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_fc

    .line 3981
    :cond_fa
    const/4 v3, 0x0

    :goto_fb
    nop

    .line 3983
    :goto_fc
    if-nez v3, :cond_103

    if-nez v9, :cond_103

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_103
    :try_start_103
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_107

    .line 3990
    goto :goto_10c

    .line 3988
    :catchall_107
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_10c
    :try_start_10c
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_117

    .line 3995
    const/4 v0, 0x1

    .line 3997
    :cond_117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    if-eqz v0, :cond_130

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_130

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_130
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_13f

    if-nez v9, :cond_13f

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_13f
    .catchall {:try_start_10c .. :try_end_13f} :catchall_140

    .line 4009
    :cond_13f
    goto :goto_144

    .line 4007
    :catchall_140
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :goto_144
    sput-boolean v7, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_153

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 4015
    :cond_153
    nop

    .line 3865
    return-void

    .line 3868
    :cond_155
    :try_start_155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "encryptLog: "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/g;->x()Z

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ", zipCrashLog: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3869
    invoke-static {}, Lcom/uc/crashsdk/g;->x()Z

    move-result v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3868
    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3870
    sget-object v0, Lcom/uc/crashsdk/g;->a:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_187

    .line 3871
    const-string v0, "the set zip log to false stack is:"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3872
    sget-object v0, Lcom/uc/crashsdk/g;->a:Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3874
    :cond_187
    sget-object v0, Lcom/uc/crashsdk/g;->b:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_195

    .line 3875
    const-string v0, "the set encrypt to true stack is:"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3876
    sget-object v0, Lcom/uc/crashsdk/g;->b:Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3878
    :cond_195
    const-string v0, "begin to generate java report"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19a
    .catchall {:try_start_155 .. :try_end_19a} :catchall_56c

    .line 3883
    :try_start_19a
    invoke-direct/range {p0 .. p0}, Lcom/uc/crashsdk/e;->M()V
    :try_end_19d
    .catchall {:try_start_19a .. :try_end_19d} :catchall_19e

    .line 3886
    goto :goto_1a3

    .line 3884
    :catchall_19e
    move-exception v0

    move-object v13, v0

    :try_start_1a0
    invoke-static {v13}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_1a3
    .catchall {:try_start_1a0 .. :try_end_1a3} :catchall_56c

    .line 3888
    :goto_1a3
    nop

    .line 3889
    nop

    .line 3891
    :try_start_1a5
    invoke-static {}, Lcom/uc/crashsdk/g;->t()Z

    move-result v14
    :try_end_1a9
    .catchall {:try_start_1a5 .. :try_end_1a9} :catchall_1d9

    .line 3892
    :try_start_1a9
    invoke-static {}, Lcom/uc/crashsdk/g;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b7

    const-string v15, ""

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1bf

    :cond_1b7
    invoke-static {}, Lcom/uc/crashsdk/e;->R()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/e;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1bf
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->V()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1d4
    .catchall {:try_start_1a9 .. :try_end_1d4} :catchall_1d7

    .line 3900
    move-object v10, v0

    const/4 v11, 0x0

    goto :goto_205

    .line 3893
    :catchall_1d7
    move-exception v0

    goto :goto_1db

    :catchall_1d9
    move-exception v0

    const/4 v14, 0x0

    .line 3894
    :goto_1db
    :try_start_1db
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "get java log name failed: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3895
    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V

    .line 3897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3898
    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_203
    .catchall {:try_start_1db .. :try_end_203} :catchall_56c

    .line 3899
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 3902
    :goto_205
    const-string v15, "omit java crash"

    const-string v13, "java"

    if-nez v9, :cond_339

    .line 3904
    :try_start_20b
    invoke-static {}, Lcom/uc/crashsdk/g;->a()V
    :try_end_20e
    .catchall {:try_start_20b .. :try_end_20e} :catchall_222

    .line 3905
    :try_start_20e
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_219

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/uc/crashsdk/f;->a(I)V

    goto :goto_226

    :cond_219
    invoke-static {v12}, Lcom/uc/crashsdk/f;->a(I)V
    :try_end_21c
    .catchall {:try_start_20e .. :try_end_21c} :catchall_21d

    goto :goto_226

    :catchall_21d
    move-exception v0

    :try_start_21e
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_221
    .catchall {:try_start_21e .. :try_end_221} :catchall_222

    .line 3908
    goto :goto_226

    .line 3906
    :catchall_222
    move-exception v0

    :try_start_223
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_226
    .catchall {:try_start_223 .. :try_end_226} :catchall_56a

    .line 3910
    :goto_226
    :try_start_226
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/b;->b()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3911
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_232
    .catchall {:try_start_226 .. :try_end_232} :catchall_233

    .line 3914
    goto :goto_237

    .line 3912
    :catchall_233
    move-exception v0

    :try_start_234
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3916
    :goto_237
    if-eqz v14, :cond_2b3

    .line 3917
    invoke-static {v6, v15}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23c
    .catchall {:try_start_234 .. :try_end_23c} :catchall_56a

    .line 3918
    nop

    .line 4015
    nop

    .line 3972
    nop

    .line 3974
    if-eqz p3, :cond_258

    :try_start_241
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_245
    .catchall {:try_start_241 .. :try_end_245} :catchall_252

    if-eqz v0, :cond_258

    if-nez v9, :cond_258

    .line 3976
    nop

    .line 3977
    :try_start_24a
    invoke-static {v7, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_24d
    .catchall {:try_start_24a .. :try_end_24d} :catchall_24f

    const/4 v3, 0x1

    goto :goto_259

    .line 3979
    :catchall_24f
    move-exception v0

    const/4 v3, 0x1

    goto :goto_254

    :catchall_252
    move-exception v0

    const/4 v3, 0x0

    :goto_254
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_25a

    .line 3981
    :cond_258
    const/4 v3, 0x0

    :goto_259
    nop

    .line 3983
    :goto_25a
    if-nez v3, :cond_261

    if-nez v9, :cond_261

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_261
    :try_start_261
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_264
    .catchall {:try_start_261 .. :try_end_264} :catchall_265

    .line 3990
    goto :goto_26a

    .line 3988
    :catchall_265
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_26a
    :try_start_26a
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_275

    .line 3995
    const/4 v0, 0x1

    .line 3997
    :cond_275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    if-eqz v0, :cond_28e

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_28e

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_28e
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_29d

    if-nez v9, :cond_29d

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_29d
    .catchall {:try_start_26a .. :try_end_29d} :catchall_29e

    .line 4009
    :cond_29d
    goto :goto_2a2

    .line 4007
    :catchall_29e
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :goto_2a2
    sput-boolean v7, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_2b1

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 4015
    :cond_2b1
    nop

    .line 3918
    return-void

    .line 3922
    :cond_2b3
    :try_start_2b3
    invoke-static {v13}, Lcom/uc/crashsdk/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_335

    .line 3923
    const-string v0, "java log sample miss"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2be
    .catchall {:try_start_2b3 .. :try_end_2be} :catchall_56a

    .line 3924
    nop

    .line 4015
    nop

    .line 3972
    nop

    .line 3974
    if-eqz p3, :cond_2da

    :try_start_2c3
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_2c7
    .catchall {:try_start_2c3 .. :try_end_2c7} :catchall_2d4

    if-eqz v0, :cond_2da

    if-nez v9, :cond_2da

    .line 3976
    nop

    .line 3977
    :try_start_2cc
    invoke-static {v7, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_2cf
    .catchall {:try_start_2cc .. :try_end_2cf} :catchall_2d1

    const/4 v3, 0x1

    goto :goto_2db

    .line 3979
    :catchall_2d1
    move-exception v0

    const/4 v3, 0x1

    goto :goto_2d6

    :catchall_2d4
    move-exception v0

    const/4 v3, 0x0

    :goto_2d6
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_2dc

    .line 3981
    :cond_2da
    const/4 v3, 0x0

    :goto_2db
    nop

    .line 3983
    :goto_2dc
    if-nez v3, :cond_2e3

    if-nez v9, :cond_2e3

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_2e3
    :try_start_2e3
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_2e6
    .catchall {:try_start_2e3 .. :try_end_2e6} :catchall_2e7

    .line 3990
    goto :goto_2ec

    .line 3988
    :catchall_2e7
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_2ec
    :try_start_2ec
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_2f7

    .line 3995
    const/4 v0, 0x1

    .line 3997
    :cond_2f7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    if-eqz v0, :cond_310

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_310

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_310
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_31f

    if-nez v9, :cond_31f

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_31f
    .catchall {:try_start_2ec .. :try_end_31f} :catchall_320

    .line 4009
    :cond_31f
    goto :goto_324

    .line 4007
    :catchall_320
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :goto_324
    sput-boolean v7, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_333

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 4015
    :cond_333
    nop

    .line 3924
    return-void

    .line 3922
    :cond_335
    const-wide/16 v12, 0x0

    goto/16 :goto_462

    .line 3927
    :cond_339
    if-eqz v14, :cond_340

    .line 3928
    :try_start_33b
    const-string v10, "omit"

    .line 3929
    invoke-static {v6, v15}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3932
    :cond_340
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_34a

    .line 3933
    const/4 v12, 0x0

    invoke-static {v10, v13, v12, v8}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCreateConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v12
    :try_end_349
    .catchall {:try_start_33b .. :try_end_349} :catchall_56a

    goto :goto_34c

    .line 3932
    :cond_34a
    const-wide/16 v12, 0x0

    .line 3937
    :goto_34c
    const-wide/16 v15, 0x0

    cmp-long v0, v12, v15

    if-nez v0, :cond_3dd

    .line 3938
    :try_start_352
    const-string v0, "skip java crash:"

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3939
    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_35a
    .catchall {:try_start_352 .. :try_end_35a} :catchall_568

    .line 3940
    nop

    .line 4015
    const-wide/16 v10, 0x0

    cmp-long v0, v12, v10

    if-eqz v0, :cond_368

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_368

    .line 3969
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    .line 3972
    :cond_368
    nop

    .line 3974
    if-eqz p3, :cond_382

    :try_start_36b
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_36f
    .catchall {:try_start_36b .. :try_end_36f} :catchall_37c

    if-eqz v0, :cond_382

    if-nez v9, :cond_382

    .line 3976
    nop

    .line 3977
    :try_start_374
    invoke-static {v7, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_377
    .catchall {:try_start_374 .. :try_end_377} :catchall_379

    const/4 v3, 0x1

    goto :goto_383

    .line 3979
    :catchall_379
    move-exception v0

    const/4 v3, 0x1

    goto :goto_37e

    :catchall_37c
    move-exception v0

    const/4 v3, 0x0

    :goto_37e
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_384

    .line 3981
    :cond_382
    const/4 v3, 0x0

    :goto_383
    nop

    .line 3983
    :goto_384
    if-nez v3, :cond_38b

    if-nez v9, :cond_38b

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_38b
    :try_start_38b
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_38e
    .catchall {:try_start_38b .. :try_end_38e} :catchall_38f

    .line 3990
    goto :goto_394

    .line 3988
    :catchall_38f
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_394
    :try_start_394
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_39f

    .line 3995
    const/4 v0, 0x1

    .line 3997
    :cond_39f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    if-eqz v0, :cond_3b8

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3b8

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_3b8
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_3c7

    if-nez v9, :cond_3c7

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_3c7
    .catchall {:try_start_394 .. :try_end_3c7} :catchall_3c8

    .line 4009
    :cond_3c7
    goto :goto_3cc

    .line 4007
    :catchall_3c8
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :goto_3cc
    sput-boolean v7, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_3db

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 4015
    :cond_3db
    nop

    .line 3940
    return-void

    .line 3943
    :cond_3dd
    if-eqz v14, :cond_462

    .line 3944
    nop

    .line 4015
    const-wide/16 v10, 0x0

    cmp-long v0, v12, v10

    if-eqz v0, :cond_3ed

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_3ed

    .line 3969
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    .line 3972
    :cond_3ed
    nop

    .line 3974
    if-eqz p3, :cond_407

    :try_start_3f0
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_3f4
    .catchall {:try_start_3f0 .. :try_end_3f4} :catchall_401

    if-eqz v0, :cond_407

    if-nez v9, :cond_407

    .line 3976
    nop

    .line 3977
    :try_start_3f9
    invoke-static {v7, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_3fc
    .catchall {:try_start_3f9 .. :try_end_3fc} :catchall_3fe

    const/4 v3, 0x1

    goto :goto_408

    .line 3979
    :catchall_3fe
    move-exception v0

    const/4 v3, 0x1

    goto :goto_403

    :catchall_401
    move-exception v0

    const/4 v3, 0x0

    :goto_403
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_409

    .line 3981
    :cond_407
    const/4 v3, 0x0

    :goto_408
    nop

    .line 3983
    :goto_409
    if-nez v3, :cond_410

    if-nez v9, :cond_410

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_410
    :try_start_410
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_413
    .catchall {:try_start_410 .. :try_end_413} :catchall_414

    .line 3990
    goto :goto_419

    .line 3988
    :catchall_414
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_419
    :try_start_419
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_424

    .line 3995
    const/4 v0, 0x1

    .line 3997
    :cond_424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    if-eqz v0, :cond_43d

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_43d

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_43d
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_44c

    if-nez v9, :cond_44c

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_44c
    .catchall {:try_start_419 .. :try_end_44c} :catchall_44d

    .line 4009
    :cond_44c
    goto :goto_451

    .line 4007
    :catchall_44d
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :goto_451
    sput-boolean v7, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_460

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 4015
    :cond_460
    nop

    .line 3944
    return-void

    .line 3948
    :cond_462
    :goto_462
    :try_start_462
    instance-of v0, v2, Ljava/lang/OutOfMemoryError;

    .line 3949
    invoke-static {v2, v10, v12, v13, v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;Ljava/lang/String;JZ)Ljava/lang/String;

    .line 3951
    const-string v14, "generate java report finished"

    invoke-static {v6, v14}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3953
    invoke-static {}, Lcom/uc/crashsdk/b;->I()Z

    move-result v14

    if-nez v14, :cond_4e2

    if-eqz v0, :cond_4e2

    .line 3954
    invoke-static {}, Lcom/uc/crashsdk/g;->j()Z

    move-result v0

    if-eqz v0, :cond_4e2

    .line 3955
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3956
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/uc/crashsdk/g;->W()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_495

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    :cond_495
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s%s.hprof"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v10, v7, v8

    const/4 v10, 0x1

    aput-object v0, v7, v10

    invoke-static {v14, v15, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "begin dump hprof: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14
    :try_end_4bb
    .catchall {:try_start_462 .. :try_end_4bb} :catchall_568

    :try_start_4bb
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_4be
    .catchall {:try_start_4bb .. :try_end_4be} :catchall_4bf

    goto :goto_4c4

    :catchall_4bf
    move-exception v0

    move-object v7, v0

    :try_start_4c1
    invoke-static {v7}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :goto_4c4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "end dump hprof, use "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v14, v17, v14

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " ms"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e2
    .catchall {:try_start_4c1 .. :try_end_4e2} :catchall_568

    .line 3958
    :cond_4e2
    nop

    .line 4015
    const-wide/16 v6, 0x0

    cmp-long v0, v12, v6

    if-eqz v0, :cond_4f0

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_4f0

    .line 3969
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    .line 3972
    :cond_4f0
    nop

    .line 3974
    if-eqz p3, :cond_50d

    :try_start_4f3
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_4f7
    .catchall {:try_start_4f3 .. :try_end_4f7} :catchall_506

    if-eqz v0, :cond_50d

    if-nez v9, :cond_50d

    .line 3976
    nop

    .line 3977
    const/4 v3, 0x1

    :try_start_4fd
    invoke-static {v3, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_500
    .catchall {:try_start_4fd .. :try_end_500} :catchall_502

    const/4 v0, 0x1

    goto :goto_50e

    .line 3979
    :catchall_502
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x1

    goto :goto_509

    :catchall_506
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_509
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_50f

    .line 3981
    :cond_50d
    const/4 v0, 0x0

    :goto_50e
    nop

    .line 3983
    :goto_50f
    if-nez v0, :cond_516

    if-nez v9, :cond_516

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_516
    :try_start_516
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_519
    .catchall {:try_start_516 .. :try_end_519} :catchall_51a

    .line 3990
    goto :goto_51f

    .line 3988
    :catchall_51a
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_51f
    :try_start_51f
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_52a

    .line 3995
    const/4 v0, 0x1

    .line 3997
    :cond_52a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    if-eqz v0, :cond_543

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_543

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_543
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_552

    if-nez v9, :cond_552

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_552
    .catchall {:try_start_51f .. :try_end_552} :catchall_553

    .line 4009
    :cond_552
    goto :goto_557

    .line 4007
    :catchall_553
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :goto_557
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_567

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 4015
    :cond_567
    return-void

    .line 3958
    :catchall_568
    move-exception v0

    goto :goto_570

    :catchall_56a
    move-exception v0

    goto :goto_56e

    :catchall_56c
    move-exception v0

    const/4 v11, 0x0

    :goto_56e
    const-wide/16 v12, 0x0

    .line 3959
    :goto_570
    :try_start_570
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "exception occurs while java log: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3960
    invoke-static {v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V

    .line 3962
    if-nez v11, :cond_59a

    .line 3963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/uc/crashsdk/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3964
    invoke-static/range {p2 .. p2}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_59a
    .catchall {:try_start_570 .. :try_end_59a} :catchall_620

    .line 3965
    :cond_59a
    nop

    .line 4015
    const-wide/16 v6, 0x0

    cmp-long v0, v12, v6

    if-eqz v0, :cond_5a8

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_5a8

    .line 3969
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    .line 3972
    :cond_5a8
    nop

    .line 3974
    if-eqz p3, :cond_5c5

    :try_start_5ab
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_5af
    .catchall {:try_start_5ab .. :try_end_5af} :catchall_5be

    if-eqz v0, :cond_5c5

    if-nez v9, :cond_5c5

    .line 3976
    nop

    .line 3977
    const/4 v3, 0x1

    :try_start_5b5
    invoke-static {v3, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_5b8
    .catchall {:try_start_5b5 .. :try_end_5b8} :catchall_5ba

    const/4 v0, 0x1

    goto :goto_5c6

    .line 3979
    :catchall_5ba
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x1

    goto :goto_5c1

    :catchall_5be
    move-exception v0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_5c1
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_5c7

    .line 3981
    :cond_5c5
    const/4 v0, 0x0

    :goto_5c6
    nop

    .line 3983
    :goto_5c7
    if-nez v0, :cond_5ce

    if-nez v9, :cond_5ce

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_5ce
    :try_start_5ce
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_5d1
    .catchall {:try_start_5ce .. :try_end_5d1} :catchall_5d2

    .line 3990
    goto :goto_5d7

    .line 3988
    :catchall_5d2
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_5d7
    :try_start_5d7
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v0

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v3

    if-nez v3, :cond_5e2

    .line 3995
    const/4 v0, 0x1

    .line 3997
    :cond_5e2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    if-eqz v0, :cond_5fb

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_5fb

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_5fb
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_60a

    if-nez v9, :cond_60a

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_60a
    .catchall {:try_start_5d7 .. :try_end_60a} :catchall_60b

    .line 4009
    :cond_60a
    goto :goto_60f

    .line 4007
    :catchall_60b
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :goto_60f
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_61f

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 4015
    :cond_61f
    return-void

    .line 3968
    :catchall_620
    move-exception v0

    move-object v3, v0

    .line 4015
    const-wide/16 v6, 0x0

    cmp-long v0, v12, v6

    if-eqz v0, :cond_62f

    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_62f

    .line 3969
    invoke-static {v12, v13}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    .line 3972
    :cond_62f
    nop

    .line 3974
    if-eqz p3, :cond_64a

    :try_start_632
    invoke-static {}, Lcom/uc/crashsdk/g;->r()Z

    move-result v0
    :try_end_636
    .catchall {:try_start_632 .. :try_end_636} :catchall_644

    if-eqz v0, :cond_64a

    if-nez v9, :cond_64a

    .line 3976
    nop

    .line 3977
    const/4 v6, 0x1

    :try_start_63c
    invoke-static {v6, v8}, Lcom/uc/crashsdk/e;->a(ZZ)Z
    :try_end_63f
    .catchall {:try_start_63c .. :try_end_63f} :catchall_641

    const/4 v10, 0x1

    goto :goto_64b

    .line 3979
    :catchall_641
    move-exception v0

    const/4 v10, 0x1

    goto :goto_646

    :catchall_644
    move-exception v0

    const/4 v10, 0x0

    :goto_646
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    goto :goto_64c

    .line 3981
    :cond_64a
    const/4 v10, 0x0

    :goto_64b
    nop

    .line 3983
    :goto_64c
    if-nez v10, :cond_653

    if-nez v9, :cond_653

    .line 3984
    invoke-static {v8}, Lcom/uc/crashsdk/e;->b(Z)V

    .line 3987
    :cond_653
    :try_start_653
    invoke-static {v8}, Lcom/uc/crashsdk/f;->c(Z)V
    :try_end_656
    .catchall {:try_start_653 .. :try_end_656} :catchall_657

    .line 3990
    goto :goto_65c

    .line 3988
    :catchall_657
    move-exception v0

    move-object v6, v0

    invoke-static {v6}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 3993
    :goto_65c
    :try_start_65c
    invoke-static {}, Lcom/uc/crashsdk/g;->i()Z

    move-result v10

    .line 3994
    invoke-static {}, Lcom/uc/crashsdk/a/d;->d()Z

    move-result v0

    if-nez v0, :cond_667

    .line 3995
    const/4 v10, 0x1

    .line 3997
    :cond_667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    if-eqz v10, :cond_680

    sget-object v0, Lcom/uc/crashsdk/e;->T:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_680

    .line 3999
    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4004
    :cond_680
    invoke-static {}, Lcom/uc/crashsdk/b;->y()Z

    move-result v0

    if-eqz v0, :cond_68f

    if-nez v9, :cond_68f

    .line 4005
    invoke-static {}, Lcom/uc/crashsdk/a/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/crashsdk/b;->b(Landroid/content/Context;)V
    :try_end_68f
    .catchall {:try_start_65c .. :try_end_68f} :catchall_690

    .line 4009
    :cond_68f
    goto :goto_694

    .line 4007
    :catchall_690
    move-exception v0

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    .line 4011
    :goto_694
    const/4 v1, 0x1

    sput-boolean v1, Lcom/uc/crashsdk/e;->V:Z

    .line 4012
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_6a4

    .line 4013
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 4015
    :cond_6a4
    nop

    .line 3968
    goto :goto_6a7

    :goto_6a6
    throw v3

    :goto_6a7
    goto :goto_6a6
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    .line 3813
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/uc/crashsdk/e;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    .line 3814
    return-void
.end method
