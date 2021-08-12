.class public Lcom/ss/android/downloadad/a/b/b;
.super Ljava/lang/Object;
.source "NativeDownloadModel.java"

# interfaces
.implements Lcom/ss/android/downloadad/a/b/a;


# instance fields
.field private A:J

.field private B:I

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:Z

.field private M:I

.field private N:I

.field private O:J

.field private P:J

.field private Q:Z

.field private R:Z

.field private S:Ljava/lang/String;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:J

.field private transient X:Z

.field private Y:Z

.field private Z:Z

.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:J

.field private t:Lorg/json/JSONObject;

.field private u:I

.field private v:Z

.field private w:I

.field private x:I

.field private y:J

.field private z:J


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/ss/android/downloadad/a/b/b;->f:I

    .line 116
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->r:Z

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ss/android/downloadad/a/b/b;->v:Z

    .line 126
    iput v1, p0, Lcom/ss/android/downloadad/a/b/b;->w:I

    .line 128
    iput v1, p0, Lcom/ss/android/downloadad/a/b/b;->x:I

    .line 142
    iput-boolean v1, p0, Lcom/ss/android/downloadad/a/b/b;->E:Z

    .line 146
    iput-boolean v1, p0, Lcom/ss/android/downloadad/a/b/b;->G:Z

    .line 148
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->H:Z

    .line 165
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 167
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    iput v0, p0, Lcom/ss/android/downloadad/a/b/b;->N:I

    .line 182
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->Q:Z

    .line 197
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/b/b;->W:J

    .line 206
    return-void
.end method

