.class public abstract Lcom/tapjoy/internal/o;
.super Lcom/tapjoy/internal/p;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/tapjoy/internal/q;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/q;)V
    .registers 4

    .line 52
    invoke-direct {p0}, Lcom/tapjoy/internal/p;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/o;->c:Z

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    .line 55
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    const/16 v1, 0xbb8

    invoke-interface {v0, p1, v1}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;I)V

    .line 292
    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 278
    const-string v0, "app"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    return-void
.end method

.method private b()Z
    .registers 7

    .line 80
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/q;->e(Landroid/content/Context;)Z

    move-result v0

    .line 81
    if-eqz v0, :cond_2c

    .line 83
    iget-object v1, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v2, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/tapjoy/internal/q;->f(Landroid/content/Context;)J

    move-result-wide v1

    .line 84
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2c

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-lez v5, :cond_2c

    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/sql/Timestamp;

    invoke-direct {v3, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    const/4 v1, 0x0

    aput-object v3, v0, v1

    .line 87
    return v1

    .line 90
    :cond_2c
    return v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .line 207
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tapjoy/internal/y;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v2

    .line 208
    const v3, 0x30345a

    const/4 v4, 0x1

    if-lt v2, v3, :cond_36

    .line 209
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    aput-object p1, v3, v4

    .line 210
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-static {p0, v2}, Lcom/tapjoy/internal/o;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 213
    const-string v0, "sender"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_35

    return v4

    :cond_35
    return v1

    .line 216
    :cond_36
    new-array p0, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v1
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3e} :catch_3f

    .line 220
    goto :goto_40

    .line 218
    :catch_3f
    move-exception p0

    .line 221
    :goto_40
    return v1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    .line 226
    const-string v0, "com.google.android.gsf"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tapjoy/internal/y;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v2

    .line 227
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v2, 0x1

    aput-object p1, v3, v2

    .line 228
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-static {p0, v3}, Lcom/tapjoy/internal/o;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 231
    const-string v0, "sender"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_2d} :catch_31

    if-eqz p0, :cond_30

    return v2

    :cond_30
    return v1

    .line 233
    :catch_31
    move-exception p0

    .line 235
    return v1
.end method

.method private d(Ljava/lang/String;)V
    .registers 10

    .line 146
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    .line 149
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/o;->e(Ljava/lang/String;)V

    .line 150
    return-void

    .line 154
    :cond_12
    iget-object v1, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v2, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_30

    .line 156
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v6

    aput-object p1, v2, v5

    aput-object v0, v2, v4

    .line 158
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/o;->e(Ljava/lang/String;)V

    .line 159
    return-void

    .line 164
    :cond_30
    iget-object v1, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v2, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/tapjoy/internal/q;->d(Landroid/content/Context;)I

    move-result v1

    .line 165
    iget-object v2, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tapjoy/internal/y;->a(Landroid/content/Context;)I

    move-result v2

    .line 166
    const/high16 v7, -0x80000000

    if-eq v1, v7, :cond_58

    if-eq v1, v2, :cond_58

    .line 167
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    aput-object v0, v3, v4

    .line 169
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/o;->e(Ljava/lang/String;)V

    .line 170
    return-void

    .line 174
    :cond_58
    iget-object v1, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v2, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/tapjoy/internal/q;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 175
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v6

    .line 176
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/o;->e(Ljava/lang/String;)V

    .line 177
    return-void

    .line 181
    :cond_6a
    invoke-direct {p0}, Lcom/tapjoy/internal/o;->b()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 182
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v6

    aput-object v0, v1, v5

    .line 183
    iget-object p1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/internal/o;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    return-void

    .line 187
    :cond_7c
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v6

    aput-object v0, v1, v5

    .line 188
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 5

    .line 191
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;Z)V

    .line 195
    iget-boolean v0, p0, Lcom/tapjoy/internal/o;->c:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/o;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 196
    return-void

    .line 200
    :cond_1c
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/o;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 201
    return-void
.end method

