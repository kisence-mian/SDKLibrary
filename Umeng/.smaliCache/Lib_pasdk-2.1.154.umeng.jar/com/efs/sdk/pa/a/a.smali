.class public final Lcom/efs/sdk/pa/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field volatile a:Z

.field final b:Landroid/os/Handler;

.field final c:Ljava/lang/Thread;

.field d:J

.field e:J

.field f:Z

.field g:Landroid/os/Handler;

.field h:Lcom/efs/sdk/pa/PAANRListener;

.field i:J

.field j:J

.field final k:J

.field l:Z

.field final m:Ljava/lang/Runnable;

.field final n:Ljava/lang/Runnable;

.field private o:Landroid/os/HandlerThread;

.field private p:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;J)V
    .registers 5

    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/efs/sdk/pa/a/a;-><init>(Landroid/app/Application;JZ)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;JZ)V
    .registers 9

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/efs/sdk/pa/a/a;->a:Z

    .line 41
    const-wide/16 v1, 0x4

    iput-wide v1, p0, Lcom/efs/sdk/pa/a/a;->e:J

    .line 42
    iput-boolean v0, p0, Lcom/efs/sdk/pa/a/a;->f:Z

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/efs/sdk/pa/a/a;->i:J

    .line 54
    new-instance v0, Lcom/efs/sdk/pa/a/a$1;

    invoke-direct {v0, p0}, Lcom/efs/sdk/pa/a/a$1;-><init>(Lcom/efs/sdk/pa/a/a;)V

    iput-object v0, p0, Lcom/efs/sdk/pa/a/a;->m:Ljava/lang/Runnable;

    .line 88
    new-instance v0, Lcom/efs/sdk/pa/a/a$2;

    invoke-direct {v0, p0}, Lcom/efs/sdk/pa/a/a$2;-><init>(Lcom/efs/sdk/pa/a/a;)V

    iput-object v0, p0, Lcom/efs/sdk/pa/a/a;->n:Ljava/lang/Runnable;

    .line 100
    iput-wide p2, p0, Lcom/efs/sdk/pa/a/a;->k:J

    .line 101
    iput-object p1, p0, Lcom/efs/sdk/pa/a/a;->p:Landroid/app/Application;

    .line 102
    iput-boolean p4, p0, Lcom/efs/sdk/pa/a/a;->l:Z

    .line 104
    long-to-float p1, p2

    const p4, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, p4

    float-to-long v0, p1

    iget-wide v2, p0, Lcom/efs/sdk/pa/a/a;->e:J

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/efs/sdk/pa/a/a;->d:J

    .line 105
    const-wide/16 v2, 0x64

    cmp-long p1, v0, v2

    if-gez p1, :cond_3b

    .line 106
    iput-wide v2, p0, Lcom/efs/sdk/pa/a/a;->d:J

    .line 107
    div-long/2addr p2, v2

    iput-wide p2, p0, Lcom/efs/sdk/pa/a/a;->e:J

    .line 110
    :cond_3b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "anrTrace, final mAnrBeatTime:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/efs/sdk/pa/a/a;->d:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mAnrBeatRate:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide p2, p0, Lcom/efs/sdk/pa/a/a;->d:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Matrix.AnrTracer"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/efs/sdk/pa/a/a;->c:Ljava/lang/Thread;

    .line 114
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/efs/sdk/pa/a/a;->b:Landroid/os/Handler;

    .line 116
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ANR HANDLER THREAD"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/efs/sdk/pa/a/a;->o:Landroid/os/HandlerThread;

    .line 117
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/efs/sdk/pa/a/a;->o:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/efs/sdk/pa/a/a;->g:Landroid/os/Handler;

    .line 119
    return-void
.end method

.method static a(Ljava/lang/Thread;)Ljava/lang/String;
    .registers 7

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 204
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v2, :cond_45

    aget-object v4, v1, v3

    .line 212
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    const-string v5, "  at  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 218
    :cond_45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/StringBuilder;)Z
    .registers 16

    .line 144
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 147
    return v2

    .line 149
    :cond_10
    nop

    .line 150
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    .line 152
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    .line 153
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    const/16 v10, 0xa

    const-string v11, "  at  "

    const-string v12, "\n"

    const-string v13, " "

    cmp-long v14, v6, v8

    if-nez v14, :cond_8d

    .line 154
    nop

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v5}, Ljava/lang/Thread;->getPriority()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v5}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    array-length v5, v4

    const/4 v6, 0x0

    :goto_71
    if-ge v6, v5, :cond_85

    aget-object v7, v4, v6

    .line 165
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v6, v6, 0x1

    goto :goto_71

    .line 171
    :cond_85
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 174
    const/4 v3, 0x1

    goto :goto_17

    .line 175
    :cond_8d
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v5}, Ljava/lang/Thread;->getPriority()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v5}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    array-length v5, v4

    const/4 v6, 0x0

    :goto_ad
    if-ge v6, v5, :cond_c1

    aget-object v7, v4, v6

    .line 183
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    .line 184
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto :goto_ad

    .line 189
    :cond_c1
    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    goto/16 :goto_17

    .line 193
    :cond_c6
    if-nez v3, :cond_d7

    .line 194
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lcom/efs/sdk/pa/a/a;->a(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_d7
    return v1
.end method