.method public constructor <init>(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V
    .registers 5

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ss/android/downloadad/a/b/b;-><init>(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;I)V

    .line 210
    return-void
.end method

.method public constructor <init>(Lcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;I)V
    .registers 8

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/ss/android/downloadad/a/b/b;->f:I

    .line 116
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->r:Z

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ss/android/downloadad/a/b/b;->v:Z

    .line 126
    iput v1, p0, Lcom/ss/android/downloadad/a/b/b;->w:I

    .line 128
    iput v1, p0, Lcom/ss/android/downloadad/a/b/b;->x:I

    .line 142
    iput-boolean v1, p0, Lcom/ss/android/downloadad/a/b/b;->E:Z

    .line 146
    iput-boolean v1, p0, Lcom/ss/android/downloadad/a/b/b;->G:Z

    .line 148
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->H:Z

    .line 165
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 167
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    iput v0, p0, Lcom/ss/android/downloadad/a/b/b;->N:I

    .line 182
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->Q:Z

    .line 197
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/b/b;->W:J

    .line 213
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/b/b;->c:J

    .line 214
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/b/b;->d:J

    .line 215
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->e:Ljava/lang/String;

    .line 216
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->g:Ljava/lang/String;

    .line 217
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->z()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->t:Lorg/json/JSONObject;

    .line 218
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->r:Z

    .line 219
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->r()I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/b/b;->n:I

    .line 220
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->s()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->o:Ljava/lang/String;

    .line 221
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->h:Ljava/lang/String;

    .line 222
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->x()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 223
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->x()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/a/a/c/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->i:Ljava/lang/String;

    .line 224
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->x()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/a/a/c/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->j:Ljava/lang/String;

    .line 226
    :cond_7b
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->A()I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/b/b;->k:I

    .line 227
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->p:Ljava/lang/String;

    .line 228
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->q:Ljava/lang/String;

    .line 229
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->F:Ljava/lang/String;

    .line 231
    invoke-interface {p2}, Lcom/ss/android/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->I:Ljava/lang/String;

    .line 232
    invoke-interface {p2}, Lcom/ss/android/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->J:Ljava/lang/String;

    .line 233
    invoke-interface {p2}, Lcom/ss/android/a/a/b/b;->m()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/a/b/b;->K:Z

    .line 235
    invoke-interface {p3}, Lcom/ss/android/a/a/b/a;->c()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/a/b/b;->v:Z

    .line 236
    invoke-interface {p3}, Lcom/ss/android/a/a/b/a;->a()I

    move-result p2

    iput p2, p0, Lcom/ss/android/downloadad/a/b/b;->l:I

    .line 237
    invoke-interface {p3}, Lcom/ss/android/a/a/b/a;->b()I

    move-result p2

    iput p2, p0, Lcom/ss/android/downloadad/a/b/b;->m:I

    .line 238
    invoke-interface {p3}, Lcom/ss/android/a/a/b/a;->e()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/a/b/b;->Q:Z

    .line 239
    invoke-interface {p3}, Lcom/ss/android/a/a/b/a;->f()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/a/b/b;->R:Z

    .line 240
    invoke-interface {p3}, Lcom/ss/android/a/a/b/a;->g()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/downloadad/a/b/b;->H:Z

    .line 242
    iput p4, p0, Lcom/ss/android/downloadad/a/b/b;->u:I

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/ss/android/downloadad/a/b/b;->s:J

    .line 244
    iput-wide p2, p0, Lcom/ss/android/downloadad/a/b/b;->y:J

    .line 246
    invoke-interface {p1}, Lcom/ss/android/a/a/b/c;->E()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->G:Z

    .line 247
    return-void
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/b/b;
    .registers 7

    .line 771
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 772
    return-object v0

    .line 774
    :cond_4
    new-instance v1, Lcom/ss/android/downloadad/a/b/b;

    invoke-direct {v1}, Lcom/ss/android/downloadad/a/b/b;-><init>()V

    .line 776
    :try_start_9
    const-string v2, "mId"

    invoke-static {p0, v2}, Lcom/ss/android/a/a/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadad/a/b/b;->d(J)V

    .line 777
    const-string v2, "mExtValue"

    invoke-static {p0, v2}, Lcom/ss/android/a/a/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadad/a/b/b;->e(J)V

    .line 778
    const-string v2, "mLogExtra"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->c(Ljava/lang/String;)V

    .line 779
    const-string v2, "mDownloadStatus"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->e(I)V

    .line 780
    const-string v2, "mPackageName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->b(Ljava/lang/String;)V

    .line 781
    const-string v2, "mIsAd"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->a(Z)V

    .line 782
    const-string v2, "mTimeStamp"

    invoke-static {p0, v2}, Lcom/ss/android/a/a/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/downloadad/a/b/b;->f(J)V

    .line 783
    const-string v2, "mVersionCode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->f(I)V

    .line 784
    const-string v2, "mVersionName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->d(Ljava/lang/String;)V

    .line 785
    const-string v2, "mDownloadId"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->g(I)V

    .line 786
    const-string v2, "mIsV3Event"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->b(Z)V

    .line 787
    const-string v2, "mScene"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->h(I)V

    .line 788
    const-string v2, "mEventTag"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->f(Ljava/lang/String;)V

    .line 789
    const-string v2, "mEventRefer"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->g(Ljava/lang/String;)V

    .line 790
    const-string v2, "mDownloadUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->h(Ljava/lang/String;)V

    .line 791
    const-string v2, "mEnableBackDialog"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->c(Z)V

    .line 792
    iget-object v2, v1, Lcom/ss/android/downloadad/a/b/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "hasSendInstallFinish"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 793
    iget-object v2, v1, Lcom/ss/android/downloadad/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v3, "hasSendDownloadFailedFinally"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 794
    const-string v2, "mLastFailedErrCode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->d(I)V

    .line 795
    const-string v2, "mLastFailedErrMsg"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->a(Ljava/lang/String;)V

    .line 796
    const-string v2, "mOpenUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->i(Ljava/lang/String;)V

    .line 797
    const-string v2, "mLinkMode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->j(I)V

    .line 798
    const-string v2, "mDownloadMode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->k(I)V

    .line 799
    const-string v2, "mModelType"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->l(I)V

    .line 800
    const-string v2, "mAppName"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->j(Ljava/lang/String;)V

    .line 801
    const-string v2, "mAppIcon"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->k(Ljava/lang/String;)V

    .line 802
    const-string v2, "mDownloadFailedTimes"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->a(I)V

    .line 803
    const-string v2, "mRecentDownloadResumeTime"

    invoke-static {p0, v2}, Lcom/ss/android/a/a/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/downloadad/a/b/b;->a(J)V

    .line 804
    const-string v2, "mClickPauseTimes"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->b(I)V

    .line 805
    const-string v2, "mJumpInstallTime"

    invoke-static {p0, v2}, Lcom/ss/android/a/a/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/downloadad/a/b/b;->b(J)V

    .line 806
    const-string v2, "mCancelInstallTime"

    invoke-static {p0, v2}, Lcom/ss/android/a/a/d/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/downloadad/a/b/b;->c(J)V

    .line 807
    const-string v2, "mLastFailedResumeCount"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->c(I)V

    .line 808
    const-string v2, "downloadFinishReason"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->l(Ljava/lang/String;)V

    .line 809
    const-string v2, "clickDownloadSize"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/downloadad/a/b/b;->i(J)V

    .line 810
    const-string v2, "clickDownloadTime"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/downloadad/a/b/b;->h(J)V

    .line 811
    const-string v2, "mIsUpdateDownload"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->h(Z)V

    .line 812
    const-string v2, "mOriginMimeType"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->m(Ljava/lang/String;)V

    .line 813
    const-string v2, "mIsPatchApplyHandled"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->i(Z)V

    .line 814
    const-string v2, "installAfterCleanSpace"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->f(Z)V

    .line 815
    const-string v2, "funnelType"

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->i(I)V

    .line 816
    const-string v2, "webUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->e(Ljava/lang/String;)V

    .line 817
    const-string v2, "enableShowComplianceDialog"

    invoke-virtual {p0, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->p(Z)V

    .line 818
    const-string v2, "isAutoDownloadOnCardShow"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/b/b;->q(Z)V

    .line 819
    const-string v2, "enable_new_activity"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_19b

    move v3, v4

    :cond_19b
    invoke-virtual {v1, v3}, Lcom/ss/android/downloadad/a/b/b;->r(Z)V
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19e} :catch_19f

    .line 822
    goto :goto_1a3

    .line 820
    :catch_19f
    move-exception v2

    .line 821
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 824
    :goto_1a3
    :try_start_1a3
    const-string v2, "mExtras"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/ss/android/downloadad/a/b/b;->a(Lorg/json/JSONObject;)V
    :try_end_1ac
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1ac} :catch_1ad

    .line 827
    goto :goto_1b1

    .line 825
    :catch_1ad
    move-exception p0

    .line 826
    invoke-virtual {v1, v0}, Lcom/ss/android/downloadad/a/b/b;->a(Lorg/json/JSONObject;)V

    .line 828
    :goto_1b1
    return-object v1
