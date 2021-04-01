.class public Lcom/ss/android/downloadad/a/b/a;
.super Ljava/lang/Object;
.source "NativeDownloadModel.java"


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:J

.field private l:Lorg/json/JSONObject;

.field private m:I

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/ss/android/downloadad/a/b/a;->e:I

    .line 34
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/b/a;->j:Z

    .line 38
    iput-boolean v1, p0, Lcom/ss/android/downloadad/a/b/a;->n:Z

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V
    .registers 5

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ss/android/downloadad/a/b/a;-><init>(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;I)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/ss/android/downloadad/a/b/a;->e:I

    .line 34
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/b/a;->j:Z

    .line 38
    iput-boolean v1, p0, Lcom/ss/android/downloadad/a/b/a;->n:Z

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/b/a;->b:J

    .line 60
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/b/a;->c:J

    .line 61
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->d:Ljava/lang/String;

    .line 62
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->f:Ljava/lang/String;

    .line 63
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->w()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->l:Lorg/json/JSONObject;

    .line 64
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/b/a;->j:Z

    .line 65
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->p()I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/b/a;->h:I

    .line 66
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->i:Ljava/lang/String;

    .line 67
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->g:Ljava/lang/String;

    .line 69
    invoke-interface {p2}, Lcom/ss/android/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->o:Ljava/lang/String;

    .line 70
    invoke-interface {p2}, Lcom/ss/android/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->p:Ljava/lang/String;

    .line 71
    invoke-interface {p2}, Lcom/ss/android/a/a/b/b;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/b/a;->q:Z

    .line 73
    invoke-interface {p3}, Lcom/ss/android/a/a/b/a;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/b/a;->n:Z

    .line 75
    iput p4, p0, Lcom/ss/android/downloadad/a/b/a;->m:I

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/b/a;->k:J

    .line 77
    return-void
.end method

.method public static a(Lcom/ss/android/downloadad/a/b/a;)Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 277
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/a;->h()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 278
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/a;->h()Lorg/json/JSONObject;

    move-result-object v0

    .line 280
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_c
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/b/a;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 243
    if-nez p0, :cond_4

    .line 273
    :goto_3
    return-object v0

    .line 246
    :cond_4
    new-instance v1, Lcom/ss/android/downloadad/a/b/a;

    invoke-direct {v1}, Lcom/ss/android/downloadad/a/b/a;-><init>()V

    .line 248
    :try_start_9
    const-string v2, "mId"

    invoke-static {p0, v2}, Lcom/ss/android/a/a/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadad/a/b/a;->a(J)V

    .line 249
    const-string v2, "mExtValue"

    invoke-static {p0, v2}, Lcom/ss/android/a/a/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadad/a/b/a;->b(J)V

    .line 250
    const-string v2, "mLogExtra"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/a;->b(Ljava/lang/String;)V

    .line 251
    const-string v2, "mDownloadStatus"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/a;->a(I)V

    .line 252
    const-string v2, "mPackageName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/a;->a(Ljava/lang/String;)V

    .line 253
    const-string v2, "mIsAd"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/a;->a(Z)V

    .line 254
    const-string v2, "mTimeStamp"

    invoke-static {p0, v2}, Lcom/ss/android/a/a/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadad/a/b/a;->c(J)V

    .line 255
    const-string v2, "mVersionCode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/a;->b(I)V

    .line 256
    const-string v2, "mVersionName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/a;->c(Ljava/lang/String;)V

    .line 257
    const-string v2, "mDownloadId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/a;->c(I)V

    .line 258
    const-string v2, "mIsV3Event"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/a;->b(Z)V

    .line 259
    const-string v2, "mScene"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/a;->d(I)V

    .line 260
    const-string v2, "mEventTag"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/a;->d(Ljava/lang/String;)V

    .line 261
    const-string v2, "mEventRefer"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/a;->e(Ljava/lang/String;)V

    .line 262
    const-string v2, "mDownloadUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/a;->f(Ljava/lang/String;)V

    .line 263
    const-string v2, "mEnableBackDialog"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/a;->c(Z)V

    .line 264
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "hasSendInstallFinish"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v1, Lcom/ss/android/downloadad/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_a6} :catch_b2

    .line 269
    :goto_a6
    :try_start_a6
    const-string v2, "mExtras"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/a;->a(Lorg/json/JSONObject;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_af} :catch_b7

    :goto_af
    move-object v0, v1

    .line 273
    goto/16 :goto_3

    .line 265
    :catch_b2
    move-exception v2

    .line 266
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a6

    .line 270
    :catch_b7
    move-exception v2

    .line 271
    invoke-virtual {v1, v0}, Lcom/ss/android/downloadad/a/b/a;->a(Lorg/json/JSONObject;)V

    goto :goto_af
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/b/a;->b:J

    return-wide v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 100
    iput p1, p0, Lcom/ss/android/downloadad/a/b/a;->e:I

    .line 101
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/b/a;->b:J

    .line 85
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/a;->f:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/a;->l:Lorg/json/JSONObject;

    .line 141
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/a;->j:Z

    .line 133
    return-void