.method private declared-synchronized f(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 380
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/o;->a(Landroid/content/Context;)V

    .line 382
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;Z)V

    .line 383
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/y;->a(Landroid/content/Context;)I

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v3, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v1, v3, v0}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;I)V

    .line 386
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_43

    .line 388
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 389
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;Z)V

    .line 390
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/o;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_5a

    monitor-exit p0

    return-void

    .line 392
    :cond_43
    :try_start_43
    invoke-direct {p0}, Lcom/tapjoy/internal/o;->b()Z

    move-result v0

    if-nez v0, :cond_54

    .line 393
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 394
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/o;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_43 .. :try_end_52} :catchall_5a

    monitor-exit p0

    return-void

    .line 396
    :cond_54
    :try_start_54
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v2
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_5a

    .line 399
    monitor-exit p0

    return-void

    .line 379
    :catchall_5a
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final varargs a([Ljava/lang/String;)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/o;->a(Landroid/content/Context;)V

    .line 130
    nop

    .line 1267
    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 130
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/o;->d(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public final a()Z
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 136
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/o;->d(Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Intent;)Z
    .registers 10

    .line 298
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 299
    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.google.android.gcm.intent.RETRY"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_dd

    .line 300
    const-string v0, "registration_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    const-string v1, "unregistered"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    const-string v5, "error"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 304
    if-eqz v0, :cond_45

    .line 305
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_37

    .line 309
    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 311
    return v4

    .line 314
    :cond_33
    invoke-direct {p0, v0}, Lcom/tapjoy/internal/o;->f(Ljava/lang/String;)V

    .line 315
    return v4

    .line 318
    :cond_37
    if-nez v1, :cond_45

    if-nez p1, :cond_45

    iget-boolean v0, p0, Lcom/tapjoy/internal/o;->c:Z

    if-nez v0, :cond_45

    .line 320
    iput-boolean v3, p0, Lcom/tapjoy/internal/o;->c:Z

    .line 321
    invoke-virtual {p0}, Lcom/tapjoy/internal/o;->a()Z

    .line 322
    return v3

    .line 327
    :cond_45
    if-eqz v1, :cond_70

    .line 329
    nop

    .line 1403
    iget-object p1, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1406
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/o;->a(Landroid/content/Context;)V

    .line 1407
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1, v4}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;Z)V

    .line 1408
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1409
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v0, v1, v3}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;Z)V

    .line 1410
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/o;->a(Ljava/lang/String;)V

    .line 330
    return v4

    .line 333
    :cond_70
    if-eqz p1, :cond_dc

    .line 335
    nop

    .line 1417
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1418
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/o;->b(Ljava/lang/String;)Z

    move-result p1

    goto :goto_91

    .line 1419
    :cond_80
    iget-boolean v0, p0, Lcom/tapjoy/internal/o;->c:Z

    if-nez v0, :cond_8d

    .line 1420
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/o;->b(Ljava/lang/String;)Z

    .line 1423
    iput-boolean v3, p0, Lcom/tapjoy/internal/o;->c:Z

    .line 1424
    invoke-virtual {p0}, Lcom/tapjoy/internal/o;->a()Z

    .line 1425
    goto :goto_da

    .line 1429
    :cond_8d
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/o;->c(Ljava/lang/String;)Z

    move-result p1

    .line 1432
    :goto_91
    if-eqz p1, :cond_da

    .line 1433
    nop

    .line 1441
    iget-object p1, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/tapjoy/internal/q;->g(Landroid/content/Context;)I

    move-result p1

    .line 1442
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 1443
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1444
    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1445
    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-static {v1, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1446
    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    .line 2043
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 1447
    const/4 v2, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1451
    const v0, 0x36ee80

    if-ge p1, v0, :cond_da

    .line 1452
    iget-object v0, p0, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object v1, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    mul-int/lit8 p1, p1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/tapjoy/internal/q;->b(Landroid/content/Context;I)V

    .line 1437
    :cond_da
    :goto_da
    nop

    .line 335
    return v3

    .line 339
    :cond_dc
    return v4

    .line 340
    :cond_dd
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_121

    .line 341
    const-string v0, "message_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_119

    .line 344
    nop

    .line 2363
    const-string v1, "deleted_messages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 2364
    const-string v0, "total_deleted"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2365
    if-eqz p1, :cond_113

    .line 2367
    :try_start_fe
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2368
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 2369
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/o;->a(I)V
    :try_end_10d
    .catch Ljava/lang/NumberFormatException; {:try_start_fe .. :try_end_10d} :catch_10e

    .line 2372
    goto :goto_118

    .line 2370
    :catch_10e
    move-exception v0

    .line 2371
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 2374
    :cond_113
    goto :goto_118

    .line 2375
    :cond_114
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v4

    .line 345
    :goto_118
    return v4

    .line 348
    :cond_119
    nop

    .line 3359
    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/o;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    .line 348
    return p1

    .line 350
    :cond_121
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_145

    .line 351
    nop

    .line 3458
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    .line 3459
    if-eqz p1, :cond_140

    iget-object v0, p0, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13b

    goto :goto_140

    .line 3465
    :cond_13b
    invoke-virtual {p0}, Lcom/tapjoy/internal/o;->a()Z

    .line 3466
    nop

    .line 351
    return v3

    .line 3460
    :cond_140
    :goto_140
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 3461
    return v4

    .line 353
    :cond_145
    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v4

    .line 354
    return v4
.end method
