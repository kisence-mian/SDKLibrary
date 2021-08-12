.class public final Lcom/ss/android/socialbase/downloader/f/i;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field volatile a:Lcom/ss/android/socialbase/downloader/f/m;

.field b:I

.field private final c:J

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile e:J

.field private f:J

.field private g:I


# direct methods
.method public constructor <init>(JJ)V
    .registers 7

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/ss/android/socialbase/downloader/f/i;->b:I

    .line 53
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/i;->c:J

    .line 54
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 55
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/i;->e:J

    .line 56
    cmp-long p1, p3, p1

    if-ltz p1, :cond_1b

    .line 57
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/f/i;->f:J

    goto :goto_1f

    .line 59
    :cond_1b
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/i;->f:J

    .line 61
    :goto_1f
    return-void
.end method

.method public constructor <init>(Lcom/ss/android/socialbase/downloader/f/i;)V
    .registers 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    const/4 v1, 0x0

    iput v1, p0, Lcom/ss/android/socialbase/downloader/f/i;->b:I

    .line 64
    iget-wide v1, p1, Lcom/ss/android/socialbase/downloader/f/i;->c:J

    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/i;->c:J

    .line 65
    iget-object v1, p1, Lcom/ss/android/socialbase/downloader/f/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 66
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->e:J

    .line 67
    iget-wide v0, p1, Lcom/ss/android/socialbase/downloader/f/i;->f:J

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->f:J

    .line 68
    iget p1, p1, Lcom/ss/android/socialbase/downloader/f/i;->g:I

    iput p1, p0, Lcom/ss/android/socialbase/downloader/f/i;->g:I

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->b:I

    .line 72
    const-string v0, "st"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->c:J

    .line 73
    const-string v0, "en"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/f/i;->c(J)V

    .line 74
    const-string v0, "cu"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/f/i;->a(J)V

    .line 75
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/f/i;->d(J)V

    .line 76
    return-void
.end method


# virtual methods
.method public a()J
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/f/i;->c:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method a(I)V
    .registers 2

    .line 164
    iput p1, p0, Lcom/ss/android/socialbase/downloader/f/i;->g:I

    .line 165
    return-void
.end method

.method public a(J)V
    .registers 5

    .line 129
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_b

    .line 130
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 132
    :cond_b
    return-void
.end method

.method public b()J
    .registers 5

    .line 102
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->f:J

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/f/i;->c:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_11

    .line 103
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0

    .line 105
    :cond_11
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method b(I)V
    .registers 2

    .line 180
    iput p1, p0, Lcom/ss/android/socialbase/downloader/f/i;->b:I

    .line 181
    return-void
.end method

.method b(J)V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 136
    return-void
.end method

.method public c()J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->c:J

    return-wide v0
.end method

.method c(J)V
    .registers 5

    .line 143
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->c:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 144
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/i;->f:J

    goto :goto_33

    .line 146
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEndOffset: endOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", segment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Segment"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_33

    .line 148
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/i;->f:J

    .line 151
    :cond_33
    :goto_33
    return-void
.end method

.method public d()J
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_c

    .line 155
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/f/i;->e:J

    .line 157
    :cond_c
    return-void
.end method

.method public e()J
    .registers 5

    .line 117
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->a:Lcom/ss/android/socialbase/downloader/f/m;

    .line 118
    if-eqz v0, :cond_f

    .line 119
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/f/m;->d()J

    move-result-wide v0

    .line 120
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/f/i;->e:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_f

    .line 122
    return-wide v0

    .line 125
    :cond_f
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->e:J

    return-wide v0
.end method

.method public f()J
    .registers 3

    .line 139
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->f:J

    return-wide v0
.end method

.method public g()I
    .registers 2

    .line 160
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->g:I

    return v0
.end method

.method h()V
    .registers 2

    .line 168
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->b:I

    .line 169
    return-void
.end method

.method i()V
    .registers 2

    .line 172
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->b:I

    .line 173
    return-void
.end method

.method j()I
    .registers 2

    .line 176
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/i;->b:I

    return v0
.end method

.method public k()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 211
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 212
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/i;->c()J

    move-result-wide v1

    const-string v3, "st"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 213
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/i;->d()J

    move-result-wide v1

    const-string v3, "cu"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 214
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/i;->f()J

    move-result-wide v1

    const-string v3, "en"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 215
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Segment{startOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/i;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\t currentOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/f/i;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\t currentOffsetRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/i;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\t endOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/socialbase/downloader/f/i;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    return-object v0
.end method