.end method


# virtual methods
.method public A()J
    .registers 5

    .line 274
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/b/b;->y:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 275
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/b/b;->s:J

    return-wide v0

    .line 277
    :cond_b
    return-wide v0
.end method

.method public B()J
    .registers 3

    .line 285
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/b/b;->z:J

    return-wide v0
.end method

.method public C()I
    .registers 2

    .line 301
    iget v0, p0, Lcom/ss/android/downloadad/a/b/b;->B:I

    return v0
.end method

.method public D()I
    .registers 2

    .line 309
    iget v0, p0, Lcom/ss/android/downloadad/a/b/b;->C:I

    return v0
.end method

.method public E()Ljava/lang/String;
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->D:Ljava/lang/String;

    return-object v0
.end method

.method public F()I
    .registers 2

    .line 342
    iget v0, p0, Lcom/ss/android/downloadad/a/b/b;->f:I

    return v0
.end method

.method public G()J
    .registers 3

    .line 359
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/b/b;->s:J

    return-wide v0
.end method

.method public H()I
    .registers 2

    .line 404
    iget v0, p0, Lcom/ss/android/downloadad/a/b/b;->n:I

    return v0
.end method

.method public I()Ljava/lang/String;
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public J()I
    .registers 2

    .line 458
    iget v0, p0, Lcom/ss/android/downloadad/a/b/b;->M:I

    return v0
.end method

.method public K()Z
    .registers 2

    .line 479
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->v:Z

    return v0
.end method

.method public L()J
    .registers 3

    .line 520
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/b/b;->W:J

    return-wide v0
.end method

.method public M()Ljava/lang/String;
    .registers 2

    .line 528
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public N()I
    .registers 2

    .line 544
    iget v0, p0, Lcom/ss/android/downloadad/a/b/b;->l:I

    return v0
.end method

.method public O()Ljava/lang/String;
    .registers 2

    .line 572
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->S:Ljava/lang/String;

    return-object v0
.end method

.method public P()Z
    .registers 2

    .line 580
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->U:Z

    return v0
.end method

.method public Q()Z
    .registers 2

    .line 588
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->L:Z

    return v0
.end method

