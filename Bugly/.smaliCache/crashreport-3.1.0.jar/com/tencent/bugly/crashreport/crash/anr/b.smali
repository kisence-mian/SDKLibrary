.class public final Lcom/tencent/bugly/crashreport/crash/anr/b;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/proguard/ac;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:J

.field private final c:Landroid/content/Context;

.field private final d:Lcom/tencent/bugly/crashreport/common/info/a;

.field private final e:Lcom/tencent/bugly/proguard/w;

.field private final f:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/tencent/bugly/crashreport/crash/b;

.field private i:Landroid/os/FileObserver;

.field private j:Z

.field private k:Lcom/tencent/bugly/proguard/ab;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/proguard/w;Lcom/tencent/bugly/crashreport/crash/b;)V
    .registers 10

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->b:J

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->j:Z

    .line 90
    invoke-static {p1}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->c:Landroid/content/Context;

    .line 91
    const-string v0, "bugly"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->g:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 94
    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->e:Lcom/tencent/bugly/proguard/w;

    .line 95
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 96
    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->h:Lcom/tencent/bugly/crashreport/crash/b;

    .line 97
    return-void
.end method

.method private static a(Landroid/content/Context;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    .registers 9

    .line 104
    nop

    .line 105
    :try_start_1
    const-string p1, "to find!"

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 106
    const-string p1, "activity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 108
    const-wide/16 v0, 0x14

    .line 109
    move p1, p2

    .line 111
    :goto_14
    const-string v2, "waiting!"

    new-array v3, p2, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_3e

    .line 114
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 115
    iget v4, v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_25

    .line 116
    const-string p0, "found!"

    new-array p1, p2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 119
    return-object v3

    .line 123
    :cond_3e
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/z;->b(J)V

    .line 124
    add-int/lit8 v2, p1, 0x1

    int-to-long v3, p1

    cmp-long p1, v3, v0

    if-ltz p1, :cond_52

    .line 125
    const-string p0, "end!"

    new-array p1, p2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_51} :catch_54

    .line 128
    goto :goto_58

    .line 124
    :cond_52
    move p1, v2

    goto :goto_14

    .line 126
    :catch_54
    move-exception p0

    .line 127
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    .line 129
    :goto_58
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/tencent/bugly/crashreport/crash/anr/a;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .registers 6

    .line 163
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    invoke-direct {v0}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>()V

    .line 166
    :try_start_5
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->k()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    .line 167
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->i()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    .line 168
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/b;->m()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    .line 169
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->p()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    .line 170
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->o()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    .line 171
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->q()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    .line 172
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->c:Landroid/content/Context;

    sget v2, Lcom/tencent/bugly/crashreport/crash/c;->e:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/proguard/z;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    .line 174
    const/4 v1, 0x3

    iput v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    .line 175
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->w()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    .line 179
    const-string v1, "ANR_EXCEPTION"

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    .line 180
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    .line 181
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    .line 182
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    .line 183
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    const-string v2, "BUGLY_CR_01"

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->e:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const/4 v1, -0x1

    .line 186
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    if-eqz v2, :cond_84

    .line 187
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 189
    :cond_84
    if-lez v1, :cond_8e

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_90

    :cond_8e
    const-string v1, "GET_FAIL"

    :goto_90
    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    .line 192
    iget-wide v1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->c:J

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    .line 193
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    if-eqz v1, :cond_a6

    .line 194
    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/z;->b([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    .line 197
    :cond_a6
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->b:Ljava/util/Map;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    .line 198
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    .line 199
    const-string v1, "main(1)"

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->y()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->v()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    .line 202
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->J()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    .line 203
    iget-object p1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    .line 204
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object p1, p1, Lcom/tencent/bugly/crashreport/common/info/a;->n:Ljava/lang/String;

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    .line 205
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-wide v1, p1, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    iput-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:J

    .line 206
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a()Z

    move-result p1

    iput-boolean p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Z

    .line 209
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->H()I

    move-result p1

    iput p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:I

    .line 210
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->I()I

    move-result p1

    iput p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:I

    .line 211
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->B()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    .line 212
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->d:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->G()Ljava/util/Map;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    .line 214
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->h:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {p1, v0}, Lcom/tencent/bugly/crashreport/crash/b;->c(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 215
    invoke-static {}, Lcom/tencent/bugly/proguard/y;->a()[B

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B
    :try_end_10d
    .catchall {:try_start_5 .. :try_end_10d} :catchall_10e

    .line 220
    goto :goto_118

    .line 216
    :catchall_10e
    move-exception p1

    .line 217
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_118

    .line 218
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    :cond_118
    :goto_118
    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/util/Map;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 320
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bugly/bugly_trace_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Lcom/tencent/bugly/crashreport/crash/anr/a;

    invoke-direct {p1}, Lcom/tencent/bugly/crashreport/crash/anr/a;-><init>()V

    iput-wide p4, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->c:J

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->d:Ljava/lang/String;

    const-string p4, ""

    if-eqz p3, :cond_32

    iget-object p5, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    goto :goto_33

    :cond_32
    move-object p5, p4

    :goto_33
    iput-object p5, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->a:Ljava/lang/String;

    if-eqz p3, :cond_3a

    iget-object p5, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    goto :goto_3b

    :cond_3a
    move-object p5, p4

    :goto_3b
    iput-object p5, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->f:Ljava/lang/String;

    if-eqz p3, :cond_41

    iget-object p4, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    :cond_41
    iput-object p4, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->e:Ljava/lang/String;

    iput-object p6, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->b:Ljava/util/Map;

    if-eqz p6, :cond_6c

    invoke-interface {p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4f
    :goto_4f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string p5, "main("

    invoke-virtual {p4, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_4f

    invoke-interface {p6, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iput-object p4, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->g:Ljava/lang/String;

    goto :goto_4f

    :cond_6c
    const/4 p3, 0x6

    new-array p3, p3, [Ljava/lang/Object;

    iget-wide p4, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->c:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p3, p5

    iget-object p4, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->d:Ljava/lang/String;

    const/4 p6, 0x1

    aput-object p4, p3, p6

    const/4 p4, 0x2

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->a:Ljava/lang/String;

    aput-object v0, p3, p4

    iget-object p4, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->f:Ljava/lang/String;

    const/4 v0, 0x3

    aput-object p4, p3, v0

    const/4 p4, 0x4

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->e:Ljava/lang/String;

    aput-object v1, p3, p4

    const/4 p4, 0x5

    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->b:Ljava/util/Map;

    if-nez v1, :cond_93

    move v1, p5

    goto :goto_99

    :cond_93
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    :goto_99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, p4

    const-string p4, "anr tm:%d\ntr:%s\nproc:%s\nsMsg:%s\n lMsg:%s\n threads:%d"

    invoke-static {p4, p3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 321
    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {p3}, Lcom/tencent/bugly/crashreport/common/strategy/a;->b()Z

    move-result p3

    if-nez p3, :cond_c4

    .line 322
    new-array p2, p5, [Ljava/lang/Object;

    const-string p3, "crash report sync remote fail, will not upload to Bugly , print local for helpful!"

    invoke-static {p3, p2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 324
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->e:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v0, "ANR"

    const-string v3, "main"

    invoke-static/range {v0 .. v5}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 326
    return p5

    .line 329
    :cond_c4
    iget-object p3, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->f:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {p3}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object p3

    .line 330
    iget-boolean p3, p3, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    if-nez p3, :cond_d6

    .line 331
    new-array p1, p5, [Ljava/lang/Object;

    const-string p2, "ANR Report is closed!"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 332
    return p5

    .line 335
    :cond_d6
    new-array p3, p5, [Ljava/lang/Object;

    const-string p4, "found visiable anr , start to upload!"

    invoke-static {p4, p3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 336
    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Lcom/tencent/bugly/crashreport/crash/anr/a;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object p3

    .line 338
    if-nez p3, :cond_eb

    .line 339
    new-array p1, p5, [Ljava/lang/Object;

    const-string p2, "pack anr fail!"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 340
    return p5

    .line 343
    :cond_eb
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/tencent/bugly/crashreport/crash/c;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 344
    iget-wide v1, p3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    const-wide/16 v3, 0x0

    cmp-long p4, v1, v3

    if-ltz p4, :cond_102

    .line 345
    new-array p4, p5, [Ljava/lang/Object;

    const-string v1, "backup anr record success!"

    invoke-static {v1, p4}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_109

    .line 347
    :cond_102
    new-array p4, p5, [Ljava/lang/Object;

    const-string v1, "backup anr record fail!"

    invoke-static {v1, p4}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 351
    :goto_109
    if-eqz p2, :cond_12c

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_12c

    .line 352
    iget-object p4, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 353
    iget-object p4, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->a:Ljava/lang/String;

    invoke-static {p2, p4, v0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 354
    if-eqz p2, :cond_12c

    .line 355
    new-array p2, p5, [Ljava/lang/Object;

    const-string p4, "backup trace success"

    invoke-static {p4, p2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 359
    :cond_12c
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->a:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/bugly/crashreport/crash/anr/a;->e:Ljava/lang/String;

    const-string v1, "ANR"

    const-string v4, "main"

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 362
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->h:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {p1, p3}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z

    move-result p1

    if-nez p1, :cond_14b

    .line 363
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->h:Lcom/tencent/bugly/crashreport/crash/b;

    const-wide/16 p4, 0xbb8

    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/tencent/bugly/crashreport/crash/b;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V

    .line 365
    :cond_14b
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->h:Lcom/tencent/bugly/crashreport/crash/b;

    invoke-virtual {p1, p3}, Lcom/tencent/bugly/crashreport/crash/b;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 366
    return p6
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 19

    .line 228
    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const-string v2, "main"

    const-string v3, ":"

    const/4 v4, 0x1

    move-object/from16 v5, p0

    invoke-static {v0, v5, v4}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->readTargetDumpInfo(Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;

    move-result-object v5

    .line 229
    const/4 v6, 0x0

    if-eqz v5, :cond_1d6

    iget-object v7, v5, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    if-eqz v7, :cond_1d6

    iget-object v7, v5, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-gtz v7, :cond_20

    goto/16 :goto_1d6

    .line 234
    :cond_20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    const/4 v7, 0x2

    :try_start_26
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_40

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3d

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 241
    :cond_3d
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_19f

    .line 251
    :cond_40
    nop

    .line 253
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_195

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-nez v8, :cond_4f

    goto/16 :goto_195

    .line 258
    :cond_4f
    const/4 v1, 0x0

    .line 261
    :try_start_50
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v0, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5a} :catch_13d
    .catchall {:try_start_50 .. :try_end_5a} :catchall_13a

    .line 263
    :try_start_5a
    iget-object v0, v5, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_62} :catch_137
    .catchall {:try_start_5a .. :try_end_62} :catchall_133

    .line 264
    const-string v1, "\n\n"

    const-string v9, "\n"

    const-string v10, " :\n"

    const/4 v11, 0x3

    if-eqz v0, :cond_9d

    :try_start_6b
    array-length v12, v0

    if-lt v12, v11, :cond_9d

    .line 265
    aget-object v12, v0, v6

    .line 266
    aget-object v13, v0, v4

    .line 267
    aget-object v0, v0, v7

    .line 268
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\"main\" tid="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 272
    :cond_9d
    iget-object v0, v5, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_123

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_121

    .line 274
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_11f

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    array-length v12, v12

    if-lt v12, v11, :cond_11f

    .line 278
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    aget-object v12, v12, v6

    .line 279
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    aget-object v13, v13, v4

    .line 280
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    aget-object v14, v14, v7

    .line 281
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "\" tid="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_11f} :catch_137
    .catchall {:try_start_6b .. :try_end_11f} :catchall_133

    .line 285
    :cond_11f
    const/4 v11, 0x3

    goto :goto_a7

    .line 273
    :cond_121
    const/4 v11, 0x3

    goto :goto_a7

    .line 286
    :cond_123
    :try_start_123
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_127

    .line 301
    goto :goto_132

    .line 297
    :catch_127
    move-exception v0

    move-object v1, v0

    .line 298
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_132

    .line 299
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 301
    :cond_132
    :goto_132
    return v4

    .line 294
    :catchall_133
    move-exception v0

    move-object v2, v0

    move-object v1, v8

    goto :goto_183

    .line 287
    :catch_137
    move-exception v0

    move-object v1, v8

    goto :goto_13e

    .line 294
    :catchall_13a
    move-exception v0

    move-object v2, v0

    goto :goto_183

    .line 287
    :catch_13d
    move-exception v0

    .line 288
    :goto_13e
    :try_start_13e
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_147

    .line 289
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 291
    :cond_147
    const-string v2, "dump trace fail %s"

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_171
    .catchall {:try_start_13e .. :try_end_171} :catchall_13a

    .line 292
    if-eqz v1, :cond_182

    .line 296
    :try_start_173
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_177

    .line 301
    goto :goto_182

    .line 297
    :catch_177
    move-exception v0

    move-object v1, v0

    .line 298
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_182

    .line 299
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 301
    :cond_182
    :goto_182
    return v6

    .line 294
    :goto_183
    if-eqz v1, :cond_194

    .line 296
    :try_start_185
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_189

    .line 301
    goto :goto_194

    .line 297
    :catch_189
    move-exception v0

    move-object v1, v0

    .line 298
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_194

    .line 299
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 301
    :cond_194
    :goto_194
    throw v2

    .line 254
    :cond_195
    :goto_195
    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v6

    const-string v1, "backup file create fail %s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 255
    return v6

    .line 244
    :catch_19f
    move-exception v0

    .line 245
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1a9

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    :cond_1a9
    new-array v2, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    aput-object v1, v2, v4

    const-string v0, "backup file create error! %s  %s"

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 250
    return v6

    .line 230
    :cond_1d6
    :goto_1d6
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v6

    const-string v0, "not found trace dump for %s"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 231
    return v6
.end method

.method private declared-synchronized b(Z)V
    .registers 2

    monitor-enter p0

    .line 539
    if-eqz p1, :cond_8

    .line 540
    :try_start_3
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->e()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_d

    monitor-exit p0

    return-void

    .line 542
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->f()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_d

    .line 544
    monitor-exit p0

    return-void

    .line 538
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c(Z)V
    .registers 6

    monitor-enter p0

    .line 557
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->j:Z

    if-eq v0, p1, :cond_16

    .line 558
    const-string v0, "user change anr %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 559
    iput-boolean p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->j:Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 561
    :cond_16
    monitor-exit p0

    return-void

    .line 556
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized e()V
    .registers 5

    monitor-enter p0

    .line 461
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 462
    const-string v0, "start when started!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_48

    .line 463
    monitor-exit p0

    return-void

    .line 466
    :cond_11
    :try_start_11
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/anr/b$1;

    const-string v2, "/data/anr/"

    const/16 v3, 0x8

    invoke-direct {v0, p0, v2, v3}, Lcom/tencent/bugly/crashreport/crash/anr/b$1;-><init>(Lcom/tencent/bugly/crashreport/crash/anr/b;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_48

    .line 484
    :try_start_1c
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 485
    const-string v0, "start anr monitor!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 486
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->e:Lcom/tencent/bugly/proguard/w;

    new-instance v2, Lcom/tencent/bugly/crashreport/crash/anr/b$2;

    invoke-direct {v2, p0}, Lcom/tencent/bugly/crashreport/crash/anr/b$2;-><init>(Lcom/tencent/bugly/crashreport/crash/anr/b;)V

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_32

    .line 499
    monitor-exit p0

    return-void

    .line 493
    :catchall_32
    move-exception v0

    .line 494
    const/4 v2, 0x0

    :try_start_34
    iput-object v2, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;

    .line 495
    const-string v2, "start anr monitor failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 496
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 497
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_48

    .line 501
    :cond_46
    monitor-exit p0

    return-void

    .line 460
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .registers 4

    monitor-enter p0

    .line 507
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 508
    const-string v0, "close when closed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_35

    .line 509
    monitor-exit p0

    return-void

    .line 514
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;

    .line 516
    const-string v0, "close anr monitor!"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_22

    .line 522
    monitor-exit p0

    return-void

    .line 517
    :catchall_22
    move-exception v0

    .line 518
    :try_start_23
    const-string v2, "stop anr monitor failed!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 519
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 520
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_35

    .line 524
    :cond_33
    monitor-exit p0

    return-void

    .line 506
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Z
    .registers 2

    monitor-enter p0

    .line 530
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->i:Landroid/os/FileObserver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 530
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()Z
    .registers 2

    monitor-enter p0

    .line 550
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 550
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .registers 7

    monitor-enter p0

    .line 632
    if-nez p1, :cond_5

    .line 633
    monitor-exit p0

    return-void

    .line 636
    :cond_5
    :try_start_5
    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->g()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1e

    .line 637
    const-string v0, "server anr changed to %b"

    new-array v1, v3, [Ljava/lang/Object;

    iget-boolean v4, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 640
    :cond_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_49

    .line 642
    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    if-eqz p1, :cond_30

    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->h()Z

    move-result p1

    if-eqz p1, :cond_30

    move p1, v3

    goto :goto_31

    :cond_30
    move p1, v2

    .line 643
    :goto_31
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->g()Z

    move-result v0

    if-eq p1, v0, :cond_47

    .line 644
    const-string v0, "anr changed to %b"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 645
    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->b(Z)V
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_57

    .line 647
    :cond_47
    monitor-exit p0

    return-void

    .line 648
    :cond_49
    :try_start_49
    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->j:Z

    if-eqz p1, :cond_52

    .line 649
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->c()Z
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_57

    monitor-exit p0

    return-void

    .line 651
    :cond_52
    :try_start_52
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->d()Z
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_57

    .line 655
    monitor-exit p0

    return-void

    .line 631
    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 12

    .line 377
    monitor-enter p0

    .line 378
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 379
    const-string p1, "trace started return "

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 380
    monitor-exit p0

    return-void

    .line 382
    :cond_13
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 383
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_e9

    .line 389
    :try_start_1a
    const-string v0, "read trace first dump for create time!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 390
    nop

    .line 391
    invoke-static {p1, v1}, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper;->readFirstDumpInfo(Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;

    move-result-object v0

    .line 392
    const-wide/16 v3, -0x1

    if-eqz v0, :cond_2d

    .line 393
    iget-wide v5, v0, Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;->c:J

    goto :goto_2e

    .line 392
    :cond_2d
    move-wide v5, v3

    .line 396
    :goto_2e
    cmp-long v0, v5, v3

    if-nez v0, :cond_3f

    .line 398
    const-string v0, "trace dump fail could not get time!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v7, v5

    goto :goto_40

    .line 396
    :cond_3f
    move-wide v7, v5

    .line 402
    :goto_40
    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->b:J

    sub-long v3, v7, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-gez v0, :cond_63

    .line 403
    const-string p1, "should not process ANR too Fre in %d"

    new-array v0, v2, [Ljava/lang/Object;

    const/16 v3, 0x2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_1a .. :try_end_5d} :catchall_c6

    .line 451
    :goto_5d
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    .line 407
    :cond_63
    :try_start_63
    iput-wide v7, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->b:J

    .line 410
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_c6

    .line 412
    :try_start_6a
    sget v0, Lcom/tencent/bugly/crashreport/crash/c;->f:I

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/z;->a(IZ)Ljava/util/Map;

    move-result-object v9
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_ba

    .line 421
    nop

    .line 423
    if-eqz v9, :cond_b2

    :try_start_73
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_7a

    goto :goto_b2

    .line 428
    :cond_7a
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->c:Landroid/content/Context;

    invoke-static {v0, v5, v6}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Landroid/content/Context;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v6

    .line 431
    if-nez v6, :cond_8a

    .line 433
    const-string p1, "proc state is unvisiable!"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5d

    .line 437
    :cond_8a
    iget v0, v6, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v0, v3, :cond_9e

    .line 438
    const-string p1, "not mind proc!"

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v3, v6, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5d

    .line 442
    :cond_9e
    const-string v0, "found visiable anr , start to process!"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 444
    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->c:Landroid/content/Context;

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/util/Map;)Z
    :try_end_ac
    .catchall {:try_start_73 .. :try_end_ac} :catchall_c6

    .line 451
    :goto_ac
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 452
    return-void

    .line 424
    :cond_b2
    :goto_b2
    :try_start_b2
    const-string p1, "can\'t get all thread skip this anr"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5d

    .line 417
    :catchall_ba
    move-exception p1

    .line 418
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 419
    const-string p1, "get all thread stack fail!"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_c5
    .catchall {:try_start_b2 .. :try_end_c5} :catchall_c6

    goto :goto_5d

    .line 445
    :catchall_c6
    move-exception p1

    .line 446
    :try_start_c7
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d0

    .line 447
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 449
    :cond_d0
    const-string v0, "handle anr error %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_e1
    .catchall {:try_start_c7 .. :try_end_e1} :catchall_e2

    goto :goto_ac

    .line 451
    :catchall_e2
    move-exception p1

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    throw p1

    .line 383
    :catchall_e9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Z)V
    .registers 5

    .line 568
    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->c(Z)V

    .line 571
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->h()Z

    move-result p1

    .line 572
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v0

    .line 573
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1c

    .line 574
    if-eqz p1, :cond_1b

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    if-eqz p1, :cond_1b

    move p1, v2

    goto :goto_1c

    :cond_1b
    move p1, v1

    .line 576
    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/anr/b;->g()Z

    move-result v0

    if-eq p1, v0, :cond_32

    .line 577
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "anr changed to %b"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 578
    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/crash/anr/b;->b(Z)V

    .line 580
    :cond_32
    return-void
.end method

.method public final a()Z
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/lang/Thread;)Z
    .registers 13

    .line 678
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 679
    nop

    .line 680
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "main"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    .line 681
    move p1, v0

    goto :goto_17

    .line 680
    :cond_16
    move p1, v1

    .line 683
    :goto_17
    if-eqz p1, :cond_5d

    .line 684
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->c:Landroid/content/Context;

    const-wide/16 v2, 0x2710

    invoke-static {p1, v2, v3}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Landroid/content/Context;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v7

    .line 687
    if-nez v7, :cond_2b

    .line 689
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "anr handler onThreadBlock proc state is unvisiable!"

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 690
    return v1

    .line 693
    :cond_2b
    iget p1, v7, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq p1, v2, :cond_3f

    .line 694
    new-array p1, v0, [Ljava/lang/Object;

    iget-object v0, v7, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    aput-object v0, p1, v1

    const-string v0, "onThreadBlock not mind proc!"

    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 695
    return v1

    .line 699
    :cond_3f
    const p1, 0x30d40

    :try_start_42
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/z;->a(IZ)Ljava/util/Map;

    move-result-object v10
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_5b

    .line 703
    nop

    .line 705
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "onThreadBlock found visiable anr , start to process!"

    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 706
    iget-object v5, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v6, ""

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/util/Map;)Z

    .line 707
    goto :goto_64

    .line 701
    :catchall_5b
    move-exception p1

    .line 702
    return v1

    .line 708
    :cond_5d
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "anr handler onThreadBlock only care main thread"

    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 710
    :goto_64
    return v0
.end method

.method protected final b()V
    .registers 15

    .line 586
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/bugly/crashreport/crash/c;->g:J

    sub-long/2addr v0, v2

    .line 587
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->g:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 590
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 591
    if-eqz v2, :cond_88

    array-length v3, v2

    if-nez v3, :cond_24

    goto :goto_88

    .line 594
    :cond_24
    const-string v3, "bugly_trace_"

    .line 595
    const-string v4, ".txt"

    .line 596
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 597
    nop

    .line 598
    array-length v6, v2

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_31
    if-ge v8, v6, :cond_73

    aget-object v10, v2, v8

    .line 599
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 600
    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12
    :try_end_3d
    .catchall {:try_start_1a .. :try_end_3d} :catchall_89

    if-eqz v12, :cond_70

    .line 602
    :try_start_3f
    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 603
    if-lez v12, :cond_52

    .line 604
    invoke-virtual {v11, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_4d
    .catchall {:try_start_3f .. :try_end_4d} :catchall_53

    .line 605
    cmp-long v11, v11, v0

    if-ltz v11, :cond_52

    .line 606
    goto :goto_70

    .line 611
    :cond_52
    goto :goto_68

    .line 609
    :catchall_53
    move-exception v12

    .line 610
    :try_start_54
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Trace file that has invalid format: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v7, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 614
    :goto_68
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_70

    .line 615
    add-int/lit8 v9, v9, 0x1

    .line 598
    :cond_70
    :goto_70
    add-int/lit8 v8, v8, 0x1

    goto :goto_31

    .line 619
    :cond_73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Number of overdue trace files that has deleted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_87
    .catchall {:try_start_54 .. :try_end_87} :catchall_89

    .line 622
    return-void

    .line 592
    :cond_88
    :goto_88
    return-void

    .line 620
    :catchall_89
    move-exception v0

    .line 621
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    .line 624
    :cond_8d
    return-void
.end method

.method public final c()Z
    .registers 5

    .line 717
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->k:Lcom/tencent/bugly/proguard/ab;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ab;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 719
    const/4 v0, 0x0

    return v0

    .line 721
    :cond_c
    new-instance v0, Lcom/tencent/bugly/proguard/ab;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ab;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->k:Lcom/tencent/bugly/proguard/ab;

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bugly-ThreadMonitor"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->l:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ab;->setName(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->k:Lcom/tencent/bugly/proguard/ab;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ab;->a()V

    .line 724
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->k:Lcom/tencent/bugly/proguard/ab;

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/ab;->a(Lcom/tencent/bugly/proguard/ac;)V

    .line 725
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->k:Lcom/tencent/bugly/proguard/ab;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ab;->d()Z

    move-result v0

    .line 727
    return v0
.end method

.method public final d()Z
    .registers 3

    .line 734
    nop

    .line 735
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->k:Lcom/tencent/bugly/proguard/ab;

    if-eqz v0, :cond_17

    .line 736
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ab;->b()V

    .line 737
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->k:Lcom/tencent/bugly/proguard/ab;

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/ab;->b(Lcom/tencent/bugly/proguard/ac;)V

    .line 738
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->k:Lcom/tencent/bugly/proguard/ab;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ab;->c()Z

    move-result v0

    .line 739
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b;->k:Lcom/tencent/bugly/proguard/ab;

    goto :goto_18

    .line 735
    :cond_17
    const/4 v0, 0x0

    .line 741
    :goto_18
    return v0
.end method
