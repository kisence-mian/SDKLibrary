.class public Lcom/ss/android/socialbase/downloader/model/b;
.super Ljava/lang/Object;
.source "DownloadChunk.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/model/b$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
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
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/ss/android/socialbase/downloader/model/b;

.field private l:I

.field private m:Z

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:Lcom/ss/android/socialbase/downloader/h/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    const-class v0, Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/model/b;->a:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/ss/android/socialbase/downloader/model/b$1;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/model/b$1;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/model/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 7

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p1, :cond_6

    .line 61
    return-void

    .line 62
    :cond_6
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->b:I

    .line 63
    const-string v0, "chunkIndex"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->g:I

    .line 64
    const-string v0, "startOffset"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->c:J

    .line 66
    const-string v0, "curOffset"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 67
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3f

    .line 68
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_48

    .line 70
    :cond_3f
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 71
    :goto_48
    const-string v0, "endOffset"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/b;->e:J

    .line 73
    const-string v0, "hostChunkIndex"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 74
    if-eq v0, v1, :cond_68

    .line 75
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/ss/android/socialbase/downloader/model/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_6f

    .line 77
    :cond_68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    :goto_6f
    const-string v0, "chunkContentLen"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 80
    if-eq v0, v1, :cond_7d

    .line 81
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->f:J

    .line 82
    :cond_7d
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->b:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->c:J

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->e:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->f:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->g:I

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    return-void
.end method