.method public R()Z
    .registers 2

    .line 596
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->V:Z

    return v0
.end method

.method public S()J
    .registers 3

    .line 604
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/b/b;->O:J

    return-wide v0
.end method

.method public T()J
    .registers 3

    .line 612
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/b/b;->P:J

    return-wide v0
.end method

.method public U()Z
    .registers 2

    .line 620
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->E:Z

    return v0
.end method

.method public V()Ljava/lang/String;
    .registers 2

    .line 628
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->F:Ljava/lang/String;

    return-object v0
.end method

.method public W()Z
    .registers 2

    .line 636
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->G:Z

    return v0
.end method

.method public X()Z
    .registers 2

    .line 644
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->X:Z

    return v0
.end method

.method public Y()Z
    .registers 2

    .line 652
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->Y:Z

    return v0
.end method

.method public Z()Z
    .registers 2

    .line 660
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->aa:Z

    return v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .line 254
    iput p1, p0, Lcom/ss/android/downloadad/a/b/b;->w:I

    .line 255
    return-void
.end method

.method public a(J)V
    .registers 3

    .line 281
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/b/b;->y:J

    .line 282
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 321
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/b;->D:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/b;->t:Lorg/json/JSONObject;

    .line 393
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 383
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->r:Z

    .line 384
    return-void
.end method

.method public aa()Z
    .registers 2

    .line 668
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->Z:Z

    return v0
.end method

.method public ab()Z
    .registers 2

    .line 676
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->ab:Z

    return v0
.end method

.method public ac()Z
    .registers 2

    .line 684
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->ac:Z

    return v0
.end method

.method public ad()Lorg/json/JSONObject;
    .registers 7

    .line 717
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 719
    :try_start_5
    const-string v1, "mId"

    iget-wide v2, p0, Lcom/ss/android/downloadad/a/b/b;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 720
    const-string v1, "mExtValue"

    iget-wide v2, p0, Lcom/ss/android/downloadad/a/b/b;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 721
    const-string v1, "mLogExtra"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    const-string v1, "mDownloadStatus"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/b;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 723
    const-string v1, "mPackageName"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    const-string v1, "mIsAd"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/a/b/b;->r:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 725
    const-string v1, "mTimeStamp"

    iget-wide v2, p0, Lcom/ss/android/downloadad/a/b/b;->s:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 726
    const-string v1, "mExtras"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->t:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    const-string v1, "mVersionCode"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/b;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 728
    const-string v1, "mVersionName"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    const-string v1, "mDownloadId"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/b;->u:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 730
    const-string v1, "mIsV3Event"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/a/b/b;->K:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 731
    const-string v1, "mScene"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/b;->M:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 732
    const-string v1, "mEventTag"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->I:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 733
    const-string v1, "mEventRefer"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 734
    const-string v1, "mDownloadUrl"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 735
    const-string v1, "mEnableBackDialog"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/a/b/b;->v:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 736
    const-string v1, "hasSendInstallFinish"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 737
    const-string v1, "hasSendDownloadFailedFinally"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 738
    const-string v1, "mLastFailedErrCode"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/b;->C:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 739
    const-string v1, "mLastFailedErrMsg"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    const-string v1, "mOpenUrl"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 741
    const-string v1, "mLinkMode"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/b;->l:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 742
    const-string v1, "mDownloadMode"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/b;->m:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 743
    const-string v1, "mModelType"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/b;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 744
    const-string v1, "mAppName"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    const-string v1, "mAppIcon"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    const-string v1, "mDownloadFailedTimes"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/b;->w:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 747
    const-string v1, "mRecentDownloadResumeTime"

    iget-wide v2, p0, Lcom/ss/android/downloadad/a/b/b;->y:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_dd

    iget-wide v2, p0, Lcom/ss/android/downloadad/a/b/b;->s:J

    :cond_dd
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 748
    const-string v1, "mClickPauseTimes"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/b;->x:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 749
    const-string v1, "mJumpInstallTime"

    iget-wide v2, p0, Lcom/ss/android/downloadad/a/b/b;->z:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 750
    const-string v1, "mCancelInstallTime"

    iget-wide v2, p0, Lcom/ss/android/downloadad/a/b/b;->A:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 751
    const-string v1, "mLastFailedResumeCount"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/b;->B:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 752
    const-string v1, "mIsUpdateDownload"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/a/b/b;->E:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 753
    const-string v1, "mOriginMimeType"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 754
    const-string v1, "mIsPatchApplyHandled"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/a/b/b;->G:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 755
    const-string v1, "downloadFinishReason"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->S:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 756
    const-string v1, "clickDownloadTime"

    iget-wide v2, p0, Lcom/ss/android/downloadad/a/b/b;->O:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 757
    const-string v1, "clickDownloadSize"

    iget-wide v2, p0, Lcom/ss/android/downloadad/a/b/b;->P:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 758
    const-string v1, "installAfterCleanSpace"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/a/b/b;->L:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 759
    const-string v1, "funnelType"

    iget v2, p0, Lcom/ss/android/downloadad/a/b/b;->N:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 760
    const-string v1, "webUrl"

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 761
    const-string v1, "enableShowComplianceDialog"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/a/b/b;->Q:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 762
    const-string v1, "isAutoDownloadOnCardShow"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/a/b/b;->R:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 763
    const-string v1, "enable_new_activity"

    iget-boolean v2, p0, Lcom/ss/android/downloadad/a/b/b;->H:Z

    if-eqz v2, :cond_151

    const/4 v2, 0x1

    goto :goto_152

    :cond_151
    const/4 v2, 0x0

    :goto_152
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_155
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_155} :catch_156

    .line 766
    goto :goto_15a

    .line 764
    :catch_156
    move-exception v1

    .line 765
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 767
    :goto_15a
    return-object v0
