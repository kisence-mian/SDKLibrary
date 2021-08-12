.class public Lcom/bytedance/embedapplog/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/q$a;
    }
.end annotation


# static fields
.field private static f:J

.field private static o:Lcom/bytedance/embedapplog/q$a;


# instance fields
.field a:Ljava/lang/String;

.field private final b:Lcom/bytedance/embedapplog/z;

.field private final c:Lcom/bytedance/embedapplog/aa;

.field private d:Lcom/bytedance/embedapplog/ay;

.field private e:Lcom/bytedance/embedapplog/ay;

.field private g:J

.field private h:I

.field private i:J

.field private volatile j:Z

.field private k:J

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Lcom/bytedance/embedapplog/aw;


# direct methods
.method constructor <init>(Lcom/bytedance/embedapplog/aa;Lcom/bytedance/embedapplog/z;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/embedapplog/q;->i:J

    .line 67
    iput-object p1, p0, Lcom/bytedance/embedapplog/q;->c:Lcom/bytedance/embedapplog/aa;

    .line 68
    iput-object p2, p0, Lcom/bytedance/embedapplog/q;->b:Lcom/bytedance/embedapplog/z;

    .line 69
    return-void
.end method

.method public static a(Lcom/bytedance/embedapplog/z;)J
    .registers 9

    .line 242
    sget-wide v0, Lcom/bytedance/embedapplog/q;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/bytedance/embedapplog/q;->f:J

    .line 243
    const-wide/16 v2, 0x3e8

    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_15

    .line 244
    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/embedapplog/z;->a(J)V

    .line 246
    :cond_15
    sget-wide v0, Lcom/bytedance/embedapplog/q;->f:J

    return-wide v0
.end method

.method private declared-synchronized a(Lcom/bytedance/embedapplog/aq;Ljava/util/ArrayList;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embedapplog/aq;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/aq;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_1
    instance-of v0, p1, Lcom/bytedance/embedapplog/q$a;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_9

    move-wide v3, v1

    goto :goto_b

    :cond_9
    iget-wide v3, p1, Lcom/bytedance/embedapplog/aq;->a:J

    .line 104
    :goto_b
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/q;->a:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->b:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->C()J

    move-result-wide v5

    sput-wide v5, Lcom/bytedance/embedapplog/q;->f:J

    .line 106
    iput-wide v3, p0, Lcom/bytedance/embedapplog/q;->i:J

    .line 107
    iput-boolean p3, p0, Lcom/bytedance/embedapplog/q;->j:Z

    .line 108
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/bytedance/embedapplog/q;->k:J

    .line 110
    sget-boolean v0, Lcom/bytedance/embedapplog/bo;->b:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_56

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startSession, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/bytedance/embedapplog/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", hadUi:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " data:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :cond_56
    if-eqz p3, :cond_ba

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v7, 0x2

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 118
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->b:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/embedapplog/q;->m:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->b:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->d()I

    move-result v0

    iput v0, p0, Lcom/bytedance/embedapplog/q;->l:I

    .line 121
    :cond_9e
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 122
    iput-object p1, p0, Lcom/bytedance/embedapplog/q;->m:Ljava/lang/String;

    .line 123
    iput v6, p0, Lcom/bytedance/embedapplog/q;->l:I

    goto :goto_b0

    .line 125
    :cond_ab
    iget v0, p0, Lcom/bytedance/embedapplog/q;->l:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/bytedance/embedapplog/q;->l:I

    .line 127
    :goto_b0
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->b:Lcom/bytedance/embedapplog/z;

    iget v6, p0, Lcom/bytedance/embedapplog/q;->l:I

    invoke-virtual {v0, p1, v6}, Lcom/bytedance/embedapplog/z;->a(Ljava/lang/String;I)V

    .line 128
    const/4 p1, 0x0

    iput p1, p0, Lcom/bytedance/embedapplog/q;->h:I

    .line 131
    :cond_ba
    cmp-long p1, v3, v1

    if-eqz p1, :cond_122

    .line 132
    new-instance p1, Lcom/bytedance/embedapplog/aw;

    invoke-direct {p1}, Lcom/bytedance/embedapplog/aw;-><init>()V

    .line 133
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/bytedance/embedapplog/aw;->c:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->b:Lcom/bytedance/embedapplog/z;

    invoke-static {v0}, Lcom/bytedance/embedapplog/q;->a(Lcom/bytedance/embedapplog/z;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/embedapplog/aw;->b:J

    .line 135
    iget-wide v0, p0, Lcom/bytedance/embedapplog/q;->i:J

    iput-wide v0, p1, Lcom/bytedance/embedapplog/aw;->a:J

    .line 136
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->c:Lcom/bytedance/embedapplog/aa;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/aa;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/aw;->i:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->c:Lcom/bytedance/embedapplog/aa;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/aa;->c()I

    move-result v0

    iput v0, p1, Lcom/bytedance/embedapplog/aw;->h:I

    .line 138
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->b:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->v()Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 139
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAbConfigVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/aw;->e:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAbSDKVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/aw;->f:Ljava/lang/String;

    .line 142
    :cond_f7
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iput-object p1, p0, Lcom/bytedance/embedapplog/q;->n:Lcom/bytedance/embedapplog/aw;

    .line 144
    sget-boolean p2, Lcom/bytedance/embedapplog/bo;->b:Z

    if-eqz p2, :cond_122

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gen launch, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/bytedance/embedapplog/aw;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", hadUi:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_122
    .catchall {:try_start_1 .. :try_end_122} :catchall_124

    .line 148
    :cond_122
    monitor-exit p0

    return-void

    .line 101
    :catchall_124
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static a(Lcom/bytedance/embedapplog/aq;)Z
    .registers 2

    .line 151
    instance-of v0, p0, Lcom/bytedance/embedapplog/ay;

    if-eqz v0, :cond_b

    .line 152
    check-cast p0, Lcom/bytedance/embedapplog/ay;

    .line 153
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/ay;->i()Z

    move-result p0

    return p0

    .line 155
    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method static d()Lcom/bytedance/embedapplog/q$a;
    .registers 3

    .line 259
    sget-object v0, Lcom/bytedance/embedapplog/q;->o:Lcom/bytedance/embedapplog/q$a;

    if-nez v0, :cond_c

    .line 260
    new-instance v0, Lcom/bytedance/embedapplog/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/embedapplog/q$a;-><init>(Lcom/bytedance/embedapplog/q$1;)V

    sput-object v0, Lcom/bytedance/embedapplog/q;->o:Lcom/bytedance/embedapplog/q$a;

    .line 262
    :cond_c
    sget-object v0, Lcom/bytedance/embedapplog/q;->o:Lcom/bytedance/embedapplog/q$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/embedapplog/q$a;->a:J

    .line 263
    sget-object v0, Lcom/bytedance/embedapplog/q;->o:Lcom/bytedance/embedapplog/q$a;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(JJ)Landroid/os/Bundle;
    .registers 10

    monitor-enter p0

    .line 80
    const/4 v0, 0x0

    .line 81
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/embedapplog/q;->b:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/z;->f()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0}, Lcom/bytedance/embedapplog/q;->c()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-wide v1, p0, Lcom/bytedance/embedapplog/q;->g:J

    sub-long v1, p1, v1

    cmp-long p3, v1, p3

    if-lez p3, :cond_48

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    const-string p3, "session_no"

    iget p4, p0, Lcom/bytedance/embedapplog/q;->l:I

    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string p3, "send_times"

    iget p4, p0, Lcom/bytedance/embedapplog/q;->h:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/bytedance/embedapplog/q;->h:I

    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string p3, "current_duration"

    iget-wide v1, p0, Lcom/bytedance/embedapplog/q;->g:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, p3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 86
    const-string p3, "session_start_time"

    iget-wide v1, p0, Lcom/bytedance/embedapplog/q;->i:J

    invoke-static {v1, v2}, Lcom/bytedance/embedapplog/aq;->a(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iput-wide p1, p0, Lcom/bytedance/embedapplog/q;->g:J
    :try_end_48
    .catchall {:try_start_2 .. :try_end_48} :catchall_4a

    .line 89
    :cond_48
    monitor-exit p0

    return-object v0

    .line 79
    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a()Lcom/bytedance/embedapplog/aw;
    .registers 2

    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->n:Lcom/bytedance/embedapplog/aw;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 76
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/bytedance/embedapplog/aq;Ljava/util/ArrayList;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embedapplog/aq;",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/aq;",
            ">;)Z"
        }
    .end annotation

    .line 166
    instance-of v0, p1, Lcom/bytedance/embedapplog/ay;

    .line 167
    invoke-static {p1}, Lcom/bytedance/embedapplog/q;->a(Lcom/bytedance/embedapplog/aq;)Z

    move-result v1

    .line 168
    nop

    .line 169
    iget-wide v2, p0, Lcom/bytedance/embedapplog/q;->i:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-nez v2, :cond_1a

    .line 171
    invoke-static {p1}, Lcom/bytedance/embedapplog/q;->a(Lcom/bytedance/embedapplog/aq;)Z

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/embedapplog/q;->a(Lcom/bytedance/embedapplog/aq;Ljava/util/ArrayList;Z)V

    goto :goto_4e

    .line 172
    :cond_1a
    iget-boolean v2, p0, Lcom/bytedance/embedapplog/q;->j:Z

    if-nez v2, :cond_24

    if-eqz v1, :cond_24

    .line 174
    invoke-direct {p0, p1, p2, v3}, Lcom/bytedance/embedapplog/q;->a(Lcom/bytedance/embedapplog/aq;Ljava/util/ArrayList;Z)V

    goto :goto_4e

    .line 175
    :cond_24
    iget-wide v6, p0, Lcom/bytedance/embedapplog/q;->k:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_3d

    iget-wide v6, p1, Lcom/bytedance/embedapplog/aq;->a:J

    iget-wide v8, p0, Lcom/bytedance/embedapplog/q;->k:J

    iget-object v2, p0, Lcom/bytedance/embedapplog/q;->b:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/z;->x()J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v2, v6, v8

    if-lez v2, :cond_3d

    .line 177
    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/embedapplog/q;->a(Lcom/bytedance/embedapplog/aq;Ljava/util/ArrayList;Z)V

    goto :goto_4e

    .line 178
    :cond_3d
    iget-wide v6, p0, Lcom/bytedance/embedapplog/q;->i:J

    iget-wide v8, p1, Lcom/bytedance/embedapplog/aq;->a:J

    const-wide/32 v10, 0x6ddd00

    add-long/2addr v8, v10

    cmp-long v2, v6, v8

    if-lez v2, :cond_4d

    .line 180
    invoke-direct {p0, p1, p2, v1}, Lcom/bytedance/embedapplog/q;->a(Lcom/bytedance/embedapplog/aq;Ljava/util/ArrayList;Z)V

    goto :goto_4e

    .line 182
    :cond_4d
    const/4 v3, 0x0

    .line 185
    :goto_4e
    if-eqz v0, :cond_c7

    .line 186
    move-object v0, p1

    check-cast v0, Lcom/bytedance/embedapplog/ay;

    .line 187
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/ay;->i()Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 188
    iget-wide v1, p1, Lcom/bytedance/embedapplog/aq;->a:J

    iput-wide v1, p0, Lcom/bytedance/embedapplog/q;->g:J

    .line 189
    iput-wide v4, p0, Lcom/bytedance/embedapplog/q;->k:J

    .line 192
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object p2, v0, Lcom/bytedance/embedapplog/ay;->i:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_cf

    .line 195
    iget-object p2, p0, Lcom/bytedance/embedapplog/q;->e:Lcom/bytedance/embedapplog/ay;

    const-wide/16 v1, 0x1f4

    if-eqz p2, :cond_87

    iget-wide v4, v0, Lcom/bytedance/embedapplog/ay;->a:J

    iget-object p2, p0, Lcom/bytedance/embedapplog/q;->e:Lcom/bytedance/embedapplog/ay;

    iget-wide v6, p2, Lcom/bytedance/embedapplog/ay;->a:J

    sub-long/2addr v4, v6

    iget-object p2, p0, Lcom/bytedance/embedapplog/q;->e:Lcom/bytedance/embedapplog/ay;

    iget-wide v6, p2, Lcom/bytedance/embedapplog/ay;->h:J

    sub-long/2addr v4, v6

    cmp-long p2, v4, v1

    if-gez p2, :cond_87

    .line 197
    iget-object p2, p0, Lcom/bytedance/embedapplog/q;->e:Lcom/bytedance/embedapplog/ay;

    iget-object p2, p2, Lcom/bytedance/embedapplog/ay;->j:Ljava/lang/String;

    iput-object p2, v0, Lcom/bytedance/embedapplog/ay;->i:Ljava/lang/String;

    goto :goto_cf

    .line 198
    :cond_87
    iget-object p2, p0, Lcom/bytedance/embedapplog/q;->d:Lcom/bytedance/embedapplog/ay;

    if-eqz p2, :cond_cf

    iget-wide v4, v0, Lcom/bytedance/embedapplog/ay;->a:J

    iget-object p2, p0, Lcom/bytedance/embedapplog/q;->d:Lcom/bytedance/embedapplog/ay;

    iget-wide v6, p2, Lcom/bytedance/embedapplog/ay;->a:J

    sub-long/2addr v4, v6

    iget-object p2, p0, Lcom/bytedance/embedapplog/q;->d:Lcom/bytedance/embedapplog/ay;

    iget-wide v6, p2, Lcom/bytedance/embedapplog/ay;->h:J

    sub-long/2addr v4, v6

    cmp-long p2, v4, v1

    if-gez p2, :cond_cf

    .line 200
    iget-object p2, p0, Lcom/bytedance/embedapplog/q;->d:Lcom/bytedance/embedapplog/ay;

    iget-object p2, p2, Lcom/bytedance/embedapplog/ay;->j:Ljava/lang/String;

    iput-object p2, v0, Lcom/bytedance/embedapplog/ay;->i:Ljava/lang/String;

    goto :goto_cf

    .line 204
    :cond_a2
    iget-wide v1, p1, Lcom/bytedance/embedapplog/aq;->a:J

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/bytedance/embedapplog/q;->a(JJ)Landroid/os/Bundle;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_af

    .line 206
    const-string v2, "play_session"

    invoke-static {v2, v1}, Lcom/bytedance/embedapplog/AppLog;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 209
    :cond_af
    iput-wide v4, p0, Lcom/bytedance/embedapplog/q;->g:J

    .line 210
    iget-wide v1, v0, Lcom/bytedance/embedapplog/ay;->a:J

    iput-wide v1, p0, Lcom/bytedance/embedapplog/q;->k:J

    .line 212
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/ay;->j()Z

    move-result p2

    if-eqz p2, :cond_c1

    .line 215
    iput-object v0, p0, Lcom/bytedance/embedapplog/q;->d:Lcom/bytedance/embedapplog/ay;

    goto :goto_cf

    .line 217
    :cond_c1
    iput-object v0, p0, Lcom/bytedance/embedapplog/q;->e:Lcom/bytedance/embedapplog/ay;

    .line 218
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/bytedance/embedapplog/q;->d:Lcom/bytedance/embedapplog/ay;

    goto :goto_cf

    .line 221
    :cond_c7
    instance-of v0, p1, Lcom/bytedance/embedapplog/q$a;

    if-nez v0, :cond_cf

    .line 222
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    .line 221
    :cond_cf
    :goto_cf
    nop

    .line 225
    :goto_d0
    invoke-virtual {p0, p1}, Lcom/bytedance/embedapplog/q;->b(Lcom/bytedance/embedapplog/aq;)V

    .line 226
    return v3
.end method

.method public b(Lcom/bytedance/embedapplog/aq;)V
    .registers 4

    .line 230
    if-eqz p1, :cond_2a

    .line 231
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->c:Lcom/bytedance/embedapplog/aa;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/aa;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/aq;->d:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/bytedance/embedapplog/aq;->c:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->b:Lcom/bytedance/embedapplog/z;

    invoke-static {v0}, Lcom/bytedance/embedapplog/q;->a(Lcom/bytedance/embedapplog/z;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/bytedance/embedapplog/aq;->b:J

    .line 234
    iget-object v0, p0, Lcom/bytedance/embedapplog/q;->b:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->v()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 235
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAbConfigVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/aq;->e:Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAbSDKVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bytedance/embedapplog/aq;->f:Ljava/lang/String;

    .line 239
    :cond_2a
    return-void
.end method

.method public b()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/q;->j:Z

    return v0
.end method

.method c()Z
    .registers 5

    .line 97
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/q;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/bytedance/embedapplog/q;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
