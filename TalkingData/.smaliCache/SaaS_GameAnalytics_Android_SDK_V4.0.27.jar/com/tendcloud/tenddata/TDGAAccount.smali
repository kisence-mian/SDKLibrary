.class public final Lcom/tendcloud/tenddata/TDGAAccount;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/TDGAAccount$a;,
        Lcom/tendcloud/tenddata/TDGAAccount$Gender;,
        Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    }
.end annotation


# static fields
.field public static a:Lcom/tendcloud/tenddata/TDGAAccount; = null

.field private static final b:Ljava/lang/String; = "accountId"

.field private static final c:Ljava/lang/String; = "userLevel"

.field private static final d:Ljava/lang/String; = "gender"

.field private static final e:Ljava/lang/String; = "accountName"

.field private static final f:Ljava/lang/String; = "age"

.field private static final g:Ljava/lang/String; = "accountType"

.field private static final h:Ljava/lang/String; = "account_file"

.field private static final i:Ljava/lang/String; = "levelup_duration"

.field private static final j:Ljava/lang/String; = "game_duration"

.field private static final k:Ljava/lang/String; = "mission_duration"

.field private static final l:I


# instance fields
.field private m:Ljava/lang/String;

.field private n:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/util/concurrent/atomic/AtomicLong;

.field private u:J


# direct methods
.method protected constructor <init>()V
    .registers 4

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    .line 49
    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    iput-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->n:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 51
    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->o:Ljava/lang/String;

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->p:I

    .line 55
    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    iput-object v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->q:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    .line 57
    iput v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->r:I

    .line 59
    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->t:Ljava/util/concurrent/atomic/AtomicLong;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->u:J

    .line 227
    return-void
.end method