.end method

.method public ae()Lcom/ss/android/downloadad/a/a/c;
    .registers 6

    .line 854
    new-instance v0, Lcom/ss/android/downloadad/a/a/c$a;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/c$a;-><init>()V

    iget-wide v1, p0, Lcom/ss/android/downloadad/a/b/b;->c:J

    .line 855
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadad/a/a/c$a;->a(J)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/downloadad/a/b/b;->d:J

    .line 856
    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadad/a/a/c$a;->b(J)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/b;->e:Ljava/lang/String;

    .line 857
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/b;->g:Ljava/lang/String;

    .line 858
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/b;->t:Lorg/json/JSONObject;

    .line 859
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->a(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadad/a/b/b;->r:Z

    .line 860
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->a(Z)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadad/a/b/b;->n:I

    .line 861
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->b(I)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/b;->o:Ljava/lang/String;

    .line 862
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->g(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/b;->h:Ljava/lang/String;

    .line 863
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadad/a/b/b;->k:I

    .line 864
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->a(I)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/b;->F:Ljava/lang/String;

    .line 865
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->f(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/b;->p:Ljava/lang/String;

    .line 866
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->e(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/b;->q:Ljava/lang/String;

    .line 867
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->c(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    new-instance v1, Lcom/ss/android/a/a/c/b;

    iget-object v2, p0, Lcom/ss/android/downloadad/a/b/b;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/ss/android/downloadad/a/b/b;->j:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/ss/android/a/a/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/c$a;->a(Lcom/ss/android/a/a/c/b;)Lcom/ss/android/downloadad/a/a/c$a;

    move-result-object v0

    .line 869
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/c$a;->a()Lcom/ss/android/downloadad/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public af()Lcom/ss/android/downloadad/a/a/b;
    .registers 3

    .line 873
    new-instance v0, Lcom/ss/android/downloadad/a/a/b$a;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/b$a;-><init>()V

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/b;->I:Ljava/lang/String;

    .line 874
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadad/a/b/b;->J:Ljava/lang/String;

    .line 875
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->i(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadad/a/b/b;->K:Z

    .line 876
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/b$a;->c(Z)Lcom/ss/android/downloadad/a/a/b$a;

    move-result-object v0

    .line 877
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/b$a;->a()Lcom/ss/android/downloadad/a/a/b;

    move-result-object v0

    .line 873
    return-object v0
.end method

.method public ag()Lcom/ss/android/downloadad/a/a/a;
    .registers 3

    .line 881
    new-instance v0, Lcom/ss/android/downloadad/a/a/a$a;

    invoke-direct {v0}, Lcom/ss/android/downloadad/a/a/a$a;-><init>()V

    iget-boolean v1, p0, Lcom/ss/android/downloadad/a/b/b;->v:Z

    .line 882
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/a$a;->a(Z)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadad/a/b/b;->l:I

    .line 883
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/a$a;->a(I)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/downloadad/a/b/b;->m:I

    .line 884
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/a$a;->b(I)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/downloadad/a/b/b;->Q:Z

    .line 885
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/a/a/a$a;->e(Z)Lcom/ss/android/downloadad/a/a/a$a;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/a/a$a;->a()Lcom/ss/android/downloadad/a/a/a;

    move-result-object v0

    .line 881
    return-object v0
.end method

.method public b()J
    .registers 3

    .line 326
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/b/b;->c:J

    return-wide v0
.end method

.method public b(I)V
    .registers 2

    .line 266
    iput p1, p0, Lcom/ss/android/downloadad/a/b/b;->x:I

    .line 267
    return-void
.end method

.method public b(J)V
    .registers 3

    .line 289
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/b/b;->z:J

    .line 290
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/b;->g:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 421
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->K:Z

    .line 422
    return-void
.end method

.method public c(I)V
    .registers 2

    .line 305
    iput p1, p0, Lcom/ss/android/downloadad/a/b/b;->B:I

    .line 306
    return-void
.end method

.method public c(J)V
    .registers 3

    .line 297
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/b/b;->A:J

    .line 298
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/b;->e:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 475
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->v:Z

    .line 476
    return-void
.end method

.method public c()Z
    .registers 2

    .line 379
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->r:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .registers 2

    .line 313
    iput p1, p0, Lcom/ss/android/downloadad/a/b/b;->C:I

    .line 314
    return-void
.end method

.method public d(J)V
    .registers 3

    .line 330
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/b/b;->c:J

    .line 331
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 400
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/b;->o:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public d(Z)V
    .registers 2

    .line 568
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->T:Z

    .line 569
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .registers 2

    .line 346
    iput p1, p0, Lcom/ss/android/downloadad/a/b/b;->f:I

    .line 347
    return-void
.end method

.method public e(J)V
    .registers 3

    .line 338
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/b/b;->d:J

    .line 339
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 466
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/b;->j:Ljava/lang/String;

    .line 467
    return-void
.end method

.method public e(Z)V
    .registers 2

    .line 584
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->U:Z

    .line 585
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 512
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .registers 2

    .line 396
    iput p1, p0, Lcom/ss/android/downloadad/a/b/b;->n:I

    .line 397
    return-void
.end method

.method public f(J)V
    .registers 5

    .line 363
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    .line 364
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/b/b;->s:J

    .line 366
    :cond_8
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 483
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/b;->I:Ljava/lang/String;

    .line 484
    return-void
.end method

.method public f(Z)V
    .registers 2

    .line 592
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->L:Z

    .line 593
    return-void
.end method

.method public g()Lorg/json/JSONObject;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->t:Lorg/json/JSONObject;

    return-object v0
.end method

.method public g(I)V
    .registers 2

    .line 412
    iput p1, p0, Lcom/ss/android/downloadad/a/b/b;->u:I

    .line 413
    return-void
.end method

.method public g(J)V
    .registers 3

    .line 516
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/b/b;->W:J

    .line 517
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 491
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/b;->J:Ljava/lang/String;

    .line 492
    return-void
.end method

.method public g(Z)V
    .registers 2

    .line 600
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->V:Z

    .line 601
    return-void
.end method

.method public h()I
    .registers 2

    .line 471
    iget v0, p0, Lcom/ss/android/downloadad/a/b/b;->N:I

    return v0
.end method

.method public h(I)V
    .registers 2

    .line 454
    iput p1, p0, Lcom/ss/android/downloadad/a/b/b;->M:I

    .line 455
    return-void
.end method

.method public h(J)V
    .registers 3

    .line 608
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/b/b;->O:J

    .line 609
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .line 499
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/b;->h:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public h(Z)V
    .registers 2

    .line 624
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->E:Z

    .line 625
    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 495
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->J:Ljava/lang/String;

    return-object v0
.end method

.method public i(I)V
    .registers 2

    .line 462
    iput p1, p0, Lcom/ss/android/downloadad/a/b/b;->N:I

    .line 463
    return-void
.end method

.method public i(J)V
    .registers 3

    .line 616
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/b/b;->P:J

    .line 617
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 507
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/b;->i:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public i(Z)V
    .registers 2

    .line 640
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->G:Z

    .line 641
    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 487
    iget-object v0, p0, Lcom/ss/android/downloadad/a/b/b;->I:Ljava/lang/String;

    return-object v0
.end method

.method public j(I)V
    .registers 2

    .line 540
    iput p1, p0, Lcom/ss/android/downloadad/a/b/b;->l:I

    .line 541
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    .line 524
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/b;->p:Ljava/lang/String;

    .line 525
    return-void
.end method

.method public j(Z)V
    .registers 2

    .line 648
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->X:Z

    .line 649
    return-void
.end method

.method public k()Lorg/json/JSONObject;
    .registers 2

    .line 450
    const/4 v0, 0x0

    return-object v0
.end method

.method public k(I)V
    .registers 2

    .line 548
    iput p1, p0, Lcom/ss/android/downloadad/a/b/b;->m:I

    .line 549
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 532
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/b;->q:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public k(Z)V
    .registers 2

    .line 656
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->Y:Z

    .line 657
    return-void
.end method

.method public l()J
    .registers 3

    .line 334
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/b/b;->d:J

    return-wide v0
.end method

.method public l(I)V
    .registers 2

    .line 556
    iput p1, p0, Lcom/ss/android/downloadad/a/b/b;->k:I

    .line 557
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .registers 2

    .line 576
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/b;->S:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public l(Z)V
    .registers 2

    .line 664
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->aa:Z

    .line 665
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    .line 632
    iput-object p1, p0, Lcom/ss/android/downloadad/a/b/b;->F:Ljava/lang/String;

    .line 633
    return-void
.end method

.method public m(Z)V
    .registers 2

    .line 672
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->Z:Z

    .line 673
    return-void
.end method

.method public m()Z
    .registers 2

    .line 425
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->K:Z

    return v0
.end method

.method public n()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    const/4 v0, 0x0

    return-object v0
.end method

.method public n(Z)V
    .registers 2

    .line 680
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->ab:Z

    .line 681
    return-void
.end method

.method public o()Ljava/lang/Object;
    .registers 2

    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method public o(Z)V
    .registers 2

    .line 688
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->ac:Z

    .line 689
    return-void
.end method

.method public p()Lorg/json/JSONObject;
    .registers 2

    .line 445
    const/4 v0, 0x0

    return-object v0
.end method

.method public p(Z)V
    .registers 2

    .line 696
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->Q:Z

    .line 697
    return-void
.end method

.method public q(Z)V
    .registers 2

    .line 704
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->R:Z

    .line 705
    return-void
.end method

.method public q()Z
    .registers 2

    .line 709
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/b/b;->H:Z

    return v0
.end method

.method public r()Lorg/json/JSONObject;
    .registers 2

    .line 435
    const/4 v0, 0x0

    return-object v0
.end method

.method public r(Z)V
    .registers 2

    .line 713
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/b/b;->H:Z

    .line 714
    return-void
.end method

.method public s()I
    .registers 2

    .line 417
    iget v0, p0, Lcom/ss/android/downloadad/a/b/b;->u:I

    return v0
.end method

.method public t()Lcom/ss/android/a/a/b/c;
    .registers 2

    .line 840
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->ae()Lcom/ss/android/downloadad/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/ss/android/a/a/b/b;
    .registers 2

    .line 845
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->af()Lcom/ss/android/downloadad/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/ss/android/a/a/b/a;
    .registers 2

    .line 850
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/b/b;->ag()Lcom/ss/android/downloadad/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public w()I
    .registers 2

    .line 250
    iget v0, p0, Lcom/ss/android/downloadad/a/b/b;->w:I

    return v0
.end method

.method public declared-synchronized x()V
    .registers 2

    monitor-enter p0

    .line 258
    :try_start_1
    iget v0, p0, Lcom/ss/android/downloadad/a/b/b;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/downloadad/a/b/b;->w:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 259
    monitor-exit p0

    return-void

    .line 257
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public y()I
    .registers 2

    .line 262
    iget v0, p0, Lcom/ss/android/downloadad/a/b/b;->x:I

    return v0
.end method

.method public declared-synchronized z()V
    .registers 2

    monitor-enter p0

    .line 270
    :try_start_1
    iget v0, p0, Lcom/ss/android/downloadad/a/b/b;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/downloadad/a/b/b;->x:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 271
    monitor-exit p0

    return-void

    .line 269
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
