.class public Lcom/ss/android/socialbase/downloader/g/b;
.super Ljava/lang/Object;
.source "DownloadChunk.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/g/b$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:J

.field private d:Ljava/util/concurrent/atomic/AtomicLong;

.field private e:J

.field private f:J

.field private g:I

.field private h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:J

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/ss/android/socialbase/downloader/g/b;

.field private l:I

.field private m:Z

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Lcom/ss/android/socialbase/downloader/l/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/g/b;->a:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/b$1;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/g/b$1;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/g/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p1, :cond_7

    .line 83
    :goto_6
    return-void

    .line 62
    :cond_7
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->b:I

    .line 63
    const-string v0, "chunkIndex"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->g:I

    .line 64
    const-string v0, "startOffset"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->c:J

    .line 66
    const-string v0, "curOffset"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 67
    if-eq v0, v4, :cond_74

    .line 68
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/g/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 71
    :goto_3e
    const-string v0, "endOffset"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->e:J

    .line 73
    const-string v0, "hostChunkIndex"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 74
    if-eq v0, v4, :cond_7e

    .line 75
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/g/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    :goto_5d
    const-string v0, "chunkContentLen"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 80
    if-eq v0, v4, :cond_6b

    .line 81
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->f:J

    .line 82
    :cond_6b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_6

    .line 70
    :cond_74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_3e

    .line 77
    :cond_7e
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_5d
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->b:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->c:J

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->e:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->f:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->g:I

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    return-void
.end method