.end method

.method public b()J
    .registers 3

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/b/a;->c:J

    return-wide v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 144
    iput p1, p0, Lcom/ss/android/downloadad/a/b/a;->h:I

    .line 145
    return-void
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/b/a;->c:J

    .line 93
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/a;->d:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/a;->q:Z

    .line 169
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/ss/android/downloadad/a/b/a;->e:I

    return v0
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 160
    iput p1, p0, Lcom/ss/android/downloadad/a/b/a;->m:I

    .line 161
    return-void
.end method

.method public c(J)V
    .registers 4

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/b/a;->k:J

    .line 117
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 148
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/a;->i:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public c(Z)V
    .registers 2

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/a;->n:Z

    .line 185
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .registers 2

    .prologue
    .line 176
    iput p1, p0, Lcom/ss/android/downloadad/a/b/a;->r:I

    .line 177
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/a;->o:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public e()J
    .registers 3

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/b/a;->k:J

    return-wide v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 200
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/a;->p:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 208
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/a;->g:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/a;->j:Z

    return v0
.end method

.method public h()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lcom/ss/android/downloadad/a/b/a;->h:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/ss/android/downloadad/a/b/a;->m:I

    return v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/a;->q:Z

    return v0
.end method

.method public m()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lcom/ss/android/downloadad/a/b/a;->r:I

    return v0
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/a;->n:Z

    return v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public r()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 216
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 218
    :try_start_5
    const-string v0, "mId"

    iget-wide v2, p0, Lcom/ss/android/downloadad/a/b/a;->b:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 219
    const-string v0, "mExtValue"

    iget-wide v2, p0, Lcom/ss/android/downloadad/a/b/a;->c:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 220
    const-string v0, "mLogExtra"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v0, "mDownloadStatus"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/a;->e:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 222
    const-string v0, "mPackageName"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v0, "mIsAd"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/a/b/a;->j:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 224
    const-string v0, "mTimeStamp"

    iget-wide v2, p0, Lcom/ss/android/downloadad/a/b/a;->k:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 225
    const-string v0, "mExtras"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/a;->l:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v0, "mVersionCode"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/a;->h:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 227
    const-string v0, "mVersionName"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v0, "mDownloadId"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/a;->m:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 229
    const-string v0, "mIsV3Event"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/a/b/a;->q:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 230
    const-string v0, "mScene"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/a;->r:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    const-string v0, "mEventTag"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/a;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v0, "mEventRefer"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v0, "mDownloadUrl"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v0, "mEnableBackDialog"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/a/b/a;->n:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 235
    const-string v0, "hasSendInstallFinish"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_87} :catch_88

    .line 239
    :goto_87
    return-object v1

    .line 236
    :catch_88
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_87
.end method

.method public s()Lcom/ss/android/downloadad/a/a/c;
    .registers 5

    .prologue
    .line 284
    new-instance v0, Lcom/ss/android/downloadad/a/a/c$a;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/c$a;-><init>()V

    iget-wide v2, p0, Lcom/ss/android/downloadad/a/b/a;->b:J

    .line 285
    invoke-virtual {v0, v2, v3}, Lcom/ss/android/downloadad/a/a/c$a;->a(J)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/downloadad/a/b/a;->c:J

    .line 286
    invoke-virtual {v0, v2, v3}, Lcom/ss/android/downloadad/a/a/c$a;->b(J)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/a;->d:Ljava/lang/String;

    .line 287
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/a;->f:Ljava/lang/String;

    .line 288
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/a;->l:Lorg/json/JSONObject;

    .line 289
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->a(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadad/a/b/a;->j:Z

    .line 290
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->a(Z)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadad/a/b/a;->h:I

    .line 291
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->a(I)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/a;->i:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->g(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/a;->g:Ljava/lang/String;

    .line 293
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/c$a;->a()Lcom/ss/android/downloadad/a/a/c;

    move-result-object v0

    .line 284
    return-object v0
.end method