.method private constructor <init>(Lcom/ss/android/socialbase/downloader/model/b$a;)V
    .registers 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_6

    .line 46
    return-void

    .line 47
    :cond_6
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/b$a;->a(Lcom/ss/android/socialbase/downloader/model/b$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->b:I

    .line 48
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/b$a;->b(Lcom/ss/android/socialbase/downloader/model/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->c:J

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/b$a;->c(Lcom/ss/android/socialbase/downloader/model/b$a;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/b$a;->d(Lcom/ss/android/socialbase/downloader/model/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->e:J

    .line 51
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/b$a;->e(Lcom/ss/android/socialbase/downloader/model/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->f:J

    .line 52
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/b$a;->f(Lcom/ss/android/socialbase/downloader/model/b$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->g:I

    .line 53
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/b$a;->g(Lcom/ss/android/socialbase/downloader/model/b$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->i:J

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/model/b$a;->h(Lcom/ss/android/socialbase/downloader/model/b$a;)Lcom/ss/android/socialbase/downloader/model/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/model/b;->a(Lcom/ss/android/socialbase/downloader/model/b;)V

    .line 56
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/model/b$a;Lcom/ss/android/socialbase/downloader/model/b$1;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/model/b;-><init>(Lcom/ss/android/socialbase/downloader/model/b$a;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .registers 4

    .line 130
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 131
    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/b;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "chunkIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/b;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "startOffset"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "curOffset"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/b;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "endOffset"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/b;->f:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "chunkContentLen"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hostChunkIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    return-object v0
.end method

.method public a(IJ)Ljava/util/List;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;"
        }
    .end annotation

    .line 378
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result v2

    if-eqz v2, :cond_183

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v1, v0

    goto/16 :goto_184

    .line 380
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/b;->m()J

    move-result-wide v3

    .line 382
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/ss/android/socialbase/downloader/model/b;->c(Z)J

    move-result-wide v6

    .line 383
    int-to-long v8, v1

    div-long v8, v6, v8

    .line 385
    sget-object v10, Lcom/ss/android/socialbase/downloader/model/b;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retainLen:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " divideChunkForReuse chunkSize:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " current host downloadChunk index:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/ss/android/socialbase/downloader/model/b;->g:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v11, 0x0

    :goto_53
    const-wide/16 v12, 0x1

    if-ge v11, v1, :cond_10b

    .line 390
    nop

    .line 391
    nop

    .line 393
    if-nez v11, :cond_67

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/b;->l()J

    move-result-wide v14

    .line 395
    add-long v16, v3, v8

    sub-long v16, v16, v12

    move-wide v12, v8

    move-wide/from16 v18, v16

    goto :goto_8c

    .line 396
    :cond_67
    add-int/lit8 v14, v1, -0x1

    if-ne v11, v14, :cond_84

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/b;->p()J

    move-result-wide v16

    .line 398
    cmp-long v15, v16, v3

    if-lez v15, :cond_7b

    .line 399
    sub-long v14, v16, v3

    add-long/2addr v14, v12

    move-wide v12, v14

    move-wide/from16 v18, v16

    move-wide v14, v3

    goto :goto_8c

    .line 401
    :cond_7b
    int-to-long v12, v14

    mul-long/2addr v12, v8

    sub-long v14, v6, v12

    move-wide v12, v14

    move-wide/from16 v18, v16

    move-wide v14, v3

    goto :goto_8c

    .line 403
    :cond_84
    add-long v14, v3, v8

    sub-long v16, v14, v12

    move-wide v14, v3

    move-wide v12, v8

    move-wide/from16 v18, v16

    .line 406
    :goto_8c
    new-instance v10, Lcom/ss/android/socialbase/downloader/model/b$a;

    iget v5, v0, Lcom/ss/android/socialbase/downloader/model/b;->b:I

    invoke-direct {v10, v5}, Lcom/ss/android/socialbase/downloader/model/b$a;-><init>(I)V

    neg-int v5, v11

    const/16 v17, 0x1

    add-int/lit8 v5, v5, -0x1

    .line 407
    invoke-virtual {v10, v5}, Lcom/ss/android/socialbase/downloader/model/b$a;->a(I)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v5

    .line 408
    invoke-virtual {v5, v14, v15}, Lcom/ss/android/socialbase/downloader/model/b$a;->a(J)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v5

    .line 409
    invoke-virtual {v5, v3, v4}, Lcom/ss/android/socialbase/downloader/model/b$a;->b(J)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v5

    .line 410
    invoke-virtual {v5, v3, v4}, Lcom/ss/android/socialbase/downloader/model/b$a;->e(J)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v5

    .line 411
    move-wide/from16 v20, v6

    move-wide/from16 v6, v18

    invoke-virtual {v5, v6, v7}, Lcom/ss/android/socialbase/downloader/model/b$a;->c(J)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v5

    .line 412
    invoke-virtual {v5, v12, v13}, Lcom/ss/android/socialbase/downloader/model/b$a;->d(J)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v5

    .line 413
    invoke-virtual {v5, v0}, Lcom/ss/android/socialbase/downloader/model/b$a;->a(Lcom/ss/android/socialbase/downloader/model/b;)Lcom/ss/android/socialbase/downloader/model/b$a;

    move-result-object v5

    .line 414
    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b$a;->a()Lcom/ss/android/socialbase/downloader/model/b;

    move-result-object v5

    .line 416
    sget-object v10, Lcom/ss/android/socialbase/downloader/model/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "divide sub chunk : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startOffset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " curOffset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " endOffset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contentLen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    add-long/2addr v3, v8

    .line 387
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v6, v20

    goto/16 :goto_53

    .line 423
    :cond_10b
    nop

    .line 424
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_115
    if-lez v0, :cond_127

    .line 425
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/socialbase/downloader/model/b;

    .line 426
    if-eqz v1, :cond_124

    .line 427
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/model/b;->q()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 424
    :cond_124
    add-int/lit8 v0, v0, -0x1

    goto :goto_115

    .line 430
    :cond_127
    sget-object v0, Lcom/ss/android/socialbase/downloader/model/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reuseChunkContentLen:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    .line 434
    if-eqz v0, :cond_17d

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/b;->p()J

    move-result-wide v7

    cmp-long v1, v7, v3

    if-nez v1, :cond_157

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/b;->l()J

    move-result-wide v3

    sub-long v3, p2, v3

    goto :goto_161

    .line 439
    :cond_157
    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/b;->p()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/b;->l()J

    move-result-wide v7

    sub-long/2addr v3, v7

    add-long/2addr v3, v12

    .line 441
    :goto_161
    sub-long/2addr v3, v5

    .line 443
    invoke-virtual {v0, v3, v4}, Lcom/ss/android/socialbase/downloader/model/b;->a(J)V

    .line 444
    move-object/from16 v1, p0

    iget v3, v1, Lcom/ss/android/socialbase/downloader/model/b;->g:I

    invoke-virtual {v0, v3}, Lcom/ss/android/socialbase/downloader/model/b;->c(I)V

    .line 446
    iget-object v3, v1, Lcom/ss/android/socialbase/downloader/model/b;->o:Lcom/ss/android/socialbase/downloader/h/b;

    if-eqz v3, :cond_17f

    .line 447
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->p()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/model/b;->q()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v3, v7, v8, v9, v10}, Lcom/ss/android/socialbase/downloader/h/b;->a(JJ)V

    goto :goto_17f

    .line 434
    :cond_17d
    move-object/from16 v1, p0

    .line 451
    :cond_17f
    :goto_17f
    invoke-virtual {v1, v2}, Lcom/ss/android/socialbase/downloader/model/b;->a(Ljava/util/List;)V

    .line 452
    return-object v2

    .line 378
    :cond_183
    move-object v1, v0

    .line 379
    :goto_184
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(I)V
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_c

    .line 163
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_f

    .line 165
    :cond_c
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 166
    :goto_f
    return-void
.end method

.method public a(J)V
    .registers 3

    .line 296
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/model/b;->f:J

    .line 297
    return-void
.end method

.method public a(Landroid/database/sqlite/SQLiteStatement;)V
    .registers 5

    .line 142
    if-nez p1, :cond_3

    .line 143
    return-void

    .line 144
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    .line 145
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 146
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/b;->b:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 147
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    iget v1, p0, Lcom/ss/android/socialbase/downloader/model/b;->g:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 148
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/b;->c:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 149
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 150
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/b;->e:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 151
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/model/b;->f:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 152
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->l:I

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 153
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/h/b;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/b;->o:Lcom/ss/android/socialbase/downloader/h/b;

    .line 176
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->r()V

    .line 177
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/model/b;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/b;->k:Lcom/ss/android/socialbase/downloader/model/b;

    .line 189
    if-eqz p1, :cond_b

    .line 190
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/model/b;->s()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/model/b;->a(I)V

    .line 191
    :cond_b
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;)V"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/b;->j:Ljava/util/List;

    .line 217
    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_c

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_f

    .line 183
    :cond_c
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    :goto_f
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/b;->o:Lcom/ss/android/socialbase/downloader/h/b;

    .line 185
    return-void
.end method

.method public b()I
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_6

    .line 157
    const/4 v0, -0x1

    return v0

    .line 158
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 2

    .line 288
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/b;->b:I

    .line 289
    return-void
.end method

.method public b(J)V
    .registers 4

    .line 333
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_8

    .line 334
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_f

    .line 336
    :cond_8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 338
    :goto_f
    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 251
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/b;->m:Z

    .line 252
    return-void
.end method

.method public c(Z)J
    .registers 10

    .line 366
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v0

    .line 367
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/b;->f:J

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/model/b;->i:J

    sub-long v6, v0, v4

    sub-long v6, v2, v6

    .line 368
    if-nez p1, :cond_17

    cmp-long p1, v0, v4

    if-nez p1, :cond_17

    .line 369
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/model/b;->c:J

    sub-long/2addr v0, v4

    sub-long v6, v2, v0

    .line 371
    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "contentLength:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->f:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " curOffset:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " oldOffset:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->i:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " retainLen:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadChunk"

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/downloader/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-wide/16 v0, 0x0

    cmp-long p1, v6, v0

    if-gez p1, :cond_5c

    .line 373
    move-wide v6, v0

    .line 374
    :cond_5c
    return-wide v6
.end method

.method public c(I)V
    .registers 2

    .line 292
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/b;->g:I

    .line 293
    return-void
.end method

.method public c()Z
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_6

    .line 170
    const/4 v0, 0x0

    return v0

    .line 171
    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 3

    .line 198
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public describeContents()I
    .registers 2

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/ss/android/socialbase/downloader/model/b;
    .registers 3

    .line 203
    nop

    .line 204
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result v0

    if-nez v0, :cond_a

    .line 205
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->k:Lcom/ss/android/socialbase/downloader/model/b;

    goto :goto_b

    .line 204
    :cond_a
    move-object v0, p0

    .line 206
    :goto_b
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_20

    .line 208
    :cond_14
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/model/b;

    return-object v0

    .line 207
    :cond_20
    :goto_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Z
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->j:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/b;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->j:Ljava/util/List;

    return-object v0
.end method

.method public h()Z
    .registers 6

    .line 232
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->k:Lcom/ss/android/socialbase/downloader/model/b;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 233
    return v1

    .line 234
    :cond_6
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_e

    .line 235
    return v2

    .line 236
    :cond_e
    move v0, v2

    :goto_f
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/model/b;->k:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_42

    .line 237
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/model/b;->k:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/b;

    .line 238
    if-eqz v3, :cond_3f

    .line 239
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/model/b;->k:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v4}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 240
    if-le v4, v0, :cond_3c

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->i()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 241
    return v2

    .line 242
    :cond_3c
    if-ne v4, v0, :cond_3f

    .line 243
    return v1

    .line 236
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 247
    :cond_42
    return v2
.end method

.method public i()Z
    .registers 7

    .line 256
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->c:J

    .line 257
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/b;->i:J

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/model/b;->c:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_11

    .line 258
    move-wide v0, v2

    .line 259
    :cond_11
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->f:J

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public j()J
    .registers 7

    .line 263
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->k:Lcom/ss/android/socialbase/downloader/model/b;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_42

    .line 265
    :cond_d
    nop

    .line 266
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->k:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 267
    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/model/b;->k:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_41

    .line 268
    iget-object v5, p0, Lcom/ss/android/socialbase/downloader/model/b;->k:Lcom/ss/android/socialbase/downloader/model/b;

    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->g()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/socialbase/downloader/model/b;

    .line 269
    if-eqz v5, :cond_3e

    .line 270
    if-eqz v4, :cond_3b

    .line 271
    invoke-virtual {v5}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v0

    return-wide v0

    .line 272
    :cond_3b
    if-ne v0, v3, :cond_3e

    .line 273
    const/4 v4, 0x1

    .line 267
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 276
    :cond_41
    return-wide v1

    .line 264
    :cond_42
    :goto_42
    return-wide v1
.end method

.method public k()I
    .registers 2

    .line 300
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->b:I

    return v0
.end method

.method public l()J
    .registers 3

    .line 304
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->c:J

    return-wide v0
.end method

.method public m()J
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_9

    .line 309
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    .line 311
    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public n()J
    .registers 7

    .line 315
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->d()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 316
    const-wide/16 v0, 0x0

    .line 317
    const/4 v2, 0x0

    :goto_f
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/model/b;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3b

    .line 318
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/model/b;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/b;

    .line 319
    if-eqz v3, :cond_38

    .line 320
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->i()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 321
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->m()J

    move-result-wide v0

    return-wide v0

    .line 322
    :cond_2c
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->m()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_38

    .line 323
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->m()J

    move-result-wide v0

    .line 317
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 326
    :cond_3b
    return-wide v0

    .line 328
    :cond_3c
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public o()J
    .registers 9

    .line 341
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/model/b;->c:J

    sub-long/2addr v0, v2

    .line 342
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->f()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 343
    const-wide/16 v0, 0x0

    .line 344
    const/4 v2, 0x0

    :goto_10
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/model/b;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 345
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/model/b;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/model/b;

    .line 346
    if-eqz v3, :cond_2c

    .line 347
    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/model/b;->l()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 344
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 350
    :cond_2f
    return-wide v0
.end method

.method public p()J
    .registers 3

    .line 354
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->e:J

    return-wide v0
.end method

.method public q()J
    .registers 3

    .line 358
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->f:J

    return-wide v0
.end method

.method public r()V
    .registers 3

    .line 362
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/model/b;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->i:J

    .line 363
    return-void
.end method

.method public s()I
    .registers 2

    .line 456
    iget v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->g:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 97
    iget p2, p0, Lcom/ss/android/socialbase/downloader/model/b;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    nop

    .line 100
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/model/b;->d:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz p2, :cond_14

    .line 101
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    goto :goto_16

    .line 100
    :cond_14
    const-wide/16 v0, 0x0

    .line 102
    :goto_16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 103
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget p2, p0, Lcom/ss/android/socialbase/downloader/model/b;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 p2, -0x1

    .line 107
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/model/b;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_31

    .line 108
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 109
    :cond_31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return-void
.end method