.method private constructor <init>(Lcom/ss/android/socialbase/downloader/g/b$a;)V
    .registers 6

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_6

    .line 57
    :goto_5
    return-void

    .line 47
    :cond_6
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/b$a;->a(Lcom/ss/android/socialbase/downloader/g/b$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->b:I

    .line 48
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/b$a;->b(Lcom/ss/android/socialbase/downloader/g/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->c:J

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/b$a;->c(Lcom/ss/android/socialbase/downloader/g/b$a;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/b$a;->d(Lcom/ss/android/socialbase/downloader/g/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->e:J

    .line 51
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/b$a;->e(Lcom/ss/android/socialbase/downloader/g/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->f:J

    .line 52
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/b$a;->f(Lcom/ss/android/socialbase/downloader/g/b$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->g:I

    .line 53
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/b$a;->g(Lcom/ss/android/socialbase/downloader/g/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->i:J

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/g/b$a;->h(Lcom/ss/android/socialbase/downloader/g/b$a;)Lcom/ss/android/socialbase/downloader/g/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/b;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_5
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/g/b$a;Lcom/ss/android/socialbase/downloader/g/b$1;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/g/b;-><init>(Lcom/ss/android/socialbase/downloader/g/b$a;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 130
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 131
    const-string v1, "_id"

    iget v2, p0, Lcom/ss/android/socialbase/downloader/g/b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v1, "chunkIndex"

    iget v2, p0, Lcom/ss/android/socialbase/downloader/g/b;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v1, "startOffset"

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/b;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    const-string v1, "curOffset"

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    const-string v1, "endOffset"

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/b;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    const-string v1, "chunkContentLen"

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/b;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    const-string v1, "hostChunkIndex"

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    return-object v0
.end method

.method public a(IJ)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/g/b;->d()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/g/b;->f()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 379
    :cond_c
    const/4 v2, 0x0

    .line 452
    :goto_d
    return-object v2

    .line 380
    :cond_e
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/g/b;->m()J

    move-result-wide v4

    .line 382
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ss/android/socialbase/downloader/g/b;->c(Z)J

    move-result-wide v14

    .line 383
    move/from16 v0, p1

    int-to-long v2, v0

    div-long v8, v14, v2

    .line 385
    sget-object v2, Lcom/ss/android/socialbase/downloader/g/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retainLen:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " divideChunkForReuse chunkSize:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " current host downloadChunk index:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ss/android/socialbase/downloader/g/b;->g:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v2, 0x0

    move v13, v2

    :goto_55
    move/from16 v0, p1

    if-ge v13, v0, :cond_120

    .line 393
    if-nez v13, :cond_f5

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/g/b;->l()J

    move-result-wide v2

    .line 395
    add-long v6, v4, v8

    const-wide/16 v10, 0x1

    sub-long/2addr v6, v10

    move-wide v10, v6

    move-wide v6, v8

    .line 406
    :goto_66
    new-instance v16, Lcom/ss/android/socialbase/downloader/g/b$a;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ss/android/socialbase/downloader/g/b;->b:I

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/ss/android/socialbase/downloader/g/b$a;-><init>(I)V

    neg-int v0, v13

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    .line 407
    invoke-virtual/range {v16 .. v17}, Lcom/ss/android/socialbase/downloader/g/b$a;->a(I)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v16

    .line 408
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/socialbase/downloader/g/b$a;->a(J)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v16

    .line 409
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/g/b$a;->b(J)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v16

    .line 410
    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lcom/ss/android/socialbase/downloader/g/b$a;->e(J)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v16

    .line 411
    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Lcom/ss/android/socialbase/downloader/g/b$a;->c(J)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v16

    .line 412
    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Lcom/ss/android/socialbase/downloader/g/b$a;->d(J)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v16

    .line 413
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/b$a;->a(Lcom/ss/android/socialbase/downloader/g/b;)Lcom/ss/android/socialbase/downloader/g/b$a;

    move-result-object v16

    .line 414
    invoke-virtual/range {v16 .. v16}, Lcom/ss/android/socialbase/downloader/g/b$a;->a()Lcom/ss/android/socialbase/downloader/g/b;

    move-result-object v16

    .line 416
    sget-object v17, Lcom/ss/android/socialbase/downloader/g/b;->a:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "divide sub chunk : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " startOffset:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " curOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contentLen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    add-long/2addr v4, v8

    .line 387
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_55

    .line 396
    :cond_f5
    add-int/lit8 v2, p1, -0x1

    if-ne v13, v2, :cond_116

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/g/b;->p()J

    move-result-wide v6

    .line 398
    cmp-long v2, v6, v4

    if-lez v2, :cond_10b

    .line 399
    sub-long v2, v6, v4

    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    move-wide v10, v6

    move-wide v6, v2

    move-wide v2, v4

    goto/16 :goto_66

    .line 401
    :cond_10b
    add-int/lit8 v2, p1, -0x1

    int-to-long v2, v2

    mul-long/2addr v2, v8

    sub-long v2, v14, v2

    move-wide v10, v6

    move-wide v6, v2

    move-wide v2, v4

    goto/16 :goto_66

    .line 403
    :cond_116
    add-long v2, v4, v8

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    move-wide v6, v8

    move-wide v10, v2

    move-wide v2, v4

    goto/16 :goto_66

    .line 423
    :cond_120
    const-wide/16 v4, 0x0

    .line 424
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v6, v2

    :goto_129
    if-lez v6, :cond_13d

    .line 425
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/g/b;

    .line 426
    if-eqz v2, :cond_1a5

    .line 427
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/b;->q()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 424
    :goto_138
    add-int/lit8 v4, v6, -0x1

    move v6, v4

    move-wide v4, v2

    goto :goto_129

    .line 430
    :cond_13d
    sget-object v2, Lcom/ss/android/socialbase/downloader/g/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reuseChunkContentLen:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/g/b;

    .line 434
    if-eqz v2, :cond_190

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/g/b;->p()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_198

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/g/b;->l()J

    move-result-wide v6

    sub-long v6, p2, v6

    .line 441
    :goto_16e
    sub-long/2addr v6, v4

    .line 443
    invoke-virtual {v2, v6, v7}, Lcom/ss/android/socialbase/downloader/g/b;->a(J)V

    .line 444
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ss/android/socialbase/downloader/g/b;->g:I

    invoke-virtual {v2, v3}, Lcom/ss/android/socialbase/downloader/g/b;->c(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ss/android/socialbase/downloader/g/b;->o:Lcom/ss/android/socialbase/downloader/l/b;

    if-eqz v3, :cond_190

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ss/android/socialbase/downloader/g/b;->o:Lcom/ss/android/socialbase/downloader/l/b;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/b;->p()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/g/b;->q()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/ss/android/socialbase/downloader/l/b;->a(JJ)V

    .line 451
    :cond_190
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ss/android/socialbase/downloader/g/b;->a(Ljava/util/List;)V

    move-object v2, v12

    .line 452
    goto/16 :goto_d

    .line 439
    :cond_198
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/g/b;->p()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/g/b;->l()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto :goto_16e

    :cond_1a5
    move-wide v2, v4

    goto :goto_138
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_c

    .line 163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 166
    :goto_b
    return-void

    .line 165
    :cond_c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_b
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 296
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/g/b;->f:J

    .line 297
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteStatement;)V
    .registers 6

    .prologue
    .line 142
    if-nez p1, :cond_3

    .line 153
    :goto_2
    return-void

    .line 144
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    .line 145
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 146
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/b;->b:I

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 147
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/g/b;->g:I

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 148
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/b;->c:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 149
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 150
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/b;->e:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 151
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/b;->f:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 152
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->l:I

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_2
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/b;)V
    .registers 3

    .prologue
    .line 188
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/b;->k:Lcom/ss/android/socialbase/downloader/g/b;

    .line 189
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->k:Lcom/ss/android/socialbase/downloader/g/b;

    if-eqz v0, :cond_f

    .line 190
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->k:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->s()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/g/b;->a(I)V

    .line 191
    :cond_f
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/l/b;)V
    .registers 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/b;->o:Lcom/ss/android/socialbase/downloader/l/b;

    .line 176
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->r()V

    .line 177
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/b;->j:Ljava/util/List;

    .line 217
    return-void
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_f

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 184
    :goto_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->o:Lcom/ss/android/socialbase/downloader/l/b;

    .line 185
    return-void

    .line 183
    :cond_f
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_b
.end method

.method public b()I
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_6

    .line 157
    const/4 v0, -0x1

    .line 158
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_5
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 288
    iput p1, p0, Lcom/ss/android/socialbase/downloader/g/b;->b:I

    .line 289
    return-void
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_a

    .line 334
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 338
    :goto_9
    return-void

    .line 336
    :cond_a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_9
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/b;->m:Z

    .line 252
    return-void
.end method

.method public c(Z)J
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v4

    .line 367
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->f:J

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/g/b;->i:J

    sub-long v6, v4, v6

    sub-long/2addr v0, v6

    .line 368
    if-nez p1, :cond_1b

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/g/b;->i:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_1b

    .line 369
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->f:J

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/g/b;->c:J

    sub-long/2addr v4, v6

    sub-long/2addr v0, v4

    .line 371
    :cond_1b
    const-string v4, "DownloadChunk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentLength:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/g/b;->f:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " curOffset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldOffset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/g/b;->i:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " retainLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/socialbase/downloader/f/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    cmp-long v4, v0, v2

    if-gez v4, :cond_5e

    move-wide v0, v2

    .line 374
    :cond_5e
    return-wide v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 292
    iput p1, p0, Lcom/ss/android/socialbase/downloader/g/b;->g:I

    .line 293
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_6

    .line 170
    const/4 v0, 0x0

    .line 171
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_5
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/ss/android/socialbase/downloader/g/b;
    .registers 3

    .prologue
    .line 203
    .line 204
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->d()Z

    move-result v0

    if-nez v0, :cond_8

    .line 205
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/g/b;->k:Lcom/ss/android/socialbase/downloader/g/b;

    .line 206
    :cond_8
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->f()Z

    move-result v0

    if-nez v0, :cond_12

    .line 207
    :cond_10
    const/4 v0, 0x0

    .line 208
    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    goto :goto_11
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->j:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->j:Ljava/util/List;

    return-object v0
.end method

.method public h()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 232
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->k:Lcom/ss/android/socialbase/downloader/g/b;

    if-nez v0, :cond_8

    move v2, v3

    .line 247
    :cond_7
    :goto_7
    return v2

    .line 234
    :cond_8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->k:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    .line 236
    :goto_11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->k:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 237
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->k:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 238
    if-eqz v0, :cond_41

    .line 239
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/g/b;->k:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 240
    if-le v4, v1, :cond_3d

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 242
    :cond_3d
    if-ne v4, v1, :cond_41

    move v2, v3

    .line 243
    goto :goto_7

    .line 236
    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11
.end method

.method public i()Z
    .registers 7

    .prologue
    .line 256
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->c:J

    .line 257
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->d()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/b;->i:J

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/g/b;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_12

    .line 258
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->i:J

    .line 259
    :cond_12
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v2

    sub-long v0, v2, v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/b;->f:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public j()J
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    .line 263
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/b;->k:Lcom/ss/android/socialbase/downloader/g/b;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/b;->k:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_f
    move-wide v0, v4

    .line 276
    :goto_10
    return-wide v0

    .line 266
    :cond_11
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/b;->k:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v1, v0

    move v2, v0

    .line 267
    :goto_1d
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->k:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_45

    .line 268
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->k:Lcom/ss/android/socialbase/downloader/g/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 269
    if-eqz v0, :cond_41

    .line 270
    if-eqz v2, :cond_3e

    .line 271
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v0

    goto :goto_10

    .line 272
    :cond_3e
    if-ne v3, v1, :cond_41

    .line 273
    const/4 v2, 0x1

    .line 267
    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :cond_45
    move-wide v0, v4

    .line 276
    goto :goto_10
.end method

.method public k()I
    .registers 2

    .prologue
    .line 300
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->b:I

    return v0
.end method

.method public l()J
    .registers 3

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->c:J

    return-wide v0
.end method

.method public m()J
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_b

    .line 309
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 311
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method

.method public n()J
    .registers 7

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->d()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 316
    const-wide/16 v2, 0x0

    .line 317
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2c

    .line 318
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 319
    if-eqz v0, :cond_39

    .line 320
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->i()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 321
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->m()J

    move-result-wide v2

    .line 328
    :cond_2c
    :goto_2c
    return-wide v2

    .line 322
    :cond_2d
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->m()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_39

    .line 323
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->m()J

    move-result-wide v2

    .line 317
    :cond_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 328
    :cond_3d
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->m()J

    move-result-wide v2

    goto :goto_2c
.end method

.method public o()J
    .registers 9

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/g/b;->c:J

    sub-long v2, v0, v2

    .line 342
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->f()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 343
    const-wide/16 v2, 0x0

    .line 344
    const/4 v0, 0x0

    move v1, v0

    :goto_12
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_32

    .line 345
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/g/b;

    .line 346
    if-eqz v0, :cond_2e

    .line 347
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/b;->l()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 344
    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 350
    :cond_32
    return-wide v2
.end method

.method public p()J
    .registers 3

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->e:J

    return-wide v0
.end method

.method public q()J
    .registers 3

    .prologue
    .line 358
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->f:J

    return-wide v0
.end method

.method public r()V
    .registers 3

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/g/b;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->i:J

    .line 363
    return-void
.end method

.method public s()I
    .registers 2

    .prologue
    .line 456
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->g:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .prologue
    .line 97
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    const-wide/16 v0, 0x0

    .line 100
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/g/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v2, :cond_16

    .line 101
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 102
    :cond_16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v0, -0x1

    .line 107
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/g/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_33

    .line 108
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 109
    :cond_33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return-void
.end method
