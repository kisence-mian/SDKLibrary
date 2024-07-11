.class public Lcom/tapjoy/internal/ie;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/ie$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field a:I

.field b:I

.field c:Lcom/tapjoy/internal/ig;

.field private e:[I

.field private final f:[I

.field private g:Ljava/nio/ByteBuffer;

.field private h:[B

.field private i:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Lcom/tapjoy/internal/ih;

.field private m:[S

.field private n:[B

.field private o:[B

.field private p:[B

.field private q:[I

.field private r:Lcom/tapjoy/internal/ie$a;

.field private s:Landroid/graphics/Bitmap;

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-class v0, Lcom/tapjoy/internal/ie;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/ie;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 206
    new-instance v0, Lcom/tapjoy/internal/ij;

    invoke-direct {v0}, Lcom/tapjoy/internal/ij;-><init>()V

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/ie;-><init>(Lcom/tapjoy/internal/ie$a;)V

    .line 207
    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/ie$a;)V
    .registers 3

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tapjoy/internal/ie;->f:[I

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/ie;->j:I

    .line 121
    iput v0, p0, Lcom/tapjoy/internal/ie;->k:I

    .line 201
    iput-object p1, p0, Lcom/tapjoy/internal/ie;->r:Lcom/tapjoy/internal/ie$a;

    .line 202
    new-instance p1, Lcom/tapjoy/internal/ig;

    invoke-direct {p1}, Lcom/tapjoy/internal/ig;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    .line 203
    return-void
.end method

.method constructor <init>(Lcom/tapjoy/internal/ie$a;Lcom/tapjoy/internal/ig;Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tapjoy/internal/ie;-><init>(Lcom/tapjoy/internal/ie$a;Lcom/tapjoy/internal/ig;Ljava/nio/ByteBuffer;B)V

    .line 192
    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/ie$a;Lcom/tapjoy/internal/ig;Ljava/nio/ByteBuffer;B)V
    .registers 5

    .line 196
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/ie;-><init>(Lcom/tapjoy/internal/ie$a;)V

    .line 197
    invoke-direct {p0, p2, p3}, Lcom/tapjoy/internal/ie;->b(Lcom/tapjoy/internal/ig;Ljava/nio/ByteBuffer;)V

    .line 198
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 921
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_a

    .line 922
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 924
    :cond_a
    return-void
.end method

.method private declared-synchronized a(Lcom/tapjoy/internal/ig;Ljava/nio/ByteBuffer;)V
    .registers 3

    monitor-enter p0

    .line 458
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/ie;->b(Lcom/tapjoy/internal/ig;Ljava/nio/ByteBuffer;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 459
    monitor-exit p0

    return-void

    .line 457
    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/tapjoy/internal/ig;[B)V
    .registers 3

    monitor-enter p0

    .line 454
    :try_start_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/ie;->a(Lcom/tapjoy/internal/ig;Ljava/nio/ByteBuffer;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 455
    monitor-exit p0

    return-void

    .line 453
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a([ILcom/tapjoy/internal/if;I)V
    .registers 8

    .line 655
    iget v0, p2, Lcom/tapjoy/internal/if;->d:I

    iget v1, p0, Lcom/tapjoy/internal/ie;->v:I

    div-int/2addr v0, v1

    .line 656
    iget v1, p2, Lcom/tapjoy/internal/if;->b:I

    iget v2, p0, Lcom/tapjoy/internal/ie;->v:I

    div-int/2addr v1, v2

    .line 657
    iget v2, p2, Lcom/tapjoy/internal/if;->c:I

    iget v3, p0, Lcom/tapjoy/internal/ie;->v:I

    div-int/2addr v2, v3

    .line 658
    iget p2, p2, Lcom/tapjoy/internal/if;->a:I

    iget v3, p0, Lcom/tapjoy/internal/ie;->v:I

    div-int/2addr p2, v3

    .line 659
    iget v3, p0, Lcom/tapjoy/internal/ie;->x:I

    mul-int v1, v1, v3

    add-int/2addr v1, p2

    .line 660
    mul-int v0, v0, v3

    add-int/2addr v0, v1

    .line 661
    nop

    :goto_1d
    if-ge v1, v0, :cond_2d

    .line 662
    add-int p2, v1, v2

    .line 663
    move v3, v1

    :goto_22
    if-ge v3, p2, :cond_29

    .line 664
    aput p3, p1, v3

    .line 663
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 661
    :cond_29
    iget p2, p0, Lcom/tapjoy/internal/ie;->x:I

    add-int/2addr v1, p2

    goto :goto_1d

    .line 667
    :cond_2d
    return-void
.end method

.method private declared-synchronized b(Lcom/tapjoy/internal/ig;Ljava/nio/ByteBuffer;)V
    .registers 7

    monitor-enter p0

    .line 466
    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 467
    const/4 v2, 0x0

    iput v2, p0, Lcom/tapjoy/internal/ie;->u:I

    .line 468
    iput-object p1, p0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    .line 469
    iput-boolean v2, p0, Lcom/tapjoy/internal/ie;->y:Z

    .line 470
    const/4 v3, -0x1

    iput v3, p0, Lcom/tapjoy/internal/ie;->a:I

    .line 471
    nop

    .line 3321
    iput v2, p0, Lcom/tapjoy/internal/ie;->b:I

    .line 473
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/tapjoy/internal/ie;->g:Ljava/nio/ByteBuffer;

    .line 474
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 475
    iget-object p2, p0, Lcom/tapjoy/internal/ie;->g:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 478
    iput-boolean v2, p0, Lcom/tapjoy/internal/ie;->t:Z

    .line 479
    iget-object p2, p1, Lcom/tapjoy/internal/ig;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/if;

    .line 480
    iget v2, v2, Lcom/tapjoy/internal/if;->g:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3f

    .line 481
    iput-boolean v0, p0, Lcom/tapjoy/internal/ie;->t:Z

    .line 482
    goto :goto_40

    .line 484
    :cond_3f
    goto :goto_2b

    .line 486
    :cond_40
    :goto_40
    iput v1, p0, Lcom/tapjoy/internal/ie;->v:I

    .line 487
    iget p2, p1, Lcom/tapjoy/internal/ig;->f:I

    div-int/2addr p2, v1

    iput p2, p0, Lcom/tapjoy/internal/ie;->x:I

    .line 488
    iget p2, p1, Lcom/tapjoy/internal/ig;->g:I

    div-int/2addr p2, v1

    iput p2, p0, Lcom/tapjoy/internal/ie;->w:I

    .line 491
    iget-object p2, p0, Lcom/tapjoy/internal/ie;->r:Lcom/tapjoy/internal/ie$a;

    iget v0, p1, Lcom/tapjoy/internal/ig;->f:I

    iget p1, p1, Lcom/tapjoy/internal/ig;->g:I

    mul-int v0, v0, p1

    invoke-interface {p2, v0}, Lcom/tapjoy/internal/ie$a;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/ie;->p:[B

    .line 492
    iget-object p1, p0, Lcom/tapjoy/internal/ie;->r:Lcom/tapjoy/internal/ie$a;

    iget p2, p0, Lcom/tapjoy/internal/ie;->x:I

    iget v0, p0, Lcom/tapjoy/internal/ie;->w:I

    mul-int p2, p2, v0

    invoke-interface {p1, p2}, Lcom/tapjoy/internal/ie$a;->b(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/ie;->q:[I
    :try_end_68
    .catchall {:try_start_2 .. :try_end_68} :catchall_6a

    .line 493
    monitor-exit p0

    return-void

    .line 465
    :catchall_6a
    move-exception p1

    monitor-exit p0

    goto :goto_6e

    :goto_6d
    throw p1

    :goto_6e
    goto :goto_6d
.end method

.method private c()V
    .registers 5

    .line 851
    iget v0, p0, Lcom/tapjoy/internal/ie;->j:I

    iget v1, p0, Lcom/tapjoy/internal/ie;->k:I

    if-le v0, v1, :cond_7

    .line 852
    return-void

    .line 854
    :cond_7
    iget-object v0, p0, Lcom/tapjoy/internal/ie;->i:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_15

    .line 855
    iget-object v0, p0, Lcom/tapjoy/internal/ie;->r:Lcom/tapjoy/internal/ie$a;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/ie$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ie;->i:[B

    .line 857
    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/ie;->k:I

    .line 858
    iget-object v2, p0, Lcom/tapjoy/internal/ie;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/tapjoy/internal/ie;->j:I

    .line 859
    iget-object v2, p0, Lcom/tapjoy/internal/ie;->g:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/tapjoy/internal/ie;->i:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 860
    return-void
.end method

.method private d()I
    .registers 4

    .line 867
    :try_start_0
    invoke-direct {p0}, Lcom/tapjoy/internal/ie;->c()V

    .line 868
    iget-object v0, p0, Lcom/tapjoy/internal/ie;->i:[B

    iget v1, p0, Lcom/tapjoy/internal/ie;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tapjoy/internal/ie;->k:I

    aget-byte v0, v0, v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_10

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 869
    :catch_10
    move-exception v0

    .line 870
    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/ie;->u:I

    .line 871
    const/4 v0, 0x0

    return v0
.end method

.method private e()I
    .registers 8

    .line 881
    invoke-direct {p0}, Lcom/tapjoy/internal/ie;->d()I

    move-result v0

    .line 882
    if-lez v0, :cond_5c

    .line 884
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_8
    iget-object v3, p0, Lcom/tapjoy/internal/ie;->h:[B

    if-nez v3, :cond_16

    .line 885
    iget-object v3, p0, Lcom/tapjoy/internal/ie;->r:Lcom/tapjoy/internal/ie$a;

    const/16 v4, 0xff

    invoke-interface {v3, v4}, Lcom/tapjoy/internal/ie$a;->a(I)[B

    move-result-object v3

    iput-object v3, p0, Lcom/tapjoy/internal/ie;->h:[B

    .line 887
    :cond_16
    iget v3, p0, Lcom/tapjoy/internal/ie;->j:I

    iget v4, p0, Lcom/tapjoy/internal/ie;->k:I

    sub-int/2addr v3, v4

    .line 888
    if-lt v3, v0, :cond_2a

    .line 890
    iget-object v3, p0, Lcom/tapjoy/internal/ie;->i:[B

    iget-object v5, p0, Lcom/tapjoy/internal/ie;->h:[B

    invoke-static {v3, v4, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 891
    iget v3, p0, Lcom/tapjoy/internal/ie;->k:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/tapjoy/internal/ie;->k:I

    goto :goto_5c

    .line 892
    :cond_2a
    iget-object v4, p0, Lcom/tapjoy/internal/ie;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v4, v3

    if-lt v4, v0, :cond_52

    .line 894
    iget-object v4, p0, Lcom/tapjoy/internal/ie;->i:[B

    iget v5, p0, Lcom/tapjoy/internal/ie;->k:I

    iget-object v6, p0, Lcom/tapjoy/internal/ie;->h:[B

    invoke-static {v4, v5, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    iget v4, p0, Lcom/tapjoy/internal/ie;->j:I

    iput v4, p0, Lcom/tapjoy/internal/ie;->k:I

    .line 896
    invoke-direct {p0}, Lcom/tapjoy/internal/ie;->c()V

    .line 897
    sub-int v4, v0, v3

    .line 898
    iget-object v5, p0, Lcom/tapjoy/internal/ie;->i:[B

    iget-object v6, p0, Lcom/tapjoy/internal/ie;->h:[B

    invoke-static {v5, v2, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 899
    iget v3, p0, Lcom/tapjoy/internal/ie;->k:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/tapjoy/internal/ie;->k:I

    .line 900
    goto :goto_5c

    .line 901
    :cond_52
    iput v1, p0, Lcom/tapjoy/internal/ie;->u:I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_54} :catch_55

    .line 906
    goto :goto_5c

    .line 903
    :catch_55
    move-exception v3

    .line 904
    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    .line 905
    iput v1, p0, Lcom/tapjoy/internal/ie;->u:I

    .line 908
    :cond_5c
    :goto_5c
    return v0
.end method

.method private f()Landroid/graphics/Bitmap;
    .registers 5

    .line 912
    iget-boolean v0, p0, Lcom/tapjoy/internal/ie;->y:Z

    if-eqz v0, :cond_7

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    goto :goto_9

    :cond_7
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 914
    :goto_9
    iget-object v1, p0, Lcom/tapjoy/internal/ie;->r:Lcom/tapjoy/internal/ie$a;

    iget v2, p0, Lcom/tapjoy/internal/ie;->x:I

    iget v3, p0, Lcom/tapjoy/internal/ie;->w:I

    invoke-interface {v1, v2, v3, v0}, Lcom/tapjoy/internal/ie$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 915
    invoke-static {v0}, Lcom/tapjoy/internal/ie;->a(Landroid/graphics/Bitmap;)V

    .line 916
    return-object v0
.end method


# virtual methods
.method final declared-synchronized a([B)I
    .registers 3

    monitor-enter p0

    .line 509
    nop

    .line 3496
    :try_start_2
    iget-object v0, p0, Lcom/tapjoy/internal/ie;->l:Lcom/tapjoy/internal/ih;

    if-nez v0, :cond_d

    .line 3497
    new-instance v0, Lcom/tapjoy/internal/ih;

    invoke-direct {v0}, Lcom/tapjoy/internal/ih;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ie;->l:Lcom/tapjoy/internal/ih;

    .line 3499
    :cond_d
    iget-object v0, p0, Lcom/tapjoy/internal/ie;->l:Lcom/tapjoy/internal/ih;

    .line 509
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ih;->a([B)Lcom/tapjoy/internal/ih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/ih;->a()Lcom/tapjoy/internal/ig;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    .line 510
    if-eqz p1, :cond_1e

    .line 511
    invoke-direct {p0, v0, p1}, Lcom/tapjoy/internal/ie;->a(Lcom/tapjoy/internal/ig;[B)V

    .line 514
    :cond_1e
    iget p1, p0, Lcom/tapjoy/internal/ie;->u:I
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_22

    monitor-exit p0

    return p1

    .line 508
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final a()Z
    .registers 3

    .line 303
    nop

    .line 1285
    iget-object v0, p0, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v0, v0, Lcom/tapjoy/internal/ig;->c:I

    .line 303
    const/4 v1, -0x1

    if-lt v1, v0, :cond_a

    .line 304
    const/4 v0, 0x0

    return v0

    .line 306
    :cond_a
    iput v1, p0, Lcom/tapjoy/internal/ie;->a:I

    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method final declared-synchronized b()Landroid/graphics/Bitmap;
    .registers 31

    move-object/from16 v1, p0

    monitor-enter p0

    .line 353
    :try_start_3
    iget-object v0, v1, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v0, v0, Lcom/tapjoy/internal/ig;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_10

    iget v0, v1, Lcom/tapjoy/internal/ie;->a:I

    if-gez v0, :cond_26

    .line 354
    :cond_10
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v5, v5, Lcom/tapjoy/internal/ig;->c:I

    .line 355
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    iget v5, v1, Lcom/tapjoy/internal/ie;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 356
    iput v4, v1, Lcom/tapjoy/internal/ie;->u:I

    .line 358
    :cond_26
    iget v0, v1, Lcom/tapjoy/internal/ie;->u:I

    const/4 v5, 0x0

    if-eq v0, v4, :cond_420

    if-ne v0, v2, :cond_2f

    goto/16 :goto_420

    .line 362
    :cond_2f
    iput v3, v1, Lcom/tapjoy/internal/ie;->u:I

    .line 364
    iget-object v0, v1, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget-object v0, v0, Lcom/tapjoy/internal/ig;->e:Ljava/util/List;

    iget v6, v1, Lcom/tapjoy/internal/ie;->a:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/if;

    .line 365
    nop

    .line 366
    iget v6, v1, Lcom/tapjoy/internal/ie;->a:I

    sub-int/2addr v6, v4

    .line 367
    if-ltz v6, :cond_4e

    .line 368
    iget-object v7, v1, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget-object v7, v7, Lcom/tapjoy/internal/ig;->e:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tapjoy/internal/if;

    goto :goto_4f

    .line 367
    :cond_4e
    move-object v6, v5

    .line 372
    :goto_4f
    iget-object v7, v0, Lcom/tapjoy/internal/if;->k:[I

    if-eqz v7, :cond_56

    iget-object v7, v0, Lcom/tapjoy/internal/if;->k:[I

    goto :goto_5a

    :cond_56
    iget-object v7, v1, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget-object v7, v7, Lcom/tapjoy/internal/ig;->a:[I

    :goto_5a
    iput-object v7, v1, Lcom/tapjoy/internal/ie;->e:[I

    .line 373
    if-nez v7, :cond_6c

    .line 374
    new-array v0, v4, [Ljava/lang/Object;

    iget v2, v1, Lcom/tapjoy/internal/ie;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    .line 376
    iput v4, v1, Lcom/tapjoy/internal/ie;->u:I
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_42c

    .line 377
    monitor-exit p0

    return-object v5

    .line 381
    :cond_6c
    :try_start_6c
    iget-boolean v5, v0, Lcom/tapjoy/internal/if;->f:Z

    if-eqz v5, :cond_80

    .line 383
    iget-object v5, v1, Lcom/tapjoy/internal/ie;->e:[I

    iget-object v7, v1, Lcom/tapjoy/internal/ie;->f:[I

    array-length v8, v5

    invoke-static {v5, v3, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    iget-object v5, v1, Lcom/tapjoy/internal/ie;->f:[I

    iput-object v5, v1, Lcom/tapjoy/internal/ie;->e:[I

    .line 387
    iget v7, v0, Lcom/tapjoy/internal/if;->h:I

    aput v3, v5, v7

    .line 391
    :cond_80
    nop

    .line 1523
    iget-object v5, v1, Lcom/tapjoy/internal/ie;->q:[I

    .line 1526
    if-nez v6, :cond_88

    .line 1527
    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([II)V

    .line 1531
    :cond_88
    const/4 v7, 0x3

    if-eqz v6, :cond_e6

    iget v8, v6, Lcom/tapjoy/internal/if;->g:I

    if-lez v8, :cond_e6

    .line 1534
    iget v8, v6, Lcom/tapjoy/internal/if;->g:I

    if-ne v8, v2, :cond_b5

    .line 1536
    nop

    .line 1537
    iget-boolean v8, v0, Lcom/tapjoy/internal/if;->f:Z

    if-nez v8, :cond_aa

    .line 1538
    iget-object v8, v1, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v8, v8, Lcom/tapjoy/internal/ig;->l:I

    .line 1539
    iget-object v9, v0, Lcom/tapjoy/internal/if;->k:[I

    if-eqz v9, :cond_b1

    iget-object v9, v1, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v9, v9, Lcom/tapjoy/internal/ig;->j:I

    iget v10, v0, Lcom/tapjoy/internal/if;->h:I

    if-ne v9, v10, :cond_b1

    .line 1540
    const/4 v8, 0x0

    goto :goto_b1

    .line 1542
    :cond_aa
    iget v8, v1, Lcom/tapjoy/internal/ie;->a:I

    if-nez v8, :cond_b0

    .line 1546
    iput-boolean v4, v1, Lcom/tapjoy/internal/ie;->y:Z

    .line 1548
    :cond_b0
    const/4 v8, 0x0

    :cond_b1
    :goto_b1
    invoke-direct {v1, v5, v6, v8}, Lcom/tapjoy/internal/ie;->a([ILcom/tapjoy/internal/if;I)V

    goto :goto_e6

    .line 1549
    :cond_b5
    iget v8, v6, Lcom/tapjoy/internal/if;->g:I

    if-ne v8, v7, :cond_e6

    .line 1550
    iget-object v8, v1, Lcom/tapjoy/internal/ie;->s:Landroid/graphics/Bitmap;

    if-nez v8, :cond_c1

    .line 1551
    invoke-direct {v1, v5, v6, v3}, Lcom/tapjoy/internal/ie;->a([ILcom/tapjoy/internal/if;I)V

    goto :goto_e6

    .line 1554
    :cond_c1
    iget v8, v6, Lcom/tapjoy/internal/if;->d:I

    iget v9, v1, Lcom/tapjoy/internal/ie;->v:I

    div-int v15, v8, v9

    .line 1555
    iget v8, v6, Lcom/tapjoy/internal/if;->b:I

    iget v9, v1, Lcom/tapjoy/internal/ie;->v:I

    div-int v13, v8, v9

    .line 1556
    iget v8, v6, Lcom/tapjoy/internal/if;->c:I

    iget v9, v1, Lcom/tapjoy/internal/ie;->v:I

    div-int v14, v8, v9

    .line 1557
    iget v6, v6, Lcom/tapjoy/internal/if;->a:I

    iget v8, v1, Lcom/tapjoy/internal/ie;->v:I

    div-int v12, v6, v8

    .line 1558
    iget v11, v1, Lcom/tapjoy/internal/ie;->x:I

    mul-int v6, v13, v11

    add-int v10, v6, v12

    .line 1559
    iget-object v8, v1, Lcom/tapjoy/internal/ie;->s:Landroid/graphics/Bitmap;

    move-object v9, v5

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    nop

    .line 1566
    :cond_e6
    :goto_e6
    nop

    .line 1719
    iput v3, v1, Lcom/tapjoy/internal/ie;->j:I

    .line 1720
    iput v3, v1, Lcom/tapjoy/internal/ie;->k:I

    .line 1721
    if-eqz v0, :cond_f4

    .line 1723
    iget-object v6, v1, Lcom/tapjoy/internal/ie;->g:Ljava/nio/ByteBuffer;

    iget v8, v0, Lcom/tapjoy/internal/if;->j:I

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1726
    :cond_f4
    if-nez v0, :cond_101

    iget-object v6, v1, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v6, v6, Lcom/tapjoy/internal/ig;->f:I

    iget-object v8, v1, Lcom/tapjoy/internal/ie;->c:Lcom/tapjoy/internal/ig;

    iget v8, v8, Lcom/tapjoy/internal/ig;->g:I

    mul-int v6, v6, v8

    goto :goto_107

    :cond_101
    iget v6, v0, Lcom/tapjoy/internal/if;->c:I

    iget v8, v0, Lcom/tapjoy/internal/if;->d:I

    mul-int v6, v6, v8

    .line 1731
    :goto_107
    iget-object v8, v1, Lcom/tapjoy/internal/ie;->p:[B

    if-eqz v8, :cond_10e

    array-length v8, v8

    if-ge v8, v6, :cond_116

    .line 1733
    :cond_10e
    iget-object v8, v1, Lcom/tapjoy/internal/ie;->r:Lcom/tapjoy/internal/ie$a;

    invoke-interface {v8, v6}, Lcom/tapjoy/internal/ie$a;->a(I)[B

    move-result-object v8

    iput-object v8, v1, Lcom/tapjoy/internal/ie;->p:[B

    .line 1735
    :cond_116
    iget-object v8, v1, Lcom/tapjoy/internal/ie;->m:[S

    const/16 v9, 0x1000

    if-nez v8, :cond_120

    .line 1736
    new-array v8, v9, [S

    iput-object v8, v1, Lcom/tapjoy/internal/ie;->m:[S

    .line 1738
    :cond_120
    iget-object v8, v1, Lcom/tapjoy/internal/ie;->n:[B

    if-nez v8, :cond_128

    .line 1739
    new-array v8, v9, [B

    iput-object v8, v1, Lcom/tapjoy/internal/ie;->n:[B

    .line 1741
    :cond_128
    iget-object v8, v1, Lcom/tapjoy/internal/ie;->o:[B

    if-nez v8, :cond_132

    .line 1742
    const/16 v8, 0x1001

    new-array v8, v8, [B

    iput-object v8, v1, Lcom/tapjoy/internal/ie;->o:[B

    .line 1746
    :cond_132
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/internal/ie;->d()I

    move-result v8

    .line 1747
    shl-int v10, v4, v8

    .line 1748
    add-int/lit8 v11, v10, 0x1

    .line 1749
    add-int/lit8 v12, v10, 0x2

    .line 1750
    nop

    .line 1751
    add-int/2addr v8, v4

    .line 1752
    shl-int v13, v4, v8

    sub-int/2addr v13, v4

    .line 1753
    const/4 v14, 0x0

    :goto_142
    if-ge v14, v10, :cond_151

    .line 1755
    iget-object v15, v1, Lcom/tapjoy/internal/ie;->m:[S

    aput-short v3, v15, v14

    .line 1756
    iget-object v15, v1, Lcom/tapjoy/internal/ie;->n:[B

    int-to-byte v2, v14

    aput-byte v2, v15, v14

    .line 1753
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x2

    goto :goto_142

    .line 1760
    :cond_151
    nop

    .line 1761
    const/4 v2, -0x1

    move/from16 v25, v8

    move/from16 v23, v12

    move/from16 v24, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_169
    const/16 v26, 0x8

    if-ge v14, v6, :cond_282

    .line 1763
    if-nez v15, :cond_17b

    .line 1765
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/internal/ie;->e()I

    move-result v15

    .line 1766
    if-gtz v15, :cond_179

    .line 1767
    iput v7, v1, Lcom/tapjoy/internal/ie;->u:I

    .line 1768
    goto/16 :goto_282

    .line 1770
    :cond_179
    const/16 v18, 0x0

    .line 1773
    :cond_17b
    iget-object v4, v1, Lcom/tapjoy/internal/ie;->h:[B

    aget-byte v4, v4, v18

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v16

    add-int v17, v17, v4

    .line 1774
    add-int/lit8 v16, v16, 0x8

    .line 1775
    add-int/lit8 v18, v18, 0x1

    .line 1776
    add-int/2addr v15, v2

    move/from16 v4, v16

    move/from16 v3, v20

    move/from16 v9, v21

    move/from16 v2, v23

    move/from16 v7, v25

    .line 1778
    :goto_194
    if-lt v4, v7, :cond_266

    .line 1780
    move/from16 v25, v8

    and-int v8, v17, v24

    .line 1781
    shr-int v17, v17, v7

    .line 1782
    sub-int/2addr v4, v7

    .line 1785
    if-ne v8, v10, :cond_1ab

    .line 1787
    nop

    .line 1788
    nop

    .line 1789
    nop

    .line 1790
    nop

    .line 1791
    move v2, v12

    move/from16 v24, v13

    move/from16 v7, v25

    move v8, v7

    const/4 v3, -0x1

    goto :goto_194

    .line 1794
    :cond_1ab
    if-le v8, v2, :cond_1ba

    .line 1795
    const/4 v8, 0x3

    iput v8, v1, Lcom/tapjoy/internal/ie;->u:I

    .line 1796
    move/from16 v26, v4

    move/from16 v29, v10

    const/16 v4, 0x1000

    const/16 v23, 0x3

    goto/16 :goto_250

    .line 1799
    :cond_1ba
    const/16 v23, 0x3

    if-eq v8, v11, :cond_24a

    .line 1803
    move/from16 v26, v4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1d8

    .line 1804
    iget-object v3, v1, Lcom/tapjoy/internal/ie;->o:[B

    add-int/lit8 v9, v22, 0x1

    iget-object v4, v1, Lcom/tapjoy/internal/ie;->n:[B

    aget-byte v4, v4, v8

    aput-byte v4, v3, v22

    .line 1805
    nop

    .line 1806
    nop

    .line 1807
    move v3, v8

    move/from16 v22, v9

    move/from16 v4, v26

    move v9, v3

    move/from16 v8, v25

    goto :goto_194

    .line 1809
    :cond_1d8
    nop

    .line 1810
    if-lt v8, v2, :cond_1e6

    .line 1811
    iget-object v4, v1, Lcom/tapjoy/internal/ie;->o:[B

    add-int/lit8 v27, v22, 0x1

    int-to-byte v9, v9

    aput-byte v9, v4, v22

    .line 1812
    move v4, v3

    move/from16 v22, v27

    goto :goto_1e7

    .line 1810
    :cond_1e6
    move v4, v8

    .line 1814
    :goto_1e7
    if-lt v4, v10, :cond_1fe

    .line 1815
    iget-object v9, v1, Lcom/tapjoy/internal/ie;->o:[B

    add-int/lit8 v27, v22, 0x1

    move/from16 v28, v8

    iget-object v8, v1, Lcom/tapjoy/internal/ie;->n:[B

    aget-byte v8, v8, v4

    aput-byte v8, v9, v22

    .line 1816
    iget-object v8, v1, Lcom/tapjoy/internal/ie;->m:[S

    aget-short v4, v8, v4

    move/from16 v22, v27

    move/from16 v8, v28

    goto :goto_1e7

    .line 1818
    :cond_1fe
    move/from16 v28, v8

    iget-object v8, v1, Lcom/tapjoy/internal/ie;->n:[B

    aget-byte v4, v8, v4

    and-int/lit16 v9, v4, 0xff

    .line 1819
    iget-object v4, v1, Lcom/tapjoy/internal/ie;->o:[B

    add-int/lit8 v27, v22, 0x1

    move/from16 v29, v10

    int-to-byte v10, v9

    aput-byte v10, v4, v22

    .line 1822
    const/16 v4, 0x1000

    if-ge v2, v4, :cond_22b

    .line 1823
    iget-object v4, v1, Lcom/tapjoy/internal/ie;->m:[S

    int-to-short v3, v3

    aput-short v3, v4, v2

    .line 1824
    aput-byte v10, v8, v2

    .line 1825
    add-int/lit8 v2, v2, 0x1

    .line 1826
    and-int v3, v2, v24

    if-nez v3, :cond_229

    const/16 v4, 0x1000

    if-ge v2, v4, :cond_22b

    .line 1827
    add-int/lit8 v7, v7, 0x1

    .line 1828
    add-int v24, v24, v2

    goto :goto_22b

    .line 1826
    :cond_229
    const/16 v4, 0x1000

    .line 1831
    :cond_22b
    :goto_22b
    move/from16 v22, v27

    .line 1833
    :goto_22d
    if-lez v22, :cond_240

    .line 1835
    iget-object v3, v1, Lcom/tapjoy/internal/ie;->p:[B

    add-int/lit8 v8, v19, 0x1

    iget-object v10, v1, Lcom/tapjoy/internal/ie;->o:[B

    add-int/lit8 v22, v22, -0x1

    aget-byte v10, v10, v22

    aput-byte v10, v3, v19

    .line 1836
    add-int/lit8 v14, v14, 0x1

    move/from16 v19, v8

    goto :goto_22d

    .line 1833
    :cond_240
    move/from16 v8, v25

    move/from16 v4, v26

    move/from16 v3, v28

    move/from16 v10, v29

    goto/16 :goto_194

    .line 1799
    :cond_24a
    move/from16 v26, v4

    move/from16 v29, v10

    const/16 v4, 0x1000

    .line 1761
    :goto_250
    move/from16 v23, v2

    move/from16 v20, v3

    move/from16 v21, v9

    move/from16 v8, v25

    move/from16 v16, v26

    move/from16 v10, v29

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v9, 0x1000

    move/from16 v25, v7

    const/4 v7, 0x3

    goto/16 :goto_169

    .line 1778
    :cond_266
    move/from16 v26, v4

    move/from16 v25, v8

    move/from16 v29, v10

    const/16 v4, 0x1000

    const/16 v23, 0x3

    move/from16 v23, v2

    move/from16 v20, v3

    move/from16 v21, v9

    move/from16 v16, v26

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v9, 0x1000

    move/from16 v25, v7

    const/4 v7, 0x3

    goto/16 :goto_169

    .line 1842
    :cond_282
    :goto_282
    move/from16 v2, v19

    :goto_284
    if-ge v2, v6, :cond_28e

    .line 1843
    iget-object v3, v1, Lcom/tapjoy/internal/ie;->p:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    .line 1842
    add-int/lit8 v2, v2, 0x1

    goto :goto_284

    .line 1568
    :cond_28e
    iget v2, v0, Lcom/tapjoy/internal/if;->d:I

    iget v3, v1, Lcom/tapjoy/internal/ie;->v:I

    div-int/2addr v2, v3

    .line 1569
    iget v3, v0, Lcom/tapjoy/internal/if;->b:I

    iget v4, v1, Lcom/tapjoy/internal/ie;->v:I

    div-int/2addr v3, v4

    .line 1570
    iget v4, v0, Lcom/tapjoy/internal/if;->c:I

    iget v6, v1, Lcom/tapjoy/internal/ie;->v:I

    div-int/2addr v4, v6

    .line 1571
    iget v6, v0, Lcom/tapjoy/internal/if;->a:I

    iget v7, v1, Lcom/tapjoy/internal/ie;->v:I

    div-int/2addr v6, v7

    .line 1573
    nop

    .line 1574
    nop

    .line 1575
    nop

    .line 1576
    iget v7, v1, Lcom/tapjoy/internal/ie;->a:I

    if-nez v7, :cond_2ab

    const/4 v7, 0x1

    goto :goto_2ac

    :cond_2ab
    const/4 v7, 0x0

    .line 1577
    :goto_2ac
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x8

    :goto_2b1
    if-ge v8, v2, :cond_3e7

    .line 1578
    nop

    .line 1579
    iget-boolean v12, v0, Lcom/tapjoy/internal/if;->e:Z

    if-eqz v12, :cond_2d0

    .line 1580
    const/4 v12, 0x4

    if-lt v9, v2, :cond_2cc

    .line 1581
    add-int/lit8 v10, v10, 0x1

    .line 1582
    packed-switch v10, :pswitch_data_432

    goto :goto_2cc

    .line 1591
    :pswitch_2c1
    nop

    .line 1592
    const/4 v9, 0x1

    const/4 v11, 0x2

    goto :goto_2cc

    .line 1587
    :pswitch_2c5
    nop

    .line 1588
    nop

    .line 1589
    const/4 v9, 0x2

    const/4 v11, 0x4

    goto :goto_2cc

    .line 1584
    :pswitch_2ca
    nop

    .line 1585
    const/4 v9, 0x4

    .line 1598
    :cond_2cc
    :goto_2cc
    nop

    .line 1599
    add-int v12, v9, v11

    goto :goto_2d2

    .line 1579
    :cond_2d0
    move v12, v9

    move v9, v8

    .line 1601
    :goto_2d2
    add-int/2addr v9, v3

    .line 1602
    iget v13, v1, Lcom/tapjoy/internal/ie;->w:I

    if-ge v9, v13, :cond_3ce

    .line 1603
    iget v13, v1, Lcom/tapjoy/internal/ie;->x:I

    mul-int v9, v9, v13

    .line 1605
    add-int v14, v9, v6

    .line 1607
    add-int v15, v14, v4

    .line 1608
    move/from16 v17, v2

    add-int v2, v9, v13

    if-ge v2, v15, :cond_2e7

    .line 1610
    add-int v15, v9, v13

    .line 1613
    :cond_2e7
    iget v2, v1, Lcom/tapjoy/internal/ie;->v:I

    mul-int v2, v2, v8

    iget v9, v0, Lcom/tapjoy/internal/if;->c:I

    mul-int v2, v2, v9

    .line 1614
    sub-int v9, v15, v14

    iget v13, v1, Lcom/tapjoy/internal/ie;->v:I

    mul-int v9, v9, v13

    add-int/2addr v9, v2

    .line 1615
    :goto_2f6
    if-ge v14, v15, :cond_3c5

    .line 1618
    iget v13, v1, Lcom/tapjoy/internal/ie;->v:I

    move/from16 v18, v3

    const/4 v3, 0x1

    if-ne v13, v3, :cond_312

    .line 1619
    iget-object v3, v1, Lcom/tapjoy/internal/ie;->p:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    .line 1620
    iget-object v13, v1, Lcom/tapjoy/internal/ie;->e:[I

    aget v3, v13, v3

    .line 1621
    move/from16 v23, v4

    move/from16 v24, v6

    move/from16 v25, v10

    move v4, v3

    goto/16 :goto_3a7

    .line 1624
    :cond_312
    iget v3, v0, Lcom/tapjoy/internal/if;->c:I

    .line 2671
    nop

    .line 2672
    nop

    .line 2673
    nop

    .line 2674
    nop

    .line 2676
    nop

    .line 2678
    move/from16 v23, v4

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move v4, v2

    .line 2680
    :goto_325
    move/from16 v24, v6

    iget v6, v1, Lcom/tapjoy/internal/ie;->v:I

    add-int/2addr v6, v2

    if-ge v4, v6, :cond_35d

    iget-object v6, v1, Lcom/tapjoy/internal/ie;->p:[B

    move/from16 v25, v10

    array-length v10, v6

    if-ge v4, v10, :cond_35f

    if-ge v4, v9, :cond_35f

    .line 2681
    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    .line 2682
    iget-object v10, v1, Lcom/tapjoy/internal/ie;->e:[I

    aget v6, v10, v6

    .line 2683
    if-eqz v6, :cond_356

    .line 2684
    shr-int/lit8 v10, v6, 0x18

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v13, v10

    .line 2685
    shr-int/lit8 v10, v6, 0x10

    and-int/lit16 v10, v10, 0xff

    add-int v19, v19, v10

    .line 2686
    shr-int/lit8 v10, v6, 0x8

    and-int/lit16 v10, v10, 0xff

    add-int v20, v20, v10

    .line 2687
    and-int/lit16 v6, v6, 0xff

    add-int v21, v21, v6

    .line 2688
    add-int/lit8 v22, v22, 0x1

    .line 2680
    :cond_356
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v24

    move/from16 v10, v25

    goto :goto_325

    :cond_35d
    move/from16 v25, v10

    .line 2692
    :cond_35f
    add-int/2addr v3, v2

    move v4, v3

    .line 2694
    :goto_361
    iget v6, v1, Lcom/tapjoy/internal/ie;->v:I

    add-int/2addr v6, v3

    if-ge v4, v6, :cond_391

    iget-object v6, v1, Lcom/tapjoy/internal/ie;->p:[B

    array-length v10, v6

    if-ge v4, v10, :cond_391

    if-ge v4, v9, :cond_391

    .line 2695
    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    .line 2696
    iget-object v10, v1, Lcom/tapjoy/internal/ie;->e:[I

    aget v6, v10, v6

    .line 2697
    if-eqz v6, :cond_38e

    .line 2698
    shr-int/lit8 v10, v6, 0x18

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v13, v10

    .line 2699
    shr-int/lit8 v10, v6, 0x10

    and-int/lit16 v10, v10, 0xff

    add-int v19, v19, v10

    .line 2700
    shr-int/lit8 v10, v6, 0x8

    and-int/lit16 v10, v10, 0xff

    add-int v20, v20, v10

    .line 2701
    and-int/lit16 v6, v6, 0xff

    add-int v21, v21, v6

    .line 2702
    add-int/lit8 v22, v22, 0x1

    .line 2694
    :cond_38e
    add-int/lit8 v4, v4, 0x1

    goto :goto_361

    .line 2705
    :cond_391
    if-nez v22, :cond_395

    .line 2706
    const/4 v4, 0x0

    goto :goto_3a7

    .line 2708
    :cond_395
    div-int v13, v13, v22

    shl-int/lit8 v3, v13, 0x18

    div-int v19, v19, v22

    shl-int/lit8 v4, v19, 0x10

    or-int/2addr v3, v4

    div-int v20, v20, v22

    shl-int/lit8 v4, v20, 0x8

    or-int/2addr v3, v4

    div-int v21, v21, v22

    or-int v4, v3, v21

    .line 1624
    :goto_3a7
    nop

    .line 1626
    if-eqz v4, :cond_3ad

    .line 1627
    aput v4, v5, v14

    goto :goto_3b6

    .line 1628
    :cond_3ad
    iget-boolean v3, v1, Lcom/tapjoy/internal/ie;->y:Z

    if-nez v3, :cond_3b6

    if-eqz v7, :cond_3b6

    .line 1629
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/tapjoy/internal/ie;->y:Z

    .line 1631
    :cond_3b6
    :goto_3b6
    iget v3, v1, Lcom/tapjoy/internal/ie;->v:I

    add-int/2addr v2, v3

    .line 1632
    add-int/lit8 v14, v14, 0x1

    .line 1633
    move/from16 v3, v18

    move/from16 v4, v23

    move/from16 v6, v24

    move/from16 v10, v25

    goto/16 :goto_2f6

    .line 1615
    :cond_3c5
    move/from16 v18, v3

    move/from16 v23, v4

    move/from16 v24, v6

    move/from16 v25, v10

    goto :goto_3d8

    .line 1602
    :cond_3ce
    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v23, v4

    move/from16 v24, v6

    move/from16 v25, v10

    .line 1577
    :goto_3d8
    add-int/lit8 v8, v8, 0x1

    move v9, v12

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v23

    move/from16 v6, v24

    move/from16 v10, v25

    goto/16 :goto_2b1

    .line 1638
    :cond_3e7
    iget-boolean v2, v1, Lcom/tapjoy/internal/ie;->t:Z

    if-eqz v2, :cond_40c

    iget v2, v0, Lcom/tapjoy/internal/if;->g:I

    if-eqz v2, :cond_3f4

    iget v0, v0, Lcom/tapjoy/internal/if;->g:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_40c

    .line 1640
    :cond_3f4
    iget-object v0, v1, Lcom/tapjoy/internal/ie;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3fe

    .line 1641
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/internal/ie;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/ie;->s:Landroid/graphics/Bitmap;

    .line 1643
    :cond_3fe
    iget-object v8, v1, Lcom/tapjoy/internal/ie;->s:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    iget v14, v1, Lcom/tapjoy/internal/ie;->x:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v15, v1, Lcom/tapjoy/internal/ie;->w:I

    move-object v9, v5

    move v11, v14

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1648
    :cond_40c
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/internal/ie;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1649
    const/4 v10, 0x0

    iget v14, v1, Lcom/tapjoy/internal/ie;->x:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v15, v1, Lcom/tapjoy/internal/ie;->w:I

    move-object v8, v0

    move-object v9, v5

    move v11, v14

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_41d
    .catchall {:try_start_6c .. :try_end_41d} :catchall_42c

    .line 1650
    nop

    .line 391
    monitor-exit p0

    return-object v0

    .line 359
    :cond_420
    :goto_420
    const/4 v2, 0x1

    :try_start_421
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3
    :try_end_42a
    .catchall {:try_start_421 .. :try_end_42a} :catchall_42c

    .line 360
    monitor-exit p0

    return-object v5

    .line 352
    :catchall_42c
    move-exception v0

    monitor-exit p0

    goto :goto_430

    :goto_42f
    throw v0

    :goto_430
    goto :goto_42f

    nop

    :pswitch_data_432
    .packed-switch 0x2
        :pswitch_2ca
        :pswitch_2c5
        :pswitch_2c1
    .end packed-switch
.end method