.method private a()J
    .registers 8

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 378
    iget-object v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tendcloud/tenddata/TDGAAccount;->u:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_12

    sub-long/2addr v0, v4

    goto :goto_14

    :cond_12
    const-wide/16 v0, 0x0

    :goto_14
    add-long/2addr v2, v0

    return-wide v2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;
    .registers 6

    .line 176
    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 177
    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/TDGAAccount;-><init>()V

    .line 178
    iput-object p1, v0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    .line 179
    iput-object p2, v0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    .line 180
    if-eqz p0, :cond_67

    .line 181
    sget-object p1, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 182
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->name()Ljava/lang/String;

    move-result-object p1

    .line 181
    const-string p2, "accountType"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object p1

    iput-object p1, v0, Lcom/tendcloud/tenddata/TDGAAccount;->n:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 183
    const-string p1, "accountName"

    const-string p2, ""

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tendcloud/tenddata/TDGAAccount;->o:Ljava/lang/String;

    .line 184
    const-string p1, "userLevel"

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/tendcloud/tenddata/TDGAAccount;->p:I

    .line 185
    const-string p1, "age"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/tendcloud/tenddata/TDGAAccount;->r:I

    .line 186
    sget-object p1, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->UNKNOW:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    .line 187
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->name()Ljava/lang/String;

    move-result-object p1

    .line 186
    const-string p2, "gender"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object p1

    iput-object p1, v0, Lcom/tendcloud/tenddata/TDGAAccount;->q:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    .line 190
    const-wide/16 p1, 0x0

    const-string v1, "game_duration"

    invoke-interface {p0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    .line 193
    :cond_56
    iget-object p2, v0, Lcom/tendcloud/tenddata/TDGAAccount;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 194
    iget-object p2, v0, Lcom/tendcloud/tenddata/TDGAAccount;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2, v1, v2, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p2

    .line 195
    if-eqz p2, :cond_56

    .line 198
    invoke-direct {v0}, Lcom/tendcloud/tenddata/TDGAAccount;->b()V

    .line 200
    :cond_67
    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V
    .registers 4

    .line 204
    iget-object v0, p1, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    iget-object v1, p1, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 206
    if-eqz p0, :cond_43

    .line 207
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 208
    iget-object v0, p1, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    const-string v1, "accountId"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    iget-object v0, p1, Lcom/tendcloud/tenddata/TDGAAccount;->n:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accountType"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 210
    iget-object v0, p1, Lcom/tendcloud/tenddata/TDGAAccount;->o:Ljava/lang/String;

    const-string v1, "accountName"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    iget v0, p1, Lcom/tendcloud/tenddata/TDGAAccount;->p:I

    const-string v1, "userLevel"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 212
    iget v0, p1, Lcom/tendcloud/tenddata/TDGAAccount;->r:I

    const-string v1, "age"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 213
    iget-object p1, p1, Lcom/tendcloud/tenddata/TDGAAccount;->q:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gender"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 216
    :cond_43
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 4

    .line 220
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "account_file"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .registers 3

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->u:J

    .line 383
    return-void
.end method

.method private c()J
    .registers 8

    .line 395
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "TDGAAccount.getLevelUpDuration() called."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ar;->dForInternal([Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 397
    const-wide/16 v4, 0x0

    if-nez v1, :cond_1d

    .line 398
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TalkingDataGA.getContext() == null."

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->dForInternal([Ljava/lang/String;)V

    .line 399
    return-wide v4

    .line 401
    :cond_1d
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a()J

    move-result-wide v2

    .line 402
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    iget-object v6, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-static {v1, v0, v6}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 403
    const-string v1, "levelup_duration"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 405
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 406
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 407
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 409
    sub-long/2addr v2, v4

    return-wide v2
.end method

.method private d()V
    .registers 2

    .line 413
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    .line 414
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ac;->c(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V

    .line 415
    return-void
.end method

.method private e()V
    .registers 3

    .line 419
    :try_start_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->f()V

    .line 420
    new-instance v0, Lcom/tendcloud/tenddata/TDGAAccount$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/TDGAAccount$a;-><init>()V

    .line 421
    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object v1, v0, Lcom/tendcloud/tenddata/TDGAAccount$a;->lastAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 422
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object v1, v0, Lcom/tendcloud/tenddata/TDGAAccount$a;->newAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 423
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ac;->a(Lcom/tendcloud/tenddata/TDGAAccount$a;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    .line 426
    goto :goto_1e

    .line 424
    :catchall_1a
    move-exception v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 427
    :goto_1e
    return-void
.end method

.method private f()V
    .registers 3

    .line 429
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/as;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    .line 431
    return-void
.end method

.method public static getTDGAccount(Landroid/content/Context;)Lcom/tendcloud/tenddata/TDGAAccount;
    .registers 3

    .line 165
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->o()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/as;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {p0, v0, v1}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object p0

    return-object p0
.end method

.method public static setAccount(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;
    .registers 4

    .line 110
    sget-boolean v0, Lcom/tendcloud/tenddata/game/zz;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 111
    const-string p0, "TDGAAccount.setAccount()#SDK not initialized. "

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 112
    return-object v1

    .line 115
    :cond_b
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 116
    const-string p0, "TDGAAccount.setAccount()#accountid is null, please check it."

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 117
    return-object v1

    .line 120
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setAccount()#accountid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 124
    const-class v0, Lcom/tendcloud/tenddata/TDGAAccount;

    monitor-enter v0

    .line 125
    :try_start_30
    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    if-nez v1, :cond_4a

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 126
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/TDGAAccount;->getTDGAccount(Landroid/content/Context;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v1

    sput-object v1, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 127
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    :cond_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_30 .. :try_end_4b} :catchall_a4

    .line 131
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iget-object v0, v0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 132
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object p0, v0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    .line 133
    nop

    .line 134
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ac;->a(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V

    goto :goto_8e

    .line 135
    :cond_60
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iget-object v0, v0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 136
    sget-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    goto :goto_8e

    .line 139
    :cond_6d
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/as;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1, p0, v0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/TDGAAccount;->updateGameDuration()V

    .line 147
    new-instance v1, Lcom/tendcloud/tenddata/TDGAAccount$a;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/TDGAAccount$a;-><init>()V

    .line 148
    sget-object v2, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    iput-object v2, v1, Lcom/tendcloud/tenddata/TDGAAccount$a;->lastAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 149
    iput-object v0, v1, Lcom/tendcloud/tenddata/TDGAAccount$a;->newAccount:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 150
    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 152
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/ac;->b(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V

    .line 155
    :goto_8e
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9b

    .line 156
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/as;->setAccountId(Ljava/lang/String;)V

    .line 158
    :cond_9b
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    .line 159
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/as;->setAccountId(Ljava/lang/String;)V

    .line 160
    return-object v0

    .line 129
    :catchall_a4
    move-exception p0

    :try_start_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw p0
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .registers 9

    .line 349
    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 350
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    .line 351
    new-array p1, v1, [Ljava/lang/String;

    const-string v0, "TalkingDataGA.getContext() == null."

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->dForInternal([Ljava/lang/String;)V

    .line 352
    return-void

    .line 354
    :cond_12
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a()J

    move-result-wide v3

    .line 356
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "TDGAAccount.setMissionStart() called. missionId="

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    const/4 v1, 0x2

    const-string v2, "   gameduration="

    aput-object v2, v5, v1

    const/4 v1, 0x3

    .line 357
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 356
    invoke-static {v5}, Lcom/tendcloud/tenddata/game/ar;->dForInternal([Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 359
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mission_duration_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 361
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 362
    return-void
.end method

.method final b(Ljava/lang/String;)J
    .registers 9

    .line 365
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDGAAccount.getMissionDuration() called. missionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ar;->dForInternal([Ljava/lang/String;)V

    .line 366
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    const-wide/16 v4, 0x0

    if-nez v1, :cond_2c

    .line 367
    new-array p1, v0, [Ljava/lang/String;

    const-string v0, "TalkingDataGA.getContext() == null."

    aput-object v0, p1, v3

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->dForInternal([Ljava/lang/String;)V

    .line 368
    return-wide v4

    .line 370
    :cond_2c
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a()J

    move-result-wide v0

    .line 371
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    iget-object v6, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mission_duration_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 373
    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .line 387
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 388
    :catch_5
    move-exception v0

    .line 389
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Cloning not allowed."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 390
    return-object p0
.end method

.method public final getAccountId()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccountName()Ljava/lang/String;
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->n:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    return-object v0
.end method

.method public final getAge()I
    .registers 2

    .line 291
    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->r:I

    return v0
.end method

.method public final getGameServer()Ljava/lang/String;
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->q:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    return-object v0
.end method

.method public final getLevel()I
    .registers 2

    .line 260
    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->p:I

    return v0
.end method

.method public final setAccountName(Ljava/lang/String;)V
    .registers 4

    .line 252
    if-eqz p1, :cond_18

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setAccountName()#setAccountName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 255
    :cond_18
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->o:Ljava/lang/String;

    .line 256
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->d()V

    .line 257
    return-void
.end method

.method public final setAccountType(Lcom/tendcloud/tenddata/TDGAAccount$AccountType;)V
    .registers 4

    .line 238
    if-nez p1, :cond_8

    .line 239
    const-string p1, "TDGAAccount.setAccountType() -> accountType can\'t be null"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 240
    return-void

    .line 242
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setAccountType()#accountType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 243
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->n:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    .line 244
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->d()V

    .line 245
    return-void
.end method

.method public final setAge(I)V
    .registers 4

    .line 295
    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->r:I

    if-ne v0, p1, :cond_5

    .line 296
    return-void

    .line 298
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setAge()#age:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 299
    iput p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->r:I

    .line 300
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->d()V

    .line 301
    return-void
.end method

.method public final setGameServer(Ljava/lang/String;)V
    .registers 4

    .line 309
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setGameServer()#gameServer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 313
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    .line 314
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->e()V

    goto :goto_3e

    .line 316
    :cond_32
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    .line 317
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->f()V

    .line 318
    sget-object p1, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p1, v0}, Lcom/tendcloud/tenddata/game/ac;->d(Lcom/tendcloud/tenddata/TDGAAccount;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    .line 323
    :cond_3e
    :goto_3e
    goto :goto_43

    .line 321
    :catchall_3f
    move-exception p1

    .line 322
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 324
    :goto_43
    return-void
.end method

.method public final setGender(Lcom/tendcloud/tenddata/TDGAAccount$Gender;)V
    .registers 4

    .line 281
    if-nez p1, :cond_8

    .line 282
    const-string p1, "TDGAAccount.setGender() -> gender can\'t be null"

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ar;->eForDeveloper(Ljava/lang/String;)V

    .line 283
    return-void

    .line 285
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setGender()#setGender:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 286
    iput-object p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->q:Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    .line 287
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->d()V

    .line 288
    return-void
.end method

.method public final setLevel(I)V
    .registers 10

    .line 264
    iget v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->p:I

    if-ne v0, p1, :cond_5

    .line 265
    return-void

    .line 267
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TDGAAccount.setLevel()#setLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->iForDeveloper(Ljava/lang/String;)V

    .line 268
    iget v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->p:I

    .line 269
    iput p1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->p:I

    .line 271
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->c()J

    move-result-wide v5

    .line 272
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/TDGAAccount;)V

    .line 273
    sget-object v4, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    sget-object v7, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    move-object v1, p0

    move v3, p1

    invoke-static/range {v1 .. v7}, Lcom/tendcloud/tenddata/game/ac;->a(Lcom/tendcloud/tenddata/TDGAAccount;IILjava/lang/String;JLcom/tendcloud/tenddata/game/a;)V

    .line 274
    return-void
.end method

.method public final updateGameDuration()V
    .registers 7

    .line 327
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "TDGAAccount.updateGameDuration() called."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ar;->dForInternal([Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 329
    if-nez v1, :cond_1b

    .line 330
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TalkingDataGA.getContext() == null."

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->eForInternal([Ljava/lang/String;)V

    .line 331
    return-void

    .line 336
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 337
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->a()J

    move-result-wide v4

    .line 338
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    .line 339
    if-eqz v0, :cond_4b

    .line 341
    iget-object v0, p0, Lcom/tendcloud/tenddata/TDGAAccount;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/TDGAAccount;->s:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/tendcloud/tenddata/TDGAAccount;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/tendcloud/tenddata/TDGAAccount;->t:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    const-string v3, "game_duration"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 345
    invoke-direct {p0}, Lcom/tendcloud/tenddata/TDGAAccount;->b()V

    .line 346
    return-void

    .line 339
    :cond_4b
    goto :goto_1b
.end method
