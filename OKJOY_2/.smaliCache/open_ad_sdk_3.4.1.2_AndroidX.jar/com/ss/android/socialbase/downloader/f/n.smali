.class public Lcom/ss/android/socialbase/downloader/f/n;
.super Ljava/lang/Object;
.source "SegmentStrategy.java"


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private b:I


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    .line 39
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/f/n;
    .registers 2

    .line 173
    new-instance v0, Lcom/ss/android/socialbase/downloader/f/n;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/f/n;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private b(I)I
    .registers 5

    .line 126
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "thread_count"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 128
    const/16 v1, 0x10

    if-le v0, v1, :cond_e

    .line 129
    move v0, v1

    .line 131
    :cond_e
    const/4 v1, 0x1

    if-gtz v0, :cond_19

    .line 134
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/n;->o()I

    move-result v0

    if-lez v0, :cond_18

    .line 137
    return p1

    .line 141
    :cond_18
    return v1

    .line 145
    :cond_19
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/n;->o()I

    move-result v2

    if-ne v2, v1, :cond_24

    .line 148
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 153
    :cond_24
    return v0
.end method

.method private o()I
    .registers 4

    .line 52
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "url_balance"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/f/n;->b(I)I

    move-result p1

    iput p1, p0, Lcom/ss/android/socialbase/downloader/f/n;->b:I

    .line 44
    return-void
.end method

.method public b()Z
    .registers 2

    .line 57
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/n;->o()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public c()Z
    .registers 3

    .line 61
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/f/n;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public d()I
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "buffer_count"

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e()I
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "buffer_size"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "segment_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method public g()J
    .registers 6

    .line 82
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "segment_min_kb"

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    .line 84
    const-wide/32 v2, 0x10000

    cmp-long v4, v0, v2

    if-gez v4, :cond_16

    .line 85
    move-wide v0, v2

    .line 87
    :cond_16
    return-wide v0
.end method

.method public h()J
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "segment_max_kb"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x100000

    mul-long/2addr v0, v2

    .line 96
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/f/n;->g()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_19

    .line 97
    const-wide/16 v0, -0x1

    return-wide v0

    .line 99
    :cond_19
    return-wide v0
.end method

.method public i()J
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "connect_timeout"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 105
    int-to-long v0, v0

    const-wide/16 v2, 0x7d0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_11

    .line 106
    return-wide v0

    .line 108
    :cond_11
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public j()J
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "read_timeout"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 114
    int-to-long v0, v0

    const-wide/16 v2, 0xfa0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_11

    .line 115
    return-wide v0

    .line 117
    :cond_11
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public k()I
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "ip_strategy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public l()F
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "main_ratio"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public m()Z
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "ratio_segment"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    move v2, v1

    :cond_d
    return v2
.end method

.method public n()F
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/f/n;->a:Lorg/json/JSONObject;

    const-string v1, "poor_speed_ratio"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 166
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 167
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 168
    return v0
.end method
